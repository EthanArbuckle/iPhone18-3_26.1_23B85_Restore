@interface IDSKTRegistrationStatus
- (IDSKTRegistrationStatus)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSKTRegistrationStatus

- (void)encodeWithCoder:(id)a3
{
  unregisteredKTData = self->_unregisteredKTData;
  v5 = a3;
  [v5 encodeObject:unregisteredKTData forKey:@"kUnregisteredKTData"];
  [v5 encodeObject:self->_registeredKTData forKey:@"kRegisteredKTData"];
}

- (IDSKTRegistrationStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IDSKTRegistrationStatus;
  v5 = [(IDSKTRegistrationStatus *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kUnregisteredKTData"];
    unregisteredKTData = v5->_unregisteredKTData;
    v5->_unregisteredKTData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRegisteredKTData"];
    registeredKTData = v5->_registeredKTData;
    v5->_registeredKTData = v8;
  }

  return v5;
}

@end