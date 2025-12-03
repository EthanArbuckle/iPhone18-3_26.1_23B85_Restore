@interface ICASSharrowContextData
- (ICASSharrowContextData)initWithSharrowSelectedItem:(id)item;
- (id)toDict;
@end

@implementation ICASSharrowContextData

- (ICASSharrowContextData)initWithSharrowSelectedItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = ICASSharrowContextData;
  v6 = [(ICASSharrowContextData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharrowSelectedItem, item);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"sharrowSelectedItem";
  sharrowSelectedItem = [(ICASSharrowContextData *)self sharrowSelectedItem];
  if (sharrowSelectedItem)
  {
    sharrowSelectedItem2 = [(ICASSharrowContextData *)self sharrowSelectedItem];
  }

  else
  {
    sharrowSelectedItem2 = objc_opt_new();
  }

  v5 = sharrowSelectedItem2;
  v10[0] = sharrowSelectedItem2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end