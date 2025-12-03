@interface HUPrimaryUserAutomaticItem
- (HUPrimaryUserAutomaticItem)initWithMediaProfileContainer:(id)container;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUPrimaryUserAutomaticItem

- (HUPrimaryUserAutomaticItem)initWithMediaProfileContainer:(id)container
{
  containerCopy = container;
  if (!containerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUPrimaryUserAutomaticItem.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  v11.receiver = self;
  v11.super_class = HUPrimaryUserAutomaticItem;
  v7 = [(HUPrimaryUserAutomaticItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mediaProfileContainer, container);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mediaProfileContainer = [(HUPrimaryUserAutomaticItem *)self mediaProfileContainer];
  v6 = [v4 initWithMediaProfileContainer:mediaProfileContainer];

  [v6 copyLatestResultsFromItem:self];
  return v6;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_opt_new();
  [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  v5 = MEMORY[0x277CCABB0];
  mediaProfileContainer = [(HUPrimaryUserAutomaticItem *)self mediaProfileContainer];
  settings = [mediaProfileContainer settings];
  v8 = [v5 numberWithInt:{objc_msgSend(settings, "isControllable") ^ 1}];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v9 = 1;
  v10 = _HULocalizedStringWithDefaultValue(@"HUPrimaryUserSettingsAutomaticSection_Title", @"HUPrimaryUserSettingsAutomaticSection_Title", 1);
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];

  mediaProfileContainer2 = [(HUPrimaryUserAutomaticItem *)self mediaProfileContainer];
  hf_preferredMediaUser = [mediaProfileContainer2 hf_preferredMediaUser];
  if (!hf_preferredMediaUser)
  {
    mediaProfileContainer3 = [(HUPrimaryUserAutomaticItem *)self mediaProfileContainer];
    hf_appleMusicCurrentLoggedInAccount = [mediaProfileContainer3 hf_appleMusicCurrentLoggedInAccount];
    if (hf_appleMusicCurrentLoggedInAccount)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x277D14068]];

  mediaProfileContainer4 = [(HUPrimaryUserAutomaticItem *)self mediaProfileContainer];
  hf_dependentHomeKitObjectsForDownstreamItems = [mediaProfileContainer4 hf_dependentHomeKitObjectsForDownstreamItems];
  [v4 setObject:hf_dependentHomeKitObjectsForDownstreamItems forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v18 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v18;
}

@end