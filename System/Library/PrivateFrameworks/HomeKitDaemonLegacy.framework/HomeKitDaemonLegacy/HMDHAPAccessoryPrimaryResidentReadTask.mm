@interface HMDHAPAccessoryPrimaryResidentReadTask
- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion;
- (id)_makeRemoteWithFallbackTaskWithRequests:(id)requests delegateDevice:(id)device completion:(id)completion;
@end

@implementation HMDHAPAccessoryPrimaryResidentReadTask

- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion
{
  completionCopy = completion;
  requestsCopy = requests;
  v8 = [HMDHAPAccessoryLocalReadTask alloc];
  context = [(HMDHAPAccessoryTask *)self context];
  v10 = [(HMDHAPAccessoryTask *)v8 initWithContext:context requests:requestsCopy completion:completionCopy];

  return v10;
}

- (id)_makeRemoteWithFallbackTaskWithRequests:(id)requests delegateDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  requestsCopy = requests;
  v11 = [HMDHAPAccessoryRemoteReadWithLocalFallbackTask alloc];
  context = [(HMDHAPAccessoryTask *)self context];
  v13 = [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)v11 initWithContext:context requests:requestsCopy delegateDevice:deviceCopy completion:completionCopy];

  return v13;
}

@end