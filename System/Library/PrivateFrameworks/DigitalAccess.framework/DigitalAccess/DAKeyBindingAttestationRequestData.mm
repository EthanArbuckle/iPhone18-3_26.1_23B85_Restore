@interface DAKeyBindingAttestationRequestData
- (DAKeyBindingAttestationRequestData)initWithCoder:(id)coder;
- (DAKeyBindingAttestationRequestData)initWithSharingSessionIdentifier:(id)identifier subCaAttestation:(id)attestation casd:(id)casd rsaCertData:(id)data;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAKeyBindingAttestationRequestData

- (DAKeyBindingAttestationRequestData)initWithSharingSessionIdentifier:(id)identifier subCaAttestation:(id)attestation casd:(id)casd rsaCertData:(id)data
{
  identifierCopy = identifier;
  attestationCopy = attestation;
  casdCopy = casd;
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = DAKeyBindingAttestationRequestData;
  v15 = [(DAKeyBindingAttestationRequestData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sharingSessionIdentifier, identifier);
    objc_storeStrong(&v16->_subCaAttestation, attestation);
    objc_storeStrong(&v16->_casd, casd);
    objc_storeStrong(&v16->_rsaCertData, data);
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sharingSessionIdentifier = [(DAKeyBindingAttestationRequestData *)self sharingSessionIdentifier];
  [coderCopy encodeObject:sharingSessionIdentifier forKey:@"sharingSessionIdentifier"];

  subCaAttestation = [(DAKeyBindingAttestationRequestData *)self subCaAttestation];
  [coderCopy encodeObject:subCaAttestation forKey:@"subCaAttestation"];

  casd = [(DAKeyBindingAttestationRequestData *)self casd];
  [coderCopy encodeObject:casd forKey:@"casd"];

  rsaCertData = [(DAKeyBindingAttestationRequestData *)self rsaCertData];
  [coderCopy encodeObject:rsaCertData forKey:@"rsaCertData"];
}

- (DAKeyBindingAttestationRequestData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DAKeyBindingAttestationRequestData;
  v5 = [(DAKeyBindingAttestationRequestData *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionIdentifier"];
    sharingSessionIdentifier = v5->_sharingSessionIdentifier;
    v5->_sharingSessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subCaAttestation"];
    subCaAttestation = v5->_subCaAttestation;
    v5->_subCaAttestation = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"casd"];
    casd = v5->_casd;
    v5->_casd = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rsaCertData"];
    rsaCertData = v5->_rsaCertData;
    v5->_rsaCertData = v12;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sharing Session ID    : %@\n", self->_sharingSessionIdentifier];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"SubCA attestation     : %@\n", self->_subCaAttestation];
  [string appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"CASD                  : %@\n", self->_casd];
  [string appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"RSA cert data         : %@\n", self->_rsaCertData];
  [string appendString:v7];

  return string;
}

@end