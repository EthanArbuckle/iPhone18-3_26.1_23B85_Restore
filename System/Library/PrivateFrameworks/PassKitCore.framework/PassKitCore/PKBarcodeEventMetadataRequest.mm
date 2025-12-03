@interface PKBarcodeEventMetadataRequest
- (PKBarcodeEventMetadataRequest)initWithBarcodeIdentifier:(id)identifier deviceAccountIdentifier:(id)accountIdentifier;
- (PKBarcodeEventMetadataRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKBarcodeEventMetadataRequest

- (PKBarcodeEventMetadataRequest)initWithBarcodeIdentifier:(id)identifier deviceAccountIdentifier:(id)accountIdentifier
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  v12.receiver = self;
  v12.super_class = PKBarcodeEventMetadataRequest;
  v9 = [(PKBarcodeEventMetadataRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lastUsedBarcodeIdentifier, identifier);
    objc_storeStrong(&v10->_deviceAccountIdentifier, accountIdentifier);
  }

  return v10;
}

- (PKBarcodeEventMetadataRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKBarcodeEventMetadataRequest;
  v5 = [(PKBarcodeEventMetadataRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"barcodeIdentifier"];
    lastUsedBarcodeIdentifier = v5->_lastUsedBarcodeIdentifier;
    v5->_lastUsedBarcodeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceAccountIdentifier"];
    deviceAccountIdentifier = v5->_deviceAccountIdentifier;
    v5->_deviceAccountIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  lastUsedBarcodeIdentifier = self->_lastUsedBarcodeIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:lastUsedBarcodeIdentifier forKey:@"barcodeIdentifier"];
  [coderCopy encodeObject:self->_deviceAccountIdentifier forKey:@"deviceAccountIdentifier"];
}

@end