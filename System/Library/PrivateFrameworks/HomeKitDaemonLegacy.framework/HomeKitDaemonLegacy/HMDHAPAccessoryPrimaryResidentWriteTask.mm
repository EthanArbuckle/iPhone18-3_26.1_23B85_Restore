@interface HMDHAPAccessoryPrimaryResidentWriteTask
- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion;
- (id)_makeRemoteWithFallbackTaskWithRequests:(id)requests delegateDevice:(id)device completion:(id)completion;
@end

@implementation HMDHAPAccessoryPrimaryResidentWriteTask

- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion
{
  completionCopy = completion;
  requestsCopy = requests;
  v8 = [HMDHAPAccessoryLocalWriteTask alloc];
  context = [(HMDHAPAccessoryTask *)self context];
  v10 = [(HMDHAPAccessoryTask *)v8 initWithContext:context requests:requestsCopy completion:completionCopy];

  return v10;
}

- (id)_makeRemoteWithFallbackTaskWithRequests:(id)requests delegateDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  requestsCopy = requests;
  v11 = [HMDHAPAccessoryRemoteWriteWithLocalFallbackTask alloc];
  context = [(HMDHAPAccessoryTask *)self context];
  v13 = [requestsCopy na_map:&__block_literal_global_556];

  v14 = [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)v11 initWithContext:context requests:v13 delegateDevice:deviceCopy completion:completionCopy];

  return v14;
}

@end