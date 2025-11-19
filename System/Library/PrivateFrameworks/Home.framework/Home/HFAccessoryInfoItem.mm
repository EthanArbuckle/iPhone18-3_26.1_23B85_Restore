@interface HFAccessoryInfoItem
+ (id)accessibilityStringForCharacteristic:(id)a3;
+ (id)localizedStringForCharacteristic:(id)a3;
- (HFAccessoryInfoItem)init;
- (HFAccessoryInfoItem)initWithAccessory:(id)a3 infoType:(unint64_t)a4 home:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFAccessoryInfoItem

+ (id)localizedStringForCharacteristic:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CCF968]])
  {
    v4 = @"HFAccessoryInfoDetailsManufacturer";
LABEL_11:
    v5 = _HFLocalizedStringWithDefaultValue(v4, v4, 1);
    goto LABEL_12;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CCF970]])
  {
    v4 = @"HFAccessoryInfoDetailsModel";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CCFA58]])
  {
    v4 = @"HFAccessoryInfoDetailsSerialNumber";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CCF8B8]])
  {
    v4 = @"HFAccessoryInfoDetailsFirmwareVersion";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CCFA88]])
  {
    v4 = @"HFAccessoryInfoDetailsSoftwareVersion";
    goto LABEL_11;
  }

  v5 = &stru_2824B1A78;
LABEL_12:

  return v5;
}

+ (id)accessibilityStringForCharacteristic:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CCF968]])
  {
    v4 = @"AccessoryDetails.Manufacturer";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CCF970]])
  {
    v4 = @"AccessoryDetails.Model";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CCFA58]])
  {
    v4 = @"AccessoryDetails.SerialNumber";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CCF8B8]])
  {
    v4 = @"AccessoryDetails.FirmwareVersion";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CCFA88]])
  {
    v4 = @"AccessoryDetails.SoftwareVersion";
  }

  else
  {
    v4 = &stru_2824B1A78;
  }

  return v4;
}

- (HFAccessoryInfoItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessory_infoType_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFAccessoryInfoItem.m" lineNumber:69 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryInfoItem init]", v5}];

  return 0;
}

- (HFAccessoryInfoItem)initWithAccessory:(id)a3 infoType:(unint64_t)a4 home:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HFAccessoryInfoItem;
  v11 = [(HFAccessoryInfoItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accessory, a3);
    v12->_infoType = a4;
    objc_storeStrong(&v12->_home, a5);
  }

  return v12;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = MEMORY[0x277CBEB98];
  v6 = [(HFAccessoryInfoItem *)self accessory];
  v7 = [v5 setWithObject:v6];
  [v4 setObject:v7 forKeyedSubscript:@"dependentHomeKitObjects"];

  v8 = +[HFAccessoryInfoDetailsItemProvider preferredCharacteristicOrderArray];
  v9 = +[HFHomeKitDispatcher sharedDispatcher];
  v10 = [v9 diagnosticInfoManager];
  v11 = [(HFAccessoryInfoItem *)self accessory];
  v12 = [v10 softwareVersionForAccessory:v11];

  v13 = [(HFAccessoryInfoItem *)self infoType];
  v14 = 0;
  LOBYTE(v15) = 0;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (v13 <= 1)
  {
    if (!v13)
    {
      v14 = 0;
      v17 = 0;
      LOBYTE(v15) = 1;
      goto LABEL_19;
    }

    v17 = 0;
    if (v13 != 1)
    {
      goto LABEL_19;
    }

    v18 = [(HFAccessoryInfoItem *)self accessory];
    v17 = [v18 firmwareVersion];

    v19 = *MEMORY[0x277CCF8B8];
    v16 = [v8 indexOfObject:*MEMORY[0x277CCF8B8]];
    v14 = [HFAccessoryInfoItem localizedStringForCharacteristic:v19];
    v20 = [(HFAccessoryInfoItem *)self accessory];
    if ([v20 hf_isHomePod])
    {
      LOBYTE(v15) = 1;
LABEL_18:

      goto LABEL_19;
    }

    v21 = [(HFAccessoryInfoItem *)self accessory];
    LOBYTE(v15) = [v21 hf_isAppleTV];
    goto LABEL_17;
  }

  if (v13 == 2)
  {
    if (v12)
    {
      v17 = [v12 localizedDescription];
    }

    else
    {
      v22 = [(HFAccessoryInfoItem *)self accessory];
      v23 = [v22 softwareVersion];
      v17 = [v23 localizedDescription];
    }

    v24 = *MEMORY[0x277CCFA88];
    v16 = [v8 indexOfObject:*MEMORY[0x277CCFA88]];
    v14 = [HFAccessoryInfoItem localizedStringForCharacteristic:v24];
    v20 = [(HFAccessoryInfoItem *)self accessory];
    if ([v20 hf_isHomePod])
    {
      LOBYTE(v15) = 0;
      goto LABEL_18;
    }

    v21 = [(HFAccessoryInfoItem *)self accessory];
    v15 = [v21 hf_isAppleTV] ^ 1;
LABEL_17:

    goto LABEL_18;
  }

  v17 = 0;
  if (v13 == 3)
  {
    v16 = [v8 indexOfObject:@"HFAccessoryInfoTypeNetworkPreferredOrderKey"];
    LOBYTE(v15) = 0;
    v14 = 0;
    v17 = 0;
  }

LABEL_19:
  [v4 setObject:v14 forKeyedSubscript:@"title"];
  [v4 setObject:v17 forKeyedSubscript:@"description"];
  v25 = [v17 length];
  v26 = [(HFAccessoryInfoItem *)self home];
  v27 = [v26 hf_currentUserIsRestrictedGuest];
  if (v25)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28 | v15;

  v30 = [MEMORY[0x277CCABB0] numberWithBool:v29 & 1];
  [v4 setObject:v30 forKeyedSubscript:@"hidden"];

  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [v8 count];
  }

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  [v4 setObject:v31 forKeyedSubscript:@"accessoryInfoDetailPreferredOrder"];

  v32 = [[HFItemUpdateOutcome alloc] initWithResults:v4];
  v33 = [MEMORY[0x277D2C900] futureWithResult:v32];

  return v33;
}

@end