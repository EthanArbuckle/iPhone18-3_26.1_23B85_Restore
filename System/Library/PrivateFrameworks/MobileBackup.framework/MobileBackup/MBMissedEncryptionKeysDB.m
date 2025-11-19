@interface MBMissedEncryptionKeysDB
+ (id)openOrCreateDatabaseIn:(id)a3 commitID:(id)a4 error:(id *)a5;
- (BOOL)enumerateInodesMissingEncryptionKeys:(id *)a3 block:(id)a4;
- (BOOL)setFoundEncryptionKey:(id)a3 forVolumeMountPoint:(id)a4 inode:(unint64_t)a5 error:(id *)a6;
- (id)fetchEncryptionKeyForInode:(unint64_t)a3 volumeMountPoint:(id)a4 error:(id *)a5;
@end

@implementation MBMissedEncryptionKeysDB

+ (id)openOrCreateDatabaseIn:(id)a3 commitID:(id)a4 error:(id *)a5
{
  v5 = sub_1002086F0(a3, a4);
  v6 = [[MBMissedEncryptionKeysDB alloc] initWithPath:v5 readOnly:0];

  return v6;
}

- (BOOL)setFoundEncryptionKey:(id)a3 forVolumeMountPoint:(id)a4 inode:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    __assert_rtn("[MBMissedEncryptionKeysDB setFoundEncryptionKey:forVolumeMountPoint:inode:error:]", "MBMissedEncryptionKeysDB.m", 84, "encryptionKey");
  }

  v12 = v11;
  v13 = [(MBSQLiteDB *)self->_db executeWithError:a6 sql:@"INSERT OR REPLACE INTO EncryptionKeys (volumeMountPoint, inode, encryptionKey) VALUES (%@, %llu, %@)", v11, a5, v10];

  return v13;
}

- (id)fetchEncryptionKeyForInode:(unint64_t)a3 volumeMountPoint:(id)a4 error:(id *)a5
{
  db = self->_db;
  v8 = a4;
  v9 = [(MBSQLiteDB *)db fetchObjectOfClass:objc_opt_class() error:a5 sql:@"SELECT encryptionKey FROM EncryptionKeys WHERE volumeMountPoint=%@ AND inode=%llu", v8, a3];

  return v9;
}

- (BOOL)enumerateInodesMissingEncryptionKeys:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(MBSQLiteDB *)self->_db fetchSQL:@"SELECT volumeMountPoint, inode FROM EncryptionKeys WHERE encryptionKey IS NULL"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100208C14;
  v10[3] = &unk_1003BE658;
  v11 = v6;
  v8 = v6;
  LOBYTE(a3) = [v7 enumerateWithError:a3 block:v10];

  return a3;
}

@end