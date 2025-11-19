@interface BLHLSMedia
- (id)description;
- (void)setPropertiesFromAttributeList:(id)a3;
@end

@implementation BLHLSMedia

- (void)setPropertiesFromAttributeList:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"TYPE"];
  type = self->_type;
  self->_type = v5;

  v7 = [v4 objectForKeyedSubscript:@"URI"];
  url = self->_url;
  self->_url = v7;

  v9 = [v4 objectForKeyedSubscript:@"NAME"];

  name = self->_name;
  self->_name = v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BLHLSMedia *)self name];
  v5 = [(BLHLSMedia *)self type];
  v6 = [(BLHLSMedia *)self url];
  v7 = [v3 stringWithFormat:@"%@(%@): %@", v4, v5, v6];

  return v7;
}

@end