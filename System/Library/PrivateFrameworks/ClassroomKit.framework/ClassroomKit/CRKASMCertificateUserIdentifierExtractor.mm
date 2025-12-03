@interface CRKASMCertificateUserIdentifierExtractor
+ (id)allUserIdentifiersFromCertificate:(id)certificate;
+ (id)pickIdentifierFromIdentifiers:(id)identifiers;
+ (id)userIdentifierFromCertificate:(id)certificate;
@end

@implementation CRKASMCertificateUserIdentifierExtractor

+ (id)userIdentifierFromCertificate:(id)certificate
{
  v4 = [self allUserIdentifiersFromCertificate:certificate];
  v5 = [self pickIdentifierFromIdentifiers:v4];

  return v5;
}

+ (id)pickIdentifierFromIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count] >= 2)
  {
    v4 = [identifiersCopy componentsJoinedByString:{@", "}];
    if (_CRKLogASM_onceToken_10 != -1)
    {
      +[CRKASMCertificateUserIdentifierExtractor pickIdentifierFromIdentifiers:];
    }

    v5 = _CRKLogASM_logObj_10;
    if (os_log_type_enabled(_CRKLogASM_logObj_10, OS_LOG_TYPE_ERROR))
    {
      [(CRKASMCertificateUserIdentifierExtractor *)v4 pickIdentifierFromIdentifiers:v5];
    }
  }

  firstObject = [identifiersCopy firstObject];

  return firstObject;
}

+ (id)allUserIdentifiersFromCertificate:(id)certificate
{
  v20 = *MEMORY[0x277D85DE8];
  certificateCopy = certificate;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  commonNames = [certificateCopy commonNames];
  v6 = [commonNames countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(commonNames);
        }

        v10 = [CRKASMCertificateCommonName commonNameWithString:*(*(&v15 + 1) + 8 * i)];
        v11 = v10;
        if (v10)
        {
          userIdentifier = [v10 userIdentifier];
          if (userIdentifier)
          {
            [v4 addObject:userIdentifier];
          }
        }
      }

      v7 = [commonNames countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v4 sortUsingSelector:sel_compare_];
  v13 = [v4 copy];

  return v13;
}

+ (void)pickIdentifierFromIdentifiers:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Certificate contains multiple user identifiers: [%@]", &v2, 0xCu);
}

@end