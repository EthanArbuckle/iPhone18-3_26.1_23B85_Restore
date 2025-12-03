@interface DOCUserInterfaceState
+ (id)stateWithDefaultSettingsForConfiguration:(id)configuration;
+ (id)unarchivedFromData:(id)data configuration:(id)configuration error:(id *)error;
- (DOCUserInterfaceState)initWithCoder:(id)coder;
- (DOCUserInterfaceState)initWithDefaultSettingsForConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)bumpLastUpdatedDate;
- (void)encodeWithCoder:(id)coder;
- (void)upgradeDefaultSettingsIfNecessaryForConfiguration:(id)configuration;
@end

@implementation DOCUserInterfaceState

- (void)bumpLastUpdatedDate
{
  date = [MEMORY[0x277CBEAA8] date];
  lastUpdatedDate = self->_lastUpdatedDate;
  self->_lastUpdatedDate = date;

  MEMORY[0x2821F96F8]();
}

- (DOCUserInterfaceState)initWithDefaultSettingsForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = DOCUserInterfaceState;
  v5 = [(DOCUserInterfaceState *)&v13 init];
  if (v5)
  {
    date = [MEMORY[0x277CBEAA8] date];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = date;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    groupingBehaviors = v5->_groupingBehaviors;
    v5->_groupingBehaviors = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    displayModes = v5->_displayModes;
    v5->_displayModes = dictionary2;

    v5->_configurationDefaultsVersion = 0;
    [(DOCUserInterfaceState *)v5 upgradeDefaultSettingsIfNecessaryForConfiguration:configurationCopy];
  }

  return v5;
}

+ (id)stateWithDefaultSettingsForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[self alloc] initWithDefaultSettingsForConfiguration:configurationCopy];

  return v5;
}

+ (id)unarchivedFromData:(id)data configuration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v8 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v15 = 0;
  v10 = [v8 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v15];

  v11 = v15;
  if (v10)
  {
    [v10 upgradeDefaultSettingsIfNecessaryForConfiguration:configurationCopy];
    goto LABEL_8;
  }

  v12 = docStateStoreHandle;
  if (!docStateStoreHandle)
  {
    DOCInitLogging();
    v12 = docStateStoreHandle;
  }

  if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [DOCUserInterfaceState unarchivedFromData:v11 configuration:v12 error:?];
  if (error)
  {
LABEL_7:
    v13 = v11;
    *error = v11;
  }

LABEL_8:

  return v10;
}

- (void)upgradeDefaultSettingsIfNecessaryForConfiguration:(id)configuration
{
  if (!self->_configurationDefaultsVersion && [configuration isInUIPDocumentLanding])
  {
    userPrefersTiledSidebarHidden = self->_userPrefersTiledSidebarHidden;
    self->_userPrefersTiledSidebarHidden = MEMORY[0x277CBEC38];
  }

  self->_configurationDefaultsVersion = 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = DOCUserInterfaceState;
  v4 = [(DOCUserInterfaceState *)&v9 description];
  lastUpdatedDate = [(DOCUserInterfaceState *)self lastUpdatedDate];
  userPrefersTiledSidebarHidden = [(DOCUserInterfaceState *)self userPrefersTiledSidebarHidden];
  v7 = [v3 stringWithFormat:@"%@ lastUpdatedDate=%@, userPrefersTiledSidebarHidden=(%@)", v4, lastUpdatedDate, userPrefersTiledSidebarHidden];

  return v7;
}

- (DOCUserInterfaceState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v40.receiver = self;
  v40.super_class = DOCUserInterfaceState;
  v5 = [(DOCUserInterfaceState *)&v40 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationDefaultsVersion"];
    -[DOCUserInterfaceState setConfigurationDefaultsVersion:](v5, "setConfigurationDefaultsVersion:", [v6 unsignedIntegerValue]);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyVisitedEffectiveTabIdentifier"];
    [(DOCUserInterfaceState *)v5 setMostRecentlyVisitedEffectiveTabIdentifier:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyVisitedBrowsedState_Recents"];
    [(DOCUserInterfaceState *)v5 setMostRecentlyVisitedBrowsedState_Recents:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyVisitedBrowsedState_Shared"];
    [(DOCUserInterfaceState *)v5 setMostRecentlyVisitedBrowsedState_Shared:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyVisitedBrowsedState_FullBrowser"];
    [(DOCUserInterfaceState *)v5 setMostRecentlyVisitedBrowsedState_FullBrowser:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUsedOpenSaveLocation"];
    [(DOCUserInterfaceState *)v5 setLastUsedOpenSaveLocation:v11];

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"displayModes"];
    v17 = [v16 mutableCopy];
    displayModes = v5->_displayModes;
    v5->_displayModes = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"sortingMode"];
    [(DOCUserInterfaceState *)v5 setSortingMode:v23];

    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"groupingBehaviors"];
    v29 = [v28 mutableCopy];
    groupingBehaviors = v5->_groupingBehaviors;
    v5->_groupingBehaviors = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userPrefersTiledSidebarHidden"];
    [(DOCUserInterfaceState *)v5 setUserPrefersTiledSidebarHidden:v31];

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    [(DOCUserInterfaceState *)v5 setLastUpdatedDate:v32];

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sizeSetting"];
    [(DOCUserInterfaceState *)v5 setSizeSetting:v33];

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sizeSliderValue"];
    [(DOCUserInterfaceState *)v5 setSizeSliderValue:v34];

    if (!v5->_groupingBehaviors)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v36 = v5->_groupingBehaviors;
      v5->_groupingBehaviors = dictionary;
    }

    if (!v5->_displayModes)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      v38 = v5->_displayModes;
      v5->_displayModes = dictionary2;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DOCUserInterfaceState configurationDefaultsVersion](self, "configurationDefaultsVersion")}];
  [coderCopy encodeObject:v4 forKey:@"configurationDefaultsVersion"];

  mostRecentlyVisitedEffectiveTabIdentifier = [(DOCUserInterfaceState *)self mostRecentlyVisitedEffectiveTabIdentifier];

  if (mostRecentlyVisitedEffectiveTabIdentifier)
  {
    mostRecentlyVisitedEffectiveTabIdentifier2 = [(DOCUserInterfaceState *)self mostRecentlyVisitedEffectiveTabIdentifier];
    [coderCopy encodeObject:mostRecentlyVisitedEffectiveTabIdentifier2 forKey:@"mostRecentlyVisitedEffectiveTabIdentifier"];
  }

  mostRecentlyVisitedBrowsedState_Recents = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_Recents];

  if (mostRecentlyVisitedBrowsedState_Recents)
  {
    mostRecentlyVisitedBrowsedState_Recents2 = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_Recents];
    [coderCopy encodeObject:mostRecentlyVisitedBrowsedState_Recents2 forKey:@"mostRecentlyVisitedBrowsedState_Recents"];
  }

  mostRecentlyVisitedBrowsedState_Shared = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_Shared];

  if (mostRecentlyVisitedBrowsedState_Shared)
  {
    mostRecentlyVisitedBrowsedState_Shared2 = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_Shared];
    [coderCopy encodeObject:mostRecentlyVisitedBrowsedState_Shared2 forKey:@"mostRecentlyVisitedBrowsedState_Shared"];
  }

  mostRecentlyVisitedBrowsedState_FullBrowser = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_FullBrowser];

  if (mostRecentlyVisitedBrowsedState_FullBrowser)
  {
    mostRecentlyVisitedBrowsedState_FullBrowser2 = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_FullBrowser];
    [coderCopy encodeObject:mostRecentlyVisitedBrowsedState_FullBrowser2 forKey:@"mostRecentlyVisitedBrowsedState_FullBrowser"];
  }

  lastUsedOpenSaveLocation = [(DOCUserInterfaceState *)self lastUsedOpenSaveLocation];

  if (lastUsedOpenSaveLocation)
  {
    lastUsedOpenSaveLocation2 = [(DOCUserInterfaceState *)self lastUsedOpenSaveLocation];
    [coderCopy encodeObject:lastUsedOpenSaveLocation2 forKey:@"lastUsedOpenSaveLocation"];
  }

  displayModes = [(DOCUserInterfaceState *)self displayModes];

  if (displayModes)
  {
    displayModes2 = [(DOCUserInterfaceState *)self displayModes];
    [coderCopy encodeObject:displayModes2 forKey:@"displayModes"];
  }

  sortingMode = [(DOCUserInterfaceState *)self sortingMode];

  if (sortingMode)
  {
    sortingMode2 = [(DOCUserInterfaceState *)self sortingMode];
    [coderCopy encodeObject:sortingMode2 forKey:@"sortingMode"];
  }

  groupingBehaviors = [(DOCUserInterfaceState *)self groupingBehaviors];

  if (groupingBehaviors)
  {
    groupingBehaviors2 = [(DOCUserInterfaceState *)self groupingBehaviors];
    [coderCopy encodeObject:groupingBehaviors2 forKey:@"groupingBehaviors"];
  }

  userPrefersTiledSidebarHidden = [(DOCUserInterfaceState *)self userPrefersTiledSidebarHidden];

  if (userPrefersTiledSidebarHidden)
  {
    userPrefersTiledSidebarHidden2 = [(DOCUserInterfaceState *)self userPrefersTiledSidebarHidden];
    [coderCopy encodeObject:userPrefersTiledSidebarHidden2 forKey:@"userPrefersTiledSidebarHidden"];
  }

  lastUpdatedDate = [(DOCUserInterfaceState *)self lastUpdatedDate];

  if (lastUpdatedDate)
  {
    lastUpdatedDate2 = [(DOCUserInterfaceState *)self lastUpdatedDate];
    [coderCopy encodeObject:lastUpdatedDate2 forKey:@"lastUpdatedDate"];
  }

  sizeSetting = [(DOCUserInterfaceState *)self sizeSetting];

  if (sizeSetting)
  {
    sizeSetting2 = [(DOCUserInterfaceState *)self sizeSetting];
    [coderCopy encodeObject:sizeSetting2 forKey:@"sizeSetting"];
  }

  sizeSliderValue = [(DOCUserInterfaceState *)self sizeSliderValue];

  v28 = coderCopy;
  if (sizeSliderValue)
  {
    sizeSliderValue2 = [(DOCUserInterfaceState *)self sizeSliderValue];
    [coderCopy encodeObject:sizeSliderValue2 forKey:@"sizeSliderValue"];

    v28 = coderCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[DOCUserInterfaceState allocWithZone:?]];
  if (v4)
  {
    [(DOCUserInterfaceState *)v4 setConfigurationDefaultsVersion:[(DOCUserInterfaceState *)self configurationDefaultsVersion]];
    mostRecentlyVisitedEffectiveTabIdentifier = [(DOCUserInterfaceState *)self mostRecentlyVisitedEffectiveTabIdentifier];
    v6 = [mostRecentlyVisitedEffectiveTabIdentifier copy];
    [(DOCUserInterfaceState *)v4 setMostRecentlyVisitedEffectiveTabIdentifier:v6];

    mostRecentlyVisitedBrowsedState_Recents = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_Recents];
    v8 = [mostRecentlyVisitedBrowsedState_Recents copy];
    [(DOCUserInterfaceState *)v4 setMostRecentlyVisitedBrowsedState_Recents:v8];

    mostRecentlyVisitedBrowsedState_Shared = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_Shared];
    v10 = [mostRecentlyVisitedBrowsedState_Shared copy];
    [(DOCUserInterfaceState *)v4 setMostRecentlyVisitedBrowsedState_Shared:v10];

    mostRecentlyVisitedBrowsedState_FullBrowser = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_FullBrowser];
    v12 = [mostRecentlyVisitedBrowsedState_FullBrowser copy];
    [(DOCUserInterfaceState *)v4 setMostRecentlyVisitedBrowsedState_FullBrowser:v12];

    lastUsedOpenSaveLocation = [(DOCUserInterfaceState *)self lastUsedOpenSaveLocation];
    v14 = [lastUsedOpenSaveLocation copy];
    [(DOCUserInterfaceState *)v4 setLastUsedOpenSaveLocation:v14];

    displayModes = [(DOCUserInterfaceState *)self displayModes];
    v16 = [displayModes mutableCopy];
    displayModes = v4->_displayModes;
    v4->_displayModes = v16;

    sortingMode = [(DOCUserInterfaceState *)self sortingMode];
    v19 = [sortingMode copy];
    [(DOCUserInterfaceState *)v4 setSortingMode:v19];

    groupingBehaviors = [(DOCUserInterfaceState *)self groupingBehaviors];
    v21 = [groupingBehaviors mutableCopy];
    groupingBehaviors = v4->_groupingBehaviors;
    v4->_groupingBehaviors = v21;

    userPrefersTiledSidebarHidden = [(DOCUserInterfaceState *)self userPrefersTiledSidebarHidden];
    v24 = [userPrefersTiledSidebarHidden copy];
    [(DOCUserInterfaceState *)v4 setUserPrefersTiledSidebarHidden:v24];

    lastUpdatedDate = [(DOCUserInterfaceState *)self lastUpdatedDate];
    v26 = [lastUpdatedDate copy];
    [(DOCUserInterfaceState *)v4 setLastUpdatedDate:v26];

    sizeSetting = [(DOCUserInterfaceState *)self sizeSetting];
    v28 = [sizeSetting copy];
    [(DOCUserInterfaceState *)v4 setSizeSetting:v28];

    sizeSliderValue = [(DOCUserInterfaceState *)self sizeSliderValue];
    v30 = [sizeSliderValue copy];
    [(DOCUserInterfaceState *)v4 setSizeSliderValue:v30];
  }

  return v4;
}

+ (void)unarchivedFromData:(uint64_t)a1 configuration:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "+[DOCUserInterfaceState unarchivedFromData:configuration:error:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_249340000, a2, OS_LOG_TYPE_ERROR, "%s: Unable to unarchive most recent interface state. Error: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end