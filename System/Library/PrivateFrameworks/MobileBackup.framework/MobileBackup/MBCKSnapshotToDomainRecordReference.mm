@interface MBCKSnapshotToDomainRecordReference
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReference:(id)reference;
- (MBCKSnapshotToDomainRecordReference)initWithBaseRecordID:(id)d pageCount:(unint64_t)count checksum:(int64_t)checksum;
- (id)description;
@end

@implementation MBCKSnapshotToDomainRecordReference

- (MBCKSnapshotToDomainRecordReference)initWithBaseRecordID:(id)d pageCount:(unint64_t)count checksum:(int64_t)checksum
{
  dCopy = d;
  if (!dCopy)
  {
    __assert_rtn("[MBCKSnapshotToDomainRecordReference initWithBaseRecordID:pageCount:checksum:]", "MBCKSnapshotToDomainRecordReference.m", 13, "baseRecordID");
  }

  if (!count)
  {
    __assert_rtn("[MBCKSnapshotToDomainRecordReference initWithBaseRecordID:pageCount:checksum:]", "MBCKSnapshotToDomainRecordReference.m", 14, "pageCount > 0");
  }

  v10 = dCopy;
  v14.receiver = self;
  v14.super_class = MBCKSnapshotToDomainRecordReference;
  v11 = [(MBCKSnapshotToDomainRecordReference *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseRecordID, d);
    v12->_pageCount = count;
    v12->_checksum = checksum;
  }

  return v12;
}

- (BOOL)isEqualToReference:(id)reference
{
  referenceCopy = reference;
  baseRecordID = [(MBCKSnapshotToDomainRecordReference *)self baseRecordID];
  baseRecordID2 = [referenceCopy baseRecordID];
  if ([baseRecordID isEqualToString:baseRecordID2] && (v7 = -[MBCKSnapshotToDomainRecordReference pageCount](self, "pageCount"), v7 == objc_msgSend(referenceCopy, "pageCount")))
  {
    checksum = [(MBCKSnapshotToDomainRecordReference *)self checksum];
    v9 = checksum == [referenceCopy checksum];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MBCKSnapshotToDomainRecordReference *)self isEqualToReference:equalCopy];
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
  baseRecordID = [(MBCKSnapshotToDomainRecordReference *)self baseRecordID];
  v6 = [NSString stringWithFormat:@"<%s: %p baseRecordID:%@ pc:%llu cs:0x%llx>", Name, self, baseRecordID, [(MBCKSnapshotToDomainRecordReference *)self pageCount], [(MBCKSnapshotToDomainRecordReference *)self checksum]];;

  return v6;
}

@end