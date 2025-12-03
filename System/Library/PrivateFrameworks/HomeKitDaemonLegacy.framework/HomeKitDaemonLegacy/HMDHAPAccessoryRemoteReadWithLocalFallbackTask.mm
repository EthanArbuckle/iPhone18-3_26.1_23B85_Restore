@interface HMDHAPAccessoryRemoteReadWithLocalFallbackTask
- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion;
- (id)_makeRemoteTaskWithRequests:(id)requests delegateDevice:(id)device completion:(id)completion;
@end

@implementation HMDHAPAccessoryRemoteReadWithLocalFallbackTask

- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion
{
  completionCopy = completion;
  requestsCopy = requests;
  v8 = [HMDHAPAccessoryLocalReadTask alloc];
  context = [(HMDHAPAccessoryTask *)self context];
  v10 = [(HMDHAPAccessoryTask *)v8 initWithContext:context requests:requestsCopy completion:completionCopy];

  return v10;
}

- (id)_makeRemoteTaskWithRequests:(id)requests delegateDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  requestsCopy = requests;
  v11 = [HMDHAPAccessoryRemoteReadTask alloc];
  context = [(HMDHAPAccessoryTask *)self context];
  v13 = [(HMDHAPAccessoryRemoteReadTask *)v11 initWithContext:context requests:requestsCopy delegateDevice:deviceCopy completion:completionCopy];

  return v13;
}

@end