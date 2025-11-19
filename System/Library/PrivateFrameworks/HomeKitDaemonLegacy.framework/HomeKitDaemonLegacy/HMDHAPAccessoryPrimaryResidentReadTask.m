@interface HMDHAPAccessoryPrimaryResidentReadTask
- (id)_makeLocalTaskWithRequests:(id)a3 completion:(id)a4;
- (id)_makeRemoteWithFallbackTaskWithRequests:(id)a3 delegateDevice:(id)a4 completion:(id)a5;
@end

@implementation HMDHAPAccessoryPrimaryResidentReadTask

- (id)_makeLocalTaskWithRequests:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HMDHAPAccessoryLocalReadTask alloc];
  v9 = [(HMDHAPAccessoryTask *)self context];
  v10 = [(HMDHAPAccessoryTask *)v8 initWithContext:v9 requests:v7 completion:v6];

  return v10;
}

- (id)_makeRemoteWithFallbackTaskWithRequests:(id)a3 delegateDevice:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [HMDHAPAccessoryRemoteReadWithLocalFallbackTask alloc];
  v12 = [(HMDHAPAccessoryTask *)self context];
  v13 = [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)v11 initWithContext:v12 requests:v10 delegateDevice:v9 completion:v8];

  return v13;
}

@end