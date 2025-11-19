@interface CRKASMCertificateIngestor
- (BOOL)areCertificatesValid:(id)a3 forUserIdentifier:(id)a4 error:(id *)a5;
- (BOOL)ingestCertificates:(id)a3 forTrustedUserIdentifier:(id)a4 error:(id *)a5;
- (BOOL)isCertificateValid:(id)a3 forUserIdentifier:(id)a4 error:(id *)a5;
- (BOOL)storeCertificates:(id)a3 userIdentifier:(id)a4 error:(id *)a5;
- (CRKASMCertificateIngestor)initWithConfiguration:(id)a3;
@end

@implementation CRKASMCertificateIngestor

- (CRKASMCertificateIngestor)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKASMCertificateIngestor;
  v6 = [(CRKASMCertificateIngestor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (BOOL)ingestCertificates:(id)a3 forTrustedUserIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if (a5)
    {
      CRKErrorWithCodeAndUserInfo(2, &unk_2856724A0);
      *a5 = v10 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  if (![(CRKASMCertificateIngestor *)self areCertificatesValid:v8 forUserIdentifier:v9 error:a5])
  {
    goto LABEL_6;
  }

  v10 = [(CRKASMCertificateIngestor *)self storeCertificates:v8 userIdentifier:v9 error:a5];
LABEL_7:

  return v10;
}

- (BOOL)areCertificatesValid:(id)a3 forUserIdentifier:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
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

        if (![(CRKASMCertificateIngestor *)self isCertificateValid:*(*(&v17 + 1) + 8 * i) forUserIdentifier:v9 error:a5, v17])
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

- (BOOL)isCertificateValid:(id)a3 forUserIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CRKASMCertificateIngestor *)self configuration];
  v11 = [v10 trustedUserCommonNamePrefix];

  v12 = [CRKASMCertificateParserResult resultForCertificate:v9 expectedCommonNamePrefix:v11 expectedUserIdentifier:v8];

  LOBYTE(a5) = [v12 isCertificateValidWithError:a5];
  return a5;
}

- (BOOL)storeCertificates:(id)a3 userIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CRKASMCertificateIngestor *)self configuration];
  v11 = [v10 credentialStore];

  v12 = [v11 addCertificates:v9 forUserIdentifier:v8];

  v13 = [v12 count];
  v14 = [v9 count];

  if (a5 && v13 != v14)
  {
    *a5 = CRKErrorWithCodeAndUserInfo(20, 0);
  }

  return v13 == v14;
}

@end