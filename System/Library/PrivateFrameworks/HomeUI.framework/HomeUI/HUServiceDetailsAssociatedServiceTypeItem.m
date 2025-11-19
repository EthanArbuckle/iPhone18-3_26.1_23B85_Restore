@interface HUServiceDetailsAssociatedServiceTypeItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsAssociatedServiceTypeItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v4 = [v3 homeKitObject];

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CBEB58] na_setWithSafeObject:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = v4;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = MEMORY[0x277CD1D90];
    v11 = [v9 hf_effectiveServiceType];
    v12 = [v10 hf_userFriendlyLocalizedCapitalizedDescription:v11];
  }

  else
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v12 = 0;
  }

  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13DA8]];
  v13 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsTypeTitle", @"HUServiceDetailsTypeTitle", 1);
  [v5 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v5 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13E20]];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.DisplayAs"];
  [v5 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13DC8]];

  v15 = MEMORY[0x277D2C900];
  v16 = [MEMORY[0x277D14780] outcomeWithResults:v5];
  v17 = [v15 futureWithResult:v16];

  return v17;
}

@end