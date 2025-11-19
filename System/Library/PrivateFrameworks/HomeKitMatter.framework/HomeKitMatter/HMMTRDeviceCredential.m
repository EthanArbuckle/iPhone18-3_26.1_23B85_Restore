@interface HMMTRDeviceCredential
- (HMMTRDeviceCredential)initWithCertificationDeclaration:(id)a3 deviceAttestationCertificate:(id)a4 productAttestationIntermediateCertificate:(id)a5;
@end

@implementation HMMTRDeviceCredential

- (HMMTRDeviceCredential)initWithCertificationDeclaration:(id)a3 deviceAttestationCertificate:(id)a4 productAttestationIntermediateCertificate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMMTRDeviceCredential;
  v12 = [(HMMTRDeviceCredential *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_certificationDeclaration, a3);
    objc_storeStrong(&v13->_deviceAttestationCertificate, a4);
    objc_storeStrong(&v13->_productAttestationIntermediateCertificate, a5);
  }

  return v13;
}

@end