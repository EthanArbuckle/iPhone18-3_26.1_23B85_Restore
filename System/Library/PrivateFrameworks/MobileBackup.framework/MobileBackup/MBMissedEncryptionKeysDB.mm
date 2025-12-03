@interface MBMissedEncryptionKeysDB
+ (id)openOrCreateDatabaseIn:(id)in commitID:(id)d error:(id *)error;
- (BOOL)enumerateInodesMissingEncryptionKeys:(id *)keys block:(id)block;
- (BOOL)setFoundEncryptionKey:(id)key forVolumeMountPoint:(id)point inode:(unint64_t)inode error:(id *)error;
- (id)fetchEncryptionKeyForInode:(unint64_t)inode volumeMountPoint:(id)point error:(id *)error;
@end

@implementation MBMissedEncryptionKeysDB

+ (id)openOrCreateDatabaseIn:(id)in commitID:(id)d error:(id *)error
{
  v5 = sub_1002086F0(in, d);
  v6 = [[MBMissedEncryptionKeysDB alloc] initWithPath:v5 readOnly:0];

  return v6;
}

- (BOOL)setFoundEncryptionKey:(id)key forVolumeMountPoint:(id)point inode:(unint64_t)inode error:(id *)error
{
  keyCopy = key;
  pointCopy = point;
  if (!keyCopy)
  {
    __assert_rtn("[MBMissedEncryptionKeysDB setFoundEncryptionKey:forVolumeMountPoint:inode:error:]", "MBMissedEncryptionKeysDB.m", 84, "encryptionKey");
  }

  v12 = pointCopy;
  keyCopy = [(MBSQLiteDB *)self->_db executeWithError:error sql:@"INSERT OR REPLACE INTO EncryptionKeys (volumeMountPoint, inode, encryptionKey) VALUES (%@, %llu, %@)", pointCopy, inode, keyCopy];

  return keyCopy;
}

- (id)fetchEncryptionKeyForInode:(unint64_t)inode volumeMountPoint:(id)point error:(id *)error
{
  db = self->_db;
  pointCopy = point;
  inode = [(MBSQLiteDB *)db fetchObjectOfClass:objc_opt_class() error:error sql:@"SELECT encryptionKey FROM EncryptionKeys WHERE volumeMountPoint=%@ AND inode=%llu", pointCopy, inode];

  return inode;
}

- (BOOL)enumerateInodesMissingEncryptionKeys:(id *)keys block:(id)block
{
  blockCopy = block;
  v7 = [(MBSQLiteDB *)self->_db fetchSQL:@"SELECT volumeMountPoint, inode FROM EncryptionKeys WHERE encryptionKey IS NULL"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100208C14;
  v10[3] = &unk_1003BE658;
  v11 = blockCopy;
  v8 = blockCopy;
  LOBYTE(keys) = [v7 enumerateWithError:keys block:v10];

  return keys;
}

@end