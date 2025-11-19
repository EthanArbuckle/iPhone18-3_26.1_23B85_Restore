@interface HMDHAPAccessoryPrimaryResidentWriteTask
- (id)_makeLocalTaskWithRequests:(id)a3 completion:(id)a4;
- (id)_makeRemoteWithFallbackTaskWithRequests:(id)a3 delegateDevice:(id)a4 completion:(id)a5;
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

- (id)_makeRemoteWithFallbackTaskWithRequests:(id)a3 delegateDevice:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [HMDHAPAccessoryRemoteWriteWithLocalFallbackTask alloc];
  v12 = [(HMDHAPAccessoryTask *)self context];
  v13 = [v10 na_map:&__block_literal_global_556];

  v14 = [(HMDHAPAccessoryRemoteOperationWithLocalFallbackTask *)v11 initWithContext:v12 requests:v13 delegateDevice:v9 completion:v8];

  return v14;
}

@end