@interface PDARRBarcodeSignatureProvider
- (PDARRBarcodeSignatureProvider)initWithBarcodeCertificateManager:(id)manager;
- (void)generateKeyMaterialForRequirement:(id)requirement context:(id)context completion:(id)completion;
- (void)requirementRegistrationSuccess:(id)success serverKeyMaterial:(id)material forRequirement:(id)requirement context:(id)context completion:(id)completion;
@end

@implementation PDARRBarcodeSignatureProvider

- (PDARRBarcodeSignatureProvider)initWithBarcodeCertificateManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PDARRBarcodeSignatureProvider;
  v6 = [(PDARRBarcodeSignatureProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_barcodeCertManager, manager);
  }

  return v7;
}

- (void)generateKeyMaterialForRequirement:(id)requirement context:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  pass = [contextCopy pass];
  deviceAccountIdentifier = [pass deviceAccountIdentifier];

  seSession = [contextCopy seSession];

  v12 = objc_alloc_init(NSMutableSet);
  v13 = [(PDBarcodeCertificateManager *)self->_barcodeCertManager fetchCertificatesForDeviceAccountIdentifier:deviceAccountIdentifier withCertificateType:0];
  firstObject = [v13 firstObject];
  if (firstObject && PKBarcodeCreateAndValidateTrustWithCerts(v13, 0, 0))
  {
    v15 = PKAuxiliaryCapabilityKeyForCertificateType(0);
    [v12 addObject:v15];

    v16 = 0;
  }

  else
  {
    [(PDBarcodeCertificateManager *)self->_barcodeCertManager removeKeysAndCertificatesForDeviceAccountIdentifier:deviceAccountIdentifier withCertificateType:0 session:seSession];
    barcodeCertManager = self->_barcodeCertManager;
    v31 = 0;
    [(PDBarcodeCertificateManager *)barcodeCertManager createKeyAndSEAttestationForCertificateType:0 withDeviceAccountIdentifier:deviceAccountIdentifier session:seSession outError:&v31];
    v29 = completionCopy;
    v18 = v30 = seSession;
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
    completionCopy = v29;
    seSession = v30;
    if (v19)
    {
      v25 = v13;
      firstObject2 = firstObject;
      goto LABEL_10;
    }
  }

  v25 = [(PDBarcodeCertificateManager *)self->_barcodeCertManager fetchCertificatesForDeviceAccountIdentifier:deviceAccountIdentifier withCertificateType:2, v29, v30];

  firstObject2 = [v25 firstObject];

  if (firstObject2 && PKBarcodeCreateAndValidateTrustWithCerts(v25, 0, 2))
  {
    PKAuxiliaryCapabilityKeyForCertificateType(2uLL);
    v28 = v27 = v12;
    [v27 addObject:v28];

    v12 = v27;
  }

  v19 = 0;
LABEL_10:
  completionCopy[2](completionCopy, v16, v12, v19);
}

- (void)requirementRegistrationSuccess:(id)success serverKeyMaterial:(id)material forRequirement:(id)requirement context:(id)context completion:(id)completion
{
  successCopy = success;
  materialCopy = material;
  completionCopy = completion;
  pass = [context pass];
  paymentPass = [pass paymentPass];

  contents = [successCopy contents];
  if ([contents count])
  {
    contents2 = [successCopy contents];
    firstObject = [contents2 firstObject];
    certificateChain = [firstObject certificateChain];
  }

  else
  {
    certificateChain = 0;
  }

  v19 = [(PDBarcodeCertificateManager *)self->_barcodeCertManager validateAndStoreCertificateChain:certificateChain withCertificateType:0 forPass:paymentPass];
  contents3 = [materialCopy contents];
  if ([contents3 count])
  {
    contents4 = [materialCopy contents];
    firstObject2 = [contents4 firstObject];
    certificateChain2 = [firstObject2 certificateChain];
  }

  else
  {
    certificateChain2 = 0;
  }

  v24 = [(PDBarcodeCertificateManager *)self->_barcodeCertManager validateAndStoreCertificateChain:certificateChain2 withCertificateType:2 forPass:paymentPass];
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
  completionCopy[2](completionCopy, v27);
}

@end