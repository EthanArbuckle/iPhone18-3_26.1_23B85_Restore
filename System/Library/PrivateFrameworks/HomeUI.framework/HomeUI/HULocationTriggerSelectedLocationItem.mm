@interface HULocationTriggerSelectedLocationItem
- (BOOL)_locationIsHome;
- (BOOL)locationCanBeEdited;
- (HULocationTriggerSelectedLocationItem)init;
- (HULocationTriggerSelectedLocationItem)initWithTriggerBuilder:(id)builder;
- (id)_locationTitle;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HULocationTriggerSelectedLocationItem

- (HULocationTriggerSelectedLocationItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithTriggerBuilder_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HULocationTriggerSelectedLocationItem.m" lineNumber:16 description:{@"%s is unavailable; use %@ instead", "-[HULocationTriggerSelectedLocationItem init]", v5}];

  return 0;
}

- (HULocationTriggerSelectedLocationItem)initWithTriggerBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = HULocationTriggerSelectedLocationItem;
  v6 = [(HULocationTriggerSelectedLocationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_triggerBuilder, builder);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_opt_new();
  _locationTitle = [(HULocationTriggerSelectedLocationItem *)self _locationTitle];
  if (_locationTitle)
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerSelectedLocationTitle", @"HULocationTriggerSelectedLocationTitle", 1);
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v4 setObject:_locationTitle forKeyedSubscript:*MEMORY[0x277D13E20]];
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
  triggerBuilder = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
  locationInterface = [triggerBuilder locationInterface];
  locationCanBeEdited = [locationInterface locationCanBeEdited];

  return locationCanBeEdited;
}

- (id)_locationTitle
{
  if ([(HULocationTriggerSelectedLocationItem *)self _locationIsHome])
  {
    identifier = _HULocalizedStringWithDefaultValue(@"HULocationTriggerSelectedLocationHome", @"HULocationTriggerSelectedLocationHome", 1);
  }

  else
  {
    triggerBuilder = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
    locationInterface = [triggerBuilder locationInterface];
    locationEventBuilder = [locationInterface locationEventBuilder];

    if (locationEventBuilder)
    {
      objc_opt_class();
      triggerBuilder2 = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
      locationInterface2 = [triggerBuilder2 locationInterface];
      locationEventBuilder2 = [locationInterface2 locationEventBuilder];
      if (objc_opt_isKindOfClass())
      {
        v10 = locationEventBuilder2;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11)
      {
        region = [v11 region];
        identifier = [region identifier];
      }

      else
      {
        triggerBuilder3 = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
        locationInterface3 = [triggerBuilder3 locationInterface];
        locationEventBuilder3 = [locationInterface3 locationEventBuilder];
        NSLog(&cfstr_ExpectedARegio.isa, locationEventBuilder3);

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
  triggerBuilder = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
  locationInterface = [triggerBuilder locationInterface];
  locationEventBuilder = [locationInterface locationEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  objc_opt_class();
  triggerBuilder2 = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
  locationInterface2 = [triggerBuilder2 locationInterface];
  locationEventBuilder2 = [locationInterface2 locationEventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v11 = locationEventBuilder2;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    triggerBuilder3 = [(HULocationTriggerSelectedLocationItem *)self triggerBuilder];
    home = [triggerBuilder3 home];
    v7 = [v12 isRegionAtHome:home];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end