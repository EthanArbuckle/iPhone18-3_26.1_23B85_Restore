@interface CALNTriggeredEventNotificationActionUtilities
+ (CALNNotificationAction)conferenceCallAction;
+ (CALNNotificationAction)directionsAction;
+ (CALNNotificationAction)mailOrganizerAction;
+ (CALNNotificationAction)snoozeAction;
+ (CALNNotificationAction)snoozeFor15MinutesAction;
+ (CALNNotificationAction)snoozeFor1HourAction;
+ (CALNNotificationAction)snoozeFor30MinutesAction;
+ (CALNNotificationAction)snoozeFor5MinutesAction;
+ (CALNNotificationAction)snoozeUntil15MinutesBeforeAction;
+ (CALNNotificationAction)snoozeUntil30MinutesBeforeAction;
+ (CALNNotificationAction)snoozeUntil5MinutesBeforeAction;
+ (CALNNotificationAction)snoozeUntilEndTimeAction;
+ (CALNNotificationAction)snoozeUntilStartTimeAction;
@end

@implementation CALNTriggeredEventNotificationActionUtilities

+ (CALNNotificationAction)snoozeAction
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Snooze" value:&stru_28551FB98 table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNTriggeredEventNotificationSnoozeActionIdentifier" title:v3 systemImageName:@"clock"];

  return v4;
}

+ (CALNNotificationAction)snoozeFor5MinutesAction
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Snooze for 5 minutes" value:&stru_28551FB98 table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNTriggeredEventNotificationSnooze5MinutesActionIdentifier" title:v3 systemImageName:@"clock"];

  return v4;
}

+ (CALNNotificationAction)snoozeFor15MinutesAction
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Snooze for 15 minutes" value:&stru_28551FB98 table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNTriggeredEventNotificationSnooze15MinutesActionIdentifier" title:v3 systemImageName:@"clock"];

  return v4;
}

+ (CALNNotificationAction)snoozeFor30MinutesAction
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Snooze for 30 minutes" value:&stru_28551FB98 table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNTriggeredEventNotificationSnooze30MinutesActionIdentifier" title:v3 systemImageName:@"clock"];

  return v4;
}

+ (CALNNotificationAction)snoozeFor1HourAction
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Snooze for 1 hour" value:&stru_28551FB98 table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNTriggeredEventNotificationSnooze1HourActionIdentifier" title:v3 systemImageName:@"clock"];

  return v4;
}

+ (CALNNotificationAction)snoozeUntil30MinutesBeforeAction
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Snooze until 30 minutes before" value:&stru_28551FB98 table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNTriggeredEventNotificationSnoozeUntil30MinutesBeforeActionIdentifier" title:v3 systemImageName:@"clock"];

  return v4;
}

+ (CALNNotificationAction)snoozeUntil15MinutesBeforeAction
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Snooze until 15 minutes before" value:&stru_28551FB98 table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNTriggeredEventNotificationSnoozeUntil15MinutesBeforeActionIdentifier" title:v3 systemImageName:@"clock"];

  return v4;
}

+ (CALNNotificationAction)snoozeUntil5MinutesBeforeAction
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Snooze until 5 minutes before" value:&stru_28551FB98 table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNTriggeredEventNotificationSnoozeUntil5MinutesBeforeActionIdentifier" title:v3 systemImageName:@"clock"];

  return v4;
}

+ (CALNNotificationAction)snoozeUntilStartTimeAction
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Snooze until start time" value:&stru_28551FB98 table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNTriggeredEventNotificationSnoozeUntilStartActionIdentifier" title:v3 systemImageName:@"clock"];

  return v4;
}

+ (CALNNotificationAction)snoozeUntilEndTimeAction
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Snooze until end time" value:&stru_28551FB98 table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNTriggeredEventNotificationSnoozeUntilEndActionIdentifier" title:v3 systemImageName:@"clock"];

  return v4;
}

+ (CALNNotificationAction)directionsAction
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Directions" value:&stru_28551FB98 table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationDirectionsAction" title:v3 systemImageName:@"mappin.and.ellipse"];

  return v4;
}

+ (CALNNotificationAction)conferenceCallAction
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Join Meeting" value:&stru_28551FB98 table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationConferenceCallAction" title:v3 systemImageName:@"person.2"];

  return v4;
}

+ (CALNNotificationAction)mailOrganizerAction
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"EventNotificationEmailSenderButton" value:@"Email Sender" table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"Mail_identifier" title:v3 systemImageName:@"person.crop.circle"];

  return v4;
}

@end