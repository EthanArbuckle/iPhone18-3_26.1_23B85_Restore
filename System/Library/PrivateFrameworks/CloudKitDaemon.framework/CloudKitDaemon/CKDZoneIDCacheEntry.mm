@interface CKDZoneIDCacheEntry
- (CKDZoneIDCacheEntry)initWithZoneIDString:(id)string;
@end

@implementation CKDZoneIDCacheEntry

- (CKDZoneIDCacheEntry)initWithZoneIDString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = CKDZoneIDCacheEntry;
  v6 = [(CKDZoneIDCacheEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_zoneIDString, string);
  }

  return v7;
}

@end