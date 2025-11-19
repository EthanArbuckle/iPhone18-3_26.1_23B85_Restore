@interface HMDHAPAccessoryRemoteWriteWithLocalFallbackTask
- (id)_makeLocalTaskWithRequests:(id)a3 completion:(id)a4;
- (id)_makeRemoteTaskWithRequests:(id)a3 delegateDevice:(id)a4 completion:(id)a5;
@end

@implementation HMDHAPAccessoryRemoteWriteWithLocalFallbackTask

- (id)_makeLocalTaskWithRequests:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HMDHAPAccessoryLocalWriteTask alloc];
  v9 = [(HMDHAPAccessoryTask *)self context];
  v10 = [v7 na_map:&__block_literal_global_543];

  v11 = [(HMDHAPAccessoryTask *)v8 initWithContext:v9 requests:v10 completion:v6];

  return v11;
}

- (id)_makeRemoteTaskWithRequests:(id)a3 delegateDevice:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 na_any:&__block_literal_global_414];
  v12 = @"AccessoryReaderWriterMessageWriteTimeout";
  if (v11)
  {
    v12 = @"AccessoryReaderWriterMessageWriteTimeoutForSuspendedAccessory";
  }

  v13 = MEMORY[0x277D0F8D0];
  v14 = v12;
  v15 = [v13 sharedPreferences];
  v16 = [v15 preferenceForKey:v14];

  v17 = [v16 numberValue];
  [v17 doubleValue];
  v19 = v18;

  v20 = [HMDHAPAccessoryRemoteWriteTask alloc];
  v21 = [(HMDHAPAccessoryTask *)self context];
  v22 = [v10 na_map:&__block_literal_global_543];

  v23 = [(HMDHAPAccessoryRemoteWriteTask *)v20 initWithContext:v21 requests:v22 delegateDevice:v9 timeout:v8 completion:v19];

  return v23;
}

uint64_t __105__HMDHAPAccessoryRemoteWriteWithLocalFallbackTask__makeRemoteTaskWithRequests_delegateDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessory];
  v3 = [v2 canWakeViaCustomWoBLE];

  return v3;
}

@end