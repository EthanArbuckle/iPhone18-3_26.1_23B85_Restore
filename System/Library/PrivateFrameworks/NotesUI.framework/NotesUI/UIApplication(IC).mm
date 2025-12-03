@interface UIApplication(IC)
+ (void)ic_openSettings;
+ (void)ic_openSettingsToRoot:()IC path:;
- (uint64_t)ic_hasConnectedHostedWindowScene;
@end

@implementation UIApplication(IC)

+ (void)ic_openSettings
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69DDB48]];
  [mEMORY[0x1E69DC668] openURL:v0 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (uint64_t)ic_hasConnectedHostedWindowScene
{
  connectedScenes = [self connectedScenes];
  v2 = [connectedScenes ic_containsObjectPassingTest:&__block_literal_global_53];

  return v2;
}

+ (void)ic_openSettingsToRoot:()IC path:
{
  v11 = a4;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"prefs:root=%@", a3];
  if ([v11 length])
  {
    v7 = [v6 stringByAppendingFormat:@"&path=%@", v11];

    v6 = v7;
  }

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v10 = [defaultWorkspace openSensitiveURL:v8 withOptions:0];

  if ((v10 & 1) == 0)
  {
    [self ic_openSettings];
  }
}

@end