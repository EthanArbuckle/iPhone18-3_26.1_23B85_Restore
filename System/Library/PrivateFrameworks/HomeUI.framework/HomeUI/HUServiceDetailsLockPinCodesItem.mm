@interface HUServiceDetailsLockPinCodesItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUServiceDetailsLockPinCodesItem

- (id)_subclass_updateWithOptions:(id)options
{
  objc_opt_class();
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = sourceServiceItem;
  }

  else
  {
    v5 = 0;
  }

  home = v5;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  accessories = [home accessories];
  v9 = [accessories na_any:&__block_literal_global_201];

  accessories2 = [home accessories];

  v11 = [accessories2 na_all:&__block_literal_global_3_4];
  v12 = 1;
  v13 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsLockPinCodesTitle", @"HUServiceDetailsLockPinCodesTitle", 1);
  [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [dictionary setObject:@"Home.Lock.ServiceDetails.ManageAccess" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  v14 = MEMORY[0x277CCABB0];
  if (!home)
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

  home = [(HUServiceDetailsAbstractItem *)self home];
  if ([home hasOnboardedForAccessCode])
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
  [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  if (v15)
  {
  }

  if (v9)
  {
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInt:v11 ^ 1u];
  [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v18 = MEMORY[0x277D2C900];
  v19 = [MEMORY[0x277D14780] outcomeWithResults:dictionary];
  v20 = [v18 futureWithResult:v19];

  return v20;
}

@end