@interface MBBackupCKRecordsDB
+ (id)openOrCreateDatabaseIn:(id)a3 error:(id *)a4;
- (BOOL)enumerateAssetRecordReferences:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)enumerateDomainRecords:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)enumerateSnapshotRecords:(id *)a3 block:(id)a4;
- (BOOL)hasAssetReference:(id)a3 error:(id *)a4;
- (BOOL)insertDomainRecordForSnapshotID:(id)a3 domain:(id)a4 error:(id *)a5;
- (BOOL)insertSnapshotRecord:(id)a3 error:(id *)a4;
@end

@implementation MBBackupCKRecordsDB

+ (id)openOrCreateDatabaseIn:(id)a3 error:(id *)a4
{
  v5 = [a3 stringByAppendingPathComponent:@"backup_ck_records.db"];
  v6 = [[MBBackupCKRecordsDB alloc] initWithPath:v5 readOnly:0 error:a4];

  return v6;
}

- (BOOL)insertSnapshotRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[MBBackupCKRecordsDB insertSnapshotRecord:error:]", "MBBackupCKRecordsDB.m", 75, "snapshot");
  }

  v7 = v6;
  db = self->_db;
  v9 = [v6 recordIDString];
  v10 = [v7 commitID];
  v11 = -[MBSQLiteDB executeWithError:sql:](db, "executeWithError:sql:", a4, @"INSERT OR REPLACE INTO SnapshotRecords (recordID, commitID, snapshotFormat) VALUES (%@, %@, %d)", v9, v10, [v7 snapshotFormat]);

  return v11;
}

- (BOOL)insertDomainRecordForSnapshotID:(id)a3 domain:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    __assert_rtn("[MBBackupCKRecordsDB insertDomainRecordForSnapshotID:domain:error:]", "MBBackupCKRecordsDB.m", 80, "snapshotRecordID");
  }

  v10 = v9;
  if (!v9)
  {
    __assert_rtn("[MBBackupCKRecordsDB insertDomainRecordForSnapshotID:domain:error:]", "MBBackupCKRecordsDB.m", 81, "domain");
  }

  db = self->_db;
  v12 = [v9 recordID];
  v13 = [v12 recordName];
  v14 = [v10 domainName];
  v15 = [(MBSQLiteDB *)db executeWithError:a5 sql:@"INSERT OR REPLACE INTO DomainRecords (recordID, parentSnapshotRecordID, domainName) VALUES (%@, %@, %@)", v13, v8, v14];

  return v15;
}

- (BOOL)hasAssetReference:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[MBBackupCKRecordsDB hasAssetReference:error:]", "MBBackupCKRecordsDB.m", 92, "assetRecordID");
  }

  v7 = v6;
  v8 = [(MBSQLiteDB *)self->_db fetchCountWithError:a4 sql:@"SELECT COUNT(*) FROM AssetRecordReferences WHERE recordID = %@ AND isDeletedAsset = FALSE", v6]!= 0;

  return v8;
}

- (BOOL)enumerateSnapshotRecords:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(MBSQLiteDB *)self->_db fetchSQL:@"SELECT recordID, commitID, snapshotFormat FROM SnapshotRecords"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000EE138;
  v10[3] = &unk_1003BE658;
  v11 = v6;
  v8 = v6;
  LOBYTE(a3) = [v7 enumerateWithError:a3 block:v10];

  return a3;
}

- (BOOL)enumerateDomainRecords:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a5;
  v9 = [(MBSQLiteDB *)self->_db fetchSQL:@"SELECT recordID, domainName FROM DomainRecords WHERE parentSnapshotRecordID=%@ ORDER BY recordID", a3];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000EE2B0;
  v12[3] = &unk_1003BE658;
  v13 = v8;
  v10 = v8;
  LOBYTE(a4) = [v9 enumerateWithError:a4 block:v12];

  return a4;
}

- (BOOL)enumerateAssetRecordReferences:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a5;
  v9 = [(MBSQLiteDB *)self->_db fetchSQL:@"SELECT recordID, isDeletedAsset FROM AssetRecordReferences WHERE parentDomainRecordID=%@ ORDER BY recordID, isDeletedAsset", a3];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000EE414;
  v12[3] = &unk_1003BE658;
  v13 = v8;
  v10 = v8;
  LOBYTE(a4) = [v9 enumerateWithError:a4 block:v12];

  return a4;
}

@end