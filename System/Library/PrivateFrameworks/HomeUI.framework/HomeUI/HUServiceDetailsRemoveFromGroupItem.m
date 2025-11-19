@interface HUServiceDetailsRemoveFromGroupItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsRemoveFromGroupItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveFromGroupTitle", @"HUServiceDetailsRemoveFromGroupTitle", 1);
  v10 = *MEMORY[0x277D13F60];
  v11[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = [v4 mutableCopy];

  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  v6 = MEMORY[0x277D2C900];
  v7 = [MEMORY[0x277D14780] outcomeWithResults:v5];
  v8 = [v6 futureWithResult:v7];

  return v8;
}

@end