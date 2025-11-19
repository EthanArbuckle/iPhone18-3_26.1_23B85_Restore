@interface CalMigratorProvider
+ (id)reminderMigrator;
+ (id)reminderMigratorWithDefaultsProvider:(id)a3;
+ (id)reminderMigratorWithReminderKitProvider:(id)a3 defaultsProvider:(id)a4;
@end

@implementation CalMigratorProvider

+ (id)reminderMigrator
{
  v3 = +[CalDefaultReminderMigrationDefaultsProvider sharedInstance];
  v4 = [a1 reminderMigratorWithDefaultsProvider:v3];

  return v4;
}

+ (id)reminderMigratorWithDefaultsProvider:(id)a3
{
  v4 = a3;
  v5 = +[CalDefaultReminderKitProvider sharedInstance];
  v6 = [a1 reminderMigratorWithReminderKitProvider:v5 defaultsProvider:v4];

  return v6;
}

+ (id)reminderMigratorWithReminderKitProvider:(id)a3 defaultsProvider:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CalCalendarDatabaseReminderMigrator alloc] initWithReminderKitProvider:v6 defaultsProvider:v5];

  return v7;
}

@end