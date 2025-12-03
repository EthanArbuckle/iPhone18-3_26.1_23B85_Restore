@interface EDUserNotificationFilter
- (BOOL)_messageNeedsNotification:(id)notification;
- (EDUserNotificationFilter)initWithBlockedSenderReader:(id)reader vipReader:(id)vipReader;
- (id)messagesNeedingNotification:(id)notification;
@end

@implementation EDUserNotificationFilter

- (EDUserNotificationFilter)initWithBlockedSenderReader:(id)reader vipReader:(id)vipReader
{
  readerCopy = reader;
  vipReaderCopy = vipReader;
  v12.receiver = self;
  v12.super_class = EDUserNotificationFilter;
  v9 = [(EDUserNotificationFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_blockedSenderReader, reader);
    objc_storeStrong(&v10->_vipReader, vipReader);
  }

  return v10;
}

- (id)messagesNeedingNotification:(id)notification
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__EDUserNotificationFilter_messagesNeedingNotification___block_invoke;
  v5[3] = &unk_1E8251360;
  v5[4] = self;
  v3 = [notification ef_filter:v5];

  return v3;
}

- (BOOL)_messageNeedsNotification:(id)notification
{
  v31 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  flags = [notificationCopy flags];
  conversationFlags = [notificationCopy conversationFlags];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:v8 options:0];

  if ([notificationCopy isServerSearchResult])
  {
    v10 = EDUserNotificationCenterLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      remoteID = [notificationCopy remoteID];
      v29 = 138543362;
      v30 = remoteID;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Not showing notification for message: %{public}@ because it is a server search result.", &v29, 0xCu);
    }
  }

  else if ([flags read])
  {
    v10 = EDUserNotificationCenterLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      remoteID2 = [notificationCopy remoteID];
      v29 = 138543362;
      v30 = remoteID2;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Not showing notification for message: %{public}@ because it is marked as read.", &v29, 0xCu);
    }
  }

  else
  {
    blockedSenderReader = [(EDUserNotificationFilter *)self blockedSenderReader];
    senders = [notificationCopy senders];
    firstObject = [senders firstObject];
    v16 = [blockedSenderReader isEmailAddressBlocked:firstObject];

    if (!v16)
    {
      if (conversationFlags == 4)
      {
        vipReader = [(EDUserNotificationFilter *)self vipReader];
        senders2 = [notificationCopy senders];
        firstObject2 = [senders2 firstObject];
        v24 = [vipReader isVIPAddress:firstObject2];

        if ((v24 & 1) == 0)
        {
          v10 = EDUserNotificationCenterLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            remoteID3 = [notificationCopy remoteID];
            v29 = 138543362;
            v30 = remoteID3;
            _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Not showing notification for message: %{public}@ because it is in a muted conversation.", &v29, 0xCu);
          }

          goto LABEL_10;
        }
      }

      else
      {
        displayDate = [notificationCopy displayDate];
        v27 = [displayDate ef_isEarlierThanDate:v9];

        if (v27)
        {
          v10 = EDUserNotificationCenterLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            remoteID4 = [notificationCopy remoteID];
            v29 = 138543362;
            v30 = remoteID4;
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
      remoteID5 = [notificationCopy remoteID];
      v29 = 138543362;
      v30 = remoteID5;
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