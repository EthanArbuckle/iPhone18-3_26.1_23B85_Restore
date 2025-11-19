@interface PKPaymentIdentityCredential
- (PKPaymentIdentityCredential)initWithCoder:(id)a3;
- (PKPaymentIdentityCredential)initWithShareablePassMetadata:(id)a3 isoCredentialIdentifier:(id)a4;
- (id)paymentApplications;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentIdentityCredential

- (PKPaymentIdentityCredential)initWithShareablePassMetadata:(id)a3 isoCredentialIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPaymentIdentityCredential;
  v9 = [(PKPaymentCredential *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_shareableMetadata, a3);
    objc_storeStrong(&v10->_isoCredentialIdentifier, a4);
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

- (PKPaymentIdentityCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKPaymentIdentityCredential;
  v5 = [(PKPaymentCredential *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shareableMetadata"];
    shareableMetadata = v5->_shareableMetadata;
    v5->_shareableMetadata = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isoCredentialIdentifier"];
    isoCredentialIdentifier = v5->_isoCredentialIdentifier;
    v5->_isoCredentialIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyIdentifier"];
    accountKeyIdentifier = v5->_accountKeyIdentifier;
    v5->_accountKeyIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attestations"];
    attestations = v5->_attestations;
    v5->_attestations = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentIdentityCredential;
  v4 = a3;
  [(PKPaymentCredential *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_shareableMetadata forKey:{@"shareableMetadata", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_passTypeIdentifier forKey:@"passTypeIdentifier"];
  [v4 encodeObject:self->_isoCredentialIdentifier forKey:@"isoCredentialIdentifier"];
  [v4 encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [v4 encodeObject:self->_accountKeyIdentifier forKey:@"accountKeyIdentifier"];
  [v4 encodeObject:self->_attestations forKey:@"attestations"];
}

@end