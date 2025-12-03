@interface HKACAccountDeviceStore
- (HKACAccountDeviceStore)initWithAccountStore:(id)store;
- (void)fetchDevicesWithRequest:(id)request completion:(id)completion;
@end

@implementation HKACAccountDeviceStore

- (HKACAccountDeviceStore)initWithAccountStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = HKACAccountDeviceStore;
  v6 = [(HKACAccountDeviceStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
  }

  return v7;
}

- (void)fetchDevicesWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HKACAccountDeviceStore_fetchDevicesWithRequest_completion___block_invoke;
  v7[3] = &unk_2796CA430;
  v8 = completionCopy;
  v6 = completionCopy;
  [request performRequestWithHandler:v7];
}

void __61__HKACAccountDeviceStore_fetchDevicesWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = a3;
  if (a4)
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v9 devices];
      v8 = [v7 hk_map:&__block_literal_global_2];

      (*(*(a1 + 32) + 16))();
      goto LABEL_7;
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
LABEL_7:
}

HKACAccountDevice *__61__HKACAccountDeviceStore_fetchDevicesWithRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HKACAccountDevice alloc] initWithDevice:v2];

  return v3;
}

@end