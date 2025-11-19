@interface EDUserNotificationFilter
- (BOOL)_messageNeedsNotification:(id)a3;
- (EDUserNotificationFilter)initWithBlockedSenderReader:(id)a3 vipReader:(id)a4;
- (id)messagesNeedingNotification:(id)a3;
@end

@implementation EDUserNotificationFilter

- (EDUserNotificationFilter)initWithBlockedSenderReader:(id)a3 vipReader:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EDUserNotificationFilter;
  v9 = [(EDUserNotificationFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_blockedSenderReader, a3);
    objc_storeStrong(&v10->_vipReader, a4);
  }

  return v10;
}

- (id)messagesNeedingNotification:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__EDUserNotificationFilter_messagesNeedingNotification___block_invoke;
  v5[3] = &unk_1E8251360;
  v5[4] = self;
  v3 = [a3 ef_filter:v5];

  return v3;
}

- (BOOL)_messageNeedsNotification:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 flags];
  v6 = [v4 conversationFlags];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [v7 dateByAddingUnit:16 value:-7 toDate:v8 options:0];

  if ([v4 isServerSearchResult])
  {
    v10 = EDUserNotificationCenterLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 remoteID];
      v29 = 138543362;
      v30 = v11;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Not showing notification for message: %{public}@ because it is a server search result.", &v29, 0xCu);
    }
  }

  else if ([v5 read])
  {
    v10 = EDUserNotificationCenterLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 remoteID];
      v29 = 138543362;
      v30 = v12;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Not showing notification for message: %{public}@ because it is marked as read.", &v29, 0xCu);
    }
  }

  else
  {
    v13 = [(EDUserNotificationFilter *)self blockedSenderReader];
    v14 = [v4 senders];
    v15 = [v14 firstObject];
    v16 = [v13 isEmailAddressBlocked:v15];

    if (!v16)
    {
      if (v6 == 4)
      {
        v21 = [(EDUserNotificationFilter *)self vipReader];
        v22 = [v4 senders];
        v23 = [v22 firstObject];
        v24 = [v21 isVIPAddress:v23];

        if ((v24 & 1) == 0)
        {
          v10 = EDUserNotificationCenterLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v4 remoteID];
            v29 = 138543362;
            v30 = v25;
            _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Not showing notification for message: %{public}@ because it is in a muted conversation.", &v29, 0xCu);
          }

          goto LABEL_10;
        }
      }

      else
      {
        v26 = [v4 displayDate];
        v27 = [v26 ef_isEarlierThanDate:v9];

        if (v27)
        {
          v10 = EDUserNotificationCenterLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v4 remoteID];
            v29 = 138543362;
            v30 = v28;
            _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Not showing notification for message %{public}@ because it is more than a week old", &v29, 0xCu);
          }

          goto LABEL_10;
        }
      }

      v18 = 1;
      goto LABEL_11;
    }

    v10 = EDUserNotificationCenterLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v4 remoteID];
      v29 = 138543362;
      v30 = v17;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Not showing notification for message: %{public}@ because it is from a blocked sender.", &v29, 0xCu);
    }
  }

LABEL_10:

  v18 = 0;
LABEL_11:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

@end