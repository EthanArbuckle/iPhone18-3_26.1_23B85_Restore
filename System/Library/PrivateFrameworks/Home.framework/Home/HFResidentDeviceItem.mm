@interface HFResidentDeviceItem
- (HFResidentDeviceItem)init;
- (HFResidentDeviceItem)initWithResidentDevice:(id)device;
- (NSString)description;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFResidentDeviceItem

- (HFResidentDeviceItem)initWithResidentDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = HFResidentDeviceItem;
  v6 = [(HFResidentDeviceItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_residentDevice, device);
  }

  return v7;
}

- (HFResidentDeviceItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithResidentDevice_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFResidentDeviceItem.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFResidentDeviceItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  residentDevice = [(HFResidentDeviceItem *)self residentDevice];
  v6 = [v4 initWithResidentDevice:residentDevice];

  [v6 copyLatestResultsFromItem:self];
  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  residentDevice = [(HFResidentDeviceItem *)self residentDevice];
  hf_prettyDescription = [residentDevice hf_prettyDescription];
  latestResults = [(HFItem *)self latestResults];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@>", v5, self, hf_prettyDescription, latestResults];

  return v9;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_alloc_init(HFMutableItemUpdateOutcome);
  residentDevice = [(HFResidentDeviceItem *)self residentDevice];
  hf_displayName = [residentDevice hf_displayName];

  residentDevice2 = [(HFResidentDeviceItem *)self residentDevice];
  isCurrentDevice = [residentDevice2 isCurrentDevice];

  if (isCurrentDevice)
  {
    v9 = @"HFResidentDeviceItemCurrentDeviceName";
  }

  else
  {
    if ([hf_displayName length])
    {
      goto LABEL_6;
    }

    v9 = @"HFResidentDeviceUnknownName";
  }

  v10 = _HFLocalizedStringWithDefaultValue(v9, v9, 1);

  hf_displayName = v10;
LABEL_6:
  [(HFMutableItemUpdateOutcome *)v4 setObject:hf_displayName forKeyedSubscript:@"title"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HFResidentDeviceItem__subclass_updateWithOptions___block_invoke;
  v14[3] = &unk_277DF3568;
  v14[4] = self;
  v11 = __52__HFResidentDeviceItem__subclass_updateWithOptions___block_invoke(v14);
  [(HFMutableItemUpdateOutcome *)v4 setObject:v11 forKeyedSubscript:@"description"];

  v12 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v12;
}

id __52__HFResidentDeviceItem__subclass_updateWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) residentDevice];
  v3 = [v2 isEnabled];

  if (v3)
  {
    v4 = [*(a1 + 32) residentDevice];
    v5 = [v4 hf_isReachable];

    if (v5)
    {
      v6 = [*(a1 + 32) residentDevice];
      v7 = [v6 status];

      if (v7)
      {
        v11 = [*(a1 + 32) residentDevice];
        v12 = [v11 status];

        if ((v12 & 8) != 0)
        {
          v8 = @"HFResidentDeviceItemDescriptionLowBattery";
        }

        else
        {
          v13 = [*(a1 + 32) residentDevice];
          v14 = [v13 status];

          if ((v14 & 2) != 0)
          {
            v8 = @"HFResidentDeviceItemDescriptionConnected";
          }

          else
          {
            v8 = @"HFResidentDeviceItemDescriptionStandby";
          }
        }
      }

      else
      {
        v8 = @"HFResidentDeviceItemDescriptionDisconnected";
      }
    }

    else
    {
      v8 = @"HFResidentDeviceItemDescriptionUnreachable";
    }
  }

  else
  {
    v8 = @"HFResidentDeviceItemDescriptionDisabled";
  }

  v9 = _HFLocalizedStringWithDefaultValue(v8, v8, 1);

  return v9;
}

@end