@interface UARPAccessoryHIDPersonality
- (BOOL)isEqual:(id)equal;
- (UARPAccessoryHIDPersonality)initWithVendorID:(unsigned __int16)d productID:(unsigned __int16)iD;
@end

@implementation UARPAccessoryHIDPersonality

- (UARPAccessoryHIDPersonality)initWithVendorID:(unsigned __int16)d productID:(unsigned __int16)iD
{
  v7.receiver = self;
  v7.super_class = UARPAccessoryHIDPersonality;
  result = [(UARPAccessoryHIDPersonality *)&v7 init];
  if (result)
  {
    result->_vendorID = d;
    result->_productID = iD;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v8 = 1;
    }

    else
    {
      v5 = equalCopy;
      vendorID = [(UARPAccessoryHIDPersonality *)self vendorID];
      if (vendorID == [(UARPAccessoryHIDPersonality *)v5 vendorID])
      {
        productID = [(UARPAccessoryHIDPersonality *)self productID];
        v8 = productID == [(UARPAccessoryHIDPersonality *)v5 productID];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end