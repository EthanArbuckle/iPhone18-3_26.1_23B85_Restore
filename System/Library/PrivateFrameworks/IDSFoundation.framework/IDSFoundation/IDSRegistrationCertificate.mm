@interface IDSRegistrationCertificate
- (IDSRegistrationCertificate)initWithBackingCertificate:(id)a3;
- (IDSRegistrationCertificate)initWithDataRepresentation:(id)a3;
- (NSData)dataRepresentation;
- (id)description;
@end

@implementation IDSRegistrationCertificate

- (IDSRegistrationCertificate)initWithDataRepresentation:(id)a3
{
  v4 = a3;
  v5 = [[IDSServerCertificate alloc] initWithDataRepresentation:v4];

  v6 = [(IDSRegistrationCertificate *)self initWithBackingCertificate:v5];
  return v6;
}

- (IDSRegistrationCertificate)initWithBackingCertificate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSRegistrationCertificate;
  v6 = [(IDSRegistrationCertificate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingCertificate, a3);
  }

  return v7;
}

- (NSData)dataRepresentation
{
  v2 = [(IDSRegistrationCertificate *)self backingCertificate];
  v3 = [v2 dataRepresentation];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSRegistrationCertificate *)self backingCertificate];
  v6 = [v3 stringWithFormat:@"<%@: %p cert: %@>", v4, self, v5];

  return v6;
}

@end