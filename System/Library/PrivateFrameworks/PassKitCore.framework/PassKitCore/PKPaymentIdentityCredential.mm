@interface PKPaymentIdentityCredential
- (PKPaymentIdentityCredential)initWithCoder:(id)coder;
- (PKPaymentIdentityCredential)initWithShareablePassMetadata:(id)metadata isoCredentialIdentifier:(id)identifier;
- (id)paymentApplications;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentIdentityCredential

- (PKPaymentIdentityCredential)initWithShareablePassMetadata:(id)metadata isoCredentialIdentifier:(id)identifier
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = PKPaymentIdentityCredential;
  v9 = [(PKPaymentCredential *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_shareableMetadata, metadata);
    objc_storeStrong(&v10->_isoCredentialIdentifier, identifier);
    [(PKPaymentCredential *)v10 setCardType:4];
  }

  return v10;
}

- (id)paymentApplications
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = +[PKProvisioningSEStorageSnapshot appletTypePurpleTrustAirAccess];
  v3 = [[PKProvisioningPaymentApplication alloc] initWithAppletTypeIdentifier:v2 paymentType:1002];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (PKPaymentIdentityCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKPaymentIdentityCredential;
  v5 = [(PKPaymentCredential *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareableMetadata"];
    shareableMetadata = v5->_shareableMetadata;
    v5->_shareableMetadata = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isoCredentialIdentifier"];
    isoCredentialIdentifier = v5->_isoCredentialIdentifier;
    v5->_isoCredentialIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyIdentifier"];
    accountKeyIdentifier = v5->_accountKeyIdentifier;
    v5->_accountKeyIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attestations"];
    attestations = v5->_attestations;
    v5->_attestations = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentIdentityCredential;
  coderCopy = coder;
  [(PKPaymentCredential *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_shareableMetadata forKey:{@"shareableMetadata", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_passTypeIdentifier forKey:@"passTypeIdentifier"];
  [coderCopy encodeObject:self->_isoCredentialIdentifier forKey:@"isoCredentialIdentifier"];
  [coderCopy encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [coderCopy encodeObject:self->_accountKeyIdentifier forKey:@"accountKeyIdentifier"];
  [coderCopy encodeObject:self->_attestations forKey:@"attestations"];
}

@end