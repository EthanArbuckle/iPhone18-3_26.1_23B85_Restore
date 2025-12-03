@interface HMMTRDeviceCredential
- (HMMTRDeviceCredential)initWithCertificationDeclaration:(id)declaration deviceAttestationCertificate:(id)certificate productAttestationIntermediateCertificate:(id)intermediateCertificate;
@end

@implementation HMMTRDeviceCredential

- (HMMTRDeviceCredential)initWithCertificationDeclaration:(id)declaration deviceAttestationCertificate:(id)certificate productAttestationIntermediateCertificate:(id)intermediateCertificate
{
  declarationCopy = declaration;
  certificateCopy = certificate;
  intermediateCertificateCopy = intermediateCertificate;
  v15.receiver = self;
  v15.super_class = HMMTRDeviceCredential;
  v12 = [(HMMTRDeviceCredential *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_certificationDeclaration, declaration);
    objc_storeStrong(&v13->_deviceAttestationCertificate, certificate);
    objc_storeStrong(&v13->_productAttestationIntermediateCertificate, intermediateCertificate);
  }

  return v13;
}

@end