@interface HFClimateStatusItem
+ (id)statusItemClasses;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFClimateStatusItem

+ (id)statusItemClasses
{
  if (_MergedGlobals_257 != -1)
  {
    dispatch_once(&_MergedGlobals_257, &__block_literal_global_3_15);
  }

  v3 = qword_280E03018;

  return v3;
}

void __40__HFClimateStatusItem_statusItemClasses__block_invoke_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:3];
  v2 = [v0 setWithArray:{v1, v5, v6}];
  v3 = qword_280E03018;
  qword_280E03018 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_subclass_updateWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = HFClimateStatusItem;
  v3 = [(HFAbstractGroupedStatusItem *)&v6 _subclass_updateWithOptions:options];
  v4 = [v3 flatMap:&__block_literal_global_11_4];

  return v4;
}

id __51__HFClimateStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [a2 mutableCopy];
  v3 = [v2 objectForKeyedSubscript:@"hidden"];
  v4 = [v3 BOOLValue];

  v5 = MEMORY[0x277D2C900];
  if (v4)
  {
    v6 = [MEMORY[0x277D2C900] futureWithResult:v2];
  }

  else
  {
    v11 = @"hidden";
    v12[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [HFItemUpdateOutcome outcomeWithResults:v7];
    v6 = [v5 futureWithResult:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

@end