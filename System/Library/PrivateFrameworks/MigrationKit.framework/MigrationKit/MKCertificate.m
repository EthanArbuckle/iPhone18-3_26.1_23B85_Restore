@interface MKCertificate
- (MKCertificate)init;
- (MKCertificate)initWithCertificate:(__SecCertificate *)a3 privateKey:(__SecKey *)a4;
- (MKCertificate)initWithPEM:(id)a3;
- (MKCertificate)initWithTrust:(__SecTrust *)a3;
- (id)dataFromPEMFormattedData:(id)a3;
- (id)pemFormattedCertificateData:(id)a3;
- (void)_appendBase64Data:(id)a3 toString:(id)a4;
- (void)dealloc;
- (void)generateCertificate;
@end

@implementation MKCertificate

- (MKCertificate)init
{
  v5.receiver = self;
  v5.super_class = MKCertificate;
  v2 = [(MKCertificate *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MKCertificate *)v2 generateCertificate];
  }

  return v3;
}

- (MKCertificate)initWithPEM:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MKCertificate;
  v5 = [(MKCertificate *)&v10 init];
  if (v5)
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = SecCertificateCreateWithPEM();
    v8 = SecCertificateCopySHA256Digest();
    [(MKCertificate *)v5 setDigest:v8];

    CFRelease(v7);
  }

  return v5;
}

- (MKCertificate)initWithTrust:(__SecTrust *)a3
{
  v8.receiver = self;
  v8.super_class = MKCertificate;
  v4 = [(MKCertificate *)&v8 init];
  if (v4)
  {
    v5 = SecTrustCopyCertificateChain(a3);
    if (CFArrayGetCount(v5) >= 1)
    {
      CFArrayGetValueAtIndex(v5, 0);
      v6 = SecCertificateCopySHA256Digest();
      [(MKCertificate *)v4 setDigest:v6];
    }

    CFRelease(v5);
  }

  return v4;
}

- (MKCertificate)initWithCertificate:(__SecCertificate *)a3 privateKey:(__SecKey *)a4
{
  v10.receiver = self;
  v10.super_class = MKCertificate;
  v5 = [(MKCertificate *)&v10 init];
  if (v5)
  {
    v6 = SecCertificateCopyData(a3);
    [(MKCertificate *)v5 setCertificate:v6];

    v7 = SecCertificateCopySHA256Digest();
    [(MKCertificate *)v5 setDigest:v7];

    v8 = *MEMORY[0x277CBECE8];
    [(MKCertificate *)v5 setIdentity:SecIdentityCreate()];
  }

  return v5;
}

- (void)dealloc
{
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  v4.receiver = self;
  v4.super_class = MKCertificate;
  [(MKCertificate *)&v4 dealloc];
}

- (void)generateCertificate
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC060];
  v4 = *MEMORY[0x277CDC018];
  v23[0] = *MEMORY[0x277CDC028];
  v23[1] = v4;
  v24[0] = v3;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:2048];
  v24[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  RandomKey = SecKeyCreateRandomKey(v6, 0);
  v8 = SecKeyCopyPublicKey(RandomKey);
  values[0] = *MEMORY[0x277CDC458];
  values[1] = @"Apple Inc.";
  v9 = *MEMORY[0x277CBECE8];
  v18 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 2, 0);
  v21[0] = *MEMORY[0x277CDC448];
  v21[1] = @"Move to iOS";
  v17 = CFArrayCreate(v9, v21, 2, 0);
  cf = CFArrayCreate(v9, &v18, 1, 0);
  v20 = CFArrayCreate(v9, &v17, 1, 0);
  v10 = CFArrayCreate(v9, &cf, 2, 0);
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:127];
  [v11 setObject:v12 forKey:*MEMORY[0x277CDC210]];

  [v11 setObject:*MEMORY[0x277CDC1C0] forKey:*MEMORY[0x277CDC1E0]];
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  v14 = SecCertificateCopyData(SelfSignedCertificate);
  [(MKCertificate *)self setCertificate:v14];

  v15 = SecCertificateCopySHA256Digest();
  [(MKCertificate *)self setDigest:v15];

  [(MKCertificate *)self setIdentity:SecIdentityCreate()];
  if (SelfSignedCertificate)
  {
    CFRelease(SelfSignedCertificate);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (RandomKey)
  {
    CFRelease(RandomKey);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)pemFormattedCertificateData:(id)a3
{
  v4 = MEMORY[0x277CCAB68];
  v5 = a3;
  v6 = [v4 string];
  [v6 appendString:@"-----BEGIN CERTIFICATE-----\n"];
  [(MKCertificate *)self _appendBase64Data:v5 toString:v6];

  [v6 appendString:@"\n-----END CERTIFICATE-----\n"];
  v7 = [v6 dataUsingEncoding:4];

  return v7;
}

- (void)_appendBase64Data:(id)a3 toString:(id)a4
{
  v5 = a4;
  v6 = [a3 base64EncodedStringWithOptions:33];
  [v5 appendString:v6];
}

- (id)dataFromPEMFormattedData:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
  v5 = [v4 componentsSeparatedByString:@"\n"];
  v6 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(v3, "length")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (([v12 hasPrefix:{@"-----", v16}] & 1) == 0)
        {
          [v6 appendString:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v6 options:1];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end