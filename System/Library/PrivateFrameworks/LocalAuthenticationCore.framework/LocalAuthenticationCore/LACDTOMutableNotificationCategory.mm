@interface LACDTOMutableNotificationCategory
+ (id)newSecurityDelayRequiredCategory;
+ (id)securityDelayEndedCategory;
@end

@implementation LACDTOMutableNotificationCategory

+ (id)newSecurityDelayRequiredCategory
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = [self alloc];
  v3 = +[LACDTOMutableNotificationAction startNewDelayAction];
  v9[0] = v3;
  v4 = +[LACDTOMutableNotificationAction doNotStartNewDelayAction];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 initWithIdentifier:@"com.apple.coreauthd.notifications.category.securityDelay.required" actions:v5 hiddenPreviewShowsTitle:1];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)securityDelayEndedCategory
{
  v2 = [self alloc];
  v3 = [v2 initWithIdentifier:@"com.apple.coreauthd.notifications.category.securityDelay.ended" actions:MEMORY[0x1E695E0F0] hiddenPreviewShowsTitle:1];

  return v3;
}

@end