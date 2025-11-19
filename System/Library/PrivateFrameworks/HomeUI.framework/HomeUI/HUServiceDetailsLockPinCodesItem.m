@interface HUServiceDetailsLockPinCodesItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsLockPinCodesItem

- (id)_subclass_updateWithOptions:(id)a3
{
  objc_opt_class();
  v4 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [v6 accessories];
  v9 = [v8 na_any:&__block_literal_global_201];

  v10 = [v6 accessories];

  v11 = [v10 na_all:&__block_literal_global_3_4];
  v12 = 1;
  v13 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsLockPinCodesTitle", @"HUServiceDetailsLockPinCodesTitle", 1);
  [v7 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v7 setObject:@"Home.Lock.ServiceDetails.ManageAccess" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  v14 = MEMORY[0x277CCABB0];
  if (!v6)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (!v9)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v6 = [(HUServiceDetailsAbstractItem *)self home];
  if ([v6 hasOnboardedForAccessCode])
  {
    self = [(HUServiceDetailsAbstractItem *)self home];
    v12 = [(HUServiceDetailsLockPinCodesItem *)self hf_currentUserIsAdministrator]^ 1;
    v9 = 1;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    v9 = 1;
  }

LABEL_10:
  v16 = [v14 numberWithInt:v12];
  [v7 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  if (v15)
  {
  }

  if (v9)
  {
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInt:v11 ^ 1u];
  [v7 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v18 = MEMORY[0x277D2C900];
  v19 = [MEMORY[0x277D14780] outcomeWithResults:v7];
  v20 = [v18 futureWithResult:v19];

  return v20;
}

@end