@interface ICASCollabNotificationAction
- (ICASCollabNotificationAction)initWithCollabNotificationAction:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASCollabNotificationAction

- (ICASCollabNotificationAction)initWithCollabNotificationAction:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASCollabNotificationAction;
  result = [(ICASCollabNotificationAction *)&v5 init];
  if (result)
  {
    result->_collabNotificationAction = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASCollabNotificationAction *)self collabNotificationAction];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF688[v3 - 1];
  }
}

@end