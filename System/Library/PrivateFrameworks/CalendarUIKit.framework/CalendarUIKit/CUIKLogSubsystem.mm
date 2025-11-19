@interface CUIKLogSubsystem
+ (OS_os_log)alarms;
+ (OS_os_log)autocomplete;
+ (OS_os_log)continuity;
+ (OS_os_log)dateStrings;
+ (OS_os_log)defaultCategory;
+ (OS_os_log)docktile;
+ (OS_os_log)editingContext;
+ (OS_os_log)eventLoader;
+ (OS_os_log)eventStoreEditor;
+ (OS_os_log)locationSearch;
+ (OS_os_log)signpost;
+ (OS_os_log)undo;
+ (OS_os_log)userActions;
@end

@implementation CUIKLogSubsystem

+ (OS_os_log)defaultCategory
{
  if (defaultCategory_onceToken != -1)
  {
    +[CUIKLogSubsystem defaultCategory];
  }

  v3 = defaultCategory_logHandle;

  return v3;
}

uint64_t __35__CUIKLogSubsystem_defaultCategory__block_invoke()
{
  defaultCategory_logHandle = os_log_create("com.apple.calendar.cuik", "Default");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)eventLoader
{
  if (eventLoader_onceToken != -1)
  {
    +[CUIKLogSubsystem eventLoader];
  }

  v3 = eventLoader_logHandle;

  return v3;
}

uint64_t __31__CUIKLogSubsystem_eventLoader__block_invoke()
{
  eventLoader_logHandle = os_log_create("com.apple.calendar.cuik", "EventLoader");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)signpost
{
  if (signpost_onceToken != -1)
  {
    +[CUIKLogSubsystem signpost];
  }

  v3 = signpost_logHandle;

  return v3;
}

uint64_t __28__CUIKLogSubsystem_signpost__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.cuik", "Signpost");
  v1 = signpost_logHandle;
  signpost_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)alarms
{
  if (alarms_onceToken != -1)
  {
    +[CUIKLogSubsystem alarms];
  }

  v3 = alarms_logHandle;

  return v3;
}

uint64_t __26__CUIKLogSubsystem_alarms__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.cuik", "Alarms");
  v1 = alarms_logHandle;
  alarms_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)autocomplete
{
  if (autocomplete_onceToken != -1)
  {
    +[CUIKLogSubsystem autocomplete];
  }

  v3 = autocomplete_logHandle;

  return v3;
}

uint64_t __32__CUIKLogSubsystem_autocomplete__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.cuik", "Autocomplete");
  v1 = autocomplete_logHandle;
  autocomplete_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)continuity
{
  if (continuity_onceToken != -1)
  {
    +[CUIKLogSubsystem continuity];
  }

  v3 = continuity_logHandle;

  return v3;
}

uint64_t __30__CUIKLogSubsystem_continuity__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.cuik", "Continuity");
  v1 = continuity_logHandle;
  continuity_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)dateStrings
{
  if (dateStrings_onceToken != -1)
  {
    +[CUIKLogSubsystem dateStrings];
  }

  v3 = dateStrings_logHandle;

  return v3;
}

uint64_t __31__CUIKLogSubsystem_dateStrings__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.cuik", "DateStrings");
  v1 = dateStrings_logHandle;
  dateStrings_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)docktile
{
  if (docktile_onceToken != -1)
  {
    +[CUIKLogSubsystem docktile];
  }

  v3 = docktile_logHandle;

  return v3;
}

uint64_t __28__CUIKLogSubsystem_docktile__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.cuik", "Docktile");
  v1 = docktile_logHandle;
  docktile_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)editingContext
{
  if (editingContext_onceToken != -1)
  {
    +[CUIKLogSubsystem editingContext];
  }

  v3 = editingContext_logHandle;

  return v3;
}

uint64_t __34__CUIKLogSubsystem_editingContext__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.cuik", "EditingContext");
  v1 = editingContext_logHandle;
  editingContext_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)eventStoreEditor
{
  if (eventStoreEditor_onceToken != -1)
  {
    +[CUIKLogSubsystem eventStoreEditor];
  }

  v3 = eventStoreEditor_logHandle;

  return v3;
}

uint64_t __36__CUIKLogSubsystem_eventStoreEditor__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.cuik", "EventStoreEditor");
  v1 = eventStoreEditor_logHandle;
  eventStoreEditor_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)undo
{
  if (undo_onceToken != -1)
  {
    +[CUIKLogSubsystem undo];
  }

  v3 = undo_logHandle;

  return v3;
}

uint64_t __24__CUIKLogSubsystem_undo__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.cuik", "Undo");
  v1 = undo_logHandle;
  undo_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)userActions
{
  if (userActions_onceToken != -1)
  {
    +[CUIKLogSubsystem userActions];
  }

  v3 = userActions_logHandle;

  return v3;
}

uint64_t __31__CUIKLogSubsystem_userActions__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.cuik", "UserActions");
  v1 = userActions_logHandle;
  userActions_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)locationSearch
{
  if (locationSearch_onceToken != -1)
  {
    +[CUIKLogSubsystem locationSearch];
  }

  v3 = locationSearch_logHandle;

  return v3;
}

uint64_t __34__CUIKLogSubsystem_locationSearch__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.cuik", "LocationSearch");
  v1 = locationSearch_logHandle;
  locationSearch_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end