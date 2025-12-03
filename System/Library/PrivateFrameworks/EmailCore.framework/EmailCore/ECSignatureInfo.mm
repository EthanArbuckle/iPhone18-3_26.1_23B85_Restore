@interface ECSignatureInfo
- (ECSignatureInfo)initWithSignerInfo:(id)info certificates:(id)certificates;
- (NSArray)addresses;
- (NSArray)smimeCapabilities;
- (NSDate)signingDate;
- (__SecCertificate)preferredEncryptionCertificate;
- (id)_protectedAttributeOfType:(objc_class *)type class:;
- (id)_protectedEncryptionKeyPreferenceAttributeWithAdditionalCertificates:(uint64_t)certificates;
- (void)dealloc;
@end

@implementation ECSignatureInfo

- (ECSignatureInfo)initWithSignerInfo:(id)info certificates:(id)certificates
{
  infoCopy = info;
  certificatesCopy = certificates;
  v12.receiver = self;
  v12.super_class = ECSignatureInfo;
  v9 = [(ECSignatureInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_signerInfo, info);
    v10->_encryptionCertificateLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v10->_certificates, certificates);
  }

  return v10;
}

- (void)dealloc
{
  encryptionCertificate = self->_encryptionCertificate;
  if (encryptionCertificate)
  {
    CFRelease(encryptionCertificate);
  }

  v4.receiver = self;
  v4.super_class = ECSignatureInfo;
  [(ECSignatureInfo *)&v4 dealloc];
}

- (NSArray)addresses
{
  [(ECSignatureInfo *)self signingCertificate];
  v2 = SecCertificateCopyRFC822Names();

  return v2;
}

- (__SecCertificate)preferredEncryptionCertificate
{
  os_unfair_lock_lock(&self->_encryptionCertificateLock);
  encryptionCertificate = self->_encryptionCertificate;
  os_unfair_lock_unlock(&self->_encryptionCertificateLock);
  if (!encryptionCertificate)
  {
    v4 = [(ECSignatureInfo *)self _protectedEncryptionKeyPreferenceAttributeWithAdditionalCertificates:?];
    encryptionCertificate = [v4 encryptionCertificate];
    if (encryptionCertificate || (encryptionCertificate = [(ECSignatureInfo *)self signingCertificate], encryptionCertificate = 0, (SecCertificateGetKeyUsage() & 0x14) != 0) && encryptionCertificate)
    {
      os_unfair_lock_lock(&self->_encryptionCertificateLock);
      encryptionCertificate = self->_encryptionCertificate;
      if (!encryptionCertificate)
      {
        self->_encryptionCertificate = encryptionCertificate;
        CFRetain(encryptionCertificate);
        encryptionCertificate = encryptionCertificate;
      }

      os_unfair_lock_unlock(&self->_encryptionCertificateLock);
    }
  }

  return encryptionCertificate;
}

- (id)_protectedEncryptionKeyPreferenceAttributeWithAdditionalCertificates:(uint64_t)certificates
{
  v3 = a2;
  if (certificates)
  {
    protectedAttributes = [*(certificates + 8) protectedAttributes];
    v5 = [protectedAttributes ef_firstObjectPassingTest:&__block_literal_global_0];

    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277D28600]) initWithAttribute:v5 certificates:v3 LAContext:0 error:0];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)smimeCapabilities
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D28568];
  v4 = objc_opt_class();
  v5 = [(ECSignatureInfo *)self _protectedAttributeOfType:v3 class:v4];
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  capabilities = [v5 capabilities];
  v8 = [v6 initWithCapacity:{objc_msgSend(capabilities, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  capabilities2 = [v5 capabilities];
  v10 = [capabilities2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(capabilities2);
        }

        oIDString = [*(*(&v16 + 1) + 8 * i) OIDString];
        [v8 addObject:oIDString];
      }

      v10 = [capabilities2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_protectedAttributeOfType:(objc_class *)type class:
{
  v5 = a2;
  if (self)
  {
    protectedAttributes = [*(self + 8) protectedAttributes];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__ECSignatureInfo__protectedAttributeOfType_class___block_invoke;
    v10[3] = &unk_27874B690;
    v11 = v5;
    v7 = [protectedAttributes ef_firstObjectPassingTest:v10];

    if (v7)
    {
      v8 = [[type alloc] initWithAttribute:v7 error:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSDate)signingDate
{
  v3 = *MEMORY[0x277D28570];
  v4 = objc_opt_class();
  v5 = [(ECSignatureInfo *)self _protectedAttributeOfType:v3 class:v4];
  signingTime = [v5 signingTime];

  return signingTime;
}

uint64_t __51__ECSignatureInfo__protectedAttributeOfType_class___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attributeType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __88__ECSignatureInfo__protectedEncryptionKeyPreferenceAttributeWithAdditionalCertificates___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 attributeType];
  v3 = [v2 isEqualToString:*MEMORY[0x277D28560]];

  return v3;
}

@end