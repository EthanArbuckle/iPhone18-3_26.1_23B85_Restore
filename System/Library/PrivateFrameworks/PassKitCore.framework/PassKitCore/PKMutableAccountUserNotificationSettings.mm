@interface PKMutableAccountUserNotificationSettings
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKMutableAccountUserNotificationSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PKAccountUserNotificationSettings allocWithZone:a3];

  return [(PKAccountUserNotificationSettings *)v4 initWithAccountUserNotificationSettings:self];
}

@end