@interface NotificationPromptManager
- (int64_t)notificationPrompt;
- (int64_t)subscribeNotificationPromptForTagID:(id)d;
@end

@implementation NotificationPromptManager

- (int64_t)subscribeNotificationPromptForTagID:(id)d
{
  v3 = sub_219BF5414();
  v5 = v4;

  v6 = sub_218CCC57C(v3, v5);

  return v6;
}

- (int64_t)notificationPrompt
{

  v2 = sub_218CCC978();

  return v2;
}

@end