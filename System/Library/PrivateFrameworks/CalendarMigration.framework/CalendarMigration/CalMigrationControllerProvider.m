@interface CalMigrationControllerProvider
+ (id)reminderMigrationController;
+ (id)reminderMigrationControllerWithReminderKitProvider:(id)a3;
@end

@implementation CalMigrationControllerProvider

+ (id)reminderMigrationController
{
  v3 = +[CalDefaultReminderKitProvider sharedInstance];
  v4 = [a1 reminderMigrationControllerWithReminderKitProvider:v3];

  return v4;
}

+ (id)reminderMigrationControllerWithReminderKitProvider:(id)a3
{
  v3 = [a3 newDatabaseMigrationContext];

  return v3;
}

@end