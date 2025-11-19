@interface BRSlotData
- (BRSlotData)initWithSlotData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)propertyList;
- (void)dealloc;
@end

@implementation BRSlotData

- (BRSlotData)initWithSlotData:(id)a3
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = BRSlotData;
    v4 = [(BRSlotData *)&v6 init];
    if (v4)
    {
      v4->_slot = [objc_msgSend(a3 "slot")];
      v4->_asset = [a3 asset];
      v4->_isProgrammed = [a3 isProgrammed];
      v4->_refCount = [a3 refCount];
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

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
  v4 = [(BRSlotData *)self isProgrammed];
  v5 = "N";
  if (v4)
  {
    v5 = "Y";
  }

  [v3 appendFormat:@"IsProgammed: %s;", v5];
  [v3 appendFormat:@"RefCount: %lu;", -[BRSlotData refCount](self, "refCount")];
  return v3;
}

- (id)propertyList
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(BRSlotData *)self slot])
  {
    v4 = [(BRSlotData *)self slot];
  }

  else
  {
    v4 = &unk_285467E50;
  }

  [v3 setObject:v4 forKey:@"Slot"];
  if ([(BRAsset *)[(BRSlotData *)self asset] propertyList])
  {
    v5 = [(BRAsset *)[(BRSlotData *)self asset] propertyList];
  }

  else
  {
    v5 = [MEMORY[0x277CBEAC0] dictionary];
  }

  [v3 setObject:v5 forKey:@"Asset"];
  v6 = MEMORY[0x277CCACA8];
  v7 = [(BRSlotData *)self isProgrammed];
  v8 = "N";
  if (v7)
  {
    v8 = "Y";
  }

  [v3 setObject:objc_msgSend(v6 forKey:{"stringWithFormat:", @"%s;", v8), @"IsProgrammed"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", -[BRSlotData refCount](self, "refCount")), @"RefCount"}];
  return v3;
}

@end