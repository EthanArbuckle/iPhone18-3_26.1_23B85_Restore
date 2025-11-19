@interface CalMigrationLog
+ (OS_os_log)calendar;
+ (OS_os_log)defaultCategory;
+ (OS_os_log)reminders;
@end

@implementation CalMigrationLog

+ (OS_os_log)defaultCategory
{
  if (defaultCategory_onceToken != -1)
  {
    +[CalMigrationLog defaultCategory];
  }

  v3 = defaultCategory_logHandle;

  return v3;
}

uint64_t __34__CalMigrationLog_defaultCategory__block_invoke()
{
  defaultCategory_logHandle = os_log_create("com.apple.calendar.migration", "Default");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)calendar
{
  if (calendar_onceToken != -1)
  {
    +[CalMigrationLog calendar];
  }

  v3 = calendar_logHandle;

  return v3;
}

uint64_t __27__CalMigrationLog_calendar__block_invoke()
{
  calendar_logHandle = os_log_create("com.apple.calendar.migration", "Calendar");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)reminders
{
  if (reminders_onceToken != -1)
  {
    +[CalMigrationLog reminders];
  }

  v3 = reminders_logHandle;

  return v3;
}

uint64_t __28__CalMigrationLog_reminders__block_invoke()
{
  reminders_logHandle = os_log_create("com.apple.calendar.migration", "Reminders");

  return MEMORY[0x2821F96F8]();
}

@end