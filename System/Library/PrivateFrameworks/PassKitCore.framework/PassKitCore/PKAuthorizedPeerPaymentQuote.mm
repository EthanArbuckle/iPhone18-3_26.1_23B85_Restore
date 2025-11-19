@interface PKAuthorizedPeerPaymentQuote
- (PKAuthorizedPeerPaymentQuote)initWithCoder:(id)a3;
- (PKAuthorizedPeerPaymentQuote)initWithQuote:(id)a3 transactionData:(id)a4 certificates:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAuthorizedPeerPaymentQuote

- (PKAuthorizedPeerPaymentQuote)initWithQuote:(id)a3 transactionData:(id)a4 certificates:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = PKAuthorizedPeerPaymentQuote;
  v12 = [(PKAuthorizedPeerPaymentQuote *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_peerPaymentQuote, a3);
    v14 = [v10 copy];
    transactionData = v13->_transactionData;
    v13->_transactionData = v14;

    v16 = [v11 copy];
    certificates = v13->_certificates;
    v13->_certificates = v16;
  }

  return v13;
}

- (PKAuthorizedPeerPaymentQuote)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKAuthorizedPeerPaymentQuote;
  v5 = [(PKAuthorizedPeerPaymentQuote *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentQuote"];
    peerPaymentQuote = v5->_peerPaymentQuote;
    v5->_peerPaymentQuote = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v8;

    v10 = [v4 decodePropertyListForKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v12;

    v5->_paymentMethodType = [v4 decodeIntegerForKey:@"paymentMethodType"];
    v5->_senderAddressType = [v4 decodeIntegerForKey:@"senderAddressType"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderAddress"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptedRecipientData"];
    encryptedRecipientData = v5->_encryptedRecipientData;
    v5->_encryptedRecipientData = v16;

    v5->_encryptionScheme = [v4 decodeIntegerForKey:@"encryptionScheme"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyHash"];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKey"];
    ephemeralPublicKey = v5->_ephemeralPublicKey;
    v5->_ephemeralPublicKey = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  peerPaymentQuote = self->_peerPaymentQuote;
  v5 = a3;
  [v5 encodeObject:peerPaymentQuote forKey:@"peerPaymentQuote"];
  [v5 encodeObject:self->_transactionData forKey:@"transactionData"];
  [v5 encodeObject:self->_certificates forKey:@"certificates"];
  [v5 encodeObject:self->_contact forKey:@"contact"];
  [v5 encodeInteger:self->_paymentMethodType forKey:@"paymentMethodType"];
  [v5 encodeInteger:self->_senderAddressType forKey:@"senderAddressType"];
  [v5 encodeObject:self->_senderAddress forKey:@"senderAddress"];
  [v5 encodeObject:self->_encryptedRecipientData forKey:@"encryptedRecipientData"];
  [v5 encodeInteger:self->_encryptionScheme forKey:@"encryptionScheme"];
  [v5 encodeObject:self->_publicKeyHash forKey:@"publicKeyHash"];
  [v5 encodeObject:self->_ephemeralPublicKey forKey:@"ephemeralPublicKey"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_peerPaymentQuote];
  [v3 safelyAddObject:self->_transactionData];
  [v3 safelyAddObject:self->_certificates];
  [v3 safelyAddObject:self->_contact];
  [v3 safelyAddObject:self->_senderAddress];
  [v3 safelyAddObject:self->_encryptedRecipientData];
  [v3 safelyAddObject:self->_publicKeyHash];
  [v3 safelyAddObject:self->_ephemeralPublicKey];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_paymentMethodType - v4 + 32 * v4;
  v6 = self->_senderAddressType - v5 + 32 * v5;
  v7 = self->_encryptionScheme - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"peerPaymentQuote: '%@'; ", self->_peerPaymentQuote];
  [v3 appendFormat:@"transactionData: '%@'; ", self->_transactionData];
  [v3 appendFormat:@"certificates: '%@'; ", self->_certificates];
  [v3 appendFormat:@"contact: '%@'; ", self->_contact];
  v4 = PKPaymentMethodTypeToString(self->_paymentMethodType);
  [v3 appendFormat:@"paymentMethodType: '%@'; ", v4];

  v5 = PKPeerPaymentContactAddressTypeToString(self->_senderAddressType);
  [v3 appendFormat:@"senderAddressType: '%@'; ", v5];

  [v3 appendFormat:@"senderAddress: '%@'; ", self->_senderAddress];
  [v3 appendFormat:@"encryptedRecipientData: '%@'; ", self->_encryptedRecipientData];
  v6 = PKPrivacyEncryptionSchemeToString(self->_encryptionScheme);
  [v3 appendFormat:@"encryptionScheme: '%@'; ", v6];

  [v3 appendFormat:@"publicKeyHash: '%@'; ", self->_publicKeyHash];
  [v3 appendFormat:@"ephemeralPublicKey: '%@'; ", self->_ephemeralPublicKey];
  [v3 appendFormat:@">"];

  return v3;
}

@end