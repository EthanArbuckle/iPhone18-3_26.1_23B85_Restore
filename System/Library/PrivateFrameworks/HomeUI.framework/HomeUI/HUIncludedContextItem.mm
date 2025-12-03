@interface HUIncludedContextItem
- (HUIncludedContextItem)initWithHomeKitObject:(id)object contextType:(unint64_t)type home:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUIncludedContextItem

- (HUIncludedContextItem)initWithHomeKitObject:(id)object contextType:(unint64_t)type home:(id)home
{
  objectCopy = object;
  homeCopy = home;
  v14.receiver = self;
  v14.super_class = HUIncludedContextItem;
  v11 = [(HUIncludedContextItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_contextType = type;
    objc_storeStrong(&v11->_homeKitObject, object);
    objc_storeStrong(&v12->_home, home);
  }

  return v12;
}

- (id)_subclass_updateWithOptions:(id)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  contextType = [(HUIncludedContextItem *)self contextType];
  v6 = MEMORY[0x277D13F68];
  if (contextType > 1)
  {
    if (contextType == 2)
    {
      [dictionary setObject:@"HUServiceDetailsFavoriteSwitch" forKeyedSubscript:*MEMORY[0x277D13F68]];
      v7 = *MEMORY[0x277D13DC8];
      v8 = @"AccessoryDetails.Favorite";
    }

    else
    {
      if (contextType != 3)
      {
        goto LABEL_11;
      }

      [dictionary setObject:@"HUShowInHomeDashboardTitle" forKeyedSubscript:*MEMORY[0x277D13F68]];
      v7 = *MEMORY[0x277D13DC8];
      v8 = @"AccessoryDetails.ShowInHome";
    }
  }

  else
  {
    if (!contextType)
    {
      NSLog(&cfstr_ShouldNotBeUsi.isa);
      goto LABEL_11;
    }

    if (contextType != 1)
    {
      goto LABEL_11;
    }

    v7 = *MEMORY[0x277D13F68];
    v8 = @"HUStatusAndNotificationsIncludeInStatusTitle";
  }

  [dictionary setObject:v8 forKeyedSubscript:v7];
LABEL_11:
  v9 = [dictionary objectForKeyedSubscript:*v6];
  v10 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
  [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];

  homeKitObject = [(HUIncludedContextItem *)self homeKitObject];

  if (homeKitObject)
  {
    v12 = MEMORY[0x277CBEB98];
    homeKitObject2 = [(HUIncludedContextItem *)self homeKitObject];
    v14 = [v12 setWithObject:homeKitObject2];
    [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x277D13DA8]];
  }

  homeKitObject3 = [(HUIncludedContextItem *)self homeKitObject];
  v16 = [homeKitObject3 conformsToProtocol:&unk_28259DD60];

  v17 = MEMORY[0x277D14068];
  if (v16)
  {
    homeKitObject4 = [(HUIncludedContextItem *)self homeKitObject];
    if ([homeKitObject4 hf_shouldBeOnForContextType:{-[HUIncludedContextItem contextType](self, "contextType")}])
    {
      v19 = &unk_282491538;
    }

    else
    {
      v19 = &unk_282491550;
    }

    [dictionary setObject:v19 forKeyedSubscript:*v17];
    bOOLValue = [homeKitObject4 hf_shouldHideForContextType:{-[HUIncludedContextItem contextType](self, "contextType")}];
  }

  else
  {
    bOOLValue = 1;
  }

  overrideHiddenState = [(HUIncludedContextItem *)self overrideHiddenState];

  if (overrideHiddenState)
  {
    overrideHiddenState2 = [(HUIncludedContextItem *)self overrideHiddenState];
    bOOLValue = [overrideHiddenState2 BOOLValue];
  }

  home = [(HUIncludedContextItem *)self home];
  v24 = [home hf_currentUserIsRestrictedGuest] | bOOLValue;

  v25 = [MEMORY[0x277CCABB0] numberWithBool:v24 & 1];
  [dictionary setObject:v25 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  overridePrimaryState = [(HUIncludedContextItem *)self overridePrimaryState];

  if (overridePrimaryState)
  {
    overridePrimaryState2 = [(HUIncludedContextItem *)self overridePrimaryState];
    [dictionary setObject:overridePrimaryState2 forKeyedSubscript:*v17];
  }

  v28 = MEMORY[0x277D2C900];
  v29 = [MEMORY[0x277D14780] outcomeWithResults:dictionary];
  v30 = [v28 futureWithResult:v29];

  return v30;
}

@end