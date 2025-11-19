@interface CRKIdentityRefFactory
- (CRKIdentityRefFactory)init;
- (CRKIdentityRefFactory)initWithConfiguration:(id)a3;
- (__SecIdentity)makeIdentityRefWithError:(id *)a3;
- (const)CMSHashingAlgorithmForSecAlgorithm:(unsigned int)a3;
- (id)certificateParametersWithCMSAlgorithm:(const void *)a3;
- (id)keyParameters;
- (id)subject;
- (void)addClientAndServerAuthEKUsToParameters:(id)a3;
- (void)safeRelease:(void *)a3;
@end

@implementation CRKIdentityRefFactory

- (CRKIdentityRefFactory)init
{
  v3 = objc_opt_new();
  v4 = [(CRKIdentityRefFactory *)self initWithConfiguration:v3];

  return v4;
}

- (CRKIdentityRefFactory)initWithConfiguration:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKIdentityRefFactory;
  v5 = [(CRKIdentityRefFactory *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;
  }

  return v5;
}

- (__SecIdentity)makeIdentityRefWithError:(id *)a3
{
  v5 = [(CRKIdentityRefFactory *)self configuration];
  v6 = -[CRKIdentityRefFactory CMSHashingAlgorithmForSecAlgorithm:](self, "CMSHashingAlgorithmForSecAlgorithm:", [v5 hashingAlgorithm]);

  if (v6)
  {
    v16 = 0;
    publicKey = 0;
    v7 = [(CRKIdentityRefFactory *)self keyParameters];
    v8 = SecKeyGeneratePair(v7, &publicKey, &v16);

    v9 = [MEMORY[0x277CCA9B8] crk_errorForSecurityOSStatus:v8];
    v10 = v9;
    if (v9)
    {
      if (a3)
      {
        v11 = v9;
        SelfSignedCertificate = 0;
        v13 = 0;
        *a3 = v10;
LABEL_11:

        [(CRKIdentityRefFactory *)self safeRelease:publicKey];
        [(CRKIdentityRefFactory *)self safeRelease:v16];
        [(CRKIdentityRefFactory *)self safeRelease:SelfSignedCertificate];
        return v13;
      }

      SelfSignedCertificate = 0;
    }

    else
    {
      v14 = [(CRKIdentityRefFactory *)self subject];
      [(CRKIdentityRefFactory *)self certificateParametersWithCMSAlgorithm:v6];
      SelfSignedCertificate = SecGenerateSelfSignedCertificate();

      if (SelfSignedCertificate)
      {
        v13 = SecIdentityCreate();
        goto LABEL_11;
      }
    }

    v13 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
    return 0;
  }

  CRKErrorWithCodeAndUserInfo(2, &unk_2856723B0);
  *a3 = v13 = 0;
  return v13;
}

- (void)safeRelease:(void *)a3
{
  if (a3)
  {
    CFRelease(a3);
  }
}

- (id)subject
{
  v17[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277CDC458];
  v3 = [(CRKIdentityRefFactory *)self configuration];
  v4 = [v3 commonName];
  v15[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v16 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v17[0] = v6;
  v13[0] = *MEMORY[0x277CDC448];
  v7 = [(CRKIdentityRefFactory *)self configuration];
  v8 = [v7 commonName];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v14 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v17[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  return v11;
}

- (id)keyParameters
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC028];
  v14[0] = *MEMORY[0x277CDC060];
  v4 = *MEMORY[0x277CDC018];
  v13[0] = v3;
  v13[1] = v4;
  v5 = MEMORY[0x277CCABB0];
  v6 = [(CRKIdentityRefFactory *)self configuration];
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "keySizeInBits")}];
  v8 = [v7 stringValue];
  v14[1] = v8;
  v13[2] = *MEMORY[0x277CDC080];
  v9 = [(CRKIdentityRefFactory *)self configuration];
  v10 = [v9 commonName];
  v14[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  return v11;
}

- (id)certificateParametersWithCMSAlgorithm:(const void *)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setObject:&unk_285672688 forKeyedSubscript:*MEMORY[0x277CDC210]];
  v14 = @"rfc822name";
  v6 = [(CRKIdentityRefFactory *)self configuration];
  v7 = [v6 emailAddress];
  v15[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277CDC570]];

  [v5 setObject:a3 forKeyedSubscript:*MEMORY[0x277CDC1E0]];
  v9 = [(CRKIdentityRefFactory *)self configuration];
  LODWORD(v6) = [v9 createsCertificateAuthority];

  if (v6)
  {
    [v5 setObject:&unk_2856726A0 forKeyedSubscript:*MEMORY[0x277CDC1F0]];
  }

  v10 = [(CRKIdentityRefFactory *)self configuration];
  v11 = [v10 addsClientAuthAndServerAuthEKUs];

  if (v11)
  {
    [(CRKIdentityRefFactory *)self addClientAndServerAuthEKUsToParameters:v5];
  }

  v12 = [v5 copy];

  return v12;
}

- (void)addClientAndServerAuthEKUsToParameters:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  *v9 = xmmword_2436164E0;
  *&v9[14] = 0x10307050501062BLL;
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [v3 dataWithBytes:v9 length:22];
  v7 = @"2.5.29.37";
  v8 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277CDC208]];
}

- (const)CMSHashingAlgorithmForSecAlgorithm:(unsigned int)a3
{
  result = 0;
  if (a3 <= 5)
  {
    if (a3 == 3)
    {
      v4 = MEMORY[0x277CDC1B0];
    }

    else
    {
      if (a3 != 4)
      {
        return result;
      }

      v4 = MEMORY[0x277CDC1B8];
    }
  }

  else
  {
    switch(a3)
    {
      case 6u:
        v4 = MEMORY[0x277CDC1C0];
        break;
      case 7u:
        v4 = MEMORY[0x277CDC1C8];
        break;
      case 8u:
        v4 = MEMORY[0x277CDC1D0];
        break;
      default:
        return result;
    }
  }

  return *v4;
}

@end