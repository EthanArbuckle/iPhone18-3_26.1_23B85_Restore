@interface PKPaymentTapToProvisionData
- (PKPaymentTapToProvisionData)initWithCoder:(id)a3;
- (PKPaymentTapToProvisionData)initWithEncryptedData:(id)a3 casdCertificate:(id)a4 transactionID:(id)a5;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentTapToProvisionData

- (PKPaymentTapToProvisionData)initWithEncryptedData:(id)a3 casdCertificate:(id)a4 transactionID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKPaymentTapToProvisionData;
  v12 = [(PKPaymentTapToProvisionData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_encryptedData, a3);
    objc_storeStrong(&v13->_casdCertificate, a4);
    objc_storeStrong(&v13->_transactionID, a5);
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

- (PKPaymentTapToProvisionData)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentTapToProvisionData;
  v5 = [(PKPaymentTapToProvisionData *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptedData"];
    encryptedData = v5->_encryptedData;
    v5->_encryptedData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"casdCertificate"];
    casdCertificate = v5->_casdCertificate;
    v5->_casdCertificate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionID"];
    transactionID = v5->_transactionID;
    v5->_transactionID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  encryptedData = self->_encryptedData;
  v5 = a3;
  [v5 encodeObject:encryptedData forKey:@"encryptedData"];
  [v5 encodeObject:self->_casdCertificate forKey:@"casdCertificate"];
  [v5 encodeObject:self->_transactionID forKey:@"transactionID"];
}

@end