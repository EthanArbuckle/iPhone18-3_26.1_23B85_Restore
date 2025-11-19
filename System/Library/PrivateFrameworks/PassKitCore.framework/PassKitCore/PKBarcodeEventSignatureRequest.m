@interface PKBarcodeEventSignatureRequest
- (PKBarcodeEventSignatureRequest)initWithCoder:(id)a3;
- (PKBarcodeEventSignatureRequest)initWithPaymentTransaction:(id)a3 deviceAccountIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKBarcodeEventSignatureRequest

- (PKBarcodeEventSignatureRequest)initWithPaymentTransaction:(id)a3 deviceAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = PKBarcodeEventSignatureRequest;
  v8 = [(PKBarcodeEventSignatureRequest *)&v31 init];
  if (v8)
  {
    v9 = [v6 amount];
    amount = v8->_amount;
    v8->_amount = v9;

    v11 = [v6 serviceIdentifier];
    transactionIdentifier = v8->_transactionIdentifier;
    v8->_transactionIdentifier = v11;

    v13 = [v6 barcodeIdentifier];
    barcodeIdentifier = v8->_barcodeIdentifier;
    v8->_barcodeIdentifier = v13;

    v15 = [v6 currencyCode];
    currencyCode = v8->_currencyCode;
    v8->_currencyCode = v15;

    v17 = [v6 merchant];
    v18 = [v17 name];
    merchantName = v8->_merchantName;
    v8->_merchantName = v18;

    v20 = [v6 merchant];
    v21 = [v20 rawName];
    rawMerchantName = v8->_rawMerchantName;
    v8->_rawMerchantName = v21;

    v23 = [v6 transactionDate];
    transactionDate = v8->_transactionDate;
    v8->_transactionDate = v23;

    v25 = PKPaymentTransactionStatusToString([v6 transactionStatus]);
    transactionStatus = v8->_transactionStatus;
    v8->_transactionStatus = v25;

    objc_storeStrong(&v8->_deviceAccountIdentifier, a4);
    v27 = [v6 authenticationContext];
    v28 = [v27 partialSignature];
    partialSignature = v8->_partialSignature;
    v8->_partialSignature = v28;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  v5 = a3;
  [v5 encodeObject:amount forKey:@"amount"];
  [v5 encodeObject:self->_transactionIdentifier forKey:@"transactionIdentifier"];
  [v5 encodeObject:self->_barcodeIdentifier forKey:@"barcodeIdentifier"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_merchantName forKey:@"merchantName"];
  [v5 encodeObject:self->_rawMerchantName forKey:@"rawMerchantName"];
  [v5 encodeObject:self->_transactionDate forKey:@"transactionDate"];
  [v5 encodeObject:self->_transactionStatus forKey:@"transactionStatus"];
  [v5 encodeObject:self->_deviceAccountIdentifier forKey:@"deviceAccountIdentifier"];
  [v5 encodeObject:self->_partialSignature forKey:@"partialSignature"];
}

- (PKBarcodeEventSignatureRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PKBarcodeEventSignatureRequest;
  v5 = [(PKBarcodeEventSignatureRequest *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"barcodeIdentifier"];
    barcodeIdentifier = v5->_barcodeIdentifier;
    v5->_barcodeIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantName"];
    merchantName = v5->_merchantName;
    v5->_merchantName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawMerchantName"];
    rawMerchantName = v5->_rawMerchantName;
    v5->_rawMerchantName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionStatus"];
    transactionStatus = v5->_transactionStatus;
    v5->_transactionStatus = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceAccountIdentifier"];
    deviceAccountIdentifier = v5->_deviceAccountIdentifier;
    v5->_deviceAccountIdentifier = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partialSignature"];
    partialSignature = v5->_partialSignature;
    v5->_partialSignature = v24;
  }

  return v5;
}

@end