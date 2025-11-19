@interface FCNotificationsConfiguration
- (BOOL)isEqual:(id)a3;
- (FCNotificationsConfiguration)initWithPresubscribedChannelIDs:(id)a3 recommendedNotificationChannelIDs:(id)a4;
@end

@implementation FCNotificationsConfiguration

- (FCNotificationsConfiguration)initWithPresubscribedChannelIDs:(id)a3 recommendedNotificationChannelIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FCNotificationsConfiguration;
  v8 = [(FCNotificationsConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    preSubscribedNotificationsChannelIDs = v8->_preSubscribedNotificationsChannelIDs;
    v8->_preSubscribedNotificationsChannelIDs = v9;

    v11 = [v7 copy];
    recommendedNotificationChannelIDs = v8->_recommendedNotificationChannelIDs;
    v8->_recommendedNotificationChannelIDs = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && [MEMORY[0x1E69E58C0] nf_object:self->_preSubscribedNotificationsChannelIDs isEqualToObject:v6[1]])
  {
    v7 = [MEMORY[0x1E69E58C0] nf_object:self->_recommendedNotificationChannelIDs isEqualToObject:v6[2]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end