@interface CRKASMCertificateIngestor
- (BOOL)areCertificatesValid:(id)valid forUserIdentifier:(id)identifier error:(id *)error;
- (BOOL)ingestCertificates:(id)certificates forTrustedUserIdentifier:(id)identifier error:(id *)error;
- (BOOL)isCertificateValid:(id)valid forUserIdentifier:(id)identifier error:(id *)error;
- (BOOL)storeCertificates:(id)certificates userIdentifier:(id)identifier error:(id *)error;
- (CRKASMCertificateIngestor)initWithConfiguration:(id)configuration;
@end

@implementation CRKASMCertificateIngestor

- (CRKASMCertificateIngestor)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = CRKASMCertificateIngestor;
  v6 = [(CRKASMCertificateIngestor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (BOOL)ingestCertificates:(id)certificates forTrustedUserIdentifier:(id)identifier error:(id *)error
{
  certificatesCopy = certificates;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    if (error)
    {
      CRKErrorWithCodeAndUserInfo(2, &unk_2856724A0);
      *error = v10 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  if (![(CRKASMCertificateIngestor *)self areCertificatesValid:certificatesCopy forUserIdentifier:identifierCopy error:error])
  {
    goto LABEL_6;
  }

  v10 = [(CRKASMCertificateIngestor *)self storeCertificates:certificatesCopy userIdentifier:identifierCopy error:error];
LABEL_7:

  return v10;
}

- (BOOL)areCertificatesValid:(id)valid forUserIdentifier:(id)identifier error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  identifierCopy = identifier;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = validCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (![(CRKASMCertificateIngestor *)self isCertificateValid:*(*(&v17 + 1) + 8 * i) forUserIdentifier:identifierCopy error:error, v17])
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

- (BOOL)isCertificateValid:(id)valid forUserIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  validCopy = valid;
  configuration = [(CRKASMCertificateIngestor *)self configuration];
  trustedUserCommonNamePrefix = [configuration trustedUserCommonNamePrefix];

  v12 = [CRKASMCertificateParserResult resultForCertificate:validCopy expectedCommonNamePrefix:trustedUserCommonNamePrefix expectedUserIdentifier:identifierCopy];

  LOBYTE(error) = [v12 isCertificateValidWithError:error];
  return error;
}

- (BOOL)storeCertificates:(id)certificates userIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  certificatesCopy = certificates;
  configuration = [(CRKASMCertificateIngestor *)self configuration];
  credentialStore = [configuration credentialStore];

  v12 = [credentialStore addCertificates:certificatesCopy forUserIdentifier:identifierCopy];

  v13 = [v12 count];
  v14 = [certificatesCopy count];

  if (error && v13 != v14)
  {
    *error = CRKErrorWithCodeAndUserInfo(20, 0);
  }

  return v13 == v14;
}

@end