@interface PKAppletSubcredentialAccountAttestationRequest
- (PKAppletSubcredentialAccountAttestationRequest)initWithCoder:(id)coder;
- (PKAppletSubcredentialAccountAttestationRequest)initWithRequestData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAppletSubcredentialAccountAttestationRequest

- (PKAppletSubcredentialAccountAttestationRequest)initWithRequestData:(id)data
{
  v20[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v5 = [(PKAppletSubcredentialAccountAttestationRequest *)self init];
    if (v5)
    {
      subCaAttestation = [dataCopy subCaAttestation];
      subCASEResidencyAttestation = v5->_subCASEResidencyAttestation;
      v5->_subCASEResidencyAttestation = subCaAttestation;

      v20[0] = 0;
      v20[1] = 0;
      sharingSessionIdentifier = [dataCopy sharingSessionIdentifier];
      [sharingSessionIdentifier getUUIDBytes:v20];

      v9 = [MEMORY[0x1E695DEF0] dataWithBytes:v20 length:16];
      sHA256Hash = [v9 SHA256Hash];
      sharingTokenHash = v5->_sharingTokenHash;
      v5->_sharingTokenHash = sHA256Hash;

      v12 = [PKSecureElementCertificateSet alloc];
      rsaCertData = [dataCopy rsaCertData];
      hexEncoding = [rsaCertData hexEncoding];
      casd = [dataCopy casd];
      hexEncoding2 = [casd hexEncoding];
      v17 = [(PKSecureElementCertificateSet *)v12 initWithRSACertificate:hexEncoding ECDSACertificate:hexEncoding2];
      [(PKAccountAttestationRequest *)v5 setCasdCertificate:v17];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKAppletSubcredentialAccountAttestationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKAppletSubcredentialAccountAttestationRequest;
  v5 = [(PKAccountAttestationRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subCASEResidencyAttestation"];
    subCASEResidencyAttestation = v5->_subCASEResidencyAttestation;
    v5->_subCASEResidencyAttestation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingTokenHash"];
    sharingTokenHash = v5->_sharingTokenHash;
    v5->_sharingTokenHash = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKAppletSubcredentialAccountAttestationRequest;
  coderCopy = coder;
  [(PKAccountAttestationRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_subCASEResidencyAttestation forKey:{@"subCASEResidencyAttestation", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_sharingTokenHash forKey:@"sharingTokenHash"];
}

@end