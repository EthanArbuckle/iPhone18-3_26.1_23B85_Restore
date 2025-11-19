@interface CSLPRFPerApplicationSettingsPSSpecifierFactory
- (CSLPRFPerApplicationSettingsPSSpecifierFactory)init;
- (id)specifierForSettings:(id)a3 set:(SEL)a4 get:(SEL)a5;
- (void)dealloc;
- (void)updateSpecifier:(id)a3 withSettings:(id)a4;
@end

@implementation CSLPRFPerApplicationSettingsPSSpecifierFactory

- (void)updateSpecifier:(id)a3 withSettings:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 cslprf_setSettings:v5];
  objc_storeWeak(&v6[*MEMORY[0x277D3FCB8]], v5);
}

- (id)specifierForSettings:(id)a3 set:(SEL)a4 get:(SEL)a5
{
  v8 = a3;
  v9 = [v8 application];
  v10 = [v9 bundleIdentifier];
  v11 = [v9 localizedName];
  v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v11 target:v8 set:a4 get:a5 detail:0 cell:6 edit:0];
  [v12 cslprf_setSettings:v8];

  [v12 setIdentifier:v10];
  [v12 setAccessibilityIdentifier:v11];
  [v12 setProperty:v10 forKey:*MEMORY[0x277D40008]];
  [v12 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  if (([v9 isLocal] & 1) == 0)
  {
    [v12 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  }

  [v12 setProperty:v11 forKey:@"CSLPRFBBDisplayName"];
  [v12 setProperty:self->_localIconLoadingQueue forKey:@"CSLPRFCellIconQueueKey"];
  v13 = [v9 bbSectionInfo];
  if (v13)
  {
    [v12 setProperty:v13 forKey:@"CSLPRFBBSectionInfo"];
  }

  return v12;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_localIconLoadingQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = CSLPRFPerApplicationSettingsPSSpecifierFactory;
  [(CSLPRFPerApplicationSettingsPSSpecifierFactory *)&v3 dealloc];
}

- (CSLPRFPerApplicationSettingsPSSpecifierFactory)init
{
  v6.receiver = self;
  v6.super_class = CSLPRFPerApplicationSettingsPSSpecifierFactory;
  v2 = [(CSLPRFPerApplicationSettingsPSSpecifierFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    localIconLoadingQueue = v2->_localIconLoadingQueue;
    v2->_localIconLoadingQueue = v3;

    [(NSOperationQueue *)v2->_localIconLoadingQueue setMaxConcurrentOperationCount:8];
  }

  return v2;
}

@end