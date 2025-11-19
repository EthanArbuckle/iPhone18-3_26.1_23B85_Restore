@interface TSApplicationWorkspace
+ (void)openAppleAccountLoginSettings;
+ (void)openNewsSettings;
+ (void)openNewsSystemNotificationSettings;
@end

@implementation TSApplicationWorkspace

+ (void)openNewsSettings
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=NEWS"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

+ (void)openAppleAccountLoginSettings
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

+ (void)openNewsSystemNotificationSettings
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=NEWS&path=NOTIFICATIONS"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

@end