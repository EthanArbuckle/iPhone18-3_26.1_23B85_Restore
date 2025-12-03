@interface MBBackupCKRecordsDB
+ (id)openOrCreateDatabaseIn:(id)in error:(id *)error;
- (BOOL)enumerateAssetRecordReferences:(id)references error:(id *)error block:(id)block;
- (BOOL)enumerateDomainRecords:(id)records error:(id *)error block:(id)block;
- (BOOL)enumerateSnapshotRecords:(id *)records block:(id)block;
- (BOOL)hasAssetReference:(id)reference error:(id *)error;
- (BOOL)insertDomainRecordForSnapshotID:(id)d domain:(id)domain error:(id *)error;
- (BOOL)insertSnapshotRecord:(id)record error:(id *)error;
@end

@implementation MBBackupCKRecordsDB

+ (id)openOrCreateDatabaseIn:(id)in error:(id *)error
{
  v5 = [in stringByAppendingPathComponent:@"backup_ck_records.db"];
  v6 = [[MBBackupCKRecordsDB alloc] initWithPath:v5 readOnly:0 error:error];

  return v6;
}

- (BOOL)insertSnapshotRecord:(id)record error:(id *)error
{
  recordCopy = record;
  if (!recordCopy)
  {
    __assert_rtn("[MBBackupCKRecordsDB insertSnapshotRecord:error:]", "MBBackupCKRecordsDB.m", 75, "snapshot");
  }

  v7 = recordCopy;
  db = self->_db;
  recordIDString = [recordCopy recordIDString];
  commitID = [v7 commitID];
  v11 = -[MBSQLiteDB executeWithError:sql:](db, "executeWithError:sql:", error, @"INSERT OR REPLACE INTO SnapshotRecords (recordID, commitID, snapshotFormat) VALUES (%@, %@, %d)", recordIDString, commitID, [v7 snapshotFormat]);

  return v11;
}

- (BOOL)insertDomainRecordForSnapshotID:(id)d domain:(id)domain error:(id *)error
{
  dCopy = d;
  domainCopy = domain;
  if (!dCopy)
  {
    __assert_rtn("[MBBackupCKRecordsDB insertDomainRecordForSnapshotID:domain:error:]", "MBBackupCKRecordsDB.m", 80, "snapshotRecordID");
  }

  v10 = domainCopy;
  if (!domainCopy)
  {
    __assert_rtn("[MBBackupCKRecordsDB insertDomainRecordForSnapshotID:domain:error:]", "MBBackupCKRecordsDB.m", 81, "domain");
  }

  db = self->_db;
  recordID = [domainCopy recordID];
  recordName = [recordID recordName];
  domainName = [v10 domainName];
  v15 = [(MBSQLiteDB *)db executeWithError:error sql:@"INSERT OR REPLACE INTO DomainRecords (recordID, parentSnapshotRecordID, domainName) VALUES (%@, %@, %@)", recordName, dCopy, domainName];

  return v15;
}

- (BOOL)hasAssetReference:(id)reference error:(id *)error
{
  referenceCopy = reference;
  if (!referenceCopy)
  {
    __assert_rtn("[MBBackupCKRecordsDB hasAssetReference:error:]", "MBBackupCKRecordsDB.m", 92, "assetRecordID");
  }

  v7 = referenceCopy;
  v8 = [(MBSQLiteDB *)self->_db fetchCountWithError:error sql:@"SELECT COUNT(*) FROM AssetRecordReferences WHERE recordID = %@ AND isDeletedAsset = FALSE", referenceCopy]!= 0;

  return v8;
}

- (BOOL)enumerateSnapshotRecords:(id *)records block:(id)block
{
  blockCopy = block;
  v7 = [(MBSQLiteDB *)self->_db fetchSQL:@"SELECT recordID, commitID, snapshotFormat FROM SnapshotRecords"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000EE138;
  v10[3] = &unk_1003BE658;
  v11 = blockCopy;
  v8 = blockCopy;
  LOBYTE(records) = [v7 enumerateWithError:records block:v10];

  return records;
}

- (BOOL)enumerateDomainRecords:(id)records error:(id *)error block:(id)block
{
  blockCopy = block;
  records = [(MBSQLiteDB *)self->_db fetchSQL:@"SELECT recordID, domainName FROM DomainRecords WHERE parentSnapshotRecordID=%@ ORDER BY recordID", records];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000EE2B0;
  v12[3] = &unk_1003BE658;
  v13 = blockCopy;
  v10 = blockCopy;
  LOBYTE(error) = [records enumerateWithError:error block:v12];

  return error;
}

- (BOOL)enumerateAssetRecordReferences:(id)references error:(id *)error block:(id)block
{
  blockCopy = block;
  references = [(MBSQLiteDB *)self->_db fetchSQL:@"SELECT recordID, isDeletedAsset FROM AssetRecordReferences WHERE parentDomainRecordID=%@ ORDER BY recordID, isDeletedAsset", references];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000EE414;
  v12[3] = &unk_1003BE658;
  v13 = blockCopy;
  v10 = blockCopy;
  LOBYTE(error) = [references enumerateWithError:error block:v12];

  return error;
}

@end