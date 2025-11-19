@interface CKDZoneShareCacheEntry
- (CKDZoneShareCacheEntry)initWithZoneRowID:(id)a3 shareRowID:(id)a4;
@end

@implementation CKDZoneShareCacheEntry

- (CKDZoneShareCacheEntry)initWithZoneRowID:(id)a3 shareRowID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CKDZoneShareCacheEntry;
  v9 = [(CKDZoneShareCacheEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneRowID, a3);
    objc_storeStrong(&v10->_shareRowID, a4);
  }

  return v10;
}

@end