@interface ML3AccountCacheEntry
- (ML3AccountCacheEntry)initWithAppleID:(id)d altDSID:(id)iD;
@end

@implementation ML3AccountCacheEntry

- (ML3AccountCacheEntry)initWithAppleID:(id)d altDSID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = ML3AccountCacheEntry;
  v9 = [(ML3AccountCacheEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appleID, d);
    objc_storeStrong(&v10->_altDSID, iD);
  }

  return v10;
}

@end