@interface HMDSettingConstraintModel
+ (id)hmbProperties;
- (NSString)nameForKeyPath;
- (id)copyWithNewParentModelID:(id)d;
@end

@implementation HMDSettingConstraintModel

- (id)copyWithNewParentModelID:(id)d
{
  dCopy = d;
  v5 = [HMDSettingConstraintModel alloc];
  hmbModelID = [(HMBModel *)self hmbModelID];
  v7 = [(HMBModel *)v5 initWithModelID:hmbModelID parentModelID:dCopy];

  type = [(HMDSettingConstraintModel *)self type];
  [(HMDSettingConstraintModel *)v7 setType:type];

  numberValue = [(HMDSettingConstraintModel *)self numberValue];
  [(HMDSettingConstraintModel *)v7 setNumberValue:numberValue];

  stringValue = [(HMDSettingConstraintModel *)self stringValue];
  [(HMDSettingConstraintModel *)v7 setStringValue:stringValue];

  dataValue = [(HMDSettingConstraintModel *)self dataValue];
  [(HMDSettingConstraintModel *)v7 setDataValue:dataValue];

  return v7;
}

- (NSString)nameForKeyPath
{
  selfCopy = self;
  type = [(HMDSettingConstraintModel *)self type];
  [type integerValue];
  v5 = HMSettingConstraintTypeToString();

  type2 = [(HMDSettingConstraintModel *)selfCopy type];
  integerValue = [type2 integerValue];

  if (integerValue == 4)
  {
    v8 = MEMORY[0x277CCACA8];
    numberValue = [(HMDSettingConstraintModel *)selfCopy numberValue];
    v10 = numberValue;
    if (numberValue)
    {
      v11 = 0;
      v12 = numberValue;
    }

    else
    {
      stringValue = [(HMDSettingConstraintModel *)selfCopy stringValue];
      v2 = stringValue;
      if (stringValue)
      {
        v11 = 0;
        v12 = stringValue;
      }

      else
      {
        dataValue = [(HMDSettingConstraintModel *)selfCopy dataValue];
        selfCopy = dataValue;
        v12 = @"unknown";
        if (dataValue)
        {
          v12 = dataValue;
        }

        v11 = 1;
      }
    }

    v15 = [v8 stringWithFormat:@"%@.%@", v5, v12];

    if (v11)
    {
    }

    if (!v10)
    {
    }

    v5 = v15;
  }

  return v5;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_85030 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_85030, &__block_literal_global_85031);
  }

  v3 = hmbProperties__properties_85032;

  return v3;
}

void __42__HMDSettingConstraintModel_hmbProperties__block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v8[0] = v0;
  v7[1] = @"numberValue";
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v8[1] = v1;
  v7[2] = @"stringValue";
  v2 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v8[2] = v2;
  v7[3] = @"dataValue";
  v3 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v8[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = hmbProperties__properties_85032;
  hmbProperties__properties_85032 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end