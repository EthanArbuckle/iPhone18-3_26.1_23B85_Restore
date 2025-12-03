@interface PKAuxiliaryCapabilityFetchBarcodeRequest
- (id)_dataToSign;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKAuxiliaryCapabilityFetchBarcodeRequest

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v25[7] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  informationCopy = information;
  lCopy = l;
  pass = [(PKAuxiliaryCapabilityWebServiceRequest *)self pass];
  passTypeIdentifier = [pass passTypeIdentifier];
  v25[3] = passTypeIdentifier;
  serialNumber = [pass serialNumber];
  v25[4] = serialNumber;
  v25[5] = @"barcodes";
  v25[6] = @"fetchBarcodes";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:7];
  v15 = [(PKAuxiliaryCapabilityWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v14 queryParameters:0 appleAccountInformation:informationCopy];

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = v16;
  v18 = 0;
  fetchReason = self->_fetchReason;
  if (fetchReason <= 3)
  {
    v18 = off_1E79CC790[fetchReason];
  }

  [v16 setObject:self->_dpanIdentifier forKey:@"dpanIdentifier"];
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:self->_barcodeCount];
  [v17 setObject:v20 forKey:@"barcodeCount"];

  lastUsedBarcodeIdentifier = self->_lastUsedBarcodeIdentifier;
  if (lastUsedBarcodeIdentifier)
  {
    [v17 setObject:lastUsedBarcodeIdentifier forKey:@"lastUsedBarcodeIdentifier"];
  }

  v22 = [(NSArray *)self->_encryptionCertificateChain pk_arrayByApplyingBlock:&__block_literal_global_187_0];
  [v17 setObject:v22 forKey:@"encryptionCertificateChain"];
  [v17 setObject:v18 forKey:@"fetchReason"];
  v23 = [objc_opt_class() _HTTPBodyWithDictionary:v17];
  [v15 setHTTPBody:v23];

  [v15 setHTTPMethod:@"POST"];
  [v15 setValue:v18 forHTTPHeaderField:@"X-Apple-Barcode-Fetch-Reason"];
  PKUpdateURLRequestWithSignatureDataAndInfo(v15, self->_signatureData, self->_signatureInfo);

  return v15;
}

- (id)_dataToSign
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v4 = [(NSString *)self->_dpanIdentifier dataUsingEncoding:4];
  [v3 appendData:v4];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", self->_barcodeCount];
  v6 = [v5 dataUsingEncoding:4];
  [v3 appendData:v6];

  sHA256Hash = [v3 SHA256Hash];

  return sHA256Hash;
}

@end