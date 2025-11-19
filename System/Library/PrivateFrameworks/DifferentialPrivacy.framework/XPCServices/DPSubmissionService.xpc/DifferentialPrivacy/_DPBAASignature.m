@interface _DPBAASignature
+ (id)signatureWithDeviceSignature:(id)a3 leafCertificate:(id)a4 intermediateCertificate:(id)a5;
- (_DPBAASignature)initWithDeviceSignature:(id)a3 leafCertificate:(id)a4 intermediateCertificate:(id)a5;
@end

@implementation _DPBAASignature

- (_DPBAASignature)initWithDeviceSignature:(id)a3 leafCertificate:(id)a4 intermediateCertificate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = _DPBAASignature;
  v11 = [(_DPBAASignature *)&v20 init];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v8 copy];
  signature = v11->_signature;
  v11->_signature = v12;

  v14 = [v9 copy];
  leafCertificate = v11->_leafCertificate;
  v11->_leafCertificate = v14;

  v16 = [v10 copy];
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

+ (id)signatureWithDeviceSignature:(id)a3 leafCertificate:(id)a4 intermediateCertificate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithDeviceSignature:v9 leafCertificate:v8 intermediateCertificate:v7];

  return v10;
}

@end