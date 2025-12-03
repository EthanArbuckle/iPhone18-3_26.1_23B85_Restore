@interface CUIKCalendarListSorter
+ (id)ekCalendarComparator;
+ (int64_t)orderForOtherCalendar:(id)calendar;
@end

@implementation CUIKCalendarListSorter

uint64_t __44__CUIKCalendarListSorter_ekSourceComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (![v4 sourceType] && objc_msgSend(v5, "sourceType"))
  {
    goto LABEL_10;
  }

  if (![v5 sourceType] && objc_msgSend(v4, "sourceType"))
  {
    goto LABEL_12;
  }

  if ([v4 isNestedLocalSource] & 1) == 0 && (objc_msgSend(v5, "isNestedLocalSource"))
  {
LABEL_10:
    v11 = -1;
    goto LABEL_17;
  }

  if ([v5 isNestedLocalSource] & 1) == 0 && (objc_msgSend(v4, "isNestedLocalSource"))
  {
LABEL_12:
    v11 = 1;
    goto LABEL_17;
  }

  v6 = [MEMORY[0x1E69669B0] calendarPreferences];
  v7 = [v4 sourceIdentifier];
  v8 = [v6 displayOrderForAccountWithSourceIdentifier:v7];

  v9 = [v5 sourceIdentifier];
  v10 = [v6 displayOrderForAccountWithSourceIdentifier:v9];

  if (v8 >= v10)
  {
    if (v8 > v10)
    {
      v11 = 1;
    }

    else
    {
      v12 = [v4 title];
      v13 = [v5 title];
      v11 = [v12 compare:v13];
    }
  }

  else
  {
    v11 = -1;
  }

LABEL_17:
  return v11;
}

+ (id)ekCalendarComparator
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__CUIKCalendarListSorter_ekCalendarComparator__block_invoke;
  aBlock[3] = &__block_descriptor_40_e35_q24__0__EKCalendar_8__EKCalendar_16l;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

uint64_t __46__CUIKCalendarListSorter_ekCalendarComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 source];
  v8 = [v6 source];
  if ([v7 isEqual:v8])
  {
  }

  else
  {
    v9 = [*(a1 + 32) ekSourceComparator];
    v10 = [v5 source];
    v11 = [v6 source];
    v12 = (v9)[2](v9, v10, v11);

    if (v12)
    {
      goto LABEL_9;
    }
  }

  v13 = [v5 displayOrder];
  if (v13 >= [v6 displayOrder])
  {
    v14 = [v5 displayOrder];
    if (v14 <= [v6 displayOrder])
    {
      v15 = [v5 title];
      v16 = [v6 title];
      v12 = [v15 compare:v16];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = -1;
  }

LABEL_9:

  return v12;
}

uint64_t __51__CUIKCalendarListSorter_ekOtherCalendarComparator__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [CUIKCalendarListSorter orderForOtherCalendar:a2];
  v6 = [CUIKCalendarListSorter orderForOtherCalendar:v4];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

+ (int64_t)orderForOtherCalendar:(id)calendar
{
  calendarCopy = calendar;
  if ([calendarCopy type] == 4 || objc_msgSend(calendarCopy, "type") == 6)
  {
    v4 = 0;
  }

  else if ([calendarCopy isSubscribedHolidayCalendar])
  {
    v4 = 1;
  }

  else if ([calendarCopy isSuggestedEventCalendar])
  {
    v4 = 2;
  }

  else
  {
    v6 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CUIKCalendarListSorter *)calendarCopy orderForOtherCalendar:v6];
    }

    v4 = -1;
  }

  return v4;
}

+ (void)orderForOtherCalendar:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 uniqueIdentifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "problem with 'other' calendar uid %{public}@", &v4, 0xCu);
}

@end