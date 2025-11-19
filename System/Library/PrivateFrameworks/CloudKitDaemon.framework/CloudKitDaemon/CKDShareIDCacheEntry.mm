@interface CKDShareIDCacheEntry
- (CKDShareIDCacheEntry)initWithRecordName:(id)a3 zoneRowID:(id)a4;
@end

@implementation CKDShareIDCacheEntry

- (CKDShareIDCacheEntry)initWithRecordName:(id)a3 zoneRowID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CKDShareIDCacheEntry;
  v9 = [(CKDShareIDCacheEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneRowID, a4);
    objc_storeStrong(&v10->_recordName, a3);
  }

  return v10;
}

@end