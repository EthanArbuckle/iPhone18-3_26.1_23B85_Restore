@interface CalFoundationLogSubsystem
+ (OS_os_log)accounts;
+ (OS_os_log)contacts;
+ (OS_os_log)defaultCategory;
+ (OS_os_log)eventTimer;
+ (OS_os_log)junk;
+ (OS_os_log)locations;
+ (OS_os_log)memory;
+ (OS_os_log)messageTrace;
+ (OS_os_log)suggestions;
@end

@implementation CalFoundationLogSubsystem

+ (OS_os_log)defaultCategory
{
  if (defaultCategory_onceToken != -1)
  {
    +[CalFoundationLogSubsystem defaultCategory];
  }

  v3 = defaultCategory_logHandle;

  return v3;
}

uint64_t __44__CalFoundationLogSubsystem_defaultCategory__block_invoke()
{
  defaultCategory_logHandle = os_log_create("com.apple.calendar.foundation", "Default");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)accounts
{
  if (accounts_onceToken != -1)
  {
    +[CalFoundationLogSubsystem accounts];
  }

  v3 = accounts_logHandle;

  return v3;
}

uint64_t __37__CalFoundationLogSubsystem_accounts__block_invoke()
{
  accounts_logHandle = os_log_create("com.apple.calendar.foundation", "Accounts");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)contacts
{
  if (contacts_onceToken != -1)
  {
    +[CalFoundationLogSubsystem contacts];
  }

  v3 = contacts_logHandle;

  return v3;
}

uint64_t __37__CalFoundationLogSubsystem_contacts__block_invoke()
{
  contacts_logHandle = os_log_create("com.apple.calendar.foundation", "Contacts");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)eventTimer
{
  if (eventTimer_onceToken != -1)
  {
    +[CalFoundationLogSubsystem eventTimer];
  }

  v3 = eventTimer_logHandle;

  return v3;
}

uint64_t __39__CalFoundationLogSubsystem_eventTimer__block_invoke()
{
  eventTimer_logHandle = os_log_create("com.apple.calendar.foundation", "EventTimer");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)junk
{
  if (junk_onceToken != -1)
  {
    +[CalFoundationLogSubsystem junk];
  }

  v3 = junk_logHandle;

  return v3;
}

uint64_t __33__CalFoundationLogSubsystem_junk__block_invoke()
{
  junk_logHandle = os_log_create("com.apple.calendar.foundation", "Junk");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)locations
{
  if (locations_onceToken != -1)
  {
    +[CalFoundationLogSubsystem locations];
  }

  v3 = locations_logHandle;

  return v3;
}

uint64_t __38__CalFoundationLogSubsystem_locations__block_invoke()
{
  locations_logHandle = os_log_create("com.apple.calendar.foundation", "Locations");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)memory
{
  if (memory_onceToken != -1)
  {
    +[CalFoundationLogSubsystem memory];
  }

  v3 = memory_logHandle;

  return v3;
}

uint64_t __35__CalFoundationLogSubsystem_memory__block_invoke()
{
  memory_logHandle = os_log_create("com.apple.calendar.foundation", "Memory");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)messageTrace
{
  if (messageTrace_onceToken != -1)
  {
    +[CalFoundationLogSubsystem messageTrace];
  }

  v3 = messageTrace_logHandle;

  return v3;
}

uint64_t __41__CalFoundationLogSubsystem_messageTrace__block_invoke()
{
  messageTrace_logHandle = os_log_create("com.apple.calendar.foundation", "MessageTrace");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)suggestions
{
  if (suggestions_onceToken != -1)
  {
    +[CalFoundationLogSubsystem suggestions];
  }

  v3 = suggestions_logHandle;

  return v3;
}

uint64_t __40__CalFoundationLogSubsystem_suggestions__block_invoke()
{
  suggestions_logHandle = os_log_create("com.apple.calendar.foundation", "Suggestions");

  return MEMORY[0x1EEE66BB8]();
}

@end