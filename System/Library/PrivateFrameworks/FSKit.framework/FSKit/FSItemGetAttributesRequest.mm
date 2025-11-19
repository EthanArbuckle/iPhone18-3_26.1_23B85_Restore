@interface FSItemGetAttributesRequest
- (BOOL)isAttributeWanted:(int64_t)a3;
- (FSItemGetAttributesRequest)init;
- (FSItemGetAttributesRequest)initWithCoder:(id)a3;
- (FSItemGetAttributesRequest)initWithWantedLIAttributes:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSItemGetAttributesRequest

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v4);
  }

  [v5 encodeInt64:self->_wantedAttributes forKey:@"FSItemAttrWanted"];
}

- (FSItemGetAttributesRequest)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v6);
  }

  self->_wantedAttributes = [v4 decodeInt64ForKey:@"FSItemAttrWanted"];

  return self;
}

- (FSItemGetAttributesRequest)init
{
  v3.receiver = self;
  v3.super_class = FSItemGetAttributesRequest;
  result = [(FSItemGetAttributesRequest *)&v3 init];
  if (result)
  {
    result->_wantedAttributes = 0;
  }

  return result;
}

- (FSItemGetAttributesRequest)initWithWantedLIAttributes:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = FSItemGetAttributesRequest;
  result = [(FSItemGetAttributesRequest *)&v5 init];
  if (result)
  {
    result->_wantedAttributes = a3;
  }

  return result;
}

- (BOOL)isAttributeWanted:(int64_t)a3
{
  result = 0;
  if (a3 <= 511)
  {
    if ((a3 - 1) <= 0x3F && ((1 << (a3 - 1)) & 0x800000008000808BLL) != 0 || a3 == 128 || a3 == 256)
    {
      return (self->_wantedAttributes & a3) != 0;
    }
  }

  else if (a3 >= 0x4000)
  {
    if (a3 < 0x10000)
    {
      if (a3 == 0x4000 || a3 == 0x8000)
      {
        return (self->_wantedAttributes & a3) != 0;
      }
    }

    else if (a3 == 0x10000 || a3 == 0x4000000000000000 || a3 == 0x20000)
    {
      return (self->_wantedAttributes & a3) != 0;
    }
  }

  else
  {
    if (a3 > 2047)
    {
      if (a3 != 2048 && a3 != 4096 && a3 != 0x2000)
      {
        return result;
      }

      return (self->_wantedAttributes & a3) != 0;
    }

    if (a3 == 512 || a3 == 1024)
    {
      return (self->_wantedAttributes & a3) != 0;
    }
  }

  return result;
}

@end