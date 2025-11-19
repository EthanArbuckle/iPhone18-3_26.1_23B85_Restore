@interface DOCUserInterfaceState
+ (id)stateWithDefaultSettingsForConfiguration:(id)a3;
+ (id)unarchivedFromData:(id)a3 configuration:(id)a4 error:(id *)a5;
- (DOCUserInterfaceState)initWithCoder:(id)a3;
- (DOCUserInterfaceState)initWithDefaultSettingsForConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)bumpLastUpdatedDate;
- (void)encodeWithCoder:(id)a3;
- (void)upgradeDefaultSettingsIfNecessaryForConfiguration:(id)a3;
@end

@implementation DOCUserInterfaceState

- (void)bumpLastUpdatedDate
{
  v3 = [MEMORY[0x277CBEAA8] date];
  lastUpdatedDate = self->_lastUpdatedDate;
  self->_lastUpdatedDate = v3;

  MEMORY[0x2821F96F8]();
}

- (DOCUserInterfaceState)initWithDefaultSettingsForConfiguration:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DOCUserInterfaceState;
  v5 = [(DOCUserInterfaceState *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    groupingBehaviors = v5->_groupingBehaviors;
    v5->_groupingBehaviors = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    displayModes = v5->_displayModes;
    v5->_displayModes = v10;

    v5->_configurationDefaultsVersion = 0;
    [(DOCUserInterfaceState *)v5 upgradeDefaultSettingsIfNecessaryForConfiguration:v4];
  }

  return v5;
}

+ (id)stateWithDefaultSettingsForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDefaultSettingsForConfiguration:v4];

  return v5;
}

+ (id)unarchivedFromData:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = MEMORY[0x277CCAAC8];
  v9 = a3;
  v15 = 0;
  v10 = [v8 unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v15];

  v11 = v15;
  if (v10)
  {
    [v10 upgradeDefaultSettingsIfNecessaryForConfiguration:v7];
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
    if (!a5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [DOCUserInterfaceState unarchivedFromData:v11 configuration:v12 error:?];
  if (a5)
  {
LABEL_7:
    v13 = v11;
    *a5 = v11;
  }

LABEL_8:

  return v10;
}

- (void)upgradeDefaultSettingsIfNecessaryForConfiguration:(id)a3
{
  if (!self->_configurationDefaultsVersion && [a3 isInUIPDocumentLanding])
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
  v5 = [(DOCUserInterfaceState *)self lastUpdatedDate];
  v6 = [(DOCUserInterfaceState *)self userPrefersTiledSidebarHidden];
  v7 = [v3 stringWithFormat:@"%@ lastUpdatedDate=%@, userPrefersTiledSidebarHidden=(%@)", v4, v5, v6];

  return v7;
}

- (DOCUserInterfaceState)initWithCoder:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = DOCUserInterfaceState;
  v5 = [(DOCUserInterfaceState *)&v40 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configurationDefaultsVersion"];
    -[DOCUserInterfaceState setConfigurationDefaultsVersion:](v5, "setConfigurationDefaultsVersion:", [v6 unsignedIntegerValue]);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyVisitedEffectiveTabIdentifier"];
    [(DOCUserInterfaceState *)v5 setMostRecentlyVisitedEffectiveTabIdentifier:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyVisitedBrowsedState_Recents"];
    [(DOCUserInterfaceState *)v5 setMostRecentlyVisitedBrowsedState_Recents:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyVisitedBrowsedState_Shared"];
    [(DOCUserInterfaceState *)v5 setMostRecentlyVisitedBrowsedState_Shared:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentlyVisitedBrowsedState_FullBrowser"];
    [(DOCUserInterfaceState *)v5 setMostRecentlyVisitedBrowsedState_FullBrowser:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUsedOpenSaveLocation"];
    [(DOCUserInterfaceState *)v5 setLastUsedOpenSaveLocation:v11];

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"displayModes"];
    v17 = [v16 mutableCopy];
    displayModes = v5->_displayModes;
    v5->_displayModes = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"sortingMode"];
    [(DOCUserInterfaceState *)v5 setSortingMode:v23];

    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"groupingBehaviors"];
    v29 = [v28 mutableCopy];
    groupingBehaviors = v5->_groupingBehaviors;
    v5->_groupingBehaviors = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userPrefersTiledSidebarHidden"];
    [(DOCUserInterfaceState *)v5 setUserPrefersTiledSidebarHidden:v31];

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    [(DOCUserInterfaceState *)v5 setLastUpdatedDate:v32];

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sizeSetting"];
    [(DOCUserInterfaceState *)v5 setSizeSetting:v33];

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sizeSliderValue"];
    [(DOCUserInterfaceState *)v5 setSizeSliderValue:v34];

    if (!v5->_groupingBehaviors)
    {
      v35 = [MEMORY[0x277CBEB38] dictionary];
      v36 = v5->_groupingBehaviors;
      v5->_groupingBehaviors = v35;
    }

    if (!v5->_displayModes)
    {
      v37 = [MEMORY[0x277CBEB38] dictionary];
      v38 = v5->_displayModes;
      v5->_displayModes = v37;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v30 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DOCUserInterfaceState configurationDefaultsVersion](self, "configurationDefaultsVersion")}];
  [v30 encodeObject:v4 forKey:@"configurationDefaultsVersion"];

  v5 = [(DOCUserInterfaceState *)self mostRecentlyVisitedEffectiveTabIdentifier];

  if (v5)
  {
    v6 = [(DOCUserInterfaceState *)self mostRecentlyVisitedEffectiveTabIdentifier];
    [v30 encodeObject:v6 forKey:@"mostRecentlyVisitedEffectiveTabIdentifier"];
  }

  v7 = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_Recents];

  if (v7)
  {
    v8 = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_Recents];
    [v30 encodeObject:v8 forKey:@"mostRecentlyVisitedBrowsedState_Recents"];
  }

  v9 = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_Shared];

  if (v9)
  {
    v10 = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_Shared];
    [v30 encodeObject:v10 forKey:@"mostRecentlyVisitedBrowsedState_Shared"];
  }

  v11 = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_FullBrowser];

  if (v11)
  {
    v12 = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_FullBrowser];
    [v30 encodeObject:v12 forKey:@"mostRecentlyVisitedBrowsedState_FullBrowser"];
  }

  v13 = [(DOCUserInterfaceState *)self lastUsedOpenSaveLocation];

  if (v13)
  {
    v14 = [(DOCUserInterfaceState *)self lastUsedOpenSaveLocation];
    [v30 encodeObject:v14 forKey:@"lastUsedOpenSaveLocation"];
  }

  v15 = [(DOCUserInterfaceState *)self displayModes];

  if (v15)
  {
    v16 = [(DOCUserInterfaceState *)self displayModes];
    [v30 encodeObject:v16 forKey:@"displayModes"];
  }

  v17 = [(DOCUserInterfaceState *)self sortingMode];

  if (v17)
  {
    v18 = [(DOCUserInterfaceState *)self sortingMode];
    [v30 encodeObject:v18 forKey:@"sortingMode"];
  }

  v19 = [(DOCUserInterfaceState *)self groupingBehaviors];

  if (v19)
  {
    v20 = [(DOCUserInterfaceState *)self groupingBehaviors];
    [v30 encodeObject:v20 forKey:@"groupingBehaviors"];
  }

  v21 = [(DOCUserInterfaceState *)self userPrefersTiledSidebarHidden];

  if (v21)
  {
    v22 = [(DOCUserInterfaceState *)self userPrefersTiledSidebarHidden];
    [v30 encodeObject:v22 forKey:@"userPrefersTiledSidebarHidden"];
  }

  v23 = [(DOCUserInterfaceState *)self lastUpdatedDate];

  if (v23)
  {
    v24 = [(DOCUserInterfaceState *)self lastUpdatedDate];
    [v30 encodeObject:v24 forKey:@"lastUpdatedDate"];
  }

  v25 = [(DOCUserInterfaceState *)self sizeSetting];

  if (v25)
  {
    v26 = [(DOCUserInterfaceState *)self sizeSetting];
    [v30 encodeObject:v26 forKey:@"sizeSetting"];
  }

  v27 = [(DOCUserInterfaceState *)self sizeSliderValue];

  v28 = v30;
  if (v27)
  {
    v29 = [(DOCUserInterfaceState *)self sizeSliderValue];
    [v30 encodeObject:v29 forKey:@"sizeSliderValue"];

    v28 = v30;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[DOCUserInterfaceState allocWithZone:?]];
  if (v4)
  {
    [(DOCUserInterfaceState *)v4 setConfigurationDefaultsVersion:[(DOCUserInterfaceState *)self configurationDefaultsVersion]];
    v5 = [(DOCUserInterfaceState *)self mostRecentlyVisitedEffectiveTabIdentifier];
    v6 = [v5 copy];
    [(DOCUserInterfaceState *)v4 setMostRecentlyVisitedEffectiveTabIdentifier:v6];

    v7 = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_Recents];
    v8 = [v7 copy];
    [(DOCUserInterfaceState *)v4 setMostRecentlyVisitedBrowsedState_Recents:v8];

    v9 = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_Shared];
    v10 = [v9 copy];
    [(DOCUserInterfaceState *)v4 setMostRecentlyVisitedBrowsedState_Shared:v10];

    v11 = [(DOCUserInterfaceState *)self mostRecentlyVisitedBrowsedState_FullBrowser];
    v12 = [v11 copy];
    [(DOCUserInterfaceState *)v4 setMostRecentlyVisitedBrowsedState_FullBrowser:v12];

    v13 = [(DOCUserInterfaceState *)self lastUsedOpenSaveLocation];
    v14 = [v13 copy];
    [(DOCUserInterfaceState *)v4 setLastUsedOpenSaveLocation:v14];

    v15 = [(DOCUserInterfaceState *)self displayModes];
    v16 = [v15 mutableCopy];
    displayModes = v4->_displayModes;
    v4->_displayModes = v16;

    v18 = [(DOCUserInterfaceState *)self sortingMode];
    v19 = [v18 copy];
    [(DOCUserInterfaceState *)v4 setSortingMode:v19];

    v20 = [(DOCUserInterfaceState *)self groupingBehaviors];
    v21 = [v20 mutableCopy];
    groupingBehaviors = v4->_groupingBehaviors;
    v4->_groupingBehaviors = v21;

    v23 = [(DOCUserInterfaceState *)self userPrefersTiledSidebarHidden];
    v24 = [v23 copy];
    [(DOCUserInterfaceState *)v4 setUserPrefersTiledSidebarHidden:v24];

    v25 = [(DOCUserInterfaceState *)self lastUpdatedDate];
    v26 = [v25 copy];
    [(DOCUserInterfaceState *)v4 setLastUpdatedDate:v26];

    v27 = [(DOCUserInterfaceState *)self sizeSetting];
    v28 = [v27 copy];
    [(DOCUserInterfaceState *)v4 setSizeSetting:v28];

    v29 = [(DOCUserInterfaceState *)self sizeSliderValue];
    v30 = [v29 copy];
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