@interface UARPServiceUpdaterMatchedEARule
- (BOOL)isEqual:(id)equal;
- (UARPServiceUpdaterMatchedEARule)initWithCoder:(id)coder;
- (UARPServiceUpdaterMatchedEARule)initWithEAIdentifier:(id)identifier accessorySerialNumber:(id)number;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPServiceUpdaterMatchedEARule

- (UARPServiceUpdaterMatchedEARule)initWithEAIdentifier:(id)identifier accessorySerialNumber:(id)number
{
  v8.receiver = self;
  v8.super_class = UARPServiceUpdaterMatchedEARule;
  v6 = [(UARPServiceUpdaterMatchedEARule *)&v8 init];
  if (v6)
  {
    v6->_eaIdentifier = [identifier copy];
    v6->_accessorySerialNumber = [number copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPServiceUpdaterMatchedEARule;
  [(UARPServiceUpdaterMatchedEARule *)&v3 dealloc];
}

- (UARPServiceUpdaterMatchedEARule)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];

  return [(UARPServiceUpdaterMatchedEARule *)self initWithEAIdentifier:v5 accessorySerialNumber:v6];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_eaIdentifier forKey:@"identifier"];
  accessorySerialNumber = self->_accessorySerialNumber;

  [coder encodeObject:accessorySerialNumber forKey:@"serialNumber"];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equal)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = [(NSString *)self->_eaIdentifier isEqual:*(equal + 1)];
      if (v5)
      {
        accessorySerialNumber = self->_accessorySerialNumber;
        v7 = *(equal + 2);

        LOBYTE(v5) = [(NSString *)accessorySerialNumber isEqual:v7];
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end