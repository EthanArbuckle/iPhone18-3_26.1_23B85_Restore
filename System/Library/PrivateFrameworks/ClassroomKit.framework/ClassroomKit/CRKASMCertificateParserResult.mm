@interface CRKASMCertificateParserResult
+ (BOOL)certificate:(id)certificate hasCommonNameWithPrefix:(id)prefix;
+ (id)resultForCertificate:(id)certificate expectedCommonNamePrefix:(id)prefix expectedUserIdentifier:(id)identifier;
- (BOOL)isCertificateValidWithError:(id *)error;
- (CRKASMCertificateParserResult)initWithUserIdentifier:(id)identifier validationError:(id)error;
@end

@implementation CRKASMCertificateParserResult

- (CRKASMCertificateParserResult)initWithUserIdentifier:(id)identifier validationError:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = CRKASMCertificateParserResult;
  v8 = [(CRKASMCertificateParserResult *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    userIdentifier = v8->_userIdentifier;
    v8->_userIdentifier = v9;

    objc_storeStrong(&v8->_validationError, error);
  }

  return v8;
}

+ (id)resultForCertificate:(id)certificate expectedCommonNamePrefix:(id)prefix expectedUserIdentifier:(id)identifier
{
  certificateCopy = certificate;
  prefixCopy = prefix;
  identifierCopy = identifier;
  if (!certificateCopy)
  {
    v14 = &unk_285672388;
    v15 = 2;
LABEL_9:
    v13 = CRKErrorWithCodeAndUserInfo(v15, v14);
    v12 = 0;
    goto LABEL_14;
  }

  if (([self certificate:certificateCopy hasCommonNameWithPrefix:prefixCopy] & 1) == 0)
  {
    v15 = 34;
    v14 = 0;
    goto LABEL_9;
  }

  v11 = [CRKASMCertificateUserIdentifierExtractor userIdentifierFromCertificate:certificateCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 isEqualToString:identifierCopy])
    {
      if ([certificateCopy isTemporallyValid])
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
  v17 = [[self alloc] initWithUserIdentifier:v12 validationError:v13];

  return v17;
}

- (BOOL)isCertificateValidWithError:(id *)error
{
  validationError = [(CRKASMCertificateParserResult *)self validationError];

  if (error && validationError)
  {
    *error = [(CRKASMCertificateParserResult *)self validationError];
  }

  return validationError == 0;
}

+ (BOOL)certificate:(id)certificate hasCommonNameWithPrefix:(id)prefix
{
  v16 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  commonNames = [certificate commonNames];
  v7 = [commonNames countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(commonNames);
        }

        if ([*(*(&v11 + 1) + 8 * i) hasPrefix:prefixCopy])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [commonNames countByEnumeratingWithState:&v11 objects:v15 count:16];
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