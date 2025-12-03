@interface PKPaymentTapToProvisionData
- (PKPaymentTapToProvisionData)initWithCoder:(id)coder;
- (PKPaymentTapToProvisionData)initWithEncryptedData:(id)data casdCertificate:(id)certificate transactionID:(id)d;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentTapToProvisionData

- (PKPaymentTapToProvisionData)initWithEncryptedData:(id)data casdCertificate:(id)certificate transactionID:(id)d
{
  dataCopy = data;
  certificateCopy = certificate;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = PKPaymentTapToProvisionData;
  v12 = [(PKPaymentTapToProvisionData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_encryptedData, data);
    objc_storeStrong(&v13->_casdCertificate, certificate);
    objc_storeStrong(&v13->_transactionID, d);
  }

  return v13;
}

- (id)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"encryptedTapData";
  v3 = [(NSData *)self->_encryptedData base64EncodedStringWithOptions:0];
  v7[1] = @"casdCertificate";
  v8[0] = v3;
  v4 = [(NSData *)self->_casdCertificate base64EncodedStringWithOptions:0];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (PKPaymentTapToProvisionData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPaymentTapToProvisionData;
  v5 = [(PKPaymentTapToProvisionData *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptedData"];
    encryptedData = v5->_encryptedData;
    v5->_encryptedData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"casdCertificate"];
    casdCertificate = v5->_casdCertificate;
    v5->_casdCertificate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionID"];
    transactionID = v5->_transactionID;
    v5->_transactionID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  encryptedData = self->_encryptedData;
  coderCopy = coder;
  [coderCopy encodeObject:encryptedData forKey:@"encryptedData"];
  [coderCopy encodeObject:self->_casdCertificate forKey:@"casdCertificate"];
  [coderCopy encodeObject:self->_transactionID forKey:@"transactionID"];
}

@end