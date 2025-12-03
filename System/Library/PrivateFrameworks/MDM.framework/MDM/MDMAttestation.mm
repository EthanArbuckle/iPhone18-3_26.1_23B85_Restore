@interface MDMAttestation
+ (id)sharedInstance;
- (BOOL)_retrieveCerts:(id *)certs nonce:(id *)nonce issued:(id *)issued;
- (BOOL)_storeCerts:(id)certs nonce:(id)nonce issued:(id)issued outError:(id *)error;
- (__SecKey)attestationKey:(BOOL)key outError:(id *)error;
- (id)_expirationForIssued:(id)issued;
- (id)initPrivate;
- (void)reset;
@end

@implementation MDMAttestation

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MDMAttestation_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance__sharedInstance_0;

  return v2;
}

uint64_t __32__MDMAttestation_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__sharedInstance_0 = [objc_alloc(*(a1 + 32)) initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v7.receiver = self;
  v7.super_class = MDMAttestation;
  v2 = [(MDMAttestation *)&v7 init];
  v3 = v2;
  if (v2)
  {
    certs = v2->_certs;
    v2->_key = 0;
    v2->_certs = 0;

    nonce = v3->_nonce;
    v3->_nonce = 0;
  }

  return v3;
}

- (__SecKey)attestationKey:(BOOL)key outError:(id *)error
{
  keyCopy = key;
  v22[3] = *MEMORY[0x277D85DE8];
  if (MEMORY[0x259C5ED90](self, a2))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    key = selfCopy->_key;
    if (key)
    {
LABEL_20:
      objc_sync_exit(selfCopy);

      goto LABEL_21;
    }

    key = [MEMORY[0x277D03520] retrieveAttestationKeyWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationKey"];
    if (key)
    {
LABEL_4:
      selfCopy->_key = key;
      goto LABEL_20;
    }

    [(MDMAttestation *)selfCopy reset];
    v11 = *MEMORY[0x277CDC170];
    v12 = *MEMORY[0x277CDC028];
    v21[0] = *MEMORY[0x277CDC158];
    v21[1] = v12;
    v13 = MEMORY[0x277CDC068];
    if (!keyCopy)
    {
      v13 = MEMORY[0x277CDC070];
    }

    v14 = *v13;
    v22[0] = v11;
    v22[1] = v14;
    v21[2] = *MEMORY[0x277CDC5D0];
    v22[2] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    error = 0;
    key = SecKeyCreateRandomKey(v15, &error);
    if (key)
    {
      if ([MEMORY[0x277D03520] storeAttestationKey:key withGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationKey"])
      {

        goto LABEL_4;
      }

      if (error)
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = DMCErrorArray();
        *error = [v16 DMCErrorWithDomain:*MEMORY[0x277D03480] code:12109 descriptionArray:v17 errorType:{*MEMORY[0x277D032F8], 0}];
      }

      CFRelease(key);
    }

    else
    {
      if (error)
      {
        *error = error;
      }
    }

    key = 0;
    goto LABEL_20;
  }

  if (error)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = DMCErrorArray();
    *error = [v9 DMCErrorWithDomain:*MEMORY[0x277D03480] code:12106 descriptionArray:v10 errorType:{*MEMORY[0x277D032F8], 0}];
  }

  key = 0;
LABEL_21:
  v18 = *MEMORY[0x277D85DE8];
  return key;
}

void __71__MDMAttestation__requestAttestationCertChainAnonymous_nonce_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  if (v5)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = v5;
LABEL_3:
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
    goto LABEL_8;
  }

  if (v16 && [v16 count] == 2)
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = v16;
    goto LABEL_3;
  }

  v11 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277D03480];
  v10 = DMCErrorArray();
  v13 = [v11 DMCErrorWithDomain:v12 code:12107 descriptionArray:v10 errorType:{*MEMORY[0x277D032F8], 0}];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

LABEL_8:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)reset
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  key = obj->_key;
  if (key)
  {
    CFRelease(key);
    v2 = obj;
    obj->_key = 0;
  }

  certs = v2->_certs;
  v2->_certs = 0;

  nonce = obj->_nonce;
  obj->_nonce = 0;

  [MEMORY[0x277D03520] deleteAttestationKeyWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationKey"];
  [MEMORY[0x277D03520] deleteAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationCert"];
  [MEMORY[0x277D03520] deleteAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationIntermediate"];
  [MEMORY[0x277D03520] deleteAttestationMetadataWithGroup:@"com.apple.mdm.attestation" service:@"MDMAttestationMetadata"];
  objc_sync_exit(obj);
}

- (BOOL)_storeCerts:(id)certs nonce:(id)nonce issued:(id)issued outError:(id *)error
{
  certsCopy = certs;
  nonceCopy = nonce;
  issuedCopy = issued;
  [MEMORY[0x277D03520] deleteAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationCert"];
  [MEMORY[0x277D03520] deleteAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationIntermediate"];
  [MEMORY[0x277D03520] deleteAttestationMetadataWithGroup:@"com.apple.mdm.attestation" service:@"MDMAttestationMetadata"];
  v12 = MEMORY[0x277D03520];
  v13 = [certsCopy objectAtIndexedSubscript:0];
  v14 = [v12 storeAttestationCert:v13 withGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationCert"];

  if (v14)
  {
    v15 = MEMORY[0x277D03520];
    v16 = [certsCopy objectAtIndexedSubscript:1];
    v17 = [v15 storeAttestationCert:v16 withGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationIntermediate"];

    if (error && !v17)
    {
      v18 = 12111;
LABEL_7:
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D03480];
      v21 = DMCErrorArray();
      *error = [v19 DMCErrorWithDomain:v20 code:v18 descriptionArray:v21 errorType:{*MEMORY[0x277D032F8], 0}];

LABEL_8:
      error = 0;
      goto LABEL_9;
    }

    if (!v17)
    {
      goto LABEL_8;
    }

    v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    [v24 setObject:issuedCopy forKeyedSubscript:@"issued"];
    [v24 setObject:nonceCopy forKeyedSubscript:@"nonce"];
    error = [MEMORY[0x277CCAC58] dataWithPropertyList:v24 format:200 options:0 error:error];

    if (!error || ([MEMORY[0x277D03520] storeAttestationMetadata:error withGroup:@"com.apple.mdm.attestation" service:@"MDMAttestationMetadata"] & 1) != 0)
    {
      v22 = 1;
      goto LABEL_10;
    }
  }

  else if (error)
  {
    v18 = 12110;
    goto LABEL_7;
  }

LABEL_9:
  [MEMORY[0x277D03520] deleteAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationCert"];
  [MEMORY[0x277D03520] deleteAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationIntermediate"];
  [MEMORY[0x277D03520] deleteAttestationMetadataWithGroup:@"com.apple.mdm.attestation" service:@"MDMAttestationMetadata"];
  v22 = 0;
LABEL_10:

  return v22;
}

- (BOOL)_retrieveCerts:(id *)certs nonce:(id *)nonce issued:(id *)issued
{
  v17[2] = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277D03520] retrieveAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationCert"];
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277D03520] retrieveAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationIntermediate"];
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x277D03520] retrieveAttestationMetadataWithGroup:@"com.apple.mdm.attestation" service:@"MDMAttestationMetadata"];
      if (v12)
      {
        v13 = [MEMORY[0x277CCAC58] propertyListWithData:v12 options:0 format:0 error:0];
        if (v13)
        {
          v14 = v13;
          v17[0] = v9;
          v17[1] = v11;
          *certs = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

          *nonce = [v14 objectForKeyedSubscript:@"nonce"];
          *issued = [v14 objectForKeyedSubscript:@"issued"];

          LOBYTE(v8) = 1;
          goto LABEL_9;
        }
      }

      CFRelease(v9);
      CFRelease(v11);
    }

    else
    {
      CFRelease(v9);
    }

    LOBYTE(v8) = 0;
  }

LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_expirationForIssued:(id)issued
{
  v3 = MEMORY[0x277CBEAB8];
  issuedCopy = issued;
  v5 = objc_alloc_init(v3);
  attestationRateLimitOverrideMinutes = [MEMORY[0x277D03500] attestationRateLimitOverrideMinutes];
  v7 = attestationRateLimitOverrideMinutes;
  if (attestationRateLimitOverrideMinutes)
  {
    [v5 setMinute:{objc_msgSend(attestationRateLimitOverrideMinutes, "integerValue")}];
  }

  else
  {
    [v5 setDay:7];
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar dateByAddingComponents:v5 toDate:issuedCopy options:0];

  return v9;
}

@end