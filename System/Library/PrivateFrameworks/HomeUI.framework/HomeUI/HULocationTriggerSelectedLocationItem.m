@interface HULocationTriggerSelectedLocationItem
- (BOOL)_locationIsHome;
- (BOOL)locationCanBeEdited;
- (HULocationTriggerSelectedLocationItem)init;
- (HULocationTriggerSelectedLocationItem)initWithTriggerBuilder:(id)a3;
- (id)_locationTitle;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HULocationTriggerSelectedLocationItem

- (HULocationTriggerSelectedLocationItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithTriggerBuilder_);
  [v4 handleFailureInMethod:a2 object:self file:@"HULocationTriggerSelectedLocationItem.m" lineNumber:16 description:{@"%s is unavailable; use %@ instead", "-[HULocationTriggerSelectedLocationItem init]", v5}];

  return 0;
}

- (HULocationTriggerSelectedLocationItem)initWithTriggerBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HULocationTriggerSelectedLocationItem;
  v6 = [(HULocationTriggerSelectedLocationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_triggerBuilder, a3);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(HULocationTriggerSelectedLocationItem *)self _locationTitle];
  if (v5)
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerSelectedLocationTitle", @"HULocationTriggerSelectedLocationTitle", 1);
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13E20]];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[HULocationTriggerSelectedLocationItem locationCanBeEdited](self, "locationCanBeEdited") ^ 1}];
    [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13EA8]];
  }

  else
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v8 = MEMORY[0x277D2C900];
  v9 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v10 = [v8 futureWithResult:v9];

  return v10;
}

- (BOOL)locationCanBeEdited
{
  v2 = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
  v3 = [v2 locationInterface];
  v4 = [v3 locationCanBeEdited];

  return v4;
}

- (id)_locationTitle
{
  if ([(HULocationTriggerSelectedLocationItem *)self _locationIsHome])
  {
    v3 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerSelectedLocationHome", @"HULocationTriggerSelectedLocationHome", 1);
  }

  else
  {
    v4 = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
    v5 = [v4 locationInterface];
    v6 = [v5 locationEventBuilder];

    if (v6)
    {
      objc_opt_class();
      v7 = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
      v8 = [v7 locationInterface];
      v9 = [v8 locationEventBuilder];
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11)
      {
        v12 = [v11 region];
        v3 = [v12 identifier];
      }

      else
      {
        v13 = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
        v14 = [v13 locationInterface];
        v15 = [v14 locationEventBuilder];
        NSLog(&cfstr_ExpectedARegio.isa, v15);

        v3 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerSelectedLocationCustom", @"HULocationTriggerSelectedLocationCustom", 1);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)_locationIsHome
{
  v3 = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
  v4 = [v3 locationInterface];
  v5 = [v4 locationEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  objc_opt_class();
  v8 = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
  v9 = [v8 locationInterface];
  v10 = [v9 locationEventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
    v14 = [v13 home];
    v7 = [v12 isRegionAtHome:v14];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end