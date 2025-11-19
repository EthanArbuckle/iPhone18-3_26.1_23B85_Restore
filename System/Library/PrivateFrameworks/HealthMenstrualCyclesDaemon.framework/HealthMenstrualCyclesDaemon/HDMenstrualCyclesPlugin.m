@interface HDMenstrualCyclesPlugin
+ (BOOL)shouldLoadPluginForDaemon:(id)a3;
- (HDMenstrualCyclesPlugin)init;
- (HDMenstrualCyclesPlugin)initWithLocalUserDefaults:(id)a3;
- (id)extensionForProfile:(id)a3;
- (id)stateSyncEntityClasses;
- (id)taskServerClasses;
- (void)handleDatabaseObliteration;
@end

@implementation HDMenstrualCyclesPlugin

- (HDMenstrualCyclesPlugin)init
{
  v3 = [MEMORY[0x277CBEBD0] hkmc_menstrualCyclesDefaults];
  v4 = [(HDMenstrualCyclesPlugin *)self initWithLocalUserDefaults:v3];

  return v4;
}

- (HDMenstrualCyclesPlugin)initWithLocalUserDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDMenstrualCyclesPlugin;
  v6 = [(HDMenstrualCyclesPlugin *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, a3);
  }

  return v7;
}

+ (BOOL)shouldLoadPluginForDaemon:(id)a3
{
  v3 = [a3 behavior];
  v4 = [v3 isRealityDevice];

  return v4 ^ 1;
}

- (id)extensionForProfile:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [HDMCProfileExtension alloc];
    v6 = [objc_alloc(MEMORY[0x277D119F8]) initWithUserDefaults:self->_userDefaults];
    v7 = [(HDMCProfileExtension *)v5 initWithProfile:v4 settingsManager:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)handleDatabaseObliteration
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBD0];
  v5[0] = *MEMORY[0x277D11898];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 hk_deleteDomainsNamed:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (id)taskServerClasses
{
  v5[7] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:7];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)stateSyncEntityClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end