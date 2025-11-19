@interface CRKASMCertificateParserResult
+ (BOOL)certificate:(id)a3 hasCommonNameWithPrefix:(id)a4;
+ (id)resultForCertificate:(id)a3 expectedCommonNamePrefix:(id)a4 expectedUserIdentifier:(id)a5;
- (BOOL)isCertificateValidWithError:(id *)a3;
- (CRKASMCertificateParserResult)initWithUserIdentifier:(id)a3 validationError:(id)a4;
@end

@implementation CRKASMCertificateParserResult

- (CRKASMCertificateParserResult)initWithUserIdentifier:(id)a3 validationError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CRKASMCertificateParserResult;
  v8 = [(CRKASMCertificateParserResult *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    userIdentifier = v8->_userIdentifier;
    v8->_userIdentifier = v9;

    objc_storeStrong(&v8->_validationError, a4);
  }

  return v8;
}

+ (id)resultForCertificate:(id)a3 expectedCommonNamePrefix:(id)a4 expectedUserIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v14 = &unk_285672388;
    v15 = 2;
LABEL_9:
    v13 = CRKErrorWithCodeAndUserInfo(v15, v14);
    v12 = 0;
    goto LABEL_14;
  }

  if (([a1 certificate:v8 hasCommonNameWithPrefix:v9] & 1) == 0)
  {
    v15 = 34;
    v14 = 0;
    goto LABEL_9;
  }

  v11 = [CRKASMCertificateUserIdentifierExtractor userIdentifierFromCertificate:v8];
  v12 = v11;
  if (v11)
  {
    if ([v11 isEqualToString:v10])
    {
      if ([v8 isTemporallyValid])
      {
        v13 = 0;
        goto LABEL_14;
      }

      v16 = 33;
    }

    else
    {
      v16 = 36;
    }
  }

  else
  {
    v16 = 34;
  }

  v13 = CRKErrorWithCodeAndUserInfo(v16, 0);
LABEL_14:
  v17 = [[a1 alloc] initWithUserIdentifier:v12 validationError:v13];

  return v17;
}

- (BOOL)isCertificateValidWithError:(id *)a3
{
  v5 = [(CRKASMCertificateParserResult *)self validationError];

  if (a3 && v5)
  {
    *a3 = [(CRKASMCertificateParserResult *)self validationError];
  }

  return v5 == 0;
}

+ (BOOL)certificate:(id)a3 hasCommonNameWithPrefix:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 commonNames];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v11 + 1) + 8 * i) hasPrefix:v5])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end