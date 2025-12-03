@interface HULocationTriggerRegion
+ (id)customRegionWithCircularRegion:(id)region;
+ (id)homeRegionWithHome:(id)home eventType:(unint64_t)type;
- (CLCircularRegion)defaultCircularRegionForCoordinate;
- (CLLocation)location;
- (CLLocationCoordinate2D)coordinate;
- (HULocationTriggerRegion)initWithRegionType:(unint64_t)type home:(id)home circularRegion:(id)region eventType:(unint64_t)eventType;
- (NSString)identifier;
@end

@implementation HULocationTriggerRegion

+ (id)homeRegionWithHome:(id)home eventType:(unint64_t)type
{
  homeCopy = home;
  v7 = [[self alloc] initWithRegionType:0 home:homeCopy circularRegion:0 eventType:type];

  return v7;
}

+ (id)customRegionWithCircularRegion:(id)region
{
  regionCopy = region;
  v5 = [self alloc];
  v6 = [v5 initWithRegionType:1 home:0 circularRegion:regionCopy eventType:{objc_msgSend(MEMORY[0x277CD1B38], "hf_locationEventTypeForRegion:", regionCopy)}];

  return v6;
}

- (HULocationTriggerRegion)initWithRegionType:(unint64_t)type home:(id)home circularRegion:(id)region eventType:(unint64_t)eventType
{
  homeCopy = home;
  regionCopy = region;
  v16.receiver = self;
  v16.super_class = HULocationTriggerRegion;
  v13 = [(HULocationTriggerRegion *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_regionType = type;
    objc_storeStrong(&v13->_home, home);
    objc_storeStrong(&v14->_circularRegion, region);
    v14->_eventType = eventType;
  }

  return v14;
}

- (CLLocationCoordinate2D)coordinate
{
  home = [(HULocationTriggerRegion *)self home];

  if (home)
  {
    home2 = [(HULocationTriggerRegion *)self home];
    location = [home2 location];
    if (location)
    {
      home3 = [(HULocationTriggerRegion *)self home];
      location2 = [home3 location];
      [location2 coordinate];
      v9 = v8;
      v11 = v10;
    }

    else
    {
      v9 = *MEMORY[0x277CE4278];
      v11 = *(MEMORY[0x277CE4278] + 8);
    }
  }

  else
  {
    circularRegion = [(HULocationTriggerRegion *)self circularRegion];

    if (!circularRegion)
    {
      NSLog(&cfstr_RegionDoesNotH.isa, self);
      v9 = *MEMORY[0x277CE4278];
      v11 = *(MEMORY[0x277CE4278] + 8);
      goto LABEL_9;
    }

    home2 = [(HULocationTriggerRegion *)self circularRegion];
    [home2 center];
    v9 = v13;
    v11 = v14;
  }

LABEL_9:
  v15 = v9;
  v16 = v11;
  result.longitude = v16;
  result.latitude = v15;
  return result;
}

- (CLLocation)location
{
  home = [(HULocationTriggerRegion *)self home];

  if (home)
  {
    home2 = [(HULocationTriggerRegion *)self home];
    location = [home2 location];
  }

  else
  {
    circularRegion = [(HULocationTriggerRegion *)self circularRegion];

    if (circularRegion)
    {
      v7 = objc_alloc(MEMORY[0x277CE41F8]);
      circularRegion2 = [(HULocationTriggerRegion *)self circularRegion];
      [circularRegion2 center];
      v10 = v9;
      v12 = v11;
      date = [MEMORY[0x277CBEAA8] date];
      circularRegion3 = [(HULocationTriggerRegion *)self circularRegion];
      location = [v7 initWithCoordinate:date altitude:objc_msgSend(circularRegion3 horizontalAccuracy:"referenceFrame") verticalAccuracy:v10 timestamp:v12 referenceFrame:{0.0, 0.0, -1.0}];
    }

    else
    {
      NSLog(&cfstr_RegionDoesNotH.isa, self);
      location = 0;
    }
  }

  return location;
}

- (NSString)identifier
{
  regionType = [(HULocationTriggerRegion *)self regionType];
  if (regionType == 1)
  {
    circularRegion = [(HULocationTriggerRegion *)self circularRegion];
    identifier = [circularRegion identifier];
  }

  else if (regionType)
  {
    identifier = 0;
  }

  else
  {
    identifier = _HULocalizedStringWithDefaultValue(@"HULocationTriggerEditorOptionHome", @"HULocationTriggerEditorOptionHome", 1);
  }

  return identifier;
}

- (CLCircularRegion)defaultCircularRegionForCoordinate
{
  v3 = objc_alloc(MEMORY[0x277CBFBC8]);
  [(HULocationTriggerRegion *)self coordinate];
  v5 = v4;
  v7 = v6;
  v8 = *MEMORY[0x277CE4228];
  identifier = [(HULocationTriggerRegion *)self identifier];
  v10 = [v3 initWithCenter:identifier radius:v5 identifier:{v7, v8}];

  [v10 setNotifyOnEntry:{-[HULocationTriggerRegion eventType](self, "eventType") == 1}];
  [v10 setNotifyOnExit:{-[HULocationTriggerRegion eventType](self, "eventType") == 2}];

  return v10;
}

@end