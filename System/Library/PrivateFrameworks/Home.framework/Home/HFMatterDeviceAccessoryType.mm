@interface HFMatterDeviceAccessoryType
+ (id)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFMatterDeviceAccessoryType)initWithDeviceType:(id)type;
- (id)description;
- (id)equivalentServiceType;
@end

@implementation HFMatterDeviceAccessoryType

- (HFMatterDeviceAccessoryType)initWithDeviceType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = HFMatterDeviceAccessoryType;
  _init = [(HFAccessoryType *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, type);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      equivalentServiceType3 = equalCopy;
      deviceType = [(HFMatterDeviceAccessoryType *)equivalentServiceType3 deviceType];
      deviceType2 = [(HFMatterDeviceAccessoryType *)self deviceType];
      if ([(HFMatterDeviceAccessoryType *)deviceType isEqual:deviceType2])
      {
        v8 = 1;
LABEL_13:

        goto LABEL_14;
      }

      equivalentServiceType = [(HFMatterDeviceAccessoryType *)equivalentServiceType3 equivalentServiceType];
      equivalentServiceType2 = [(HFMatterDeviceAccessoryType *)self equivalentServiceType];
      v8 = [equivalentServiceType isEqualToString:equivalentServiceType2];

LABEL_10:
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      equivalentServiceType3 = [(HFMatterDeviceAccessoryType *)self equivalentServiceType];
      deviceType = equalCopy;
      deviceType2 = [(HFMatterDeviceAccessoryType *)deviceType serviceType];
      if (![(HFMatterDeviceAccessoryType *)equivalentServiceType3 isEqualToString:deviceType2])
      {
        v8 = 0;
        goto LABEL_13;
      }

      equivalentServiceType = [(HFMatterDeviceAccessoryType *)deviceType subtype];
      v8 = equivalentServiceType == 0;
      goto LABEL_10;
    }

    v8 = 0;
  }

LABEL_14:

  return v8;
}

- (id)equivalentServiceType
{
  objc_opt_class();
  objc_opt_self();
  if (qword_280E02590 != -1)
  {
    dispatch_once(&qword_280E02590, &__block_literal_global_374);
  }

  v3 = qword_280E02598;
  deviceType = [(HFMatterDeviceAccessoryType *)self deviceType];
  v5 = [v3 objectForKey:deviceType];

  return v5;
}

void __55__HFMatterDeviceAccessoryType__deviceTypeToServiceType__block_invoke_2()
{
  v8[11] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD0EA0];
  v7[0] = &unk_282523598;
  v7[1] = &unk_2825235B0;
  v8[0] = v0;
  v8[1] = v0;
  v7[2] = &unk_2825235C8;
  v7[3] = &unk_2825235E0;
  v8[2] = v0;
  v8[3] = v0;
  v1 = *MEMORY[0x277CD0EB0];
  v7[4] = &unk_2825235F8;
  v7[5] = &unk_282523640;
  v2 = *MEMORY[0x277CD0F08];
  v8[4] = v1;
  v8[5] = v2;
  v7[6] = &unk_282523658;
  v7[7] = &unk_282523670;
  v8[6] = v2;
  v8[7] = v2;
  v7[8] = &unk_282523688;
  v7[9] = &unk_282523610;
  v3 = *MEMORY[0x277CD0ED0];
  v8[8] = v2;
  v8[9] = v3;
  v7[10] = &unk_282523628;
  v8[10] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:11];
  v5 = qword_280E02598;
  qword_280E02598 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  deviceType = [(HFMatterDeviceAccessoryType *)self deviceType];
  v4 = [v2 stringWithFormat:@"matterDeviceType: 0x%02x", objc_msgSend(deviceType, "intValue")];

  return v4;
}

+ (id)na_identity
{
  if (qword_280E025A0 != -1)
  {
    dispatch_once(&qword_280E025A0, &__block_literal_global_381);
  }

  v3 = qword_280E025A8;

  return v3;
}

void __42__HFMatterDeviceAccessoryType_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_386];
  v2 = [v0 build];

  v3 = qword_280E025A8;
  qword_280E025A8 = v2;
}

@end