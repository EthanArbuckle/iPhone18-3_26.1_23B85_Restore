@interface HMDHAPAccessoryPrimaryResidentWriteTask
- (id)_makeLocalTaskWithRequests:(id)a3 completion:(id)a4;
@end

@implementation HMDHAPAccessoryPrimaryResidentWriteTask

- (id)_makeLocalTaskWithRequests:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HMDHAPAccessoryLocalWriteTask alloc];
  v9 = [(HMDHAPAccessoryTask *)self context];
  v10 = [(HMDHAPAccessoryTask *)v8 initWithContext:v9 requests:v7 completion:v6];

  return v10;
}

@end