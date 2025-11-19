@interface EDMigrateBlockedSenderEnabledToBlockedSenderActionEnumUpgradeStep
+ (BOOL)run;
@end

@implementation EDMigrateBlockedSenderEnabledToBlockedSenderActionEnumUpgradeStep

+ (BOOL)run
{
  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = *MEMORY[0x1E699AB58];
  v4 = [v2 valueForKey:*MEMORY[0x1E699AB58]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 BOOLValue])
    {
      v5 = &unk_1F45E6868;
    }

    else
    {
      v5 = &unk_1F45E6880;
    }

    [v2 setValue:v5 forKey:*MEMORY[0x1E699AB50]];
  }

  [v2 removeObjectForKey:v3];

  return 1;
}

@end