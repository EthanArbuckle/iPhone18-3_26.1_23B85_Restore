@interface MKLog
+ (id)log;
+ (id)logForAccounts;
+ (id)logForApps;
+ (id)logForBookmarks;
+ (id)logForCalendar;
+ (id)logForCallHistory;
+ (id)logForContacts;
+ (id)logForFiles;
+ (id)logForMessages;
+ (id)logForNetwork;
+ (id)logForPhotoLibrary;
+ (id)logForSettings;
+ (id)logForUI;
+ (id)logForVoiceMemos;
@end

@implementation MKLog

+ (id)log
{
  if (log_onceToken != -1)
  {
    +[MKLog log];
  }

  v3 = log_log;

  return v3;
}

void __12__MKLog_log__block_invoke()
{
  if (_block_invoke_onceToken != -1)
  {
    __12__MKLog_log__block_invoke_cold_1();
  }
}

uint64_t __12__MKLog_log__block_invoke_2()
{
  log_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "network");

  return MEMORY[0x2821F96F8]();
}

+ (id)logForNetwork
{
  if (logForNetwork_onceToken != -1)
  {
    +[MKLog logForNetwork];
  }

  v3 = logForNetwork_log;

  return v3;
}

void __22__MKLog_logForNetwork__block_invoke()
{
  if (_block_invoke_2_onceToken != -1)
  {
    __22__MKLog_logForNetwork__block_invoke_cold_1();
  }
}

uint64_t __22__MKLog_logForNetwork__block_invoke_2()
{
  logForNetwork_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "network");

  return MEMORY[0x2821F96F8]();
}

+ (id)logForMessages
{
  if (logForMessages_onceToken != -1)
  {
    +[MKLog logForMessages];
  }

  v3 = logForMessages_log;

  return v3;
}

void __23__MKLog_logForMessages__block_invoke()
{
  if (_block_invoke_3_onceToken != -1)
  {
    __23__MKLog_logForMessages__block_invoke_cold_1();
  }
}

uint64_t __23__MKLog_logForMessages__block_invoke_2()
{
  logForMessages_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "messages");

  return MEMORY[0x2821F96F8]();
}

+ (id)logForContacts
{
  if (logForContacts_onceToken != -1)
  {
    +[MKLog logForContacts];
  }

  v3 = logForContacts_log;

  return v3;
}

void __23__MKLog_logForContacts__block_invoke()
{
  if (_block_invoke_4_onceToken != -1)
  {
    __23__MKLog_logForContacts__block_invoke_cold_1();
  }
}

uint64_t __23__MKLog_logForContacts__block_invoke_2()
{
  logForContacts_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "contacts");

  return MEMORY[0x2821F96F8]();
}

+ (id)logForCallHistory
{
  if (logForCallHistory_onceToken != -1)
  {
    +[MKLog logForCallHistory];
  }

  v3 = logForCallHistory_log;

  return v3;
}

void __26__MKLog_logForCallHistory__block_invoke()
{
  if (_block_invoke_5_onceToken != -1)
  {
    __26__MKLog_logForCallHistory__block_invoke_cold_1();
  }
}

uint64_t __26__MKLog_logForCallHistory__block_invoke_2()
{
  logForCallHistory_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "call_history");

  return MEMORY[0x2821F96F8]();
}

+ (id)logForCalendar
{
  if (logForCalendar_onceToken != -1)
  {
    +[MKLog logForCalendar];
  }

  v3 = logForCalendar_log;

  return v3;
}

void __23__MKLog_logForCalendar__block_invoke()
{
  if (_block_invoke_6_onceToken != -1)
  {
    __23__MKLog_logForCalendar__block_invoke_cold_1();
  }
}

uint64_t __23__MKLog_logForCalendar__block_invoke_2()
{
  logForCalendar_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "calendar");

  return MEMORY[0x2821F96F8]();
}

+ (id)logForBookmarks
{
  if (logForBookmarks_onceToken != -1)
  {
    +[MKLog logForBookmarks];
  }

  v3 = logForBookmarks_log;

  return v3;
}

void __24__MKLog_logForBookmarks__block_invoke()
{
  if (_block_invoke_7_onceToken != -1)
  {
    __24__MKLog_logForBookmarks__block_invoke_cold_1();
  }
}

uint64_t __24__MKLog_logForBookmarks__block_invoke_2()
{
  logForBookmarks_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "bookmarks");

  return MEMORY[0x2821F96F8]();
}

+ (id)logForPhotoLibrary
{
  if (logForPhotoLibrary_onceToken != -1)
  {
    +[MKLog logForPhotoLibrary];
  }

  v3 = logForPhotoLibrary_log;

  return v3;
}

void __27__MKLog_logForPhotoLibrary__block_invoke()
{
  if (_block_invoke_8_onceToken != -1)
  {
    __27__MKLog_logForPhotoLibrary__block_invoke_cold_1();
  }
}

uint64_t __27__MKLog_logForPhotoLibrary__block_invoke_2()
{
  logForPhotoLibrary_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "photo_library");

  return MEMORY[0x2821F96F8]();
}

+ (id)logForVoiceMemos
{
  if (logForVoiceMemos_onceToken != -1)
  {
    +[MKLog logForVoiceMemos];
  }

  v3 = logForVoiceMemos_log;

  return v3;
}

void __25__MKLog_logForVoiceMemos__block_invoke()
{
  if (_block_invoke_9_onceToken != -1)
  {
    __25__MKLog_logForVoiceMemos__block_invoke_cold_1();
  }
}

uint64_t __25__MKLog_logForVoiceMemos__block_invoke_2()
{
  logForVoiceMemos_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "voice_memo");

  return MEMORY[0x2821F96F8]();
}

+ (id)logForAccounts
{
  if (logForAccounts_onceToken != -1)
  {
    +[MKLog logForAccounts];
  }

  v3 = logForAccounts_log;

  return v3;
}

void __23__MKLog_logForAccounts__block_invoke()
{
  if (_block_invoke_10_onceToken != -1)
  {
    __23__MKLog_logForAccounts__block_invoke_cold_1();
  }
}

uint64_t __23__MKLog_logForAccounts__block_invoke_2()
{
  logForAccounts_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "accounts");

  return MEMORY[0x2821F96F8]();
}

+ (id)logForFiles
{
  if (logForFiles_onceToken != -1)
  {
    +[MKLog logForFiles];
  }

  v3 = logForFiles_log;

  return v3;
}

void __20__MKLog_logForFiles__block_invoke()
{
  if (_block_invoke_11_onceToken != -1)
  {
    __20__MKLog_logForFiles__block_invoke_cold_1();
  }
}

uint64_t __20__MKLog_logForFiles__block_invoke_2()
{
  logForFiles_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "files");

  return MEMORY[0x2821F96F8]();
}

+ (id)logForSettings
{
  if (logForSettings_onceToken != -1)
  {
    +[MKLog logForSettings];
  }

  v3 = logForSettings_log;

  return v3;
}

void __23__MKLog_logForSettings__block_invoke()
{
  if (_block_invoke_12_onceToken != -1)
  {
    __23__MKLog_logForSettings__block_invoke_cold_1();
  }
}

uint64_t __23__MKLog_logForSettings__block_invoke_2()
{
  logForSettings_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "settings");

  return MEMORY[0x2821F96F8]();
}

+ (id)logForApps
{
  if (logForApps_onceToken != -1)
  {
    +[MKLog logForApps];
  }

  v3 = logForApps_log;

  return v3;
}

void __19__MKLog_logForApps__block_invoke()
{
  if (_block_invoke_13_onceToken != -1)
  {
    __19__MKLog_logForApps__block_invoke_cold_1();
  }
}

uint64_t __19__MKLog_logForApps__block_invoke_2()
{
  logForApps_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "apps");

  return MEMORY[0x2821F96F8]();
}

+ (id)logForUI
{
  if (logForUI_onceToken != -1)
  {
    +[MKLog logForUI];
  }

  v3 = logForUI_log;

  return v3;
}

void __17__MKLog_logForUI__block_invoke()
{
  if (_block_invoke_14_onceToken != -1)
  {
    __17__MKLog_logForUI__block_invoke_cold_1();
  }
}

uint64_t __17__MKLog_logForUI__block_invoke_2()
{
  logForUI_log = os_log_create([@"com.apple.MigrationKit" UTF8String], "ui");

  return MEMORY[0x2821F96F8]();
}

@end