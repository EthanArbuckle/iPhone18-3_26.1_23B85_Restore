@interface IDSAuthenticationCertificate
- (IDSAuthenticationCertificate)initWithBackingCertificate:(id)certificate;
- (IDSAuthenticationCertificate)initWithDataRepresentation:(id)representation;
- (NSData)dataRepresentation;
- (id)description;
@end

@implementation IDSAuthenticationCertificate

- (NSData)dataRepresentation
{
  backingCertificate = [(IDSAuthenticationCertificate *)self backingCertificate];
  dataRepresentation = [backingCertificate dataRepresentation];

  return dataRepresentation;
}

- (IDSAuthenticationCertificate)initWithDataRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [[IDSServerCertificate alloc] initWithDataRepresentation:representationCopy];

  v6 = [(IDSAuthenticationCertificate *)self initWithBackingCertificate:v5];
  return v6;
}

- (IDSAuthenticationCertificate)initWithBackingCertificate:(id)certificate
{
  certificateCopy = certificate;
  v9.receiver = self;
  v9.super_class = IDSAuthenticationCertificate;
  v6 = [(IDSAuthenticationCertificate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingCertificate, certificate);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  backingCertificate = [(IDSAuthenticationCertificate *)self backingCertificate];
  v6 = [v3 stringWithFormat:@"<%@: %p cert: %@>", v4, self, backingCertificate];

  return v6;
}

@end