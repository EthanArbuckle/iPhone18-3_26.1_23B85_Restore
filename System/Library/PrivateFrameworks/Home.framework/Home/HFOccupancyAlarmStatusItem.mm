@interface HFOccupancyAlarmStatusItem
- (id)descriptionStringForTriggeredServices:(id)services;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects;
- (id)titleStringForTriggeredServices:(id)services;
@end

@implementation HFOccupancyAlarmStatusItem

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:{objects, 24.0}];
  v4 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"figure.walk" configuration:v3];

  return v4;
}

- (id)titleStringForTriggeredServices:(id)services
{
  v4 = [MEMORY[0x277CD1D90] hf_roomsForServices:services];
  room = [(HFStatusItem *)self room];
  if (room)
  {

LABEL_4:
    v10 = _HFLocalizedStringWithDefaultValue(@"HFStatusTitleOccupancyAlarm", @"HFStatusTitleOccupancyAlarm", 1);
LABEL_5:
    name = v10;
    goto LABEL_6;
  }

  anyObject = [v4 anyObject];
  home = [(HFStatusItem *)self home];
  roomForEntireHome = [home roomForEntireHome];
  v9 = [anyObject isEqual:roomForEntireHome];

  if (v9)
  {
    goto LABEL_4;
  }

  if ([v4 count] != 1)
  {
    v14 = [v4 count];
    v10 = HFLocalizedStringWithFormat(@"HFStatusTitleOccupancyAlarm_Multiple", @"%lu", v15, v16, v17, v18, v19, v20, v14);
    goto LABEL_5;
  }

  anyObject2 = [v4 anyObject];
  name = [anyObject2 name];

LABEL_6:

  return name;
}

- (id)descriptionStringForTriggeredServices:(id)services
{
  v4 = MEMORY[0x277CD1D90];
  servicesCopy = services;
  v6 = [v4 hf_roomsForServices:servicesCopy];
  v7 = [servicesCopy count];

  if (!v7)
  {
    v9 = @"HFStatusDescriptionOccupancyAlarm_Normal";
    goto LABEL_7;
  }

  room = [(HFStatusItem *)self room];
  if (room)
  {

LABEL_6:
    v9 = @"HFStatusDescriptionOccupancyAlarm_Triggered";
    goto LABEL_7;
  }

  anyObject = [v6 anyObject];
  home = [(HFStatusItem *)self home];
  roomForEntireHome = [home roomForEntireHome];
  v13 = [anyObject isEqual:roomForEntireHome];

  if (v13)
  {
    goto LABEL_6;
  }

  v9 = @"HFStatusDescriptionOccupancyAlarm_WithRooms";
LABEL_7:
  v14 = _HFLocalizedStringWithDefaultValue(v9, v9, 1);

  return v14;
}

@end