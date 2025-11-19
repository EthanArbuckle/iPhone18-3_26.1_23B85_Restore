@interface HFSetupPairingContext
- (HFSetupPairingContext)init;
- (HFSetupPairingContext)initWithSetupAccessoryDescription:(id)a3 isTrustedOrigin:(BOOL)a4;
@end

@implementation HFSetupPairingContext

- (HFSetupPairingContext)initWithSetupAccessoryDescription:(id)a3 isTrustedOrigin:(BOOL)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HFSetupPairingContext.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"setupAccessoryDescription"}];
  }

  v13.receiver = self;
  v13.super_class = HFSetupPairingContext;
  v9 = [(HFSetupPairingContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_setupAccessoryDescription, a3);
    v10->_isTrustedOrigin = a4;
  }

  return v10;
}

- (HFSetupPairingContext)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithSetupAccessoryDescription_isTrustedOrigin_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFSetupPairingContext.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HFSetupPairingContext init]", v5}];

  return 0;
}

@end