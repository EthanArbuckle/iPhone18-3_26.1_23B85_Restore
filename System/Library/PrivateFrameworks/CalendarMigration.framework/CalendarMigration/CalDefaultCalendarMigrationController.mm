@interface CalDefaultCalendarMigrationController
- (BOOL)shouldPerformMigration;
- (CalDefaultCalendarMigrationController)initWithDefaultsProvider:(id)a3;
@end

@implementation CalDefaultCalendarMigrationController

- (CalDefaultCalendarMigrationController)initWithDefaultsProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CalDefaultCalendarMigrationController;
  v6 = [(CalDefaultCalendarMigrationController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultsProvider, a3);
  }

  return v7;
}

- (BOOL)shouldPerformMigration
{
  v3 = [(CalDefaultCalendarMigrationController *)self defaultsProvider];
  v4 = [v3 shouldPerformMigrationWithDestinationDirectory:0];

  if (v4)
  {
    v5 = +[CalMigrationLog calendar];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v6 = "Should perform migration because the defaults provider says so.";
      v7 = &v12;
LABEL_7:
      _os_log_impl(&dword_2428EA000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v8 = [(CalDefaultCalendarMigrationController *)self defaultsProvider];
  v9 = [v8 needsMigrationCleanupWithDestinationDirectory:0];

  if (v9)
  {
    v5 = +[CalMigrationLog calendar];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v6 = "Should perform migration because the defaults provider says we need to run cleanup.";
      v7 = &v11;
      goto LABEL_7;
    }

LABEL_8:

    return 1;
  }

  return 0;
}

@end