@interface HMDAccessoryFirmwareUpdateSchedulerWingman
- (id)newBackgroundSchedulerWithIdentifier:(id)a3;
- (id)policyForAccessory:(id)a3 sessionState:(unint64_t)a4 workQueue:(id)a5;
@end

@implementation HMDAccessoryFirmwareUpdateSchedulerWingman

- (id)policyForAccessory:(id)a3 sessionState:(unint64_t)a4 workQueue:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (a4 == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    if (a4 != 2)
    {
      goto LABEL_6;
    }

    v10 = 1;
  }

  v9 = HMDFirmwareUpdatePolicyForAccessory(v7, v10, v8);
LABEL_6:

  return v9;
}

- (id)newBackgroundSchedulerWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCA8B8];
  v4 = a3;
  v5 = [[v3 alloc] initWithIdentifier:v4];

  return v5;
}

@end