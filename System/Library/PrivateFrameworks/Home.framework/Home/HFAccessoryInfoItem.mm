@interface HFAccessoryInfoItem
+ (id)accessibilityStringForCharacteristic:(id)characteristic;
+ (id)localizedStringForCharacteristic:(id)characteristic;
- (HFAccessoryInfoItem)init;
- (HFAccessoryInfoItem)initWithAccessory:(id)accessory infoType:(unint64_t)type home:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFAccessoryInfoItem

+ (id)localizedStringForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  if ([characteristicCopy isEqualToString:*MEMORY[0x277CCF968]])
  {
    v4 = @"HFAccessoryInfoDetailsManufacturer";
LABEL_11:
    v5 = _HFLocalizedStringWithDefaultValue(v4, v4, 1);
    goto LABEL_12;
  }

  if ([characteristicCopy isEqualToString:*MEMORY[0x277CCF970]])
  {
    v4 = @"HFAccessoryInfoDetailsModel";
    goto LABEL_11;
  }

  if ([characteristicCopy isEqualToString:*MEMORY[0x277CCFA58]])
  {
    v4 = @"HFAccessoryInfoDetailsSerialNumber";
    goto LABEL_11;
  }

  if ([characteristicCopy isEqualToString:*MEMORY[0x277CCF8B8]])
  {
    v4 = @"HFAccessoryInfoDetailsFirmwareVersion";
    goto LABEL_11;
  }

  if ([characteristicCopy isEqualToString:*MEMORY[0x277CCFA88]])
  {
    v4 = @"HFAccessoryInfoDetailsSoftwareVersion";
    goto LABEL_11;
  }

  v5 = &stru_2824B1A78;
LABEL_12:

  return v5;
}

+ (id)accessibilityStringForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  if ([characteristicCopy isEqualToString:*MEMORY[0x277CCF968]])
  {
    v4 = @"AccessoryDetails.Manufacturer";
  }

  else if ([characteristicCopy isEqualToString:*MEMORY[0x277CCF970]])
  {
    v4 = @"AccessoryDetails.Model";
  }

  else if ([characteristicCopy isEqualToString:*MEMORY[0x277CCFA58]])
  {
    v4 = @"AccessoryDetails.SerialNumber";
  }

  else if ([characteristicCopy isEqualToString:*MEMORY[0x277CCF8B8]])
  {
    v4 = @"AccessoryDetails.FirmwareVersion";
  }

  else if ([characteristicCopy isEqualToString:*MEMORY[0x277CCFA88]])
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessory_infoType_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryInfoItem.m" lineNumber:69 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryInfoItem init]", v5}];

  return 0;
}

- (HFAccessoryInfoItem)initWithAccessory:(id)accessory infoType:(unint64_t)type home:(id)home
{
  accessoryCopy = accessory;
  homeCopy = home;
  v14.receiver = self;
  v14.super_class = HFAccessoryInfoItem;
  v11 = [(HFAccessoryInfoItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accessory, accessory);
    v12->_infoType = type;
    objc_storeStrong(&v12->_home, home);
  }

  return v12;
}

- (id)_subclass_updateWithOptions:(id)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = MEMORY[0x277CBEB98];
  accessory = [(HFAccessoryInfoItem *)self accessory];
  v7 = [v5 setWithObject:accessory];
  [dictionary setObject:v7 forKeyedSubscript:@"dependentHomeKitObjects"];

  v8 = +[HFAccessoryInfoDetailsItemProvider preferredCharacteristicOrderArray];
  v9 = +[HFHomeKitDispatcher sharedDispatcher];
  diagnosticInfoManager = [v9 diagnosticInfoManager];
  accessory2 = [(HFAccessoryInfoItem *)self accessory];
  v12 = [diagnosticInfoManager softwareVersionForAccessory:accessory2];

  infoType = [(HFAccessoryInfoItem *)self infoType];
  v14 = 0;
  LOBYTE(v15) = 0;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (infoType <= 1)
  {
    if (!infoType)
    {
      v14 = 0;
      firmwareVersion = 0;
      LOBYTE(v15) = 1;
      goto LABEL_19;
    }

    firmwareVersion = 0;
    if (infoType != 1)
    {
      goto LABEL_19;
    }

    accessory3 = [(HFAccessoryInfoItem *)self accessory];
    firmwareVersion = [accessory3 firmwareVersion];

    v19 = *MEMORY[0x277CCF8B8];
    v16 = [v8 indexOfObject:*MEMORY[0x277CCF8B8]];
    v14 = [HFAccessoryInfoItem localizedStringForCharacteristic:v19];
    accessory4 = [(HFAccessoryInfoItem *)self accessory];
    if ([accessory4 hf_isHomePod])
    {
      LOBYTE(v15) = 1;
LABEL_18:

      goto LABEL_19;
    }

    accessory5 = [(HFAccessoryInfoItem *)self accessory];
    LOBYTE(v15) = [accessory5 hf_isAppleTV];
    goto LABEL_17;
  }

  if (infoType == 2)
  {
    if (v12)
    {
      firmwareVersion = [v12 localizedDescription];
    }

    else
    {
      accessory6 = [(HFAccessoryInfoItem *)self accessory];
      softwareVersion = [accessory6 softwareVersion];
      firmwareVersion = [softwareVersion localizedDescription];
    }

    v24 = *MEMORY[0x277CCFA88];
    v16 = [v8 indexOfObject:*MEMORY[0x277CCFA88]];
    v14 = [HFAccessoryInfoItem localizedStringForCharacteristic:v24];
    accessory4 = [(HFAccessoryInfoItem *)self accessory];
    if ([accessory4 hf_isHomePod])
    {
      LOBYTE(v15) = 0;
      goto LABEL_18;
    }

    accessory5 = [(HFAccessoryInfoItem *)self accessory];
    v15 = [accessory5 hf_isAppleTV] ^ 1;
LABEL_17:

    goto LABEL_18;
  }

  firmwareVersion = 0;
  if (infoType == 3)
  {
    v16 = [v8 indexOfObject:@"HFAccessoryInfoTypeNetworkPreferredOrderKey"];
    LOBYTE(v15) = 0;
    v14 = 0;
    firmwareVersion = 0;
  }

LABEL_19:
  [dictionary setObject:v14 forKeyedSubscript:@"title"];
  [dictionary setObject:firmwareVersion forKeyedSubscript:@"description"];
  v25 = [firmwareVersion length];
  home = [(HFAccessoryInfoItem *)self home];
  hf_currentUserIsRestrictedGuest = [home hf_currentUserIsRestrictedGuest];
  if (v25)
  {
    v28 = hf_currentUserIsRestrictedGuest;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28 | v15;

  v30 = [MEMORY[0x277CCABB0] numberWithBool:v29 & 1];
  [dictionary setObject:v30 forKeyedSubscript:@"hidden"];

  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [v8 count];
  }

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  [dictionary setObject:v31 forKeyedSubscript:@"accessoryInfoDetailPreferredOrder"];

  v32 = [[HFItemUpdateOutcome alloc] initWithResults:dictionary];
  v33 = [MEMORY[0x277D2C900] futureWithResult:v32];

  return v33;
}

@end