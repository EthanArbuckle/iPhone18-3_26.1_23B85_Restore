@interface UARPServiceUpdaterMatchedEARule
- (BOOL)isEqual:(id)a3;
- (UARPServiceUpdaterMatchedEARule)initWithCoder:(id)a3;
- (UARPServiceUpdaterMatchedEARule)initWithEAIdentifier:(id)a3 accessorySerialNumber:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPServiceUpdaterMatchedEARule

- (UARPServiceUpdaterMatchedEARule)initWithEAIdentifier:(id)a3 accessorySerialNumber:(id)a4
{
  v8.receiver = self;
  v8.super_class = UARPServiceUpdaterMatchedEARule;
  v6 = [(UARPServiceUpdaterMatchedEARule *)&v8 init];
  if (v6)
  {
    v6->_eaIdentifier = [a3 copy];
    v6->_accessorySerialNumber = [a4 copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPServiceUpdaterMatchedEARule;
  [(UARPServiceUpdaterMatchedEARule *)&v3 dealloc];
}

- (UARPServiceUpdaterMatchedEARule)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];

  return [(UARPServiceUpdaterMatchedEARule *)self initWithEAIdentifier:v5 accessorySerialNumber:v6];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_eaIdentifier forKey:@"identifier"];
  accessorySerialNumber = self->_accessorySerialNumber;

  [a3 encodeObject:accessorySerialNumber forKey:@"serialNumber"];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == a3)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = [(NSString *)self->_eaIdentifier isEqual:*(a3 + 1)];
      if (v5)
      {
        accessorySerialNumber = self->_accessorySerialNumber;
        v7 = *(a3 + 2);

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