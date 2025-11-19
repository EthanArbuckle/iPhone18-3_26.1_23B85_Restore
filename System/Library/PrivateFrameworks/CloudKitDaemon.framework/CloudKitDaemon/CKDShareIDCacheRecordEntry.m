@interface CKDShareIDCacheRecordEntry
- (CKDShareIDCacheRecordEntry)initWithZoneRowID:(id)a3 recordName:(id)a4;
@end

@implementation CKDShareIDCacheRecordEntry

- (CKDShareIDCacheRecordEntry)initWithZoneRowID:(id)a3 recordName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CKDShareIDCacheRecordEntry;
  v9 = [(CKDShareIDCacheRecordEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneRowID, a3);
    objc_storeStrong(&v10->_recordName, a4);
  }

  return v10;
}

@end