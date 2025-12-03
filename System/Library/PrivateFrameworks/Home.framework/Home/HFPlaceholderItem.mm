@interface HFPlaceholderItem
- (HFPlaceholderItem)init;
- (HFPlaceholderItem)initWithHomeKitObject:(id)object;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFPlaceholderItem

- (HFPlaceholderItem)initWithHomeKitObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = HFPlaceholderItem;
  v6 = [(HFPlaceholderItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeKitObject, object);
  }

  return v7;
}

- (HFPlaceholderItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFPlaceholderItem.m" lineNumber:23 description:@"Use -initWithHomeKitObject:"];

  return 0;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v3 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v4 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v4;
}

@end