@interface HMDAppleAccountManagerDefaultDataSource
+ (id)makeDefaultAccountStore;
- (HMDAppleAccountManagerDefaultDataSource)initWithQueue:(id)a3;
@end

@implementation HMDAppleAccountManagerDefaultDataSource

- (HMDAppleAccountManagerDefaultDataSource)initWithQueue:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = HMDAppleAccountManagerDefaultDataSource;
  v6 = [(HMDAppleAccountManagerDefaultDataSource *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc(MEMORY[0x277CEEA10]);
    v9 = [v8 initWithEnvironmentName:*MEMORY[0x277CEE9F0] namedDelegatePort:*MEMORY[0x277CEE9D8] queue:v5];
    apsConnection = v7->_apsConnection;
    v7->_apsConnection = v9;

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v7->_notificationCenter;
    v7->_notificationCenter = v11;

    v13 = +[HMDAppleAccountManagerDefaultDataSource makeDefaultAccountStore];
    accountStore = v7->_accountStore;
    v7->_accountStore = v13;

    v15 = objc_alloc_init(HMDAccountChangeObserver);
    accountChangeObserver = v7->_accountChangeObserver;
    v7->_accountChangeObserver = v15;
  }

  return v7;
}

+ (id)makeDefaultAccountStore
{
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);

  return v2;
}

@end