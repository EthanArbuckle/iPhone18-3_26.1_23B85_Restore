@interface HUServiceDetailsIdentifyHomePodItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUServiceDetailsIdentifyHomePodItem

- (id)_subclass_updateWithOptions:(id)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = *MEMORY[0x277D13FB8];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  objc_opt_class();
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v7 = sourceServiceItem;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    mediaProfileContainer = [v8 mediaProfileContainer];
    if ((([MEMORY[0x277D14810] isHomePod:mediaProfileContainer] & 1) != 0 || objc_msgSend(MEMORY[0x277D14810], "isHomePodMediaSystem:", mediaProfileContainer)) && objc_msgSend(mediaProfileContainer, "hf_isReachable") && objc_msgSend(mediaProfileContainer, "hasValidSettings"))
    {
      v10 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsIdentifyHomePodButton", @"HUServiceDetailsIdentifyHomePodButton", 1);
      v11 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsIdentifyHomePodFooter", @"HUServiceDetailsIdentifyHomePodFooter", 1);
      [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];
      [dictionary setObject:v11 forKeyedSubscript:@"HUServiceDetailsIdentifyHomePodFooterResultKey"];
      [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v5];
    }
  }

  v12 = MEMORY[0x277D2C900];
  v13 = [MEMORY[0x277D14780] outcomeWithResults:dictionary];
  v14 = [v12 futureWithResult:v13];

  return v14;
}

@end