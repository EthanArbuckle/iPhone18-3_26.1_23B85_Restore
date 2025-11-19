@interface ML3AccountCacheEntry
- (ML3AccountCacheEntry)initWithAppleID:(id)a3 altDSID:(id)a4;
@end

@implementation ML3AccountCacheEntry

- (ML3AccountCacheEntry)initWithAppleID:(id)a3 altDSID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ML3AccountCacheEntry;
  v9 = [(ML3AccountCacheEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appleID, a3);
    objc_storeStrong(&v10->_altDSID, a4);
  }

  return v10;
}

@end