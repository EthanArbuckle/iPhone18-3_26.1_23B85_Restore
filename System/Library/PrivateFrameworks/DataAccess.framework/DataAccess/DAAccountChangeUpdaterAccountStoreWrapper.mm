@interface DAAccountChangeUpdaterAccountStoreWrapper
- (DAAccountChangeUpdaterAccountStoreWrapper)initWithAccountStore:(id)store;
@end

@implementation DAAccountChangeUpdaterAccountStoreWrapper

- (DAAccountChangeUpdaterAccountStoreWrapper)initWithAccountStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = DAAccountChangeUpdaterAccountStoreWrapper;
  v6 = [(DAAccountChangeUpdaterAccountStoreWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

@end