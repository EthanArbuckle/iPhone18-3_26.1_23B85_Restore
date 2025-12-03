@interface DSContinuityPairingWrapper
- (DSContinuityPairingWrapper)init;
- (void)fetchContinuityEligibleDevicesWithCompletion:(id)completion;
- (void)unpairHostWithDeviceID:(id)d completion:(id)completion;
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

- (void)fetchContinuityEligibleDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  continuityPairing = [(DSContinuityPairingWrapper *)self continuityPairing];
  [continuityPairing fetchContinuityDevicesWithCompletionHandler:completionCopy];
}

- (void)unpairHostWithDeviceID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  continuityPairing = [(DSContinuityPairingWrapper *)self continuityPairing];
  [continuityPairing unpairDeviceWith:dCopy completionHandler:completionCopy];
}

@end