@interface BLHLSMap
- (BLHLSMap)initWithURL:(id)l;
- (id)description;
- (void)setPropertiesFromAttributeList:(id)list;
@end

@implementation BLHLSMap

- (BLHLSMap)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = BLHLSMap;
  v6 = [(BLHLSMap *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
  }

  return v7;
}

- (void)setPropertiesFromAttributeList:(id)list
{
  v6 = [list objectForKeyedSubscript:@"URI"];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  url = self->_url;
  self->_url = v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(BLHLSMap *)self url];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

@end