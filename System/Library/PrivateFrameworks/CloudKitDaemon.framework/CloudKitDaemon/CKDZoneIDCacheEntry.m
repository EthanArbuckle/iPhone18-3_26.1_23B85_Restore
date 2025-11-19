@interface CKDZoneIDCacheEntry
- (CKDZoneIDCacheEntry)initWithZoneIDString:(id)a3;
@end

@implementation CKDZoneIDCacheEntry

- (CKDZoneIDCacheEntry)initWithZoneIDString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKDZoneIDCacheEntry;
  v6 = [(CKDZoneIDCacheEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_zoneIDString, a3);
  }

  return v7;
}

@end