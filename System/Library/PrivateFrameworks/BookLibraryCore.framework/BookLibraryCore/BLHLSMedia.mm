@interface BLHLSMedia
- (id)description;
- (void)setPropertiesFromAttributeList:(id)list;
@end

@implementation BLHLSMedia

- (void)setPropertiesFromAttributeList:(id)list
{
  listCopy = list;
  v5 = [listCopy objectForKeyedSubscript:@"TYPE"];
  type = self->_type;
  self->_type = v5;

  v7 = [listCopy objectForKeyedSubscript:@"URI"];
  url = self->_url;
  self->_url = v7;

  v9 = [listCopy objectForKeyedSubscript:@"NAME"];

  name = self->_name;
  self->_name = v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(BLHLSMedia *)self name];
  type = [(BLHLSMedia *)self type];
  v6 = [(BLHLSMedia *)self url];
  v7 = [v3 stringWithFormat:@"%@(%@): %@", name, type, v6];

  return v7;
}

@end