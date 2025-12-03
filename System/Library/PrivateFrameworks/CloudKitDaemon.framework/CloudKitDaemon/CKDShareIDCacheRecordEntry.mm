@interface CKDShareIDCacheRecordEntry
- (CKDShareIDCacheRecordEntry)initWithZoneRowID:(id)d recordName:(id)name;
@end

@implementation CKDShareIDCacheRecordEntry

- (CKDShareIDCacheRecordEntry)initWithZoneRowID:(id)d recordName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = CKDShareIDCacheRecordEntry;
  v9 = [(CKDShareIDCacheRecordEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneRowID, d);
    objc_storeStrong(&v10->_recordName, name);
  }

  return v10;
}

@end