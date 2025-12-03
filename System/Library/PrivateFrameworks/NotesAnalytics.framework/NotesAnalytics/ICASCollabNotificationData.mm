@interface ICASCollabNotificationData
- (ICASCollabNotificationData)initWithCollabNotificationAction:(id)action;
- (id)toDict;
@end

@implementation ICASCollabNotificationData

- (ICASCollabNotificationData)initWithCollabNotificationAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = ICASCollabNotificationData;
  v6 = [(ICASCollabNotificationData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collabNotificationAction, action);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"collabNotificationAction";
  collabNotificationAction = [(ICASCollabNotificationData *)self collabNotificationAction];
  if (collabNotificationAction)
  {
    collabNotificationAction2 = [(ICASCollabNotificationData *)self collabNotificationAction];
  }

  else
  {
    collabNotificationAction2 = objc_opt_new();
  }

  v5 = collabNotificationAction2;
  v10[0] = collabNotificationAction2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end