@interface HMDHAPAccessoryLocalReadTask
- (void)_dispatchToAccessory:(id)a3 requests:(id)a4 logEvent:(id)a5 completion:(id)a6;
@end

@implementation HMDHAPAccessoryLocalReadTask

- (void)_dispatchToAccessory:(id)a3 requests:(id)a4 logEvent:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(HMDHAPAccessoryTask *)self sourceType];
  v17 = [(HMDHAPAccessoryTask *)self context];
  v15 = [v17 requestMessage];
  v16 = [(HMDHAPAccessoryTask *)self workQueue];
  [v13 readCharacteristicValues:v12 source:v14 message:v15 queue:v16 logEvent:v11 completionHandler:v10];
}

@end