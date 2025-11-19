@interface HFResidentDeviceStatusDetailsItem
- (HFResidentDeviceStatusDetailsItem)init;
- (HFResidentDeviceStatusDetailsItem)initWithHome:(id)a3 residentDevice:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFResidentDeviceStatusDetailsItem

- (HFResidentDeviceStatusDetailsItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_residentDevice_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFResidentDeviceStatusDetailsItem.m" lineNumber:18 description:{@"%s is unavailable; use %@ instead", "-[HFResidentDeviceStatusDetailsItem init]", v5}];

  return 0;
}

- (HFResidentDeviceStatusDetailsItem)initWithHome:(id)a3 residentDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFResidentDeviceStatusDetailsItem;
  v9 = [(HFResidentDeviceStatusDetailsItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_residentDevice, a4);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [(HFResidentDeviceStatusDetailsItem *)self residentDevice];
  v5 = [v4 device];
  v6 = [v5 name];
  if ([v6 length])
  {
    v7 = [(HFResidentDeviceStatusDetailsItem *)self residentDevice];
    v8 = [v7 device];
    v9 = [v8 name];
  }

  else
  {
    v9 = _HFLocalizedStringWithDefaultValue(@"HFResidentDeviceUnknownName", @"HFResidentDeviceUnknownName", 1);
  }

  v10 = +[HFHomeKitDispatcher sharedDispatcher];
  v11 = [v10 homeManager];
  v12 = [v11 hasOptedToHH2];

  v13 = [(HFResidentDeviceStatusDetailsItem *)self residentDevice];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 hf_linkedAccessory];
    v16 = [v15 isReachable];

    if (v16)
    {
LABEL_6:
      v17 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v18 = [v13 hf_isReachable];

    if (v18)
    {
      goto LABEL_6;
    }
  }

  v19 = [(HFResidentDeviceStatusDetailsItem *)self home];
  v17 = [v19 hf_shouldHideResidentDeviceReachabilityIssues];

LABEL_9:
  v20 = [(HFResidentDeviceStatusDetailsItem *)self residentDevice];
  v21 = [v20 status];

  v22 = [(HFResidentDeviceStatusDetailsItem *)self residentDevice];
  v23 = [v22 isEnabled];

  v24 = objc_opt_new();
  v25 = v9;
  v32 = v25;
  if (v17)
  {
    if ((v21 & 8) != 0)
    {
      v33 = HFLocalizedStringWithFormat(@"HFStatusDetailsResidentLowBatteryTitle", @"%@", v26, v27, v28, v29, v30, v31, v25);

      v34 = _HFLocalizedStringWithDefaultValue(@"HFStatusDetailsResidentLowBatteryDescription", @"HFStatusDetailsResidentLowBatteryDescription", 1);
      [v24 setObject:v34 forKeyedSubscript:@"description"];

      if ((v23 & 1) == 0)
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
    if (v23)
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