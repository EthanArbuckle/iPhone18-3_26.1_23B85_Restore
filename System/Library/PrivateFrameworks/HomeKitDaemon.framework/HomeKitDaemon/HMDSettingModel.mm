@interface HMDSettingModel
+ (id)hmbProperties;
- (BOOL)setSettingValue:(id)a3;
- (id)copyWithNewParentModelID:(id)a3;
@end

@implementation HMDSettingModel

- (id)copyWithNewParentModelID:(id)a3
{
  v4 = a3;
  v5 = [HMDSettingModel alloc];
  v6 = [(HMBModel *)self hmbModelID];
  v7 = [(HMBModel *)v5 initWithModelID:v6 parentModelID:v4];

  v8 = [(HMDSettingModel *)self type];
  [(HMDSettingModel *)v7 setType:v8];

  v9 = [(HMDSettingModel *)self properties];
  [(HMDSettingModel *)v7 setProperties:v9];

  v10 = [(HMDSettingModel *)self name];
  [(HMDSettingModel *)v7 setName:v10];

  v11 = [(HMDSettingModel *)self numberValue];
  [(HMDSettingModel *)v7 setNumberValue:v11];

  v12 = [(HMDSettingModel *)self stringValue];
  [(HMDSettingModel *)v7 setStringValue:v12];

  v13 = [(HMDSettingModel *)self dataValue];
  [(HMDSettingModel *)v7 setDataValue:v13];

  v14 = [(HMDSettingModel *)self selectionIdentifier];
  [(HMDSettingModel *)v7 setSelectionIdentifier:v14];

  v15 = [(HMDSettingModel *)self selectionValue];
  [(HMDSettingModel *)v7 setSelectionValue:v15];

  return v7;
}

- (BOOL)setSettingValue:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v7 = [v4 dataValue];
      [(HMDSettingModel *)self setDataValue:v7];
    }

    else
    {
      if (v5 != 2)
      {
        v6 = 0;
        goto LABEL_12;
      }

      v7 = [v4 numberValue];
      [(HMDSettingModel *)self setNumberValue:v7];
    }

    goto LABEL_11;
  }

  if (v5 == 3)
  {
    v7 = [v4 stringValue];
    [(HMDSettingModel *)self setStringValue:v7];
LABEL_11:

    v6 = 1;
    goto LABEL_12;
  }

  if (v5 == 4)
  {
    v8 = [v4 selectionIdentifier];
    [(HMDSettingModel *)self setSelectionIdentifier:v8];

    v7 = [v4 selectionValue];
    [(HMDSettingModel *)self setSelectionValue:v7];
    goto LABEL_11;
  }

  v6 = v5 == 5;
LABEL_12:

  return v6;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_60906 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_60906, &__block_literal_global_60907);
  }

  v3 = hmbProperties__properties_60908;

  return v3;
}

void __32__HMDSettingModel_hmbProperties__block_invoke()
{
  v12[8] = *MEMORY[0x277D85DE8];
  v11[0] = @"type";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[0] = v0;
  v11[1] = @"properties";
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[1] = v1;
  v11[2] = @"name";
  v2 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[2] = v2;
  v11[3] = @"numberValue";
  v3 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[3] = v3;
  v11[4] = @"stringValue";
  v4 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[4] = v4;
  v11[5] = @"dataValue";
  v5 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[5] = v5;
  v11[6] = @"selectionIdentifier";
  v6 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[6] = v6;
  v11[7] = @"selectionValue";
  v7 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[7] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:8];
  v9 = hmbProperties__properties_60908;
  hmbProperties__properties_60908 = v8;

  v10 = *MEMORY[0x277D85DE8];
}

@end