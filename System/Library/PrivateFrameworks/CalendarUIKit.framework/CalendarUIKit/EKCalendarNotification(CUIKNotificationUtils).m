@interface EKCalendarNotification(CUIKNotificationUtils)
- (uint64_t)cuik_isTimeSensitive;
- (uint64_t)cuik_shouldShowNotificationWithUnselectedCalendarsForFocus:()CUIKNotificationUtils;
@end

@implementation EKCalendarNotification(CUIKNotificationUtils)

- (uint64_t)cuik_shouldShowNotificationWithUnselectedCalendarsForFocus:()CUIKNotificationUtils
{
  v4 = a3;
  v5 = [a1 calendar];

  if (!v5)
  {
    v6 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(EKCalendarNotification(CUIKNotificationUtils) *)a1 cuik_shouldShowNotificationWithUnselectedCalendarsForFocus:v6];
    }

    goto LABEL_8;
  }

  if (![v4 count])
  {
LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

  v6 = [a1 calendar];
  if (![v4 containsObject:v6])
  {
LABEL_8:

    goto LABEL_9;
  }

  v7 = [a1 cuik_isTimeSensitive];

  if (v7)
  {
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (uint64_t)cuik_isTimeSensitive
{
  v27 = *MEMORY[0x1E69E9840];
  if (([a1 couldBeJunk] & 1) == 0)
  {
    v3 = [a1 isProposedNewTime];
    v4 = [a1 type];
    if (v4 >= 2)
    {
      if (v4 != 3)
      {
        if (v4 == 2)
        {
          v5 = 0;
          goto LABEL_9;
        }

        v6 = +[CUIKLogSubsystem defaultCategory];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v20 = [a1 objectID];
          v25 = 138543362;
          v26 = v20;
          v21 = "Notification %{public}@ is not time-sensitive because it is not an invitation, invitation response, or cancellation.";
LABEL_28:
          _os_log_impl(&dword_1CAB19000, v6, OS_LOG_TYPE_INFO, v21, &v25, 0xCu);

          goto LABEL_29;
        }

        goto LABEL_29;
      }

      if ((v3 & 1) == 0)
      {
        v6 = +[CUIKLogSubsystem defaultCategory];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v20 = [a1 objectID];
          v25 = 138543362;
          v26 = v20;
          v21 = "Notification %{public}@ is not time-sensitive because it is an invitation response but not a proposed time.";
          goto LABEL_28;
        }

LABEL_29:
        v2 = 0;
        goto LABEL_30;
      }
    }

    v5 = 1;
LABEL_9:
    v6 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
    v7 = [a1 event];
    v8 = [v7 earliestOccurrenceEndingAfter:v6 excludeSignificantDetachments:1 excludeCanceledDetachments:v5 excludeDeclinedDetachments:1];
    v9 = [v8 startDate];

    if (!v9)
    {
      v16 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [a1 objectID];
        v25 = 138543362;
        v26 = v17;
        _os_log_impl(&dword_1CAB19000, v16, OS_LOG_TYPE_INFO, "Notification %{public}@ is not time-sensitive because there is no occurrence ending after now", &v25, 0xCu);
      }

      goto LABEL_18;
    }

    [v9 timeIntervalSinceDate:v6];
    v10 = *MEMORY[0x1E6993130];
    if (v11 <= *MEMORY[0x1E6993130])
    {
      v18 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [a1 objectID];
        v25 = 138543362;
        v26 = v19;
        _os_log_impl(&dword_1CAB19000, v18, OS_LOG_TYPE_INFO, "Event %{public}@ is time-sensitive because it starts within the time-sensitive window", &v25, 0xCu);
      }
    }

    else
    {
      if (!v3)
      {
LABEL_18:
        v2 = 0;
LABEL_23:

LABEL_30:
        return v2;
      }

      v12 = a1;
      v13 = [v12 nearestProposedTime];
      v14 = v13;
      if (!v13 || ([v13 timeIntervalSinceDate:v6], v15 > v10))
      {

        goto LABEL_18;
      }

      v23 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v12 objectID];
        v25 = 138543362;
        v26 = v24;
        _os_log_impl(&dword_1CAB19000, v23, OS_LOG_TYPE_INFO, "Event %{public}@ is time-sensitive because it is an attendee proposed time within the time-sensitive window", &v25, 0xCu);
      }
    }

    v2 = 1;
    goto LABEL_23;
  }

  return 0;
}

- (void)cuik_shouldShowNotificationWithUnselectedCalendarsForFocus:()CUIKNotificationUtils .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = [a1 type];
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "No calendar for notification %@ with type %d", &v3, 0x12u);
}

@end