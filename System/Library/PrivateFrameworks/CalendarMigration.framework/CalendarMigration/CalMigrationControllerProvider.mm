@interface CalMigrationControllerProvider
+ (id)reminderMigrationController;
+ (id)reminderMigrationControllerWithReminderKitProvider:(id)provider;
@end

@implementation CalMigrationControllerProvider

+ (id)reminderMigrationController
{
  v3 = +[CalDefaultReminderKitProvider sharedInstance];
  v4 = [self reminderMigrationControllerWithReminderKitProvider:v3];

  return v4;
}

+ (id)reminderMigrationControllerWithReminderKitProvider:(id)provider
{
  newDatabaseMigrationContext = [provider newDatabaseMigrationContext];

  return newDatabaseMigrationContext;
}

@end