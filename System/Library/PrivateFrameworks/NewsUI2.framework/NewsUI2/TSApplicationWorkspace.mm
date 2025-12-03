@interface TSApplicationWorkspace
+ (void)openAppleAccountLoginSettings;
+ (void)openNewsSettings;
+ (void)openNewsSystemNotificationSettings;
@end

@implementation TSApplicationWorkspace

+ (void)openNewsSettings
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=NEWS"];
  [defaultWorkspace openSensitiveURL:v2 withOptions:0];
}

+ (void)openAppleAccountLoginSettings
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT"];
  [defaultWorkspace openSensitiveURL:v2 withOptions:0];
}

+ (void)openNewsSystemNotificationSettings
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=NEWS&path=NOTIFICATIONS"];
  [defaultWorkspace openSensitiveURL:v2 withOptions:0];
}

@end