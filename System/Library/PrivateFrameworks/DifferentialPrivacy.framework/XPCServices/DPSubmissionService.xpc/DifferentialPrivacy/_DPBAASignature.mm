@interface _DPBAASignature
+ (id)signatureWithDeviceSignature:(id)signature leafCertificate:(id)certificate intermediateCertificate:(id)intermediateCertificate;
- (_DPBAASignature)initWithDeviceSignature:(id)signature leafCertificate:(id)certificate intermediateCertificate:(id)intermediateCertificate;
@end

@implementation _DPBAASignature

- (_DPBAASignature)initWithDeviceSignature:(id)signature leafCertificate:(id)certificate intermediateCertificate:(id)intermediateCertificate
{
  signatureCopy = signature;
  certificateCopy = certificate;
  intermediateCertificateCopy = intermediateCertificate;
  v20.receiver = self;
  v20.super_class = _DPBAASignature;
  v11 = [(_DPBAASignature *)&v20 init];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [signatureCopy copy];
  signature = v11->_signature;
  v11->_signature = v12;

  v14 = [certificateCopy copy];
  leafCertificate = v11->_leafCertificate;
  v11->_leafCertificate = v14;

  v16 = [intermediateCertificateCopy copy];
  intermediateCertificate = v11->_intermediateCertificate;
  v11->_intermediateCertificate = v16;

  if (!v11->_signature)
  {
    goto LABEL_6;
  }

  if (v11->_leafCertificate && v11->_intermediateCertificate)
  {
LABEL_5:
    v18 = v11;
  }

  else
  {
LABEL_6:
    v18 = 0;
  }

  return v18;
}

+ (id)signatureWithDeviceSignature:(id)signature leafCertificate:(id)certificate intermediateCertificate:(id)intermediateCertificate
{
  intermediateCertificateCopy = intermediateCertificate;
  certificateCopy = certificate;
  signatureCopy = signature;
  v10 = [objc_alloc(objc_opt_class()) initWithDeviceSignature:signatureCopy leafCertificate:certificateCopy intermediateCertificate:intermediateCertificateCopy];

  return v10;
}

@end