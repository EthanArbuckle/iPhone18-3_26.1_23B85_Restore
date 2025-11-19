@interface DSContinuityPairingWrapper
- (DSContinuityPairingWrapper)init;
- (void)fetchContinuityEligibleDevicesWithCompletion:(id)a3;
- (void)unpairHostWithDeviceID:(id)a3 completion:(id)a4;
@end

@implementation DSContinuityPairingWrapper

- (DSContinuityPairingWrapper)init
{
  v5.receiver = self;
  v5.super_class = DSContinuityPairingWrapper;
  v2 = [(DSContinuityPairingWrapper *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC19DSContinuityPairing17ContinuityPairing);
    [(DSContinuityPairingWrapper *)v2 setContinuityPairing:v3];
  }

  return v2;
}

- (void)fetchContinuityEligibleDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DSContinuityPairingWrapper *)self continuityPairing];
  [v5 fetchContinuityDevicesWithCompletionHandler:v4];
}

- (void)unpairHostWithDeviceID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DSContinuityPairingWrapper *)self continuityPairing];
  [v8 unpairDeviceWith:v7 completionHandler:v6];
}

@end