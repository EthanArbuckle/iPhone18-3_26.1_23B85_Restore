@interface HUPrimaryUserAutomaticItem
- (HUPrimaryUserAutomaticItem)initWithMediaProfileContainer:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUPrimaryUserAutomaticItem

- (HUPrimaryUserAutomaticItem)initWithMediaProfileContainer:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HUPrimaryUserAutomaticItem.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  v11.receiver = self;
  v11.super_class = HUPrimaryUserAutomaticItem;
  v7 = [(HUPrimaryUserAutomaticItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mediaProfileContainer, a3);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HUPrimaryUserAutomaticItem *)self mediaProfileContainer];
  v6 = [v4 initWithMediaProfileContainer:v5];

  [v6 copyLatestResultsFromItem:self];
  return v6;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_opt_new();
  [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  v5 = MEMORY[0x277CCABB0];
  v6 = [(HUPrimaryUserAutomaticItem *)self mediaProfileContainer];
  v7 = [v6 settings];
  v8 = [v5 numberWithInt:{objc_msgSend(v7, "isControllable") ^ 1}];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v9 = 1;
  v10 = _HULocalizedStringWithDefaultValue(@"HUPrimaryUserSettingsAutomaticSection_Title", @"HUPrimaryUserSettingsAutomaticSection_Title", 1);
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v11 = [(HUPrimaryUserAutomaticItem *)self mediaProfileContainer];
  v12 = [v11 hf_preferredMediaUser];
  if (!v12)
  {
    v13 = [(HUPrimaryUserAutomaticItem *)self mediaProfileContainer];
    v14 = [v13 hf_appleMusicCurrentLoggedInAccount];
    if (v14)
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

  v16 = [(HUPrimaryUserAutomaticItem *)self mediaProfileContainer];
  v17 = [v16 hf_dependentHomeKitObjectsForDownstreamItems];
  [v4 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v18 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v18;
}

@end