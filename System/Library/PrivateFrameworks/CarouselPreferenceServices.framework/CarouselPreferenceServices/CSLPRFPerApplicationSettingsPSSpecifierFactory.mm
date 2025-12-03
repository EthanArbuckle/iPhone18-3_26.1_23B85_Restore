@interface CSLPRFPerApplicationSettingsPSSpecifierFactory
- (CSLPRFPerApplicationSettingsPSSpecifierFactory)init;
- (id)specifierForSettings:(id)settings set:(SEL)set get:(SEL)get;
- (void)dealloc;
- (void)updateSpecifier:(id)specifier withSettings:(id)settings;
@end

@implementation CSLPRFPerApplicationSettingsPSSpecifierFactory

- (void)updateSpecifier:(id)specifier withSettings:(id)settings
{
  settingsCopy = settings;
  specifierCopy = specifier;
  [specifierCopy cslprf_setSettings:settingsCopy];
  objc_storeWeak(&specifierCopy[*MEMORY[0x277D3FCB8]], settingsCopy);
}

- (id)specifierForSettings:(id)settings set:(SEL)set get:(SEL)get
{
  settingsCopy = settings;
  application = [settingsCopy application];
  bundleIdentifier = [application bundleIdentifier];
  localizedName = [application localizedName];
  v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:localizedName target:settingsCopy set:set get:get detail:0 cell:6 edit:0];
  [v12 cslprf_setSettings:settingsCopy];

  [v12 setIdentifier:bundleIdentifier];
  [v12 setAccessibilityIdentifier:localizedName];
  [v12 setProperty:bundleIdentifier forKey:*MEMORY[0x277D40008]];
  [v12 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  if (([application isLocal] & 1) == 0)
  {
    [v12 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  }

  [v12 setProperty:localizedName forKey:@"CSLPRFBBDisplayName"];
  [v12 setProperty:self->_localIconLoadingQueue forKey:@"CSLPRFCellIconQueueKey"];
  bbSectionInfo = [application bbSectionInfo];
  if (bbSectionInfo)
  {
    [v12 setProperty:bbSectionInfo forKey:@"CSLPRFBBSectionInfo"];
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