@interface MBCKSnapshotToDomainRecordReference
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToReference:(id)a3;
- (MBCKSnapshotToDomainRecordReference)initWithBaseRecordID:(id)a3 pageCount:(unint64_t)a4 checksum:(int64_t)a5;
- (id)description;
@end

@implementation MBCKSnapshotToDomainRecordReference

- (MBCKSnapshotToDomainRecordReference)initWithBaseRecordID:(id)a3 pageCount:(unint64_t)a4 checksum:(int64_t)a5
{
  v9 = a3;
  if (!v9)
  {
    __assert_rtn("[MBCKSnapshotToDomainRecordReference initWithBaseRecordID:pageCount:checksum:]", "MBCKSnapshotToDomainRecordReference.m", 13, "baseRecordID");
  }

  if (!a4)
  {
    __assert_rtn("[MBCKSnapshotToDomainRecordReference initWithBaseRecordID:pageCount:checksum:]", "MBCKSnapshotToDomainRecordReference.m", 14, "pageCount > 0");
  }

  v10 = v9;
  v14.receiver = self;
  v14.super_class = MBCKSnapshotToDomainRecordReference;
  v11 = [(MBCKSnapshotToDomainRecordReference *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseRecordID, a3);
    v12->_pageCount = a4;
    v12->_checksum = a5;
  }

  return v12;
}

- (BOOL)isEqualToReference:(id)a3
{
  v4 = a3;
  v5 = [(MBCKSnapshotToDomainRecordReference *)self baseRecordID];
  v6 = [v4 baseRecordID];
  if ([v5 isEqualToString:v6] && (v7 = -[MBCKSnapshotToDomainRecordReference pageCount](self, "pageCount"), v7 == objc_msgSend(v4, "pageCount")))
  {
    v8 = [(MBCKSnapshotToDomainRecordReference *)self checksum];
    v9 = v8 == [v4 checksum];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MBCKSnapshotToDomainRecordReference *)self isEqualToReference:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  v5 = [(MBCKSnapshotToDomainRecordReference *)self baseRecordID];
  v6 = [NSString stringWithFormat:@"<%s: %p baseRecordID:%@ pc:%llu cs:0x%llx>", Name, self, v5, [(MBCKSnapshotToDomainRecordReference *)self pageCount], [(MBCKSnapshotToDomainRecordReference *)self checksum]];;

  return v6;
}

@end