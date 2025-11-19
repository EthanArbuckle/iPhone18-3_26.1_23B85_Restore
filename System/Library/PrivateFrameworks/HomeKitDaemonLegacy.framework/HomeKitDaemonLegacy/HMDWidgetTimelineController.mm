@interface HMDWidgetTimelineController
- (id)reloadTimelineWithExtensionBundleIdentifier:(id)a3 kind:(id)a4 reason:(id)a5;
@end

@implementation HMDWidgetTimelineController

- (id)reloadTimelineWithExtensionBundleIdentifier:(id)a3 kind:(id)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self)
  {
    v11 = [objc_alloc(MEMORY[0x277CFA320]) initWithExtensionBundleIdentifier:v8 kind:v9];
    v12 = [v11 reloadTimelineWithReason:v10];
    v13 = [MEMORY[0x277CFA238] sharedInstance];
    [v13 reloadControlsForExtension:v8 kind:v9 reason:v10];
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  }

  return v12;
}

@end