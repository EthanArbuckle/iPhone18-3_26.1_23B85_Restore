@interface PKMutableAccountUserNotificationSettings
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKMutableAccountUserNotificationSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PKAccountUserNotificationSettings allocWithZone:zone];

  return [(PKAccountUserNotificationSettings *)v4 initWithAccountUserNotificationSettings:self];
}

@end