@interface CRKIdentityRefFactory
- (CRKIdentityRefFactory)init;
- (CRKIdentityRefFactory)initWithConfiguration:(id)configuration;
- (__SecIdentity)makeIdentityRefWithError:(id *)error;
- (const)CMSHashingAlgorithmForSecAlgorithm:(unsigned int)algorithm;
- (id)certificateParametersWithCMSAlgorithm:(const void *)algorithm;
- (id)keyParameters;
- (id)subject;
- (void)addClientAndServerAuthEKUsToParameters:(id)parameters;
- (void)safeRelease:(void *)release;
@end

@implementation CRKIdentityRefFactory

- (CRKIdentityRefFactory)init
{
  v3 = objc_opt_new();
  v4 = [(CRKIdentityRefFactory *)self initWithConfiguration:v3];

  return v4;
}

- (CRKIdentityRefFactory)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = CRKIdentityRefFactory;
  v5 = [(CRKIdentityRefFactory *)&v9 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;
  }

  return v5;
}

- (__SecIdentity)makeIdentityRefWithError:(id *)error
{
  configuration = [(CRKIdentityRefFactory *)self configuration];
  v6 = -[CRKIdentityRefFactory CMSHashingAlgorithmForSecAlgorithm:](self, "CMSHashingAlgorithmForSecAlgorithm:", [configuration hashingAlgorithm]);

  if (v6)
  {
    v16 = 0;
    publicKey = 0;
    keyParameters = [(CRKIdentityRefFactory *)self keyParameters];
    v8 = SecKeyGeneratePair(keyParameters, &publicKey, &v16);

    v9 = [MEMORY[0x277CCA9B8] crk_errorForSecurityOSStatus:v8];
    v10 = v9;
    if (v9)
    {
      if (error)
      {
        v11 = v9;
        SelfSignedCertificate = 0;
        v13 = 0;
        *error = v10;
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
      subject = [(CRKIdentityRefFactory *)self subject];
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

  if (!error)
  {
    return 0;
  }

  CRKErrorWithCodeAndUserInfo(2, &unk_2856723B0);
  *error = v13 = 0;
  return v13;
}

- (void)safeRelease:(void *)release
{
  if (release)
  {
    CFRelease(release);
  }
}

- (id)subject
{
  v17[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277CDC458];
  configuration = [(CRKIdentityRefFactory *)self configuration];
  commonName = [configuration commonName];
  v15[1] = commonName;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v16 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v17[0] = v6;
  v13[0] = *MEMORY[0x277CDC448];
  configuration2 = [(CRKIdentityRefFactory *)self configuration];
  commonName2 = [configuration2 commonName];
  v13[1] = commonName2;
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
  configuration = [(CRKIdentityRefFactory *)self configuration];
  v7 = [v5 numberWithInteger:{objc_msgSend(configuration, "keySizeInBits")}];
  stringValue = [v7 stringValue];
  v14[1] = stringValue;
  v13[2] = *MEMORY[0x277CDC080];
  configuration2 = [(CRKIdentityRefFactory *)self configuration];
  commonName = [configuration2 commonName];
  v14[2] = commonName;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  return v11;
}

- (id)certificateParametersWithCMSAlgorithm:(const void *)algorithm
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setObject:&unk_285672688 forKeyedSubscript:*MEMORY[0x277CDC210]];
  v14 = @"rfc822name";
  configuration = [(CRKIdentityRefFactory *)self configuration];
  emailAddress = [configuration emailAddress];
  v15[0] = emailAddress;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277CDC570]];

  [v5 setObject:algorithm forKeyedSubscript:*MEMORY[0x277CDC1E0]];
  configuration2 = [(CRKIdentityRefFactory *)self configuration];
  LODWORD(configuration) = [configuration2 createsCertificateAuthority];

  if (configuration)
  {
    [v5 setObject:&unk_2856726A0 forKeyedSubscript:*MEMORY[0x277CDC1F0]];
  }

  configuration3 = [(CRKIdentityRefFactory *)self configuration];
  addsClientAuthAndServerAuthEKUs = [configuration3 addsClientAuthAndServerAuthEKUs];

  if (addsClientAuthAndServerAuthEKUs)
  {
    [(CRKIdentityRefFactory *)self addClientAndServerAuthEKUsToParameters:v5];
  }

  v12 = [v5 copy];

  return v12;
}

- (void)addClientAndServerAuthEKUsToParameters:(id)parameters
{
  v10 = *MEMORY[0x277D85DE8];
  *v9 = xmmword_2436164E0;
  *&v9[14] = 0x10307050501062BLL;
  v3 = MEMORY[0x277CBEA90];
  parametersCopy = parameters;
  v5 = [v3 dataWithBytes:v9 length:22];
  v7 = @"2.5.29.37";
  v8 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [parametersCopy setObject:v6 forKeyedSubscript:*MEMORY[0x277CDC208]];
}

- (const)CMSHashingAlgorithmForSecAlgorithm:(unsigned int)algorithm
{
  result = 0;
  if (algorithm <= 5)
  {
    if (algorithm == 3)
    {
      v4 = MEMORY[0x277CDC1B0];
    }

    else
    {
      if (algorithm != 4)
      {
        return result;
      }

      v4 = MEMORY[0x277CDC1B8];
    }
  }

  else
  {
    switch(algorithm)
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