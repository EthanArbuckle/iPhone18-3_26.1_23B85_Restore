@interface IDSKTRegistrationStatus
- (IDSKTRegistrationStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSKTRegistrationStatus

- (void)encodeWithCoder:(id)coder
{
  unregisteredKTData = self->_unregisteredKTData;
  coderCopy = coder;
  [coderCopy encodeObject:unregisteredKTData forKey:@"kUnregisteredKTData"];
  [coderCopy encodeObject:self->_registeredKTData forKey:@"kRegisteredKTData"];
}

- (IDSKTRegistrationStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = IDSKTRegistrationStatus;
  v5 = [(IDSKTRegistrationStatus *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUnregisteredKTData"];
    unregisteredKTData = v5->_unregisteredKTData;
    v5->_unregisteredKTData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRegisteredKTData"];
    registeredKTData = v5->_registeredKTData;
    v5->_registeredKTData = v8;
  }

  return v5;
}

@end