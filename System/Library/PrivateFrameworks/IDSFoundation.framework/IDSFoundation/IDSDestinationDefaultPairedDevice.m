@interface IDSDestinationDefaultPairedDevice
- (BOOL)isEqual:(id)a3;
@end

@implementation IDSDestinationDefaultPairedDevice

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSDestinationDefaultPairedDevice *)self isEqualToIDSDestinationDefaultPairedDevice:v4];
  }

  return v5;
}

@end