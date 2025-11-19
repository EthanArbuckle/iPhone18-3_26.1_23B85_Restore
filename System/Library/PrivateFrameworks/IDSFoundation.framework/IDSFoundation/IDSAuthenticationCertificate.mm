@interface IDSAuthenticationCertificate
- (IDSAuthenticationCertificate)initWithBackingCertificate:(id)a3;
- (IDSAuthenticationCertificate)initWithDataRepresentation:(id)a3;
- (NSData)dataRepresentation;
- (id)description;
@end

@implementation IDSAuthenticationCertificate

- (NSData)dataRepresentation
{
  v2 = [(IDSAuthenticationCertificate *)self backingCertificate];
  v3 = [v2 dataRepresentation];

  return v3;
}

- (IDSAuthenticationCertificate)initWithDataRepresentation:(id)a3
{
  v4 = a3;
  v5 = [[IDSServerCertificate alloc] initWithDataRepresentation:v4];

  v6 = [(IDSAuthenticationCertificate *)self initWithBackingCertificate:v5];
  return v6;
}

- (IDSAuthenticationCertificate)initWithBackingCertificate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSAuthenticationCertificate;
  v6 = [(IDSAuthenticationCertificate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingCertificate, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSAuthenticationCertificate *)self backingCertificate];
  v6 = [v3 stringWithFormat:@"<%@: %p cert: %@>", v4, self, v5];

  return v6;
}

@end