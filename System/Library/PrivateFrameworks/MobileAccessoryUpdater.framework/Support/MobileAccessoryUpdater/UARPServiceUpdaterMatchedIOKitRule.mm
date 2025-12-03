@interface UARPServiceUpdaterMatchedIOKitRule
- (BOOL)isEqual:(id)equal;
- (UARPServiceUpdaterMatchedIOKitRule)initWithCoder:(id)coder;
- (UARPServiceUpdaterMatchedIOKitRule)initWithIdentifier:(id)identifier registryEntryID:(unint64_t)d;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPServiceUpdaterMatchedIOKitRule

- (UARPServiceUpdaterMatchedIOKitRule)initWithIdentifier:(id)identifier registryEntryID:(unint64_t)d
{
  v8.receiver = self;
  v8.super_class = UARPServiceUpdaterMatchedIOKitRule;
  v6 = [(UARPServiceUpdaterMatchedIOKitRule *)&v8 init];
  if (v6)
  {
    v6->_identifier = [identifier copy];
    v6->_registryEntryID = d;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPServiceUpdaterMatchedIOKitRule;
  [(UARPServiceUpdaterMatchedIOKitRule *)&v3 dealloc];
}

- (UARPServiceUpdaterMatchedIOKitRule)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"registryEntryID", "unsignedLongLongValue"}];

  return [(UARPServiceUpdaterMatchedIOKitRule *)self initWithIdentifier:v5 registryEntryID:v6];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_identifier forKey:@"identifier"];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_registryEntryID];

  [coder encodeObject:v5 forKey:@"registryEntryID"];
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
      v5 = [(NSString *)self->_identifier isEqual:*(equal + 1)];
      if (v5)
      {
        LOBYTE(v5) = self->_registryEntryID == *(equal + 2);
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