@interface PDARRBarcodeSignatureProvider
- (PDARRBarcodeSignatureProvider)initWithBarcodeCertificateManager:(id)a3;
- (void)generateKeyMaterialForRequirement:(id)a3 context:(id)a4 completion:(id)a5;
- (void)requirementRegistrationSuccess:(id)a3 serverKeyMaterial:(id)a4 forRequirement:(id)a5 context:(id)a6 completion:(id)a7;
@end

@implementation PDARRBarcodeSignatureProvider

- (PDARRBarcodeSignatureProvider)initWithBarcodeCertificateManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PDARRBarcodeSignatureProvider;
  v6 = [(PDARRBarcodeSignatureProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_barcodeCertManager, a3);
  }

  return v7;
}

- (void)generateKeyMaterialForRequirement:(id)a3 context:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [v8 pass];
  v10 = [v9 deviceAccountIdentifier];

  v11 = [v8 seSession];

  v12 = objc_alloc_init(NSMutableSet);
  v13 = [(PDBarcodeCertificateManager *)self->_barcodeCertManager fetchCertificatesForDeviceAccountIdentifier:v10 withCertificateType:0];
  v14 = [v13 firstObject];
  if (v14 && PKBarcodeCreateAndValidateTrustWithCerts(v13, 0, 0))
  {
    v15 = PKAuxiliaryCapabilityKeyForCertificateType(0);
    [v12 addObject:v15];

    v16 = 0;
  }

  else
  {
    [(PDBarcodeCertificateManager *)self->_barcodeCertManager removeKeysAndCertificatesForDeviceAccountIdentifier:v10 withCertificateType:0 session:v11];
    barcodeCertManager = self->_barcodeCertManager;
    v31 = 0;
    [(PDBarcodeCertificateManager *)barcodeCertManager createKeyAndSEAttestationForCertificateType:0 withDeviceAccountIdentifier:v10 session:v11 outError:&v31];
    v29 = v7;
    v18 = v30 = v11;
    v19 = v31;
    v20 = objc_alloc_init(PKAuxiliaryCapabilityRequirementKeyMaterialContent);
    v33 = v18;
    v21 = v12;
    v22 = [NSArray arrayWithObjects:&v33 count:1];
    [v20 setAttestation:v22];

    v23 = [PKAuxiliaryCapabilityRequirementKeyMaterial alloc];
    v32 = v20;
    v24 = [NSArray arrayWithObjects:&v32 count:1];
    v16 = [v23 initWithKeyMaterialContents:v24];

    v12 = v21;
    v7 = v29;
    v11 = v30;
    if (v19)
    {
      v25 = v13;
      v26 = v14;
      goto LABEL_10;
    }
  }

  v25 = [(PDBarcodeCertificateManager *)self->_barcodeCertManager fetchCertificatesForDeviceAccountIdentifier:v10 withCertificateType:2, v29, v30];

  v26 = [v25 firstObject];

  if (v26 && PKBarcodeCreateAndValidateTrustWithCerts(v25, 0, 2))
  {
    PKAuxiliaryCapabilityKeyForCertificateType(2uLL);
    v28 = v27 = v12;
    [v27 addObject:v28];

    v12 = v27;
  }

  v19 = 0;
LABEL_10:
  v7[2](v7, v16, v12, v19);
}

- (void)requirementRegistrationSuccess:(id)a3 serverKeyMaterial:(id)a4 forRequirement:(id)a5 context:(id)a6 completion:(id)a7
{
  v28 = a3;
  v11 = a4;
  v12 = a7;
  v13 = [a6 pass];
  v14 = [v13 paymentPass];

  v15 = [v28 contents];
  if ([v15 count])
  {
    v16 = [v28 contents];
    v17 = [v16 firstObject];
    v18 = [v17 certificateChain];
  }

  else
  {
    v18 = 0;
  }

  v19 = [(PDBarcodeCertificateManager *)self->_barcodeCertManager validateAndStoreCertificateChain:v18 withCertificateType:0 forPass:v14];
  v20 = [v11 contents];
  if ([v20 count])
  {
    v21 = [v11 contents];
    v22 = [v21 firstObject];
    v23 = [v22 certificateChain];
  }

  else
  {
    v23 = 0;
  }

  v24 = [(PDBarcodeCertificateManager *)self->_barcodeCertManager validateAndStoreCertificateChain:v23 withCertificateType:2 forPass:v14];
  v25 = v24;
  if (v19)
  {
    v26 = v19;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26;
  v12[2](v12, v27);
}

@end