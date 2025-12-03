@interface HMMTRControllerParameters
- (BOOL)usesCommonStorageDelegate;
- (HMMTRControllerParameters)initWithIPK:(id)k operationalKeypair:(id)keypair operationalCertificate:(id)certificate intermediateCertificate:(id)intermediateCertificate rootCertificate:(id)rootCertificate;
- (HMMTRControllerParameters)initWithStorageDelegate:(id)delegate storageDelegateQueue:(id)queue uniqueIdentifier:(id)identifier ipk:(id)ipk vendorID:(id)d operationalKeypair:(id)keypair operationalCertificate:(id)certificate intermediateCertificate:(id)self0 rootCertificate:(id)self1;
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
    storageDelegate = [(HMMTRControllerParameters *)self storageDelegate];
    storageDelegateQueue = [(HMMTRControllerParameters *)self storageDelegateQueue];
    uniqueIdentifier = [(HMMTRControllerParameters *)self uniqueIdentifier];
    v6 = [(HMMTRControllerParameters *)self ipk];
    vendorID = [(HMMTRControllerParameters *)self vendorID];
    operationalKeypair = [(HMMTRControllerParameters *)self operationalKeypair];
    operationalCertificate = [(HMMTRControllerParameters *)self operationalCertificate];
    intermediateCertificate = [(HMMTRControllerParameters *)self intermediateCertificate];
    rootCertificate = [(HMMTRControllerParameters *)self rootCertificate];
    v3 = [v20 initWithStorageDelegate:storageDelegate storageDelegateQueue:storageDelegateQueue uniqueIdentifier:uniqueIdentifier ipk:v6 vendorID:vendorID operationalKeypair:operationalKeypair operationalCertificate:operationalCertificate intermediateCertificate:intermediateCertificate rootCertificate:rootCertificate];

    otaProviderDelegate = [(HMMTRControllerParameters *)self otaProviderDelegate];
    otaProviderDelegateQueue = [(HMMTRControllerParameters *)self otaProviderDelegateQueue];
    [v3 setOTAProviderDelegate:otaProviderDelegate queue:otaProviderDelegateQueue];

    operationalCertificateIssuer = [(HMMTRControllerParameters *)self operationalCertificateIssuer];
    operationalCertificateIssuerQueue = [(HMMTRControllerParameters *)self operationalCertificateIssuerQueue];
    [v3 setOperationalCertificateIssuer:operationalCertificateIssuer queue:operationalCertificateIssuerQueue];

    productAttestationAuthorityCertificates = [(HMMTRControllerParameters *)self productAttestationAuthorityCertificates];
    [v3 setProductAttestationAuthorityCertificates:productAttestationAuthorityCertificates];

    certificationDeclarationCertificates = [(HMMTRControllerParameters *)self certificationDeclarationCertificates];
    [v3 setCertificationDeclarationCertificates:certificationDeclarationCertificates];

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
    operationalKeypair = [(HMMTRControllerParameters *)self operationalKeypair];
    operationalCertificate = [(HMMTRControllerParameters *)self operationalCertificate];
    intermediateCertificate = [(HMMTRControllerParameters *)self intermediateCertificate];
    rootCertificate = [(HMMTRControllerParameters *)self rootCertificate];
    v9 = [v3 initWithIPK:v4 operationalKeypair:operationalKeypair operationalCertificate:operationalCertificate intermediateCertificate:intermediateCertificate rootCertificate:rootCertificate];

    vendorID = [(HMMTRControllerParameters *)self vendorID];
    [v9 setVendorID:vendorID];

    operationalCertificateIssuer = [(HMMTRControllerParameters *)self operationalCertificateIssuer];
    [v9 setOperationalCertificateIssuer:operationalCertificateIssuer];

    operationalCertificateIssuerQueue = [(HMMTRControllerParameters *)self operationalCertificateIssuerQueue];
    [v9 setOperationalCertificateIssuerQueue:operationalCertificateIssuerQueue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)usesCommonStorageDelegate
{
  storageDelegate = [(HMMTRControllerParameters *)self storageDelegate];
  v3 = storageDelegate == 0;

  return v3;
}

- (HMMTRControllerParameters)initWithStorageDelegate:(id)delegate storageDelegateQueue:(id)queue uniqueIdentifier:(id)identifier ipk:(id)ipk vendorID:(id)d operationalKeypair:(id)keypair operationalCertificate:(id)certificate intermediateCertificate:(id)self0 rootCertificate:(id)self1
{
  delegateCopy = delegate;
  queueCopy = queue;
  identifierCopy = identifier;
  ipkCopy = ipk;
  dCopy = d;
  keypairCopy = keypair;
  certificateCopy = certificate;
  intermediateCertificateCopy = intermediateCertificate;
  rootCertificateCopy = rootCertificate;
  v34.receiver = self;
  v34.super_class = HMMTRControllerParameters;
  v19 = [(HMMTRControllerParameters *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_storageDelegate, delegate);
    objc_storeStrong(&v20->_storageDelegateQueue, queue);
    objc_storeStrong(&v20->_uniqueIdentifier, identifier);
    objc_storeStrong(&v20->_ipk, ipk);
    objc_storeStrong(&v20->_vendorID, d);
    objc_storeStrong(&v20->_operationalKeypair, keypair);
    objc_storeStrong(&v20->_operationalCertificate, certificate);
    objc_storeStrong(&v20->_intermediateCertificate, intermediateCertificate);
    objc_storeStrong(&v20->_rootCertificate, rootCertificate);
    v21 = [MEMORY[0x277CD5230] fabricIDFromCertificate:rootCertificateCopy];
    fabricID = v20->_fabricID;
    v20->_fabricID = v21;

    v23 = [MEMORY[0x277CD5230] publicKeyDataFromCertificate:rootCertificateCopy];
    rootPublicKey = v20->_rootPublicKey;
    v20->_rootPublicKey = v23;
  }

  return v20;
}

- (HMMTRControllerParameters)initWithIPK:(id)k operationalKeypair:(id)keypair operationalCertificate:(id)certificate intermediateCertificate:(id)intermediateCertificate rootCertificate:(id)rootCertificate
{
  kCopy = k;
  keypairCopy = keypair;
  certificateCopy = certificate;
  intermediateCertificateCopy = intermediateCertificate;
  rootCertificateCopy = rootCertificate;
  v25.receiver = self;
  v25.super_class = HMMTRControllerParameters;
  v17 = [(HMMTRControllerParameters *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_ipk, k);
    objc_storeStrong(&v18->_operationalKeypair, keypair);
    objc_storeStrong(&v18->_operationalCertificate, certificate);
    objc_storeStrong(&v18->_intermediateCertificate, intermediateCertificate);
    objc_storeStrong(&v18->_rootCertificate, rootCertificate);
    v19 = [MEMORY[0x277CD5230] fabricIDFromCertificate:rootCertificateCopy];
    fabricID = v18->_fabricID;
    v18->_fabricID = v19;

    v21 = [MEMORY[0x277CD5230] publicKeyDataFromCertificate:rootCertificateCopy];
    rootPublicKey = v18->_rootPublicKey;
    v18->_rootPublicKey = v21;
  }

  return v18;
}

@end