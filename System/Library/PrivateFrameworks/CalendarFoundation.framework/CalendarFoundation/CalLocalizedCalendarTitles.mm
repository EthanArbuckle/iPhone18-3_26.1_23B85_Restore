@interface CalLocalizedCalendarTitles
+ (id)localizedBirthdayCalendarTitle;
+ (id)localizedDefaultCalendarTitle;
+ (id)localizedDefaultReminderListTitle;
+ (id)localizedScheduledRemindersCalendarTitle;
+ (id)localizedSiriSuggestedEventsCalendarTitle;
+ (id)localizedTitleForTitle:(id)title isSuggestedEventCalendar:(BOOL)calendar isBirthdayCalendar:(BOOL)birthdayCalendar allowsReminders:(BOOL)reminders isIntegrationCalendar:(BOOL)integrationCalendar;
+ (id)localizedVirtualCalendarTitle;
@end

@implementation CalLocalizedCalendarTitles

+ (id)localizedTitleForTitle:(id)title isSuggestedEventCalendar:(BOOL)calendar isBirthdayCalendar:(BOOL)birthdayCalendar allowsReminders:(BOOL)reminders isIntegrationCalendar:(BOOL)integrationCalendar
{
  integrationCalendarCopy = integrationCalendar;
  remindersCopy = reminders;
  birthdayCalendarCopy = birthdayCalendar;
  calendarCopy = calendar;
  titleCopy = title;
  if ([titleCopy isEqualToString:@"DEFAULT_CALENDAR_NAME"])
  {
    localizedDefaultCalendarTitle = [self localizedDefaultCalendarTitle];
    goto LABEL_17;
  }

  if ([titleCopy isEqualToString:@"DEFAULT_TASK_CALENDAR_NAME"])
  {
    goto LABEL_4;
  }

  if ([titleCopy isEqualToString:@"VIRTUAL_APP_CALENDAR_NAME"])
  {
    localizedDefaultCalendarTitle = [self localizedVirtualCalendarTitle];
    goto LABEL_17;
  }

  if (integrationCalendarCopy)
  {
    localizedDefaultCalendarTitle = [self localizedScheduledRemindersCalendarTitle];
    goto LABEL_17;
  }

  if (![CalCompatibility isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    goto LABEL_22;
  }

  if (calendarCopy)
  {
    localizedDefaultCalendarTitle = [self localizedSiriSuggestedEventsCalendarTitle];
    goto LABEL_17;
  }

  if (birthdayCalendarCopy)
  {
    localizedDefaultCalendarTitle = [self localizedBirthdayCalendarTitle];
  }

  else
  {
LABEL_22:
    if (remindersCopy && [titleCopy isEqualToString:@"Reminders"])
    {
LABEL_4:
      localizedDefaultCalendarTitle = [self localizedDefaultReminderListTitle];
      goto LABEL_17;
    }

    localizedDefaultCalendarTitle = titleCopy;
  }

LABEL_17:
  v14 = localizedDefaultCalendarTitle;

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