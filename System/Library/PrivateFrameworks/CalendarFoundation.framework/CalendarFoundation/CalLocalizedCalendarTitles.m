@interface CalLocalizedCalendarTitles
+ (id)localizedBirthdayCalendarTitle;
+ (id)localizedDefaultCalendarTitle;
+ (id)localizedDefaultReminderListTitle;
+ (id)localizedScheduledRemindersCalendarTitle;
+ (id)localizedSiriSuggestedEventsCalendarTitle;
+ (id)localizedTitleForTitle:(id)a3 isSuggestedEventCalendar:(BOOL)a4 isBirthdayCalendar:(BOOL)a5 allowsReminders:(BOOL)a6 isIntegrationCalendar:(BOOL)a7;
+ (id)localizedVirtualCalendarTitle;
@end

@implementation CalLocalizedCalendarTitles

+ (id)localizedTitleForTitle:(id)a3 isSuggestedEventCalendar:(BOOL)a4 isBirthdayCalendar:(BOOL)a5 allowsReminders:(BOOL)a6 isIntegrationCalendar:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a3;
  if ([v12 isEqualToString:@"DEFAULT_CALENDAR_NAME"])
  {
    v13 = [a1 localizedDefaultCalendarTitle];
    goto LABEL_17;
  }

  if ([v12 isEqualToString:@"DEFAULT_TASK_CALENDAR_NAME"])
  {
    goto LABEL_4;
  }

  if ([v12 isEqualToString:@"VIRTUAL_APP_CALENDAR_NAME"])
  {
    v13 = [a1 localizedVirtualCalendarTitle];
    goto LABEL_17;
  }

  if (v7)
  {
    v13 = [a1 localizedScheduledRemindersCalendarTitle];
    goto LABEL_17;
  }

  if (![CalCompatibility isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    goto LABEL_22;
  }

  if (v10)
  {
    v13 = [a1 localizedSiriSuggestedEventsCalendarTitle];
    goto LABEL_17;
  }

  if (v9)
  {
    v13 = [a1 localizedBirthdayCalendarTitle];
  }

  else
  {
LABEL_22:
    if (v8 && [v12 isEqualToString:@"Reminders"])
    {
LABEL_4:
      v13 = [a1 localizedDefaultReminderListTitle];
      goto LABEL_17;
    }

    v13 = v12;
  }

LABEL_17:
  v14 = v13;

  return v14;
}

+ (id)localizedDefaultCalendarTitle
{
  v2 = +[CalFoundationBundle bundle];
  v3 = [v2 localizedStringForKey:@"Default calendar name" value:@"Calendar" table:0];

  return v3;
}

+ (id)localizedDefaultReminderListTitle
{
  v2 = +[CalFoundationBundle bundle];
  v3 = [v2 localizedStringForKey:@"default reminders list name" value:@"Reminders" table:0];

  return v3;
}

+ (id)localizedVirtualCalendarTitle
{
  v2 = +[CalFoundationBundle bundle];
  v3 = [v2 localizedStringForKey:@"virtual calendar name" value:@"Calendar" table:0];

  return v3;
}

+ (id)localizedSiriSuggestedEventsCalendarTitle
{
  v2 = +[CalFoundationBundle bundle];
  v3 = [v2 localizedStringForKey:@"Siri Suggestions" value:&stru_1F379FFA8 table:0];

  return v3;
}

+ (id)localizedBirthdayCalendarTitle
{
  v2 = +[CalFoundationBundle bundle];
  v3 = [v2 localizedStringForKey:@"Birthdays" value:&stru_1F379FFA8 table:0];

  return v3;
}

+ (id)localizedScheduledRemindersCalendarTitle
{
  v2 = +[CalFoundationBundle bundle];
  v3 = [v2 localizedStringForKey:@"Scheduled Reminders" value:&stru_1F379FFA8 table:0];

  return v3;
}

@end