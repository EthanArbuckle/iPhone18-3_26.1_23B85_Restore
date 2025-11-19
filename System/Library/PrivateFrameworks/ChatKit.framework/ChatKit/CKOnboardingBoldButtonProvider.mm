@interface CKOnboardingBoldButtonProvider
- (id)boldAlternateButton;
- (id)boldButton;
@end

@implementation CKOnboardingBoldButtonProvider

- (id)boldAlternateButton
{
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x1E69B7D00] boldAlternateButton];
  }

  else
  {
    [MEMORY[0x1E69B7D00] boldButton];
  }
  v2 = ;

  return v2;
}

- (id)boldButton
{
  if ([(CKOnboardingBoldButtonProvider *)self shouldForceAlternateButton])
  {
    [(CKOnboardingBoldButtonProvider *)self boldAlternateButton];
  }

  else
  {
    [MEMORY[0x1E69B7D00] boldButton];
  }
  v3 = ;

  return v3;
}

@end