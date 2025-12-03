@interface FSItemSetAttributesRequest
- (BOOL)wasAttributeConsumed:(int64_t)consumed;
- (FSItemSetAttributesRequest)init;
- (FSItemSetAttributesRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSItemSetAttributesRequest

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FSItemSetAttributesRequest;
  coderCopy = coder;
  [(FSItemAttributes *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_consumedAttributes forKey:{@"FSItemAttrConsumed", v5.receiver, v5.super_class}];
}

- (FSItemSetAttributesRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = FSItemSetAttributesRequest;
  v5 = [(FSItemAttributes *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_consumedAttributes = [coderCopy decodeInt64ForKey:@"FSItemAttrConsumed"];
  }

  return v5;
}

- (FSItemSetAttributesRequest)init
{
  v3.receiver = self;
  v3.super_class = FSItemSetAttributesRequest;
  result = [(FSItemAttributes *)&v3 init];
  if (result)
  {
    result->_consumedAttributes = 0;
  }

  return result;
}

- (BOOL)wasAttributeConsumed:(int64_t)consumed
{
  v3 = 0;
  if (consumed <= 255)
  {
    if ((consumed - 1) <= 0x3F && ((1 << (consumed - 1)) & 0x800000008000808BLL) != 0 || consumed == 128)
    {
      return (self->_consumedAttributes & consumed) != 0;
    }
  }

  else
  {
    if (consumed > 4095)
    {
      if (consumed < 0x4000)
      {
        if (consumed == 4096)
        {
          consumed = 1024;
        }

        else if (consumed != 0x2000)
        {
          return v3;
        }
      }

      else if (consumed != 0x4000 && consumed != 0x8000 && consumed != 0x4000000000000000)
      {
        return v3;
      }

      return (self->_consumedAttributes & consumed) != 0;
    }

    if (consumed > 1023)
    {
      if (consumed == 1024 || consumed == 2048)
      {
        return (self->_consumedAttributes & consumed) != 0;
      }
    }

    else if (consumed == 256 || consumed == 512)
    {
      return (self->_consumedAttributes & consumed) != 0;
    }
  }

  return v3;
}

@end