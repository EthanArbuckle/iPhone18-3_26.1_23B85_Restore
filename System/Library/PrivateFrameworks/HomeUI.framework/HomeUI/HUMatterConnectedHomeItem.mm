@interface HUMatterConnectedHomeItem
- (HUMatterConnectedHomeItem)initWithConnectedHome:(id)a3 accessoryPairing:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUMatterConnectedHomeItem

- (HUMatterConnectedHomeItem)initWithConnectedHome:(id)a3 accessoryPairing:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUMatterConnectedHomeItem;
  v9 = [(HUMatterConnectedHomeItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connectedHome, a3);
    objc_storeStrong(&v10->_chipAccessoryPairing, a4);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277D13E20];
  v3 = [(HUMatterConnectedHomeItem *)self connectedHome];
  v4 = [v3 name];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v6 = MEMORY[0x277D2C900];
  v7 = [MEMORY[0x277D14780] outcomeWithResults:v5];
  v8 = [v6 futureWithResult:v7];

  return v8;
}

@end