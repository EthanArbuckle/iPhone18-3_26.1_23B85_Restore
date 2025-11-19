@interface PKBarcodeEventMetadataRequest
- (PKBarcodeEventMetadataRequest)initWithBarcodeIdentifier:(id)a3 deviceAccountIdentifier:(id)a4;
- (PKBarcodeEventMetadataRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKBarcodeEventMetadataRequest

- (PKBarcodeEventMetadataRequest)initWithBarcodeIdentifier:(id)a3 deviceAccountIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKBarcodeEventMetadataRequest;
  v9 = [(PKBarcodeEventMetadataRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lastUsedBarcodeIdentifier, a3);
    objc_storeStrong(&v10->_deviceAccountIdentifier, a4);
  }

  return v10;
}

- (PKBarcodeEventMetadataRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKBarcodeEventMetadataRequest;
  v5 = [(PKBarcodeEventMetadataRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"barcodeIdentifier"];
    lastUsedBarcodeIdentifier = v5->_lastUsedBarcodeIdentifier;
    v5->_lastUsedBarcodeIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceAccountIdentifier"];
    deviceAccountIdentifier = v5->_deviceAccountIdentifier;
    v5->_deviceAccountIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  lastUsedBarcodeIdentifier = self->_lastUsedBarcodeIdentifier;
  v5 = a3;
  [v5 encodeObject:lastUsedBarcodeIdentifier forKey:@"barcodeIdentifier"];
  [v5 encodeObject:self->_deviceAccountIdentifier forKey:@"deviceAccountIdentifier"];
}

@end