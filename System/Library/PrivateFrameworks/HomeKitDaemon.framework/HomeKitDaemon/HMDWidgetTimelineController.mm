@interface HMDWidgetTimelineController
- (id)reloadTimelineWithExtensionBundleIdentifier:(id)identifier kind:(id)kind reason:(id)reason;
@end

@implementation HMDWidgetTimelineController

- (id)reloadTimelineWithExtensionBundleIdentifier:(id)identifier kind:(id)kind reason:(id)reason
{
  identifierCopy = identifier;
  kindCopy = kind;
  reasonCopy = reason;
  if (self)
  {
    v11 = [objc_alloc(MEMORY[0x277CFA320]) initWithExtensionBundleIdentifier:identifierCopy kind:kindCopy];
    v12 = [v11 reloadTimelineWithReason:reasonCopy];
    mEMORY[0x277CFA238] = [MEMORY[0x277CFA238] sharedInstance];
    [mEMORY[0x277CFA238] reloadControlsForExtension:identifierCopy kind:kindCopy reason:reasonCopy];
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  }

  return v12;
}

@end