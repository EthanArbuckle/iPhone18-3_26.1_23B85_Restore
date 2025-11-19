@interface HUServiceDetailsIdentifyHomePodItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsIdentifyHomePodItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = *MEMORY[0x277D13FB8];
  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  objc_opt_class();
  v6 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 mediaProfileContainer];
    if ((([MEMORY[0x277D14810] isHomePod:v9] & 1) != 0 || objc_msgSend(MEMORY[0x277D14810], "isHomePodMediaSystem:", v9)) && objc_msgSend(v9, "hf_isReachable") && objc_msgSend(v9, "hasValidSettings"))
    {
      v10 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsIdentifyHomePodButton", @"HUServiceDetailsIdentifyHomePodButton", 1);
      v11 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsIdentifyHomePodFooter", @"HUServiceDetailsIdentifyHomePodFooter", 1);
      [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];
      [v4 setObject:v11 forKeyedSubscript:@"HUServiceDetailsIdentifyHomePodFooterResultKey"];
      [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v5];
    }
  }

  v12 = MEMORY[0x277D2C900];
  v13 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v14 = [v12 futureWithResult:v13];

  return v14;
}

@end