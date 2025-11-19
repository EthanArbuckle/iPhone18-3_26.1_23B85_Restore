@interface FSItemSetAttributesRequest
- (BOOL)wasAttributeConsumed:(int64_t)a3;
- (FSItemSetAttributesRequest)init;
- (FSItemSetAttributesRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSItemSetAttributesRequest

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FSItemSetAttributesRequest;
  v4 = a3;
  [(FSItemAttributes *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_consumedAttributes forKey:{@"FSItemAttrConsumed", v5.receiver, v5.super_class}];
}

- (FSItemSetAttributesRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FSItemSetAttributesRequest;
  v5 = [(FSItemAttributes *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_consumedAttributes = [v4 decodeInt64ForKey:@"FSItemAttrConsumed"];
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

- (BOOL)wasAttributeConsumed:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 255)
  {
    if ((a3 - 1) <= 0x3F && ((1 << (a3 - 1)) & 0x800000008000808BLL) != 0 || a3 == 128)
    {
      return (self->_consumedAttributes & a3) != 0;
    }
  }

  else
  {
    if (a3 > 4095)
    {
      if (a3 < 0x4000)
      {
        if (a3 == 4096)
        {
          a3 = 1024;
        }

        else if (a3 != 0x2000)
        {
          return v3;
        }
      }

      else if (a3 != 0x4000 && a3 != 0x8000 && a3 != 0x4000000000000000)
      {
        return v3;
      }

      return (self->_consumedAttributes & a3) != 0;
    }

    if (a3 > 1023)
    {
      if (a3 == 1024 || a3 == 2048)
      {
        return (self->_consumedAttributes & a3) != 0;
      }
    }

    else if (a3 == 256 || a3 == 512)
    {
      return (self->_consumedAttributes & a3) != 0;
    }
  }

  return v3;
}

@end