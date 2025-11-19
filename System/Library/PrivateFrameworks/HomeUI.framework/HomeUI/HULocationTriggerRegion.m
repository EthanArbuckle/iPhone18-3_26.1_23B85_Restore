@interface HULocationTriggerRegion
+ (id)customRegionWithCircularRegion:(id)a3;
+ (id)homeRegionWithHome:(id)a3 eventType:(unint64_t)a4;
- (CLCircularRegion)defaultCircularRegionForCoordinate;
- (CLLocation)location;
- (CLLocationCoordinate2D)coordinate;
- (HULocationTriggerRegion)initWithRegionType:(unint64_t)a3 home:(id)a4 circularRegion:(id)a5 eventType:(unint64_t)a6;
- (NSString)identifier;
@end

@implementation HULocationTriggerRegion

+ (id)homeRegionWithHome:(id)a3 eventType:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithRegionType:0 home:v6 circularRegion:0 eventType:a4];

  return v7;
}

+ (id)customRegionWithCircularRegion:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v5 initWithRegionType:1 home:0 circularRegion:v4 eventType:{objc_msgSend(MEMORY[0x277CD1B38], "hf_locationEventTypeForRegion:", v4)}];

  return v6;
}

- (HULocationTriggerRegion)initWithRegionType:(unint64_t)a3 home:(id)a4 circularRegion:(id)a5 eventType:(unint64_t)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = HULocationTriggerRegion;
  v13 = [(HULocationTriggerRegion *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_regionType = a3;
    objc_storeStrong(&v13->_home, a4);
    objc_storeStrong(&v14->_circularRegion, a5);
    v14->_eventType = a6;
  }

  return v14;
}

- (CLLocationCoordinate2D)coordinate
{
  v3 = [(HULocationTriggerRegion *)self home];

  if (v3)
  {
    v4 = [(HULocationTriggerRegion *)self home];
    v5 = [v4 location];
    if (v5)
    {
      v6 = [(HULocationTriggerRegion *)self home];
      v7 = [v6 location];
      [v7 coordinate];
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
    v12 = [(HULocationTriggerRegion *)self circularRegion];

    if (!v12)
    {
      NSLog(&cfstr_RegionDoesNotH.isa, self);
      v9 = *MEMORY[0x277CE4278];
      v11 = *(MEMORY[0x277CE4278] + 8);
      goto LABEL_9;
    }

    v4 = [(HULocationTriggerRegion *)self circularRegion];
    [v4 center];
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
  v3 = [(HULocationTriggerRegion *)self home];

  if (v3)
  {
    v4 = [(HULocationTriggerRegion *)self home];
    v5 = [v4 location];
  }

  else
  {
    v6 = [(HULocationTriggerRegion *)self circularRegion];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277CE41F8]);
      v8 = [(HULocationTriggerRegion *)self circularRegion];
      [v8 center];
      v10 = v9;
      v12 = v11;
      v13 = [MEMORY[0x277CBEAA8] date];
      v14 = [(HULocationTriggerRegion *)self circularRegion];
      v5 = [v7 initWithCoordinate:v13 altitude:objc_msgSend(v14 horizontalAccuracy:"referenceFrame") verticalAccuracy:v10 timestamp:v12 referenceFrame:{0.0, 0.0, -1.0}];
    }

    else
    {
      NSLog(&cfstr_RegionDoesNotH.isa, self);
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)identifier
{
  v3 = [(HULocationTriggerRegion *)self regionType];
  if (v3 == 1)
  {
    v5 = [(HULocationTriggerRegion *)self circularRegion];
    v4 = [v5 identifier];
  }

  else if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerEditorOptionHome", @"HULocationTriggerEditorOptionHome", 1);
  }

  return v4;
}

- (CLCircularRegion)defaultCircularRegionForCoordinate
{
  v3 = objc_alloc(MEMORY[0x277CBFBC8]);
  [(HULocationTriggerRegion *)self coordinate];
  v5 = v4;
  v7 = v6;
  v8 = *MEMORY[0x277CE4228];
  v9 = [(HULocationTriggerRegion *)self identifier];
  v10 = [v3 initWithCenter:v9 radius:v5 identifier:{v7, v8}];

  [v10 setNotifyOnEntry:{-[HULocationTriggerRegion eventType](self, "eventType") == 1}];
  [v10 setNotifyOnExit:{-[HULocationTriggerRegion eventType](self, "eventType") == 2}];

  return v10;
}

@end