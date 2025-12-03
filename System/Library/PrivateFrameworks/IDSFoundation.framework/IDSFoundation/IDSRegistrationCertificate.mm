@interface IDSRegistrationCertificate
- (IDSRegistrationCertificate)initWithBackingCertificate:(id)certificate;
- (IDSRegistrationCertificate)initWithDataRepresentation:(id)representation;
- (NSData)dataRepresentation;
- (id)description;
@end

@implementation IDSRegistrationCertificate

- (IDSRegistrationCertificate)initWithDataRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [[IDSServerCertificate alloc] initWithDataRepresentation:representationCopy];

  v6 = [(IDSRegistrationCertificate *)self initWithBackingCertificate:v5];
  return v6;
}

- (IDSRegistrationCertificate)initWithBackingCertificate:(id)certificate
{
  certificateCopy = certificate;
  v9.receiver = self;
  v9.super_class = IDSRegistrationCertificate;
  v6 = [(IDSRegistrationCertificate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingCertificate, certificate);
  }

  return v7;
}

- (NSData)dataRepresentation
{
  backingCertificate = [(IDSRegistrationCertificate *)self backingCertificate];
  dataRepresentation = [backingCertificate dataRepresentation];

  return dataRepresentation;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  backingCertificate = [(IDSRegistrationCertificate *)self backingCertificate];
  v6 = [v3 stringWithFormat:@"<%@: %p cert: %@>", v4, self, backingCertificate];

  return v6;
}

@end