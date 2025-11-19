@interface HMDSettingConstraintModel
+ (id)hmbProperties;
- (NSString)nameForKeyPath;
- (id)copyWithNewParentModelID:(id)a3;
@end

@implementation HMDSettingConstraintModel

- (id)copyWithNewParentModelID:(id)a3
{
  v4 = a3;
  v5 = [HMDSettingConstraintModel alloc];
  v6 = [(HMBModel *)self hmbModelID];
  v7 = [(HMBModel *)v5 initWithModelID:v6 parentModelID:v4];

  v8 = [(HMDSettingConstraintModel *)self type];
  [(HMDSettingConstraintModel *)v7 setType:v8];

  v9 = [(HMDSettingConstraintModel *)self numberValue];
  [(HMDSettingConstraintModel *)v7 setNumberValue:v9];

  v10 = [(HMDSettingConstraintModel *)self stringValue];
  [(HMDSettingConstraintModel *)v7 setStringValue:v10];

  v11 = [(HMDSettingConstraintModel *)self dataValue];
  [(HMDSettingConstraintModel *)v7 setDataValue:v11];

  return v7;
}

- (NSString)nameForKeyPath
{
  v3 = self;
  v4 = [(HMDSettingConstraintModel *)self type];
  [v4 integerValue];
  v5 = HMSettingConstraintTypeToString();

  v6 = [(HMDSettingConstraintModel *)v3 type];
  v7 = [v6 integerValue];

  if (v7 == 4)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [(HMDSettingConstraintModel *)v3 numberValue];
    v10 = v9;
    if (v9)
    {
      v11 = 0;
      v12 = v9;
    }

    else
    {
      v13 = [(HMDSettingConstraintModel *)v3 stringValue];
      v2 = v13;
      if (v13)
      {
        v11 = 0;
        v12 = v13;
      }

      else
      {
        v14 = [(HMDSettingConstraintModel *)v3 dataValue];
        v3 = v14;
        v12 = @"unknown";
        if (v14)
        {
          v12 = v14;
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