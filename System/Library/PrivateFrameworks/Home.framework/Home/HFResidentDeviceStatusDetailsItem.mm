@interface HFResidentDeviceStatusDetailsItem
- (HFResidentDeviceStatusDetailsItem)init;
- (HFResidentDeviceStatusDetailsItem)initWithHome:(id)home residentDevice:(id)device;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFResidentDeviceStatusDetailsItem

- (HFResidentDeviceStatusDetailsItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_residentDevice_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFResidentDeviceStatusDetailsItem.m" lineNumber:18 description:{@"%s is unavailable; use %@ instead", "-[HFResidentDeviceStatusDetailsItem init]", v5}];

  return 0;
}

- (HFResidentDeviceStatusDetailsItem)initWithHome:(id)home residentDevice:(id)device
{
  homeCopy = home;
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = HFResidentDeviceStatusDetailsItem;
  v9 = [(HFResidentDeviceStatusDetailsItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_residentDevice, device);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)options
{
  residentDevice = [(HFResidentDeviceStatusDetailsItem *)self residentDevice];
  device = [residentDevice device];
  name = [device name];
  if ([name length])
  {
    residentDevice2 = [(HFResidentDeviceStatusDetailsItem *)self residentDevice];
    device2 = [residentDevice2 device];
    name2 = [device2 name];
  }

  else
  {
    name2 = _HFLocalizedStringWithDefaultValue(@"HFResidentDeviceUnknownName", @"HFResidentDeviceUnknownName", 1);
  }

  v10 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v10 homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  residentDevice3 = [(HFResidentDeviceStatusDetailsItem *)self residentDevice];
  v14 = residentDevice3;
  if (hasOptedToHH2)
  {
    hf_linkedAccessory = [residentDevice3 hf_linkedAccessory];
    isReachable = [hf_linkedAccessory isReachable];

    if (isReachable)
    {
LABEL_6:
      hf_shouldHideResidentDeviceReachabilityIssues = 1;
      goto LABEL_9;
    }
  }

  else
  {
    hf_isReachable = [residentDevice3 hf_isReachable];

    if (hf_isReachable)
    {
      goto LABEL_6;
    }
  }

  home = [(HFResidentDeviceStatusDetailsItem *)self home];
  hf_shouldHideResidentDeviceReachabilityIssues = [home hf_shouldHideResidentDeviceReachabilityIssues];

LABEL_9:
  residentDevice4 = [(HFResidentDeviceStatusDetailsItem *)self residentDevice];
  status = [residentDevice4 status];

  residentDevice5 = [(HFResidentDeviceStatusDetailsItem *)self residentDevice];
  isEnabled = [residentDevice5 isEnabled];

  v24 = objc_opt_new();
  v25 = name2;
  v32 = v25;
  if (hf_shouldHideResidentDeviceReachabilityIssues)
  {
    if ((status & 8) != 0)
    {
      v33 = HFLocalizedStringWithFormat(@"HFStatusDetailsResidentLowBatteryTitle", @"%@", v26, v27, v28, v29, v30, v31, v25);

      v34 = _HFLocalizedStringWithDefaultValue(@"HFStatusDetailsResidentLowBatteryDescription", @"HFStatusDetailsResidentLowBatteryDescription", 1);
      [v24 setObject:v34 forKeyedSubscript:@"description"];

      if ((isEnabled & 1) == 0)
      {
        v35 = MEMORY[0x277CBEC38];
        v36 = HFResultHiddenKey;
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v37 = HFLocalizedStringWithFormat(@"HFStatusDetailsResidentUnreachableFormat", @"%@", v26, v27, v28, v29, v30, v31, v25);
    [v24 setObject:v37 forKeyedSubscript:@"description"];

    v33 = v32;
    if (isEnabled)
    {
LABEL_14:
      [v24 setObject:v33 forKeyedSubscript:@"title"];
      v35 = &unk_282524228;
      v36 = HFResultDisplayPriorityKey;
      goto LABEL_16;
    }
  }

  v35 = MEMORY[0x277CBEC38];
  v36 = HFResultHiddenKey;
  v33 = v32;
LABEL_16:
  [v24 setObject:v35 forKeyedSubscript:*v36];
  v38 = MEMORY[0x277D2C900];
  v39 = [HFItemUpdateOutcome outcomeWithResults:v24];
  v40 = [v38 futureWithResult:v39];

  return v40;
}

@end