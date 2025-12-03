@interface HMDHAPAccessoryRemoteWriteWithLocalFallbackTask
- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion;
- (id)_makeRemoteTaskWithRequests:(id)requests delegateDevice:(id)device completion:(id)completion;
@end

@implementation HMDHAPAccessoryRemoteWriteWithLocalFallbackTask

- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion
{
  completionCopy = completion;
  requestsCopy = requests;
  v8 = [HMDHAPAccessoryLocalWriteTask alloc];
  context = [(HMDHAPAccessoryTask *)self context];
  v10 = [requestsCopy na_map:&__block_literal_global_543];

  v11 = [(HMDHAPAccessoryTask *)v8 initWithContext:context requests:v10 completion:completionCopy];

  return v11;
}

- (id)_makeRemoteTaskWithRequests:(id)requests delegateDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  requestsCopy = requests;
  v11 = [requestsCopy na_any:&__block_literal_global_414];
  v12 = @"AccessoryReaderWriterMessageWriteTimeout";
  if (v11)
  {
    v12 = @"AccessoryReaderWriterMessageWriteTimeoutForSuspendedAccessory";
  }

  v13 = MEMORY[0x277D0F8D0];
  v14 = v12;
  sharedPreferences = [v13 sharedPreferences];
  v16 = [sharedPreferences preferenceForKey:v14];

  numberValue = [v16 numberValue];
  [numberValue doubleValue];
  v19 = v18;

  v20 = [HMDHAPAccessoryRemoteWriteTask alloc];
  context = [(HMDHAPAccessoryTask *)self context];
  v22 = [requestsCopy na_map:&__block_literal_global_543];

  v23 = [(HMDHAPAccessoryRemoteWriteTask *)v20 initWithContext:context requests:v22 delegateDevice:deviceCopy timeout:completionCopy completion:v19];

  return v23;
}

uint64_t __105__HMDHAPAccessoryRemoteWriteWithLocalFallbackTask__makeRemoteTaskWithRequests_delegateDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessory];
  v3 = [v2 canWakeViaCustomWoBLE];

  return v3;
}

@end