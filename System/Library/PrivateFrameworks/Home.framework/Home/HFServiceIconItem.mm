@interface HFServiceIconItem
- (HFServiceIconItem)initWithIconDescriptor:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFServiceIconItem

- (HFServiceIconItem)initWithIconDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFServiceIconItem;
  v6 = [(HFServiceIconItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconDescriptor, a3);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"icon";
  v3 = [(HFServiceIconItem *)self iconDescriptor];
  v11[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v5 = MEMORY[0x277D2C900];
  v6 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v7 = [v5 futureWithResult:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end