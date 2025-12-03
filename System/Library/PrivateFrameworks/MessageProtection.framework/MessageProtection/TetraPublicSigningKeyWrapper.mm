@interface TetraPublicSigningKeyWrapper
- (BOOL)verifyTetraMessageSignature:(id)signature formatter:(id)formatter;
- (BOOL)verifyTetraRegistrationSignature:(id)signature formatter:(id)formatter;
- (TetraPublicSigningKeyWrapper)initWithCompactRepresentation:(id)representation;
- (TetraPublicSigningKeyWrapper)initWithSigningPublicKey:(id)key;
- (id)compactRepresentation;
- (id)lookupIdentifier;
@end

@implementation TetraPublicSigningKeyWrapper

- (id)lookupIdentifier
{
  dataRepresentation = [(PublicKey *)self->_signingKey dataRepresentation];
  v3 = [dataRepresentation base64EncodedStringWithOptions:0];

  return v3;
}

- (id)compactRepresentation
{
  v2 = [(PublicKey *)self->_signingKey key];
  dataRepresentation = [v2 dataRepresentation];

  return dataRepresentation;
}

- (TetraPublicSigningKeyWrapper)initWithCompactRepresentation:(id)representation
{
  representationCopy = representation;
  v12.receiver = self;
  v12.super_class = TetraPublicSigningKeyWrapper;
  v5 = [(TetraPublicSigningKeyWrapper *)&v12 init];
  if (!v5)
  {
    goto LABEL_3;
  }

  v11 = 0;
  v6 = [[SigningPublicKey alloc] initWithData:representationCopy error:&v11];
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

- (TetraPublicSigningKeyWrapper)initWithSigningPublicKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = TetraPublicSigningKeyWrapper;
  v6 = [(TetraPublicSigningKeyWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signingKey, key);
  }

  return v7;
}

- (BOOL)verifyTetraRegistrationSignature:(id)signature formatter:(id)formatter
{
  formatterCopy = formatter;
  signatureCopy = signature;
  signingKey = [(TetraPublicSigningKeyWrapper *)self signingKey];
  v9 = [signingKey verifySignature:signatureCopy formatter:formatterCopy];

  return v9;
}

- (BOOL)verifyTetraMessageSignature:(id)signature formatter:(id)formatter
{
  formatterCopy = formatter;
  signatureCopy = signature;
  signingKey = [(TetraPublicSigningKeyWrapper *)self signingKey];
  v9 = [signingKey verifySignature:signatureCopy formatter:formatterCopy];

  return v9;
}

@end