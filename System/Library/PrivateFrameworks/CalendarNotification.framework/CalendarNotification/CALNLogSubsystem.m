@interface CALNLogSubsystem
+ (OS_os_log)alarmEngine;
+ (OS_os_log)calendar;
+ (OS_os_log)defaultCategory;
@end

@implementation CALNLogSubsystem

+ (OS_os_log)defaultCategory
{
  if (defaultCategory_onceToken != -1)
  {
    +[CALNLogSubsystem defaultCategory];
  }

  v3 = defaultCategory_logHandle;

  return v3;
}

uint64_t __35__CALNLogSubsystem_defaultCategory__block_invoke()
{
  defaultCategory_logHandle = os_log_create("com.apple.calendar.notification", "Default");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)calendar
{
  if (calendar_onceToken != -1)
  {
    +[CALNLogSubsystem calendar];
  }

  v3 = calendar_logHandle;

  return v3;
}

uint64_t __28__CALNLogSubsystem_calendar__block_invoke()
{
  calendar_logHandle = os_log_create("com.apple.calendar.notification", "Calendar");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)alarmEngine
{
  if (alarmEngine_onceToken != -1)
  {
    +[CALNLogSubsystem alarmEngine];
  }

  v3 = alarmEngine_logHandle;

  return v3;
}

uint64_t __31__CALNLogSubsystem_alarmEngine__block_invoke()
{
  alarmEngine_logHandle = os_log_create("com.apple.calendar.notification", "AlarmEngine");

  return MEMORY[0x2821F96F8]();
}

@end