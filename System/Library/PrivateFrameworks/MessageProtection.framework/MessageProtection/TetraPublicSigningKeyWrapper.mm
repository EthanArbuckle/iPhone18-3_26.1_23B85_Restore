@interface TetraPublicSigningKeyWrapper
- (BOOL)verifyTetraMessageSignature:(id)a3 formatter:(id)a4;
- (BOOL)verifyTetraRegistrationSignature:(id)a3 formatter:(id)a4;
- (TetraPublicSigningKeyWrapper)initWithCompactRepresentation:(id)a3;
- (TetraPublicSigningKeyWrapper)initWithSigningPublicKey:(id)a3;
- (id)compactRepresentation;
- (id)lookupIdentifier;
@end

@implementation TetraPublicSigningKeyWrapper

- (id)lookupIdentifier
{
  v2 = [(PublicKey *)self->_signingKey dataRepresentation];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

- (id)compactRepresentation
{
  v2 = [(PublicKey *)self->_signingKey key];
  v3 = [v2 dataRepresentation];

  return v3;
}

- (TetraPublicSigningKeyWrapper)initWithCompactRepresentation:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TetraPublicSigningKeyWrapper;
  v5 = [(TetraPublicSigningKeyWrapper *)&v12 init];
  if (!v5)
  {
    goto LABEL_3;
  }

  v11 = 0;
  v6 = [[SigningPublicKey alloc] initWithData:v4 error:&v11];
  v7 = v11;
  signingKey = v5->_signingKey;
  v5->_signingKey = v6;

  v9 = v5->_signingKey;
  if (v9)
  {
LABEL_3:
    v9 = v5;
  }

  return v9;
}

- (TetraPublicSigningKeyWrapper)initWithSigningPublicKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TetraPublicSigningKeyWrapper;
  v6 = [(TetraPublicSigningKeyWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signingKey, a3);
  }

  return v7;
}

- (BOOL)verifyTetraRegistrationSignature:(id)a3 formatter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TetraPublicSigningKeyWrapper *)self signingKey];
  v9 = [v8 verifySignature:v7 formatter:v6];

  return v9;
}

- (BOOL)verifyTetraMessageSignature:(id)a3 formatter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TetraPublicSigningKeyWrapper *)self signingKey];
  v9 = [v8 verifySignature:v7 formatter:v6];

  return v9;
}

@end