@interface HFPlaceholderItem
- (HFPlaceholderItem)init;
- (HFPlaceholderItem)initWithHomeKitObject:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFPlaceholderItem

- (HFPlaceholderItem)initWithHomeKitObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFPlaceholderItem;
  v6 = [(HFPlaceholderItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeKitObject, a3);
  }

  return v7;
}

- (HFPlaceholderItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFPlaceholderItem.m" lineNumber:23 description:@"Use -initWithHomeKitObject:"];

  return 0;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v3 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v4 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v4;
}

@end