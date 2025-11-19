@interface ICLocalization
+ (id)localizedFrameworkStringForKey:(id)a3 value:(id)a4 table:(id)a5 allowSiri:(BOOL)a6;
@end

@implementation ICLocalization

+ (id)localizedFrameworkStringForKey:(id)a3 value:(id)a4 table:(id)a5 allowSiri:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (localizedFrameworkStringForKey_value_table_allowSiri__onceToken != -1)
  {
    +[ICLocalization localizedFrameworkStringForKey:value:table:allowSiri:];
  }

  v12 = localizedFrameworkStringForKey_value_table_allowSiri__shouldUseSiriLocalization;
  v13 = MEMORY[0x1E696AAE8];
  v14 = ICSharedFrameworkBundleIdentifier();
  v15 = [v13 bundleWithIdentifier:v14];
  v16 = v15;
  if (v12 == 1 && v6)
  {
    v17 = [v15 siriUILocalizedStringForKey:v9 value:v10 table:v11];
  }

  else
  {
    v17 = [v15 localizedStringForKey:v9 value:v10 table:v11];
  }

  v18 = v17;

  return v18;
}

void __71__ICLocalization_localizedFrameworkStringForKey_value_table_allowSiri___block_invoke()
{
  v0 = +[ICDeviceSupport processIsSiri];
  localizedFrameworkStringForKey_value_table_allowSiri__shouldUseSiriLocalization = v0;
  if (v0)
  {
    if (!dlopen("/System/Library/PrivateFrameworks/SiriUI.framework/SiriUI", 1))
    {
      v1 = os_log_create("com.apple.notes", "Application");
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        __71__ICLocalization_localizedFrameworkStringForKey_value_table_allowSiri___block_invoke_cold_1(v1);
      }
    }

    if (!dlopen("/System/Library/PrivateFrameworks/AssistantUI.framework/AssistantUI", 1))
    {
      v2 = os_log_create("com.apple.notes", "Application");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __71__ICLocalization_localizedFrameworkStringForKey_value_table_allowSiri___block_invoke_cold_2(v2);
      }
    }
  }
}

@end