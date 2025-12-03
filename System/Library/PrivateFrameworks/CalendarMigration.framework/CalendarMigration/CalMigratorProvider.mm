@interface CalMigratorProvider
+ (id)reminderMigrator;
+ (id)reminderMigratorWithDefaultsProvider:(id)provider;
+ (id)reminderMigratorWithReminderKitProvider:(id)provider defaultsProvider:(id)defaultsProvider;
@end

@implementation CalMigratorProvider

+ (id)reminderMigrator
{
  v3 = +[CalDefaultReminderMigrationDefaultsProvider sharedInstance];
  v4 = [self reminderMigratorWithDefaultsProvider:v3];

  return v4;
}

+ (id)reminderMigratorWithDefaultsProvider:(id)provider
{
  providerCopy = provider;
  v5 = +[CalDefaultReminderKitProvider sharedInstance];
  v6 = [self reminderMigratorWithReminderKitProvider:v5 defaultsProvider:providerCopy];

  return v6;
}

+ (id)reminderMigratorWithReminderKitProvider:(id)provider defaultsProvider:(id)defaultsProvider
{
  defaultsProviderCopy = defaultsProvider;
  providerCopy = provider;
  v7 = [[CalCalendarDatabaseReminderMigrator alloc] initWithReminderKitProvider:providerCopy defaultsProvider:defaultsProviderCopy];

  return v7;
}

@end