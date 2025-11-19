@interface HFFakeMediaAccessoryItem
- (HFFakeMediaAccessoryItem)initWithMediaAccessoryItemType:(int64_t)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)createControlItemsWithOptions:(id)a3;
- (id)description;
@end

@implementation HFFakeMediaAccessoryItem

- (HFFakeMediaAccessoryItem)initWithMediaAccessoryItemType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HFFakeMediaAccessoryItem;
  result = [(HFFakeMediaAccessoryItem *)&v5 init];
  if (result)
  {
    result->_mediaAccessoryItemType = a3;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HFMediaAccessoryItemTypeDescription([(HFFakeMediaAccessoryItem *)self mediaAccessoryItemType]);
  v4 = [v2 stringWithFormat:@"Fake %@", v3];

  return v4;
}

- (id)createControlItemsWithOptions:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v3 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v4 = [MEMORY[0x277CBEB68] null];
  [(HFMutableItemUpdateOutcome *)v3 setObject:v4 forKeyedSubscript:@"HFResultMediaRouteIdentifierKey"];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v5;
}

@end