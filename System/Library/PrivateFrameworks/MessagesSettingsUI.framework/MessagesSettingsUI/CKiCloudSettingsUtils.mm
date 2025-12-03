@interface CKiCloudSettingsUtils
+ (id)iCloudSettingsSyncText;
+ (id)lastSyncedDateStringForDate:(id)date inContext:(int64_t)context;
+ (id)localizedStringWithKey:(id)key inPlistNamed:(id)named;
+ (id)sharedNumberFormatter;
+ (id)specifierWithTitle:(id)title target:(id)target selector:(SEL)selector;
@end

@implementation CKiCloudSettingsUtils

+ (id)specifierWithTitle:(id)title target:(id)target selector:(SEL)selector
{
  v7 = MEMORY[0x277D3FAD8];
  titleCopy = title;
  v9 = [v7 preferenceSpecifierNamed:titleCopy target:target set:0 get:selector detail:0 cell:-1 edit:0];
  [v9 setIdentifier:titleCopy];

  [v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  [v9 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];

  return v9;
}

+ (id)iCloudSettingsSyncText
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"USE_ON_THIS_DEVICE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  return v3;
}

+ (id)localizedStringWithKey:(id)key inPlistNamed:(id)named
{
  v5 = MEMORY[0x277CCA8D8];
  namedCopy = named;
  keyCopy = key;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:keyCopy value:&stru_286A13F00 table:namedCopy];

  return v9;
}

+ (id)lastSyncedDateStringForDate:(id)date inContext:(int64_t)context
{
  dateCopy = date;
  v6 = dateCopy;
  if (lastSyncedDateStringForDate_inContext__onceToken == -1)
  {
    if (dateCopy)
    {
LABEL_3:
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      [lastSyncedDateStringForDate_inContext__dateFormatter setLocale:currentLocale];
      [lastSyncedDateStringForDate_inContext__timeFormatter setLocale:currentLocale];
      v8 = [MEMORY[0x277CBEAA8] now];
      [v8 timeIntervalSinceDate:v6];
      v10 = v9;

      if (v10 >= 60.0)
      {
        v12 = [lastSyncedDateStringForDate_inContext__dateFormatter stringFromDate:v6];
        v11 = [v12 lowercaseStringWithLocale:currentLocale];

        v13 = [lastSyncedDateStringForDate_inContext__timeFormatter stringFromDate:v6];
        v14 = @"SYNC_COMPLETE_ON_DAY_AT_TIME";
        if (!context)
        {
          v14 = @"SYNC_DETAILS_FOOTER_TEXT";
        }

        v15 = MEMORY[0x277CCACA8];
        v16 = MEMORY[0x277CCA8D8];
        v17 = v14;
        v18 = [v16 bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:v17 value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

        context = [v15 stringWithFormat:v19, v11, v13];
      }

      else
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        context = [v11 localizedStringForKey:@"SYNC_COMPLETE_JUST_NOW" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
      }

      goto LABEL_12;
    }
  }

  else
  {
    +[CKiCloudSettingsUtils lastSyncedDateStringForDate:inContext:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  if (!context)
  {
    goto LABEL_13;
  }

  currentLocale = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  context = [currentLocale localizedStringForKey:@"NOT_SYNCED" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
LABEL_12:

LABEL_13:

  return context;
}

uint64_t __63__CKiCloudSettingsUtils_lastSyncedDateStringForDate_inContext___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = lastSyncedDateStringForDate_inContext__dateFormatter;
  lastSyncedDateStringForDate_inContext__dateFormatter = v0;

  [lastSyncedDateStringForDate_inContext__dateFormatter setDoesRelativeDateFormatting:1];
  [lastSyncedDateStringForDate_inContext__dateFormatter setDateStyle:1];
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = lastSyncedDateStringForDate_inContext__timeFormatter;
  lastSyncedDateStringForDate_inContext__timeFormatter = v2;

  v4 = lastSyncedDateStringForDate_inContext__timeFormatter;

  return [v4 setTimeStyle:1];
}

+ (id)sharedNumberFormatter
{
  if (sharedNumberFormatter_onceToken != -1)
  {
    +[CKiCloudSettingsUtils sharedNumberFormatter];
  }

  v3 = sharedNumberFormatter_numberFormatter;

  return v3;
}

uint64_t __46__CKiCloudSettingsUtils_sharedNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = sharedNumberFormatter_numberFormatter;
  sharedNumberFormatter_numberFormatter = v0;

  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  [sharedNumberFormatter_numberFormatter setLocale:v2];

  [sharedNumberFormatter_numberFormatter setNumberStyle:1];
  v3 = sharedNumberFormatter_numberFormatter;

  return [v3 setUsesGroupingSeparator:1];
}

@end