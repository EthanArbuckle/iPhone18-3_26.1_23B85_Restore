@interface UIAccessibilityLinkSubelement(IC)
- (id)accessibilityCustomRotors;
- (id)supportedRotorTypes;
@end

@implementation UIAccessibilityLinkSubelement(IC)

- (id)supportedRotorTypes
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = @"ICAccessibilityRotorTypeLinks";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];

  return v0;
}

- (id)accessibilityCustomRotors
{
  v0 = +[ICAccessibilityCustomRotorController sharedInstance];
  sharedTextViewRotors = [v0 sharedTextViewRotors];

  return sharedTextViewRotors;
}

@end