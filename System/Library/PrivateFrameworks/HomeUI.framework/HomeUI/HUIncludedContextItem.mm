@interface HUIncludedContextItem
- (HUIncludedContextItem)initWithHomeKitObject:(id)a3 contextType:(unint64_t)a4 home:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUIncludedContextItem

- (HUIncludedContextItem)initWithHomeKitObject:(id)a3 contextType:(unint64_t)a4 home:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HUIncludedContextItem;
  v11 = [(HUIncludedContextItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_contextType = a4;
    objc_storeStrong(&v11->_homeKitObject, a3);
    objc_storeStrong(&v12->_home, a5);
  }

  return v12;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HUIncludedContextItem *)self contextType];
  v6 = MEMORY[0x277D13F68];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      [v4 setObject:@"HUServiceDetailsFavoriteSwitch" forKeyedSubscript:*MEMORY[0x277D13F68]];
      v7 = *MEMORY[0x277D13DC8];
      v8 = @"AccessoryDetails.Favorite";
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_11;
      }

      [v4 setObject:@"HUShowInHomeDashboardTitle" forKeyedSubscript:*MEMORY[0x277D13F68]];
      v7 = *MEMORY[0x277D13DC8];
      v8 = @"AccessoryDetails.ShowInHome";
    }
  }

  else
  {
    if (!v5)
    {
      NSLog(&cfstr_ShouldNotBeUsi.isa);
      goto LABEL_11;
    }

    if (v5 != 1)
    {
      goto LABEL_11;
    }

    v7 = *MEMORY[0x277D13F68];
    v8 = @"HUStatusAndNotificationsIncludeInStatusTitle";
  }

  [v4 setObject:v8 forKeyedSubscript:v7];
LABEL_11:
  v9 = [v4 objectForKeyedSubscript:*v6];
  v10 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v11 = [(HUIncludedContextItem *)self homeKitObject];

  if (v11)
  {
    v12 = MEMORY[0x277CBEB98];
    v13 = [(HUIncludedContextItem *)self homeKitObject];
    v14 = [v12 setWithObject:v13];
    [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13DA8]];
  }

  v15 = [(HUIncludedContextItem *)self homeKitObject];
  v16 = [v15 conformsToProtocol:&unk_28259DD60];

  v17 = MEMORY[0x277D14068];
  if (v16)
  {
    v18 = [(HUIncludedContextItem *)self homeKitObject];
    if ([v18 hf_shouldBeOnForContextType:{-[HUIncludedContextItem contextType](self, "contextType")}])
    {
      v19 = &unk_282491538;
    }

    else
    {
      v19 = &unk_282491550;
    }

    [v4 setObject:v19 forKeyedSubscript:*v17];
    v20 = [v18 hf_shouldHideForContextType:{-[HUIncludedContextItem contextType](self, "contextType")}];
  }

  else
  {
    v20 = 1;
  }

  v21 = [(HUIncludedContextItem *)self overrideHiddenState];

  if (v21)
  {
    v22 = [(HUIncludedContextItem *)self overrideHiddenState];
    v20 = [v22 BOOLValue];
  }

  v23 = [(HUIncludedContextItem *)self home];
  v24 = [v23 hf_currentUserIsRestrictedGuest] | v20;

  v25 = [MEMORY[0x277CCABB0] numberWithBool:v24 & 1];
  [v4 setObject:v25 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v26 = [(HUIncludedContextItem *)self overridePrimaryState];

  if (v26)
  {
    v27 = [(HUIncludedContextItem *)self overridePrimaryState];
    [v4 setObject:v27 forKeyedSubscript:*v17];
  }

  v28 = MEMORY[0x277D2C900];
  v29 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v30 = [v28 futureWithResult:v29];

  return v30;
}

@end