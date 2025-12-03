@interface HMDHomeManagerDataSource
- (HMDHomeManagerDataSource)init;
- (HMDHomeManagerDataSource)initWithBackingStoreFactory:(id)factory wifiManagerFactory:(id)managerFactory threadClientFactory:(id)clientFactory;
- (id)_threadClientFactory;
- (id)backingStoreFactory;
- (id)createBackingStoreForHomeManager:(id)manager error:(id *)error;
- (id)createWiFiManager;
- (id)threadClientFactory;
- (id)wifiManagerFactory;
@end

@implementation HMDHomeManagerDataSource

- (id)backingStoreFactory
{
  v2 = *(self + OBJC_IVAR___HMDHomeManagerDataSource_backingStoreFactory + 8);
  v5[4] = *(self + OBJC_IVAR___HMDHomeManagerDataSource_backingStoreFactory);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_229860F94;
  v5[3] = &block_descriptor_21;
  v3 = _Block_copy(v5);

  return v3;
}

- (id)wifiManagerFactory
{
  v2 = *(self + OBJC_IVAR___HMDHomeManagerDataSource_wifiManagerFactory + 8);
  v5[4] = *(self + OBJC_IVAR___HMDHomeManagerDataSource_wifiManagerFactory);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2298610C8;
  v5[3] = &block_descriptor_18_0;
  v3 = _Block_copy(v5);

  return v3;
}

- (id)_threadClientFactory
{
  if (*(self + OBJC_IVAR___HMDHomeManagerDataSource__threadClientFactory))
  {
    v2 = *(self + OBJC_IVAR___HMDHomeManagerDataSource__threadClientFactory + 8);
    v5[4] = *(self + OBJC_IVAR___HMDHomeManagerDataSource__threadClientFactory);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_2298610C8;
    v5[3] = &block_descriptor_15;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HMDHomeManagerDataSource)initWithBackingStoreFactory:(id)factory wifiManagerFactory:(id)managerFactory threadClientFactory:(id)clientFactory
{
  v8 = _Block_copy(factory);
  v9 = _Block_copy(managerFactory);
  v10 = _Block_copy(clientFactory);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  if (v10)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    v14 = sub_2298616E0;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = (self + OBJC_IVAR___HMDHomeManagerDataSource_backingStoreFactory);
  *v15 = sub_229861694;
  v15[1] = v11;
  v16 = (self + OBJC_IVAR___HMDHomeManagerDataSource_wifiManagerFactory);
  *v16 = sub_22986165C;
  v16[1] = v12;
  v17 = (self + OBJC_IVAR___HMDHomeManagerDataSource__threadClientFactory);
  *v17 = v14;
  v17[1] = v13;
  v19.receiver = self;
  v19.super_class = HMDHomeManagerDataSource;
  return [(HMDHomeManagerDataSource *)&v19 init];
}

- (id)createBackingStoreForHomeManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  selfCopy = self;
  backingStoreFactory = [(HMDHomeManagerDataSource *)selfCopy backingStoreFactory];
  v9 = backingStoreFactory[2](backingStoreFactory, managerCopy, error);
  _Block_release(backingStoreFactory);

  return v9;
}

- (id)createWiFiManager
{
  selfCopy = self;
  wifiManagerFactory = [(HMDHomeManagerDataSource *)selfCopy wifiManagerFactory];
  v4 = wifiManagerFactory[2]();
  _Block_release(wifiManagerFactory);

  return v4;
}

- (id)threadClientFactory
{
  _threadClientFactory = [(HMDHomeManagerDataSource *)self _threadClientFactory];
  if (_threadClientFactory)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = _threadClientFactory;
    v5[4] = sub_22986165C;
    v5[5] = v3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_2298610C8;
    v5[3] = &block_descriptor_45;
    _threadClientFactory = _Block_copy(v5);
  }

  return _threadClientFactory;
}

- (HMDHomeManagerDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end