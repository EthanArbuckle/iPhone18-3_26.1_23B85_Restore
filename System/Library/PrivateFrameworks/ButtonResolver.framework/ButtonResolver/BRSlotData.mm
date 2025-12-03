@interface BRSlotData
- (BRSlotData)initWithSlotData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)propertyList;
- (void)dealloc;
@end

@implementation BRSlotData

- (BRSlotData)initWithSlotData:(id)data
{
  if (data)
  {
    v6.receiver = self;
    v6.super_class = BRSlotData;
    v4 = [(BRSlotData *)&v6 init];
    if (v4)
    {
      v4->_slot = [objc_msgSend(data "slot")];
      v4->_asset = [data asset];
      v4->_isProgrammed = [data isProgrammed];
      v4->_refCount = [data refCount];
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithSlotData:self];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BRSlotData;
  [(BRSlotData *)&v3 dealloc];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BRSlotData;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[BRSlotData description](&v7, sel_description)}];
  [v3 appendFormat:@"Slot: %@;", -[BRSlotData slot](self, "slot")];
  [v3 appendFormat:@"Asset: %@;", -[BRSlotData asset](self, "asset")];
  isProgrammed = [(BRSlotData *)self isProgrammed];
  v5 = "N";
  if (isProgrammed)
  {
    v5 = "Y";
  }

  [v3 appendFormat:@"IsProgammed: %s;", v5];
  [v3 appendFormat:@"RefCount: %lu;", -[BRSlotData refCount](self, "refCount")];
  return v3;
}

- (id)propertyList
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(BRSlotData *)self slot])
  {
    slot = [(BRSlotData *)self slot];
  }

  else
  {
    slot = &unk_285467E50;
  }

  [dictionary setObject:slot forKey:@"Slot"];
  if ([(BRAsset *)[(BRSlotData *)self asset] propertyList])
  {
    propertyList = [(BRAsset *)[(BRSlotData *)self asset] propertyList];
  }

  else
  {
    propertyList = [MEMORY[0x277CBEAC0] dictionary];
  }

  [dictionary setObject:propertyList forKey:@"Asset"];
  v6 = MEMORY[0x277CCACA8];
  isProgrammed = [(BRSlotData *)self isProgrammed];
  v8 = "N";
  if (isProgrammed)
  {
    v8 = "Y";
  }

  [dictionary setObject:objc_msgSend(v6 forKey:{"stringWithFormat:", @"%s;", v8), @"IsProgrammed"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", -[BRSlotData refCount](self, "refCount")), @"RefCount"}];
  return dictionary;
}

@end