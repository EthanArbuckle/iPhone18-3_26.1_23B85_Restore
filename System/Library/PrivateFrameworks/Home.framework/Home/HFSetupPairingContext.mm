@interface HFSetupPairingContext
- (HFSetupPairingContext)init;
- (HFSetupPairingContext)initWithSetupAccessoryDescription:(id)description isTrustedOrigin:(BOOL)origin;
@end

@implementation HFSetupPairingContext

- (HFSetupPairingContext)initWithSetupAccessoryDescription:(id)description isTrustedOrigin:(BOOL)origin
{
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFSetupPairingContext.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"setupAccessoryDescription"}];
  }

  v13.receiver = self;
  v13.super_class = HFSetupPairingContext;
  v9 = [(HFSetupPairingContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_setupAccessoryDescription, description);
    v10->_isTrustedOrigin = origin;
  }

  return v10;
}

- (HFSetupPairingContext)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithSetupAccessoryDescription_isTrustedOrigin_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFSetupPairingContext.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HFSetupPairingContext init]", v5}];

  return 0;
}

@end