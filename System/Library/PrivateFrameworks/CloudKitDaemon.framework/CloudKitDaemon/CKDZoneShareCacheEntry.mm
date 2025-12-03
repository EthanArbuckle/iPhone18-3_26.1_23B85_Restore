@interface CKDZoneShareCacheEntry
- (CKDZoneShareCacheEntry)initWithZoneRowID:(id)d shareRowID:(id)iD;
@end

@implementation CKDZoneShareCacheEntry

- (CKDZoneShareCacheEntry)initWithZoneRowID:(id)d shareRowID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = CKDZoneShareCacheEntry;
  v9 = [(CKDZoneShareCacheEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneRowID, d);
    objc_storeStrong(&v10->_shareRowID, iD);
  }

  return v10;
}

@end