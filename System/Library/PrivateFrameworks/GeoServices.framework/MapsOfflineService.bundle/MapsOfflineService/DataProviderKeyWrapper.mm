@interface DataProviderKeyWrapper
- (DataProviderKeyWrapper)initWithKey:(const void *)key;
- (NSString)description;
@end

@implementation DataProviderKeyWrapper

- (DataProviderKeyWrapper)initWithKey:(const void *)key
{
  v9.receiver = self;
  v9.super_class = DataProviderKeyWrapper;
  v4 = [(DataProviderKeyWrapper *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_layer = *key;
    v6 = [NSData dataWithBytes:*(key + 1) length:*(key + 2) - *(key + 1)];
    serviceKey = v5->_serviceKey;
    v5->_serviceKey = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = [(NSData *)self->_serviceKey base64EncodedStringWithOptions:0];
  v4 = [NSString stringWithFormat:@"{ layer: %llu, serviceKey: %@ }", self->_layer, v3];

  return v4;
}

@end