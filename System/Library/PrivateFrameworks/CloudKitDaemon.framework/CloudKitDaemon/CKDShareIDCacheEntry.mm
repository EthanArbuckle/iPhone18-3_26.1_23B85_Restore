@interface CKDShareIDCacheEntry
- (CKDShareIDCacheEntry)initWithRecordName:(id)name zoneRowID:(id)d;
@end

@implementation CKDShareIDCacheEntry

- (CKDShareIDCacheEntry)initWithRecordName:(id)name zoneRowID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = CKDShareIDCacheEntry;
  v9 = [(CKDShareIDCacheEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneRowID, d);
    objc_storeStrong(&v10->_recordName, name);
  }

  return v10;
}

@end