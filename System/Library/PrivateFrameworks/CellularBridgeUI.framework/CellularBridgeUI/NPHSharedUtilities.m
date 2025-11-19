@interface NPHSharedUtilities
+ (BOOL)isActiveDeviceTinker;
+ (BOOL)isActiveWatchChinaRegionCellular;
+ (BOOL)pairedDeviceHasHomeButton;
@end

@implementation NPHSharedUtilities

+ (BOOL)isActiveDeviceTinker
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D37B48] activeDevice];
  v3 = [v2 isTinker];

  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "+[NPHSharedUtilities isActiveDeviceTinker]";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s : %d", &v7, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (BOOL)pairedDeviceHasHomeButton
{
  if (pairedDeviceHasHomeButton_onceToken != -1)
  {
    +[NPHSharedUtilities pairedDeviceHasHomeButton];
  }

  return pairedDeviceHasHomeButton_pairedDeviceHasHomeButton;
}

void __47__NPHSharedUtilities_pairedDeviceHasHomeButton__block_invoke()
{
  v0 = [MEMORY[0x277D37B48] activeDevice];
  pairedDeviceHasHomeButton_pairedDeviceHasHomeButton = [v0 hasHomeButton];
}

+ (BOOL)isActiveWatchChinaRegionCellular
{
  v2 = [MEMORY[0x277D37B48] activeDevice];
  v3 = [v2 valueForProperty:*MEMORY[0x277D37B98]];
  v4 = [v3 BOOLValue];

  return v4;
}

@end