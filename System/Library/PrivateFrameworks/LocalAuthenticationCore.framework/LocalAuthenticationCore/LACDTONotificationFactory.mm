@interface LACDTONotificationFactory
- (id)_securityDelayEndedNotificationWithIdentifier:(id)a3 body:(id)a4 callbackURL:(id)a5 after:(double)a6 maxAge:(double)a7;
- (id)newSecurityDelayRequiredNotification;
- (id)securityDelayEndedNotificationForPendingEvaluation:(id)a3 after:(double)a4 validity:(double)a5;
@end

@implementation LACDTONotificationFactory

- (id)newSecurityDelayRequiredNotification
{
  v2 = objc_alloc_init(LACUNMutableNotification);
  [(LACUNMutableNotification *)v2 setIdentifier:@"com.apple.coreauthd.notifications.newSecurityDelayRequired"];
  [(LACUNMutableNotification *)v2 setCategoryIdentifier:@"com.apple.coreauthd.notifications.category.securityDelay.required"];
  [(LACUNMutableNotification *)v2 setShouldDisplayActionsInline:1];
  [(LACUNMutableNotification *)v2 setTitle:@"NEW_SECURITY_DELAY_REQUIRED_TITLE"];
  [(LACUNMutableNotification *)v2 setIsTitleLocalized:0];
  [(LACUNMutableNotification *)v2 setBody:@"NEW_SECURITY_DELAY_REQUIRED_BODY"];
  [(LACUNMutableNotification *)v2 setIsBodyLocalized:0];
  [(LACUNMutableNotification *)v2 setIsTimeSensitive:1];
  [(LACUNMutableNotification *)v2 setSystemIconName:@"lock.fill"];
  return v2;
}

- (id)securityDelayEndedNotificationForPendingEvaluation:(id)a3 after:(double)a4 validity:(double)a5
{
  v8 = a3;
  v9 = [v8 callbackReason];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F2652748;
  }

  v12 = [LACLocalization dtoSecurityDelayEndedText:v11 duration:a5 - a4];

  v13 = [v8 identifier];
  v14 = [v8 callbackURL];

  v15 = [(LACDTONotificationFactory *)self _securityDelayEndedNotificationWithIdentifier:v13 body:v12 callbackURL:v14 after:a4 maxAge:-1.0];

  return v15;
}

- (id)_securityDelayEndedNotificationWithIdentifier:(id)a3 body:(id)a4 callbackURL:(id)a5 after:(double)a6 maxAge:(double)a7
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(LACUNMutableNotification);
  [(LACUNMutableNotification *)v14 setIdentifier:v13];

  [(LACUNMutableNotification *)v14 setCategoryIdentifier:@"com.apple.coreauthd.notifications.category.securityDelay.ended"];
  [(LACUNMutableNotification *)v14 setTitle:@"SECURITY_DELAY_ENDED"];
  [(LACUNMutableNotification *)v14 setIsTitleLocalized:0];
  [(LACUNMutableNotification *)v14 setBody:v12];

  [(LACUNMutableNotification *)v14 setIsBodyLocalized:1];
  [(LACUNMutableNotification *)v14 setDefaultActionURL:v11];

  [(LACUNMutableNotification *)v14 setIsTimeSensitive:1];
  [(LACUNMutableNotification *)v14 setSystemIconName:@"lock.open.fill"];
  [(LACUNMutableNotification *)v14 setTriggerInterval:a6];
  if (a7 > 0.0 && a7 != -1.0)
  {
    [(LACUNMutableNotification *)v14 setWithdrawInterval:fmax(a7, 60.0)];
  }

  return v14;
}

@end