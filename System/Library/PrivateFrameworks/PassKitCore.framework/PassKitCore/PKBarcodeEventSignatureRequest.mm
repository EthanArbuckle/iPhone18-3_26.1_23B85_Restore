@interface PKBarcodeEventSignatureRequest
- (PKBarcodeEventSignatureRequest)initWithCoder:(id)coder;
- (PKBarcodeEventSignatureRequest)initWithPaymentTransaction:(id)transaction deviceAccountIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKBarcodeEventSignatureRequest

- (PKBarcodeEventSignatureRequest)initWithPaymentTransaction:(id)transaction deviceAccountIdentifier:(id)identifier
{
  transactionCopy = transaction;
  identifierCopy = identifier;
  v31.receiver = self;
  v31.super_class = PKBarcodeEventSignatureRequest;
  v8 = [(PKBarcodeEventSignatureRequest *)&v31 init];
  if (v8)
  {
    amount = [transactionCopy amount];
    amount = v8->_amount;
    v8->_amount = amount;

    serviceIdentifier = [transactionCopy serviceIdentifier];
    transactionIdentifier = v8->_transactionIdentifier;
    v8->_transactionIdentifier = serviceIdentifier;

    barcodeIdentifier = [transactionCopy barcodeIdentifier];
    barcodeIdentifier = v8->_barcodeIdentifier;
    v8->_barcodeIdentifier = barcodeIdentifier;

    currencyCode = [transactionCopy currencyCode];
    currencyCode = v8->_currencyCode;
    v8->_currencyCode = currencyCode;

    merchant = [transactionCopy merchant];
    name = [merchant name];
    merchantName = v8->_merchantName;
    v8->_merchantName = name;

    merchant2 = [transactionCopy merchant];
    rawName = [merchant2 rawName];
    rawMerchantName = v8->_rawMerchantName;
    v8->_rawMerchantName = rawName;

    transactionDate = [transactionCopy transactionDate];
    transactionDate = v8->_transactionDate;
    v8->_transactionDate = transactionDate;

    v25 = PKPaymentTransactionStatusToString([transactionCopy transactionStatus]);
    transactionStatus = v8->_transactionStatus;
    v8->_transactionStatus = v25;

    objc_storeStrong(&v8->_deviceAccountIdentifier, identifier);
    authenticationContext = [transactionCopy authenticationContext];
    partialSignature = [authenticationContext partialSignature];
    partialSignature = v8->_partialSignature;
    v8->_partialSignature = partialSignature;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  amount = self->_amount;
  coderCopy = coder;
  [coderCopy encodeObject:amount forKey:@"amount"];
  [coderCopy encodeObject:self->_transactionIdentifier forKey:@"transactionIdentifier"];
  [coderCopy encodeObject:self->_barcodeIdentifier forKey:@"barcodeIdentifier"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_merchantName forKey:@"merchantName"];
  [coderCopy encodeObject:self->_rawMerchantName forKey:@"rawMerchantName"];
  [coderCopy encodeObject:self->_transactionDate forKey:@"transactionDate"];
  [coderCopy encodeObject:self->_transactionStatus forKey:@"transactionStatus"];
  [coderCopy encodeObject:self->_deviceAccountIdentifier forKey:@"deviceAccountIdentifier"];
  [coderCopy encodeObject:self->_partialSignature forKey:@"partialSignature"];
}

- (PKBarcodeEventSignatureRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = PKBarcodeEventSignatureRequest;
  v5 = [(PKBarcodeEventSignatureRequest *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"barcodeIdentifier"];
    barcodeIdentifier = v5->_barcodeIdentifier;
    v5->_barcodeIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantName"];
    merchantName = v5->_merchantName;
    v5->_merchantName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawMerchantName"];
    rawMerchantName = v5->_rawMerchantName;
    v5->_rawMerchantName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionStatus"];
    transactionStatus = v5->_transactionStatus;
    v5->_transactionStatus = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceAccountIdentifier"];
    deviceAccountIdentifier = v5->_deviceAccountIdentifier;
    v5->_deviceAccountIdentifier = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partialSignature"];
    partialSignature = v5->_partialSignature;
    v5->_partialSignature = v24;
  }

  return v5;
}

@end