@interface NSDictionary(DMMigrationRebootCount)
+ (id)dm_migrationRebootCountPrefWithRebootCount:()DMMigrationRebootCount buildVersion:;
- (id)dm_migrationRebootCountPref_buildVersion;
- (uint64_t)dm_migrationRebootCountPref_rebootCount;
@end

@implementation NSDictionary(DMMigrationRebootCount)

+ (id)dm_migrationRebootCountPrefWithRebootCount:()DMMigrationRebootCount buildVersion:
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  dm_migrationRebootCountPref_buildVersionKey = [self dm_migrationRebootCountPref_buildVersionKey];
  v13[0] = dm_migrationRebootCountPref_buildVersionKey;
  v14[0] = v6;
  dm_migrationRebootCountPref_rebootCountKey = [self dm_migrationRebootCountPref_rebootCountKey];
  v13[1] = dm_migrationRebootCountPref_rebootCountKey;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (uint64_t)dm_migrationRebootCountPref_rebootCount
{
  dm_migrationRebootCountPref_rebootCountKey = [MEMORY[0x277CBEAC0] dm_migrationRebootCountPref_rebootCountKey];
  v3 = [self objectForKeyedSubscript:dm_migrationRebootCountPref_rebootCountKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v3)
    {
      return 0;
    }

    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)dm_migrationRebootCountPref_buildVersion
{
  dm_migrationRebootCountPref_buildVersionKey = [MEMORY[0x277CBEAC0] dm_migrationRebootCountPref_buildVersionKey];
  v3 = [self objectForKeyedSubscript:dm_migrationRebootCountPref_buildVersionKey];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

@end