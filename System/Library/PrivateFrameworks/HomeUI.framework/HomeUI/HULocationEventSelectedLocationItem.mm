@interface HULocationEventSelectedLocationItem
- (BOOL)_locationIsHome;
- (HULocationEventSelectedLocationItem)init;
- (HULocationEventSelectedLocationItem)initWithEvent:(id)event inHome:(id)home;
- (id)_locationTitle;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HULocationEventSelectedLocationItem

- (HULocationEventSelectedLocationItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithEvent_inHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HULocationEventSelectedLocationItem.m" lineNumber:16 description:{@"%s is unavailable; use %@ instead", "-[HULocationEventSelectedLocationItem init]", v5}];

  return 0;
}

- (HULocationEventSelectedLocationItem)initWithEvent:(id)event inHome:(id)home
{
  eventCopy = event;
  homeCopy = home;
  v12.receiver = self;
  v12.super_class = HULocationEventSelectedLocationItem;
  v9 = [(HULocationEventSelectedLocationItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventBuilder, event);
    objc_storeStrong(&v10->_home, home);
    v10->_locationCanBeEdited = 0;
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_opt_new();
  _locationTitle = [(HULocationEventSelectedLocationItem *)self _locationTitle];
  if (_locationTitle)
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerSelectedLocationTitle", @"HULocationTriggerSelectedLocationTitle", 1);
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v4 setObject:_locationTitle forKeyedSubscript:*MEMORY[0x277D13E20]];
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
    identifier = _HULocalizedStringWithDefaultValue(@"HULocationTriggerSelectedLocationHome", @"HULocationTriggerSelectedLocationHome", 1);
  }

  else
  {
    eventBuilder = [(HULocationEventSelectedLocationItem *)self eventBuilder];

    if (eventBuilder)
    {
      objc_opt_class();
      eventBuilder2 = [(HULocationEventSelectedLocationItem *)self eventBuilder];
      if (objc_opt_isKindOfClass())
      {
        v6 = eventBuilder2;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (v7)
      {
        region = [v7 region];
        identifier = [region identifier];
      }

      else
      {
        eventBuilder3 = [(HULocationEventSelectedLocationItem *)self eventBuilder];
        NSLog(&cfstr_ExpectedARegio.isa, eventBuilder3);

        identifier = _HULocalizedStringWithDefaultValue(@"HULocationTriggerSelectedLocationCustom", @"HULocationTriggerSelectedLocationCustom", 1);
      }
    }

    else
    {
      identifier = 0;
    }
  }

  return identifier;
}

- (BOOL)_locationIsHome
{
  eventBuilder = [(HULocationEventSelectedLocationItem *)self eventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  objc_opt_class();
  eventBuilder2 = [(HULocationEventSelectedLocationItem *)self eventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v7 = eventBuilder2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    home = [(HULocationEventSelectedLocationItem *)self home];
    v5 = [v8 isRegionAtHome:home];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end