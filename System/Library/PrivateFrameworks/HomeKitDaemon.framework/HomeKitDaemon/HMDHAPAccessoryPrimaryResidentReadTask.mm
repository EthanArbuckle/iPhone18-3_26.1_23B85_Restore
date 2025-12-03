@interface HMDHAPAccessoryPrimaryResidentReadTask
- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion;
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

@end