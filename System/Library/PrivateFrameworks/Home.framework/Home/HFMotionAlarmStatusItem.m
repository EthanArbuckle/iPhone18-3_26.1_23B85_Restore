@interface HFMotionAlarmStatusItem
- (id)descriptionStringForTriggeredServices:(id)a3;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3;
@end

@implementation HFMotionAlarmStatusItem

- (id)descriptionStringForTriggeredServices:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CD1D90] hf_roomsForServices:v4];
  if (![v4 count])
  {
    v7 = @"HFStatusDescriptionMotionAlarm_Normal";
LABEL_9:
    v12 = _HFLocalizedStringWithDefaultValue(v7, v7, 1);
LABEL_10:
    v13 = v12;
    goto LABEL_11;
  }

  if ([v4 count] != 1 && objc_msgSend(v5, "count") != 1)
  {
    v15 = [v5 count];
    v12 = HFLocalizedStringWithFormat(@"HFStatusDescriptionMotionAlarm_Multiple", @"%lu", v16, v17, v18, v19, v20, v21, v15);
    goto LABEL_10;
  }

  v6 = [(HFStatusItem *)self room];
  if (v6)
  {

LABEL_8:
    v7 = @"HFStatusDescriptionMotionAlarm_Triggered";
    goto LABEL_9;
  }

  v8 = [v5 anyObject];
  v9 = [(HFStatusItem *)self home];
  v10 = [v9 roomForEntireHome];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    goto LABEL_8;
  }

  v22 = [v5 anyObject];
  v13 = [v22 name];

LABEL_11:

  return v13;
}

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:{a3, 24.0}];
  v4 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"square.stack.3d.down.dottedline" configuration:v3];

  return v4;
}

@end