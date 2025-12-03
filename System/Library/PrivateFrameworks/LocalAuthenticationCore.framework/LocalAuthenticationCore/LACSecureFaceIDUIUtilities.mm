@interface LACSecureFaceIDUIUtilities
+ (id)sharedInstance;
- (BOOL)isActive;
- (BOOL)isEnabled;
@end

@implementation LACSecureFaceIDUIUtilities

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_11 != -1)
  {
    +[LACSecureFaceIDUIUtilities sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_11;

  return v3;
}

uint64_t __44__LACSecureFaceIDUIUtilities_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_11 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isActive
{
  isEnabled = [(LACSecureFaceIDUIUtilities *)self isEnabled];
  if (isEnabled)
  {

    LOBYTE(isEnabled) = [(LACSecureFaceIDUIUtilities *)self isSupported];
  }

  return isEnabled;
}

- (BOOL)isEnabled
{
  v2 = +[LACFlags sharedInstance];
  featureFlagSecureUIEnabled = [v2 featureFlagSecureUIEnabled];

  return featureFlagSecureUIEnabled;
}

@end