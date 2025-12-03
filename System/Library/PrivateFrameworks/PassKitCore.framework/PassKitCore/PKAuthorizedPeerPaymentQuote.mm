@interface PKAuthorizedPeerPaymentQuote
- (PKAuthorizedPeerPaymentQuote)initWithCoder:(id)coder;
- (PKAuthorizedPeerPaymentQuote)initWithQuote:(id)quote transactionData:(id)data certificates:(id)certificates;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAuthorizedPeerPaymentQuote

- (PKAuthorizedPeerPaymentQuote)initWithQuote:(id)quote transactionData:(id)data certificates:(id)certificates
{
  quoteCopy = quote;
  dataCopy = data;
  certificatesCopy = certificates;
  v19.receiver = self;
  v19.super_class = PKAuthorizedPeerPaymentQuote;
  v12 = [(PKAuthorizedPeerPaymentQuote *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_peerPaymentQuote, quote);
    v14 = [dataCopy copy];
    transactionData = v13->_transactionData;
    v13->_transactionData = v14;

    v16 = [certificatesCopy copy];
    certificates = v13->_certificates;
    v13->_certificates = v16;
  }

  return v13;
}

- (PKAuthorizedPeerPaymentQuote)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PKAuthorizedPeerPaymentQuote;
  v5 = [(PKAuthorizedPeerPaymentQuote *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentQuote"];
    peerPaymentQuote = v5->_peerPaymentQuote;
    v5->_peerPaymentQuote = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v8;

    v10 = [coderCopy decodePropertyListForKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v12;

    v5->_paymentMethodType = [coderCopy decodeIntegerForKey:@"paymentMethodType"];
    v5->_senderAddressType = [coderCopy decodeIntegerForKey:@"senderAddressType"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderAddress"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptedRecipientData"];
    encryptedRecipientData = v5->_encryptedRecipientData;
    v5->_encryptedRecipientData = v16;

    v5->_encryptionScheme = [coderCopy decodeIntegerForKey:@"encryptionScheme"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyHash"];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKey"];
    ephemeralPublicKey = v5->_ephemeralPublicKey;
    v5->_ephemeralPublicKey = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  peerPaymentQuote = self->_peerPaymentQuote;
  coderCopy = coder;
  [coderCopy encodeObject:peerPaymentQuote forKey:@"peerPaymentQuote"];
  [coderCopy encodeObject:self->_transactionData forKey:@"transactionData"];
  [coderCopy encodeObject:self->_certificates forKey:@"certificates"];
  [coderCopy encodeObject:self->_contact forKey:@"contact"];
  [coderCopy encodeInteger:self->_paymentMethodType forKey:@"paymentMethodType"];
  [coderCopy encodeInteger:self->_senderAddressType forKey:@"senderAddressType"];
  [coderCopy encodeObject:self->_senderAddress forKey:@"senderAddress"];
  [coderCopy encodeObject:self->_encryptedRecipientData forKey:@"encryptedRecipientData"];
  [coderCopy encodeInteger:self->_encryptionScheme forKey:@"encryptionScheme"];
  [coderCopy encodeObject:self->_publicKeyHash forKey:@"publicKeyHash"];
  [coderCopy encodeObject:self->_ephemeralPublicKey forKey:@"ephemeralPublicKey"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_peerPaymentQuote];
  [array safelyAddObject:self->_transactionData];
  [array safelyAddObject:self->_certificates];
  [array safelyAddObject:self->_contact];
  [array safelyAddObject:self->_senderAddress];
  [array safelyAddObject:self->_encryptedRecipientData];
  [array safelyAddObject:self->_publicKeyHash];
  [array safelyAddObject:self->_ephemeralPublicKey];
  v4 = PKCombinedHash(17, array);
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