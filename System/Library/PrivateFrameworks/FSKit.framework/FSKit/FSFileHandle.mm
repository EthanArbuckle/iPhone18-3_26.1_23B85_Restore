@interface FSFileHandle
- (BOOL)isEqual:(id)equal;
- (FSFileHandle)initWithCoder:(id)coder;
- (FSFileHandle)initWithValue:(unint64_t)value;
- (NSString)base64String;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FSFileHandle

- (FSFileHandle)initWithValue:(unint64_t)value
{
  v5.receiver = self;
  v5.super_class = FSFileHandle;
  result = [(FSFileHandle *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

- (NSString)base64String
{
  v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_value length:8];
  v3 = [v2 base64EncodedStringWithOptions:1];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_value == equalCopy[1];

  return v5;
}

- (FSFileHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = FSFileHandle;
  v5 = [(FSFileHandle *)&v7 init];
  if (v5)
  {
    v5->_value = [coderCopy decodeInt64ForKey:@"FSFileHandle.value"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  value = self->_value;

  return [v4 initWithValue:value];
}

@end