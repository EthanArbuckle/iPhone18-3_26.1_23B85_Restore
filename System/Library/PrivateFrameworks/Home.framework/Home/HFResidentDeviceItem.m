@interface HFResidentDeviceItem
- (HFResidentDeviceItem)init;
- (HFResidentDeviceItem)initWithResidentDevice:(id)a3;
- (NSString)description;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFResidentDeviceItem

- (HFResidentDeviceItem)initWithResidentDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFResidentDeviceItem;
  v6 = [(HFResidentDeviceItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_residentDevice, a3);
  }

  return v7;
}

- (HFResidentDeviceItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithResidentDevice_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFResidentDeviceItem.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFResidentDeviceItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFResidentDeviceItem *)self residentDevice];
  v6 = [v4 initWithResidentDevice:v5];

  [v6 copyLatestResultsFromItem:self];
  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFResidentDeviceItem *)self residentDevice];
  v7 = [v6 hf_prettyDescription];
  v8 = [(HFItem *)self latestResults];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@>", v5, self, v7, v8];

  return v9;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v5 = [(HFResidentDeviceItem *)self residentDevice];
  v6 = [v5 hf_displayName];

  v7 = [(HFResidentDeviceItem *)self residentDevice];
  v8 = [v7 isCurrentDevice];

  if (v8)
  {
    v9 = @"HFResidentDeviceItemCurrentDeviceName";
  }

  else
  {
    if ([v6 length])
    {
      goto LABEL_6;
    }

    v9 = @"HFResidentDeviceUnknownName";
  }

  v10 = _HFLocalizedStringWithDefaultValue(v9, v9, 1);

  v6 = v10;
LABEL_6:
  [(HFMutableItemUpdateOutcome *)v4 setObject:v6 forKeyedSubscript:@"title"];
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