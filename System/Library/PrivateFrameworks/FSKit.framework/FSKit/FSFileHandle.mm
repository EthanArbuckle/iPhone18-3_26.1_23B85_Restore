@interface FSFileHandle
- (BOOL)isEqual:(id)a3;
- (FSFileHandle)initWithCoder:(id)a3;
- (FSFileHandle)initWithValue:(unint64_t)a3;
- (NSString)base64String;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FSFileHandle

- (FSFileHandle)initWithValue:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = FSFileHandle;
  result = [(FSFileHandle *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

- (NSString)base64String
{
  v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_value length:8];
  v3 = [v2 base64EncodedStringWithOptions:1];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_value == v4[1];

  return v5;
}

- (FSFileHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FSFileHandle;
  v5 = [(FSFileHandle *)&v7 init];
  if (v5)
  {
    v5->_value = [v4 decodeInt64ForKey:@"FSFileHandle.value"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  value = self->_value;

  return [v4 initWithValue:value];
}

@end