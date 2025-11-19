@interface DAKeyBindingAttestationRequestData
- (DAKeyBindingAttestationRequestData)initWithCoder:(id)a3;
- (DAKeyBindingAttestationRequestData)initWithSharingSessionIdentifier:(id)a3 subCaAttestation:(id)a4 casd:(id)a5 rsaCertData:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAKeyBindingAttestationRequestData

- (DAKeyBindingAttestationRequestData)initWithSharingSessionIdentifier:(id)a3 subCaAttestation:(id)a4 casd:(id)a5 rsaCertData:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = DAKeyBindingAttestationRequestData;
  v15 = [(DAKeyBindingAttestationRequestData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sharingSessionIdentifier, a3);
    objc_storeStrong(&v16->_subCaAttestation, a4);
    objc_storeStrong(&v16->_casd, a5);
    objc_storeStrong(&v16->_rsaCertData, a6);
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAKeyBindingAttestationRequestData *)self sharingSessionIdentifier];
  [v4 encodeObject:v5 forKey:@"sharingSessionIdentifier"];

  v6 = [(DAKeyBindingAttestationRequestData *)self subCaAttestation];
  [v4 encodeObject:v6 forKey:@"subCaAttestation"];

  v7 = [(DAKeyBindingAttestationRequestData *)self casd];
  [v4 encodeObject:v7 forKey:@"casd"];

  v8 = [(DAKeyBindingAttestationRequestData *)self rsaCertData];
  [v4 encodeObject:v8 forKey:@"rsaCertData"];
}

- (DAKeyBindingAttestationRequestData)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DAKeyBindingAttestationRequestData;
  v5 = [(DAKeyBindingAttestationRequestData *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionIdentifier"];
    sharingSessionIdentifier = v5->_sharingSessionIdentifier;
    v5->_sharingSessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subCaAttestation"];
    subCaAttestation = v5->_subCaAttestation;
    v5->_subCaAttestation = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"casd"];
    casd = v5->_casd;
    v5->_casd = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rsaCertData"];
    rsaCertData = v5->_rsaCertData;
    v5->_rsaCertData = v12;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sharing Session ID    : %@\n", self->_sharingSessionIdentifier];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"SubCA attestation     : %@\n", self->_subCaAttestation];
  [v3 appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"CASD                  : %@\n", self->_casd];
  [v3 appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"RSA cert data         : %@\n", self->_rsaCertData];
  [v3 appendString:v7];

  return v3;
}

@end