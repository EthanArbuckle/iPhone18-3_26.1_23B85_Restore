@interface HMDHomeManagerDataSource
- (HMDHomeManagerDataSource)init;
- (HMDHomeManagerDataSource)initWithBackingStoreFactory:(id)factory wifiManagerFactory:(id)managerFactory cloudCacheFactory:(id)cacheFactory threadClientFactory:(id)clientFactory;
- (id)_threadClientFactory;
- (id)backingStoreFactory;
- (id)cloudCacheFactory;
- (id)createBackingStoreForHomeManager:(id)manager error:(id *)error;
- (id)createCloudCacheForHomeManager:(id)manager backingStore:(id)store workQueue:(id)queue;
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
  v5[2] = sub_25320DD74;
  v5[3] = &block_descriptor_27;
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
  v5[2] = sub_25320DEA8;
  v5[3] = &block_descriptor_24;
  v3 = _Block_copy(v5);

  return v3;
}

- (id)cloudCacheFactory
{
  v2 = *(self + OBJC_IVAR___HMDHomeManagerDataSource_cloudCacheFactory + 8);
  v5[4] = *(self + OBJC_IVAR___HMDHomeManagerDataSource_cloudCacheFactory);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_25320DFB0;
  v5[3] = &block_descriptor_21;
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
    v5[2] = sub_25320DEA8;
    v5[3] = &block_descriptor_18;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HMDHomeManagerDataSource)initWithBackingStoreFactory:(id)factory wifiManagerFactory:(id)managerFactory cloudCacheFactory:(id)cacheFactory threadClientFactory:(id)clientFactory
{
  v10 = _Block_copy(factory);
  v11 = _Block_copy(managerFactory);
  v12 = _Block_copy(cacheFactory);
  v13 = _Block_copy(clientFactory);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  if (v13)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    v18 = sub_25320E7B0;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v19 = (self + OBJC_IVAR___HMDHomeManagerDataSource_backingStoreFactory);
  *v19 = sub_25320E70C;
  v19[1] = v14;
  v20 = (self + OBJC_IVAR___HMDHomeManagerDataSource_wifiManagerFactory);
  *v20 = sub_25320E6BC;
  v20[1] = v15;
  v21 = (self + OBJC_IVAR___HMDHomeManagerDataSource_cloudCacheFactory);
  *v21 = sub_25320E74C;
  v21[1] = v16;
  v22 = (self + OBJC_IVAR___HMDHomeManagerDataSource__threadClientFactory);
  *v22 = v18;
  v22[1] = v17;
  v24.receiver = self;
  v24.super_class = HMDHomeManagerDataSource;
  return [(HMDHomeManagerDataSource *)&v24 init];
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

- (id)createCloudCacheForHomeManager:(id)manager backingStore:(id)store workQueue:(id)queue
{
  managerCopy = manager;
  storeCopy = store;
  queueCopy = queue;
  selfCopy = self;
  cloudCacheFactory = [(HMDHomeManagerDataSource *)selfCopy cloudCacheFactory];
  v13 = cloudCacheFactory[2](cloudCacheFactory, managerCopy, storeCopy, queueCopy);
  _Block_release(cloudCacheFactory);

  return v13;
}

- (id)threadClientFactory
{
  _threadClientFactory = [(HMDHomeManagerDataSource *)self _threadClientFactory];
  if (_threadClientFactory)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = _threadClientFactory;
    v5[4] = sub_25320E6BC;
    v5[5] = v3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_25320DEA8;
    v5[3] = &block_descriptor;
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