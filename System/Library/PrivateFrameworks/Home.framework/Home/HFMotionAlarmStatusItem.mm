@interface HFMotionAlarmStatusItem
- (id)descriptionStringForTriggeredServices:(id)services;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects;
@end

@implementation HFMotionAlarmStatusItem

- (id)descriptionStringForTriggeredServices:(id)services
{
  servicesCopy = services;
  v5 = [MEMORY[0x277CD1D90] hf_roomsForServices:servicesCopy];
  if (![servicesCopy count])
  {
    v7 = @"HFStatusDescriptionMotionAlarm_Normal";
LABEL_9:
    v12 = _HFLocalizedStringWithDefaultValue(v7, v7, 1);
LABEL_10:
    name = v12;
    goto LABEL_11;
  }

  if ([servicesCopy count] != 1 && objc_msgSend(v5, "count") != 1)
  {
    v15 = [v5 count];
    v12 = HFLocalizedStringWithFormat(@"HFStatusDescriptionMotionAlarm_Multiple", @"%lu", v16, v17, v18, v19, v20, v21, v15);
    goto LABEL_10;
  }

  room = [(HFStatusItem *)self room];
  if (room)
  {

LABEL_8:
    v7 = @"HFStatusDescriptionMotionAlarm_Triggered";
    goto LABEL_9;
  }

  anyObject = [v5 anyObject];
  home = [(HFStatusItem *)self home];
  roomForEntireHome = [home roomForEntireHome];
  v11 = [anyObject isEqual:roomForEntireHome];

  if (v11)
  {
    goto LABEL_8;
  }

  anyObject2 = [v5 anyObject];
  name = [anyObject2 name];

LABEL_11:

  return name;
}

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:{objects, 24.0}];
  v4 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"square.stack.3d.down.dottedline" configuration:v3];

  return v4;
}

@end