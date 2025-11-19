@interface HULocationEventSelectedLocationItem
- (BOOL)_locationIsHome;
- (HULocationEventSelectedLocationItem)init;
- (HULocationEventSelectedLocationItem)initWithEvent:(id)a3 inHome:(id)a4;
- (id)_locationTitle;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HULocationEventSelectedLocationItem

- (HULocationEventSelectedLocationItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithEvent_inHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HULocationEventSelectedLocationItem.m" lineNumber:16 description:{@"%s is unavailable; use %@ instead", "-[HULocationEventSelectedLocationItem init]", v5}];

  return 0;
}

- (HULocationEventSelectedLocationItem)initWithEvent:(id)a3 inHome:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HULocationEventSelectedLocationItem;
  v9 = [(HULocationEventSelectedLocationItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventBuilder, a3);
    objc_storeStrong(&v10->_home, a4);
    v10->_locationCanBeEdited = 0;
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(HULocationEventSelectedLocationItem *)self _locationTitle];
  if (v5)
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerSelectedLocationTitle", @"HULocationTriggerSelectedLocationTitle", 1);
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13E20]];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[HULocationEventSelectedLocationItem locationCanBeEdited](self, "locationCanBeEdited") ^ 1}];
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

- (id)_locationTitle
{
  if ([(HULocationEventSelectedLocationItem *)self _locationIsHome])
  {
    v3 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerSelectedLocationHome", @"HULocationTriggerSelectedLocationHome", 1);
  }

  else
  {
    v4 = [(HULocationEventSelectedLocationItem *)self eventBuilder];

    if (v4)
    {
      objc_opt_class();
      v5 = [(HULocationEventSelectedLocationItem *)self eventBuilder];
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (v7)
      {
        v8 = [v7 region];
        v3 = [v8 identifier];
      }

      else
      {
        v9 = [(HULocationEventSelectedLocationItem *)self eventBuilder];
        NSLog(&cfstr_ExpectedARegio.isa, v9);

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
  v3 = [(HULocationEventSelectedLocationItem *)self eventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  objc_opt_class();
  v6 = [(HULocationEventSelectedLocationItem *)self eventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(HULocationEventSelectedLocationItem *)self home];
    v5 = [v8 isRegionAtHome:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end