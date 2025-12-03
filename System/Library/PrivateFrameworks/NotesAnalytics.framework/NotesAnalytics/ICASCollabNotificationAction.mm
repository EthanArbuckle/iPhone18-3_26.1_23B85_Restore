@interface ICASCollabNotificationAction
- (ICASCollabNotificationAction)initWithCollabNotificationAction:(int64_t)action;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASCollabNotificationAction

- (ICASCollabNotificationAction)initWithCollabNotificationAction:(int64_t)action
{
  v5.receiver = self;
  v5.super_class = ICASCollabNotificationAction;
  result = [(ICASCollabNotificationAction *)&v5 init];
  if (result)
  {
    result->_collabNotificationAction = action;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  collabNotificationAction = [(ICASCollabNotificationAction *)self collabNotificationAction];
  if ((collabNotificationAction - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF688[collabNotificationAction - 1];
  }
}

@end