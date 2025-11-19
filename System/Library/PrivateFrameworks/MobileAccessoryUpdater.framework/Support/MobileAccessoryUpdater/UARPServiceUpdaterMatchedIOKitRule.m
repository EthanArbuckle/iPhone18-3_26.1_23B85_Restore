@interface UARPServiceUpdaterMatchedIOKitRule
- (BOOL)isEqual:(id)a3;
- (UARPServiceUpdaterMatchedIOKitRule)initWithCoder:(id)a3;
- (UARPServiceUpdaterMatchedIOKitRule)initWithIdentifier:(id)a3 registryEntryID:(unint64_t)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPServiceUpdaterMatchedIOKitRule

- (UARPServiceUpdaterMatchedIOKitRule)initWithIdentifier:(id)a3 registryEntryID:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = UARPServiceUpdaterMatchedIOKitRule;
  v6 = [(UARPServiceUpdaterMatchedIOKitRule *)&v8 init];
  if (v6)
  {
    v6->_identifier = [a3 copy];
    v6->_registryEntryID = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPServiceUpdaterMatchedIOKitRule;
  [(UARPServiceUpdaterMatchedIOKitRule *)&v3 dealloc];
}

- (UARPServiceUpdaterMatchedIOKitRule)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"registryEntryID", "unsignedLongLongValue"}];

  return [(UARPServiceUpdaterMatchedIOKitRule *)self initWithIdentifier:v5 registryEntryID:v6];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_identifier forKey:@"identifier"];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_registryEntryID];

  [a3 encodeObject:v5 forKey:@"registryEntryID"];
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
      v5 = [(NSString *)self->_identifier isEqual:*(a3 + 1)];
      if (v5)
      {
        LOBYTE(v5) = self->_registryEntryID == *(a3 + 2);
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