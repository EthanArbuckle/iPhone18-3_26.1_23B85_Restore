@interface GCDeviceSession(UI)
+ (_GCHIDEventUIKitClient)ui_hidEventSourceWithClient:()UI queue:;
+ (id)_ui_deviceProviderTypesForConfiguration:()UI;
+ (id)ui_serviceFor:()UI client:;
- (void)_ui_enableCompatibilityManager;
@end

@implementation GCDeviceSession(UI)

+ (id)_ui_deviceProviderTypesForConfiguration:()UI
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

+ (id)ui_serviceFor:()UI client:
{
  if (&unk_282545DA8 == a3)
  {
    v5 = +[_GCUIScreenRecorderService sharedInstance];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (_GCHIDEventUIKitClient)ui_hidEventSourceWithClient:()UI queue:
{
  v4 = a4;
  v5 = [[_GCHIDEventUIKitClient alloc] initWithQueue:v4];

  return v5;
}

- (void)_ui_enableCompatibilityManager
{
  v0 = +[_GCUIInteractionCompatibilityManager sharedInstance];
  [v0 setEnabled:1];
}

@end