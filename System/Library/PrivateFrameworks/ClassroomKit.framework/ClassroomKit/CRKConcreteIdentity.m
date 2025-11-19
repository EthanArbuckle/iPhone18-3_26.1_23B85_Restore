@interface CRKConcreteIdentity
+ (id)identityWithCertificate:(id)a3 privateKey:(id)a4;
+ (id)identityWithConfiguration:(id)a3;
- (CRKCertificate)certificate;
- (CRKConcreteIdentity)initWithIdentity:(__SecIdentity *)a3;
- (CRKPrivateKey)privateKey;
- (void)dealloc;
@end

@implementation CRKConcreteIdentity

- (void)dealloc
{
  CFRelease(self->_underlyingIdentity);
  v3.receiver = self;
  v3.super_class = CRKConcreteIdentity;
  [(CRKConcreteIdentity *)&v3 dealloc];
}

- (CRKConcreteIdentity)initWithIdentity:(__SecIdentity *)a3
{
  v6.receiver = self;
  v6.super_class = CRKConcreteIdentity;
  v4 = [(CRKConcreteIdentity *)&v6 init];
  if (v4)
  {
    CFRetain(a3);
    v4->_underlyingIdentity = a3;
  }

  return v4;
}

+ (id)identityWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[CRKIdentityRefFactory alloc] initWithConfiguration:v4];

  v11 = 0;
  v6 = [(CRKIdentityRefFactory *)v5 makeIdentityRefWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = [[a1 alloc] initWithIdentity:v6];
    CFRelease(v6);
  }

  else
  {
    v9 = _CRKLogGeneral_12();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CRKConcreteIdentity *)v7 identityWithConfiguration:v9];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)identityWithCertificate:(id)a3 privateKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  [a3 underlyingCertificate];
  [v8 underlyingPrivateKey];

  v9 = SecIdentityCreate();
  if (v9)
  {
    v10 = v9;
    v11 = [[a1 alloc] initWithIdentity:v9];
    CFRelease(v10);
  }

  else
  {
    v12 = _CRKLogGeneral_12();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CRKConcreteIdentity identityWithCertificate:v12 privateKey:?];
    }

    v11 = 0;
  }

  return v11;
}

- (CRKCertificate)certificate
{
  certificateRef = 0;
  v2 = 0;
  if (!SecIdentityCopyCertificate([(CRKConcreteIdentity *)self underlyingIdentity], &certificateRef))
  {
    v3 = [CRKConcreteCertificate alloc];
    v2 = [(CRKConcreteCertificate *)v3 initWithCertificate:certificateRef];
    CFRelease(certificateRef);
  }

  return v2;
}

- (CRKPrivateKey)privateKey
{
  privateKeyRef = 0;
  v2 = 0;
  if (!SecIdentityCopyPrivateKey([(CRKConcreteIdentity *)self underlyingIdentity], &privateKeyRef))
  {
    v3 = [CRKConcretePrivateKey alloc];
    v2 = [(CRKConcretePrivateKey *)v3 initWithPrivateKey:privateKeyRef];
    CFRelease(privateKeyRef);
  }

  return v2;
}

+ (void)identityWithConfiguration:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 verboseDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Failed to create identity ref: %{public}@", &v4, 0xCu);
}

@end