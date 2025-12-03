@interface PKIdentityProvisioningSupplementalData
+ (id)createWithData:(id)data;
- (PKIdentityProvisioningSupplementalData)init;
- (PKIdentityProvisioningSupplementalData)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKIdentityProvisioningSupplementalData

- (PKIdentityProvisioningSupplementalData)init
{
  v3.receiver = self;
  v3.super_class = PKIdentityProvisioningSupplementalData;
  return [(PKIdentityProvisioningSupplementalData *)&v3 init];
}

+ (id)createWithData:(id)data
{
  v3 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:0];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  passTypeIdentifier = self->_passTypeIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:passTypeIdentifier forKey:@"passTypeIdentifier"];
  [coderCopy encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [coderCopy encodeObject:self->_accountKeyIdentifier forKey:@"accountKeyIdentifier"];
}

- (PKIdentityProvisioningSupplementalData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKIdentityProvisioningSupplementalData;
  v5 = [(PKIdentityProvisioningSupplementalData *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyIdentifier"];
    accountKeyIdentifier = v5->_accountKeyIdentifier;
    v5->_accountKeyIdentifier = v10;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"passTypeIdentifier: '%@'; ", self->_passTypeIdentifier];
  [v6 appendFormat:@"passSerialNumber: '%@'; ", self->_passSerialNumber];
  [v6 appendFormat:@"accountKeyIdentifier: '%@'; ", self->_accountKeyIdentifier];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

@end