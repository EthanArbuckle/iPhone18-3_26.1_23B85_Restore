@interface HMMTRControllerParameters
- (BOOL)usesCommonStorageDelegate;
- (HMMTRControllerParameters)initWithIPK:(id)a3 operationalKeypair:(id)a4 operationalCertificate:(id)a5 intermediateCertificate:(id)a6 rootCertificate:(id)a7;
- (HMMTRControllerParameters)initWithStorageDelegate:(id)a3 storageDelegateQueue:(id)a4 uniqueIdentifier:(id)a5 ipk:(id)a6 vendorID:(id)a7 operationalKeypair:(id)a8 operationalCertificate:(id)a9 intermediateCertificate:(id)a10 rootCertificate:(id)a11;
- (id)controllerParams;
- (id)controllerParams2;
@end

@implementation HMMTRControllerParameters

- (id)controllerParams2
{
  if ([(HMMTRControllerParameters *)self usesCommonStorageDelegate])
  {
    v3 = 0;
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x277CD5320]);
    v19 = [(HMMTRControllerParameters *)self storageDelegate];
    v4 = [(HMMTRControllerParameters *)self storageDelegateQueue];
    v5 = [(HMMTRControllerParameters *)self uniqueIdentifier];
    v6 = [(HMMTRControllerParameters *)self ipk];
    v7 = [(HMMTRControllerParameters *)self vendorID];
    v8 = [(HMMTRControllerParameters *)self operationalKeypair];
    v9 = [(HMMTRControllerParameters *)self operationalCertificate];
    v10 = [(HMMTRControllerParameters *)self intermediateCertificate];
    v11 = [(HMMTRControllerParameters *)self rootCertificate];
    v3 = [v20 initWithStorageDelegate:v19 storageDelegateQueue:v4 uniqueIdentifier:v5 ipk:v6 vendorID:v7 operationalKeypair:v8 operationalCertificate:v9 intermediateCertificate:v10 rootCertificate:v11];

    v12 = [(HMMTRControllerParameters *)self otaProviderDelegate];
    v13 = [(HMMTRControllerParameters *)self otaProviderDelegateQueue];
    [v3 setOTAProviderDelegate:v12 queue:v13];

    v14 = [(HMMTRControllerParameters *)self operationalCertificateIssuer];
    v15 = [(HMMTRControllerParameters *)self operationalCertificateIssuerQueue];
    [v3 setOperationalCertificateIssuer:v14 queue:v15];

    v16 = [(HMMTRControllerParameters *)self productAttestationAuthorityCertificates];
    [v3 setProductAttestationAuthorityCertificates:v16];

    v17 = [(HMMTRControllerParameters *)self certificationDeclarationCertificates];
    [v3 setCertificationDeclarationCertificates:v17];

    [v3 setShouldAdvertiseOperational:{-[HMMTRControllerParameters shouldAdvertiseOperational](self, "shouldAdvertiseOperational")}];
  }

  return v3;
}

- (id)controllerParams
{
  if ([(HMMTRControllerParameters *)self usesCommonStorageDelegate])
  {
    v3 = objc_alloc(MEMORY[0x277CD5338]);
    v4 = [(HMMTRControllerParameters *)self ipk];
    v5 = [(HMMTRControllerParameters *)self operationalKeypair];
    v6 = [(HMMTRControllerParameters *)self operationalCertificate];
    v7 = [(HMMTRControllerParameters *)self intermediateCertificate];
    v8 = [(HMMTRControllerParameters *)self rootCertificate];
    v9 = [v3 initWithIPK:v4 operationalKeypair:v5 operationalCertificate:v6 intermediateCertificate:v7 rootCertificate:v8];

    v10 = [(HMMTRControllerParameters *)self vendorID];
    [v9 setVendorID:v10];

    v11 = [(HMMTRControllerParameters *)self operationalCertificateIssuer];
    [v9 setOperationalCertificateIssuer:v11];

    v12 = [(HMMTRControllerParameters *)self operationalCertificateIssuerQueue];
    [v9 setOperationalCertificateIssuerQueue:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)usesCommonStorageDelegate
{
  v2 = [(HMMTRControllerParameters *)self storageDelegate];
  v3 = v2 == 0;

  return v3;
}

- (HMMTRControllerParameters)initWithStorageDelegate:(id)a3 storageDelegateQueue:(id)a4 uniqueIdentifier:(id)a5 ipk:(id)a6 vendorID:(id)a7 operationalKeypair:(id)a8 operationalCertificate:(id)a9 intermediateCertificate:(id)a10 rootCertificate:(id)a11
{
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v29 = a7;
  v28 = a8;
  v27 = a9;
  v26 = a10;
  v18 = a11;
  v34.receiver = self;
  v34.super_class = HMMTRControllerParameters;
  v19 = [(HMMTRControllerParameters *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_storageDelegate, a3);
    objc_storeStrong(&v20->_storageDelegateQueue, a4);
    objc_storeStrong(&v20->_uniqueIdentifier, a5);
    objc_storeStrong(&v20->_ipk, a6);
    objc_storeStrong(&v20->_vendorID, a7);
    objc_storeStrong(&v20->_operationalKeypair, a8);
    objc_storeStrong(&v20->_operationalCertificate, a9);
    objc_storeStrong(&v20->_intermediateCertificate, a10);
    objc_storeStrong(&v20->_rootCertificate, a11);
    v21 = [MEMORY[0x277CD5230] fabricIDFromCertificate:v18];
    fabricID = v20->_fabricID;
    v20->_fabricID = v21;

    v23 = [MEMORY[0x277CD5230] publicKeyDataFromCertificate:v18];
    rootPublicKey = v20->_rootPublicKey;
    v20->_rootPublicKey = v23;
  }

  return v20;
}

- (HMMTRControllerParameters)initWithIPK:(id)a3 operationalKeypair:(id)a4 operationalCertificate:(id)a5 intermediateCertificate:(id)a6 rootCertificate:(id)a7
{
  v24 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = HMMTRControllerParameters;
  v17 = [(HMMTRControllerParameters *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_ipk, a3);
    objc_storeStrong(&v18->_operationalKeypair, a4);
    objc_storeStrong(&v18->_operationalCertificate, a5);
    objc_storeStrong(&v18->_intermediateCertificate, a6);
    objc_storeStrong(&v18->_rootCertificate, a7);
    v19 = [MEMORY[0x277CD5230] fabricIDFromCertificate:v16];
    fabricID = v18->_fabricID;
    v18->_fabricID = v19;

    v21 = [MEMORY[0x277CD5230] publicKeyDataFromCertificate:v16];
    rootPublicKey = v18->_rootPublicKey;
    v18->_rootPublicKey = v21;
  }

  return v18;
}

@end