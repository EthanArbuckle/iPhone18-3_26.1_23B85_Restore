@interface UIApplication(IC)
+ (void)ic_openSettings;
+ (void)ic_openSettingsToRoot:()IC path:;
- (uint64_t)ic_hasConnectedHostedWindowScene;
@end

@implementation UIApplication(IC)

+ (void)ic_openSettings
{
  v1 = [MEMORY[0x1E69DC668] sharedApplication];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69DDB48]];
  [v1 openURL:v0 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (uint64_t)ic_hasConnectedHostedWindowScene
{
  v1 = [a1 connectedScenes];
  v2 = [v1 ic_containsObjectPassingTest:&__block_literal_global_53];

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
  v9 = [MEMORY[0x1E6963608] defaultWorkspace];
  v10 = [v9 openSensitiveURL:v8 withOptions:0];

  if ((v10 & 1) == 0)
  {
    [a1 ic_openSettings];
  }
}

@end