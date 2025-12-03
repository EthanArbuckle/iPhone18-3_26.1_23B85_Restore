@interface NSDictionary(DMLastMigrationResults)
+ (id)dmlmr_lastMigrationResultsWithSuccess:()DMLastMigrationResults buildVersion:;
- (id)dmlmr_buildVersion;
- (id)dmlmr_success;
@end

@implementation NSDictionary(DMLastMigrationResults)

+ (id)dmlmr_lastMigrationResultsWithSuccess:()DMLastMigrationResults buildVersion:
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  dmlmr_buildVersionKey = [self dmlmr_buildVersionKey];
  v13[0] = dmlmr_buildVersionKey;
  v14[0] = v6;
  dmlmr_successKey = [self dmlmr_successKey];
  v13[1] = dmlmr_successKey;
  v9 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)dmlmr_success
{
  dmlmr_successKey = [MEMORY[0x277CBEAC0] dmlmr_successKey];
  v3 = [self objectForKeyedSubscript:dmlmr_successKey];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (id)dmlmr_buildVersion
{
  dmlmr_buildVersionKey = [MEMORY[0x277CBEAC0] dmlmr_buildVersionKey];
  v3 = [self objectForKeyedSubscript:dmlmr_buildVersionKey];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

@end