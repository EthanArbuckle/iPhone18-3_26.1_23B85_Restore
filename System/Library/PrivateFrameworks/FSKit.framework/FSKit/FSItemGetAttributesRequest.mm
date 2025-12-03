@interface FSItemGetAttributesRequest
- (BOOL)isAttributeWanted:(int64_t)wanted;
- (FSItemGetAttributesRequest)init;
- (FSItemGetAttributesRequest)initWithCoder:(id)coder;
- (FSItemGetAttributesRequest)initWithWantedLIAttributes:(unint64_t)attributes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSItemGetAttributesRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v4);
  }

  [coderCopy encodeInt64:self->_wantedAttributes forKey:@"FSItemAttrWanted"];
}

- (FSItemGetAttributesRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v6);
  }

  self->_wantedAttributes = [coderCopy decodeInt64ForKey:@"FSItemAttrWanted"];

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

- (FSItemGetAttributesRequest)initWithWantedLIAttributes:(unint64_t)attributes
{
  v5.receiver = self;
  v5.super_class = FSItemGetAttributesRequest;
  result = [(FSItemGetAttributesRequest *)&v5 init];
  if (result)
  {
    result->_wantedAttributes = attributes;
  }

  return result;
}

- (BOOL)isAttributeWanted:(int64_t)wanted
{
  result = 0;
  if (wanted <= 511)
  {
    if ((wanted - 1) <= 0x3F && ((1 << (wanted - 1)) & 0x800000008000808BLL) != 0 || wanted == 128 || wanted == 256)
    {
      return (self->_wantedAttributes & wanted) != 0;
    }
  }

  else if (wanted >= 0x4000)
  {
    if (wanted < 0x10000)
    {
      if (wanted == 0x4000 || wanted == 0x8000)
      {
        return (self->_wantedAttributes & wanted) != 0;
      }
    }

    else if (wanted == 0x10000 || wanted == 0x4000000000000000 || wanted == 0x20000)
    {
      return (self->_wantedAttributes & wanted) != 0;
    }
  }

  else
  {
    if (wanted > 2047)
    {
      if (wanted != 2048 && wanted != 4096 && wanted != 0x2000)
      {
        return result;
      }

      return (self->_wantedAttributes & wanted) != 0;
    }

    if (wanted == 512 || wanted == 1024)
    {
      return (self->_wantedAttributes & wanted) != 0;
    }
  }

  return result;
}

@end