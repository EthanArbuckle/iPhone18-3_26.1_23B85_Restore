@interface EKCalendarNotification(CUIKNotificationUtils)
- (uint64_t)cuik_isTimeSensitive;
- (uint64_t)cuik_shouldShowNotificationWithUnselectedCalendarsForFocus:()CUIKNotificationUtils;
@end

@implementation EKCalendarNotification(CUIKNotificationUtils)

- (uint64_t)cuik_shouldShowNotificationWithUnselectedCalendarsForFocus:()CUIKNotificationUtils
{
  v4 = a3;
  calendar = [self calendar];

  if (!calendar)
  {
    calendar2 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(calendar2, OS_LOG_TYPE_ERROR))
    {
      [(EKCalendarNotification(CUIKNotificationUtils) *)self cuik_shouldShowNotificationWithUnselectedCalendarsForFocus:calendar2];
    }

    goto LABEL_8;
  }

  if (![v4 count])
  {
LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

  calendar2 = [self calendar];
  if (![v4 containsObject:calendar2])
  {
LABEL_8:

    goto LABEL_9;
  }

  cuik_isTimeSensitive = [self cuik_isTimeSensitive];

  if (cuik_isTimeSensitive)
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
  if (([self couldBeJunk] & 1) == 0)
  {
    isProposedNewTime = [self isProposedNewTime];
    type = [self type];
    if (type >= 2)
    {
      if (type != 3)
      {
        if (type == 2)
        {
          v5 = 0;
          goto LABEL_9;
        }

        calSimulatedDateForNow = +[CUIKLogSubsystem defaultCategory];
        if (os_log_type_enabled(calSimulatedDateForNow, OS_LOG_TYPE_INFO))
        {
          objectID = [self objectID];
          v25 = 138543362;
          v26 = objectID;
          v21 = "Notification %{public}@ is not time-sensitive because it is not an invitation, invitation response, or cancellation.";
LABEL_28:
          _os_log_impl(&dword_1CAB19000, calSimulatedDateForNow, OS_LOG_TYPE_INFO, v21, &v25, 0xCu);

          goto LABEL_29;
        }

        goto LABEL_29;
      }

      if ((isProposedNewTime & 1) == 0)
      {
        calSimulatedDateForNow = +[CUIKLogSubsystem defaultCategory];
        if (os_log_type_enabled(calSimulatedDateForNow, OS_LOG_TYPE_INFO))
        {
          objectID = [self objectID];
          v25 = 138543362;
          v26 = objectID;
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
    calSimulatedDateForNow = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
    event = [self event];
    v8 = [event earliestOccurrenceEndingAfter:calSimulatedDateForNow excludeSignificantDetachments:1 excludeCanceledDetachments:v5 excludeDeclinedDetachments:1];
    startDate = [v8 startDate];

    if (!startDate)
    {
      v16 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        objectID2 = [self objectID];
        v25 = 138543362;
        v26 = objectID2;
        _os_log_impl(&dword_1CAB19000, v16, OS_LOG_TYPE_INFO, "Notification %{public}@ is not time-sensitive because there is no occurrence ending after now", &v25, 0xCu);
      }

      goto LABEL_18;
    }

    [startDate timeIntervalSinceDate:calSimulatedDateForNow];
    v10 = *MEMORY[0x1E6993130];
    if (v11 <= *MEMORY[0x1E6993130])
    {
      v18 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        objectID3 = [self objectID];
        v25 = 138543362;
        v26 = objectID3;
        _os_log_impl(&dword_1CAB19000, v18, OS_LOG_TYPE_INFO, "Event %{public}@ is time-sensitive because it starts within the time-sensitive window", &v25, 0xCu);
      }
    }

    else
    {
      if (!isProposedNewTime)
      {
LABEL_18:
        v2 = 0;
LABEL_23:

LABEL_30:
        return v2;
      }

      selfCopy = self;
      nearestProposedTime = [selfCopy nearestProposedTime];
      v14 = nearestProposedTime;
      if (!nearestProposedTime || ([nearestProposedTime timeIntervalSinceDate:calSimulatedDateForNow], v15 > v10))
      {

        goto LABEL_18;
      }

      v23 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        objectID4 = [selfCopy objectID];
        v25 = 138543362;
        v26 = objectID4;
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