@interface ECCMSEncoder
+ (NSOrderedSet)oidStringsForAuthenticatedEncryption;
+ (id)_recipientInfoForCertificate:(void *)certificate andCapabilities:;
+ (id)_recipientInfosForRecipients:(void *)recipients outError:;
+ (id)_signedDataFromNetworkContentData:(unsigned int)data detached:(uint64_t)detached forSender:(uint64_t)sender identity:(uint64_t)identity encryptionCertificate:(void *)certificate capabilities:(void *)capabilities outError:;
+ (id)encryptedDataFromContentData:(id)data senderCertificate:(__SecCertificate *)certificate senderCapabilities:(id)capabilities recipients:(id)recipients outIsAuthenticated:(BOOL *)authenticated outError:(id *)error;
+ (id)oidsForEncryptWithGCM:(BOOL)m encryptSubject:(BOOL)subject;
+ (id)signatureDataFromNetworkContentData:(id)data forSender:(id)sender identity:(__SecIdentity *)identity encryptionCertificate:(__SecCertificate *)certificate capabilities:(id)capabilities outError:(id *)error;
+ (id)signedDataFromNetworkContentData:(id)data forSender:(id)sender identity:(__SecIdentity *)identity encryptionCertificate:(__SecCertificate *)certificate capabilities:(id)capabilities outError:(id *)error;
+ (uint64_t)_capabilitiesContainCapabilityRequiringAuthEnvelopedData:(uint64_t)data;
@end

@implementation ECCMSEncoder

uint64_t ___ef_log_ECCMSEncoder_block_invoke()
{
  _ef_log_ECCMSEncoder_log = os_log_create("com.apple.email", "ECCMSEncoder");

  return MEMORY[0x2821F96F8]();
}

+ (id)signatureDataFromNetworkContentData:(id)data forSender:(id)sender identity:(__SecIdentity *)identity encryptionCertificate:(__SecCertificate *)certificate capabilities:(id)capabilities outError:(id *)error
{
  v8 = [(ECCMSEncoder *)self _signedDataFromNetworkContentData:data detached:1u forSender:sender identity:identity encryptionCertificate:certificate capabilities:capabilities outError:error];

  return v8;
}

+ (id)_signedDataFromNetworkContentData:(unsigned int)data detached:(uint64_t)detached forSender:(uint64_t)sender identity:(uint64_t)identity encryptionCertificate:(void *)certificate capabilities:(void *)capabilities outError:
{
  v40 = *MEMORY[0x277D85DE8];
  v32 = a2;
  certificateCopy = certificate;
  objc_opt_self();
  v34 = [MEMORY[0x277D28640] OIDWithString:*MEMORY[0x277D285D8] error:capabilities];
  if (capabilities && *capabilities)
  {
    v13 = 0;
  }

  else
  {
    dataCopy = data;
    v14 = [objc_alloc(MEMORY[0x277D28628]) initWithIdentity:sender signatureAlgorithm:v34 error:capabilities];
    if (capabilities && *capabilities)
    {
      v13 = 0;
    }

    else
    {
      if ([certificateCopy count])
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v16 = certificateCopy;
        v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v17)
        {
          v18 = *v36;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v36 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = [objc_alloc(MEMORY[0x277D28640]) initWithString:*(*(&v35 + 1) + 8 * i) error:capabilities];
              if (v20)
              {
                [v15 addObject:v20];
              }
            }

            v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v17);
        }

        v21 = [objc_alloc(MEMORY[0x277D28618]) initWithCapabilities:v15];
        [v14 addSMIMECapabilitiesAttribute:v21];
      }

      v22 = objc_alloc(MEMORY[0x277D28630]);
      date = [MEMORY[0x277CBEAA8] date];
      v24 = [v22 initWithSigningTime:date];

      protectedAttributes = [v14 protectedAttributes];
      [protectedAttributes addObject:v24];

      if (identity)
      {
        v26 = [objc_alloc(MEMORY[0x277D28600]) initWithCertificate:identity];
        [v14 addSMIMEEncryptionKeyPreferenceAttribute:v26];
      }

      v27 = [objc_alloc(MEMORY[0x277D28620]) initWithDataContent:v32 isDetached:dataCopy signer:v14 error:capabilities];
      if (!v27 || capabilities && *capabilities)
      {
        v13 = 0;
      }

      else
      {
        v28 = [objc_alloc(MEMORY[0x277D285F8]) initWithEmbeddedContent:v27];
        v13 = [v28 encodeMessageSecurityObject:capabilities];
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)signedDataFromNetworkContentData:(id)data forSender:(id)sender identity:(__SecIdentity *)identity encryptionCertificate:(__SecCertificate *)certificate capabilities:(id)capabilities outError:(id *)error
{
  v8 = [(ECCMSEncoder *)self _signedDataFromNetworkContentData:data detached:0 forSender:sender identity:identity encryptionCertificate:certificate capabilities:capabilities outError:error];

  return v8;
}

+ (id)encryptedDataFromContentData:(id)data senderCertificate:(__SecCertificate *)certificate senderCapabilities:(id)capabilities recipients:(id)recipients outIsAuthenticated:(BOOL *)authenticated outError:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  capabilitiesCopy = capabilities;
  recipientsCopy = recipients;
  v40 = [(ECCMSEncoder *)self _recipientInfoForCertificate:certificate andCapabilities:capabilitiesCopy];
  v48 = 0;
  v36 = [(ECCMSEncoder *)self _recipientInfosForRecipients:recipientsCopy outError:&v48];
  v41 = v48;
  if (v41)
  {
    v14 = _ef_log_ECCMSEncoder();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [v41 ef_publicDescription];
      [ECCMSEncoder encryptedDataFromContentData:ef_publicDescription senderCertificate:v50 senderCapabilities:v14 recipients:? outIsAuthenticated:? outError:?];
    }
  }

  v16 = [(ECCMSEncoder *)self _capabilitiesContainCapabilityRequiringAuthEnvelopedData:capabilitiesCopy];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __121__ECCMSEncoder_encryptedDataFromContentData_senderCertificate_senderCapabilities_recipients_outIsAuthenticated_outError___block_invoke;
  v47[3] = &__block_descriptor_40_e24_B16__0__ECCMSRecipient_8l;
  v47[4] = self;
  v34 = v16 & [recipientsCopy ef_all:v47];
  v17 = 0x277D285F0;
  if (!v34)
  {
    v17 = 0x277D28608;
  }

  v18 = [objc_alloc(*v17) initWithDataContent:dataCopy recipient:v40];
  errorCopy = error;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = v36;
  v20 = [v19 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v20)
  {
    v21 = *v44;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v43 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v18 addRecipient:v23];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v18 addRecipientWithRecipient:v23];
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v20);
  }

  v24 = [objc_alloc(MEMORY[0x277D285F8]) initWithEmbeddedContent:v18];
  v25 = v24;
  if (v24)
  {
    v42 = v41;
    v26 = [v24 encodeMessageSecurityObject:&v42];
    v27 = v42;

    if (v26)
    {
      if (authenticated)
      {
        *authenticated = v34;
      }

      if (errorCopy)
      {
        *errorCopy = 0;
      }

      v28 = v26;
    }

    else
    {
      v30 = _ef_log_ECCMSEncoder();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [ECCMSEncoder encryptedDataFromContentData:v30 senderCertificate:? senderCapabilities:? recipients:? outIsAuthenticated:? outError:?];
      }

      if (errorCopy)
      {
        v31 = objc_alloc(MEMORY[0x277CCA9B8]);
        *errorCopy = [v31 ef_initWithDomain:@"ECCMSErrorDomain" code:6 underlyingError:v27];
      }
    }

    v41 = v27;
  }

  else
  {
    v29 = _ef_log_ECCMSEncoder();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [ECCMSEncoder encryptedDataFromContentData:v29 senderCertificate:? senderCapabilities:? recipients:? outIsAuthenticated:? outError:?];
    }

    v26 = 0;
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ECCMSErrorDomain" code:5 userInfo:0];
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)_recipientInfoForCertificate:(void *)certificate andCapabilities:
{
  v34 = *MEMORY[0x277D85DE8];
  certificateCopy = certificate;
  objc_opt_self();
  v19 = a2;
  if (certificateCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(certificateCopy, "count")}];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = certificateCopy;
    v5 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v5)
    {
      v6 = *v25;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v24 + 1) + 8 * i);
          v23 = 0;
          v9 = [MEMORY[0x277D28640] OIDWithString:v8 error:{&v23, v19}];
          v10 = v23;
          if (v9)
          {
            [v4 addObject:v9];
          }

          else
          {
            v11 = _ef_log_ECCMSEncoder();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              ef_publicDescription = [v10 ef_publicDescription];
              *buf = 138543618;
              v30 = v8;
              v31 = 2114;
              v32 = ef_publicDescription;
              _os_log_error_impl(&dword_22D092000, v11, OS_LOG_TYPE_ERROR, "Error for recipient OID %{public}@: %{public}@", buf, 0x16u);
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v5);
    }

    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  if ([v13 count])
  {
    v14 = objc_alloc(MEMORY[0x277D28610]);
    v28 = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    v16 = [v14 initWithCertificate:v20 algorithmCapabilities:v15];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277D28610]) initWithCertificate:v20];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_recipientInfosForRecipients:(void *)recipients outError:
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_opt_self();
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __54__ECCMSEncoder__recipientInfosForRecipients_outError___block_invoke;
  v17 = &unk_27874B730;
  v19 = v5;
  v7 = v6;
  v18 = v7;
  v8 = [v4 ef_compactMap:&v14];
  if ([v7 count])
  {
    v9 = _ef_log_ECCMSEncoder();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ECCMSEncoder _recipientInfosForRecipients:outError:].cold.1(v22, [v7 count], v9);
    }

    if (recipients)
    {
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v20 = @"ECCMS_Recipient";
      v21 = v7;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      *recipients = [v10 initWithDomain:@"ECCMSErrorDomain" code:3 userInfo:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (uint64_t)_capabilitiesContainCapabilityRequiringAuthEnvelopedData:(uint64_t)data
{
  v2 = a2;
  oidStringsForAuthenticatedEncryption = [objc_opt_self() oidStringsForAuthenticatedEncryption];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__ECCMSEncoder__capabilitiesContainCapabilityRequiringAuthEnvelopedData___block_invoke;
  v7[3] = &unk_27874B708;
  v8 = oidStringsForAuthenticatedEncryption;
  v4 = oidStringsForAuthenticatedEncryption;
  v5 = [v2 ef_any:v7];

  return v5;
}

uint64_t __121__ECCMSEncoder_encryptedDataFromContentData_senderCertificate_senderCapabilities_recipients_outIsAuthenticated_outError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 capabilities];
  v4 = [(ECCMSEncoder *)v2 _capabilitiesContainCapabilityRequiringAuthEnvelopedData:v3];

  return v4;
}

id __54__ECCMSEncoder__recipientInfosForRecipients_outError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 certificate];
  v5 = *(a1 + 40);
  v6 = [v3 capabilities];
  v7 = [(ECCMSEncoder *)v5 _recipientInfoForCertificate:v4 andCapabilities:v6];

  if (!v7)
  {
    commonName = 0;
    SecCertificateCopyCommonName(v4, &commonName);
    v8 = commonName;
    v9 = _ef_log_ECCMSEncoder();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(__CFString *)v8 emailAddressValue];
      __54__ECCMSEncoder__recipientInfosForRecipients_outError___block_invoke_cold_1(v10, v14, v9);
    }

    [*(a1 + 32) addObject:v4];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (NSOrderedSet)oidStringsForAuthenticatedEncryption
{
  if (oidStringsForAuthenticatedEncryption_onceToken != -1)
  {
    +[ECCMSEncoder oidStringsForAuthenticatedEncryption];
  }

  v3 = oidStringsForAuthenticatedEncryption_authenticatedEncryptionOIDStrings;

  return v3;
}

uint64_t __52__ECCMSEncoder_oidStringsForAuthenticatedEncryption__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB70]);
  v1 = *MEMORY[0x277D285C0];
  oidStringsForAuthenticatedEncryption_authenticatedEncryptionOIDStrings = [v0 initWithObjects:{*MEMORY[0x277D285D0], *MEMORY[0x277D285C0], *MEMORY[0x277D285B0], *MEMORY[0x277D285C8], *MEMORY[0x277D285B8], *MEMORY[0x277D285A8], 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)oidsForEncryptWithGCM:(BOOL)m encryptSubject:(BOOL)subject
{
  subjectCopy = subject;
  v22 = *MEMORY[0x277D85DE8];
  if (m)
  {
    oidStringForEncryptedSubject2 = objc_alloc_init(MEMORY[0x277D28618]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    capabilities = [oidStringForEncryptedSubject2 capabilities];
    v9 = [capabilities countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(capabilities);
          }

          oIDString = [*(*(&v16 + 1) + 8 * i) OIDString];
          [v7 addObject:oIDString];
        }

        v9 = [capabilities countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    if (subjectCopy)
    {
      oidStringForEncryptedSubject = [self oidStringForEncryptedSubject];
      [v7 addObject:oidStringForEncryptedSubject];
    }

    goto LABEL_13;
  }

  if (subject)
  {
    oidStringForEncryptedSubject2 = [self oidStringForEncryptedSubject];
    v20 = oidStringForEncryptedSubject2;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
LABEL_13:

    goto LABEL_15;
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_15:
  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)encryptedDataFromContentData:(NSObject *)a3 senderCertificate:senderCapabilities:recipients:outIsAuthenticated:outError:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_22D092000, a2, a3, "Failed to create some recipient infos: %{public}@", a2);
}

+ (void)_recipientInfosForRecipients:(NSObject *)a3 outError:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_0(&dword_22D092000, a2, a3, "Failed to create %lu recipient infos", a1);
}

void __54__ECCMSEncoder__recipientInfosForRecipients_outError___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_22D092000, a2, a3, "Failed to create info for recipient: %{public}@", a2);
}

@end