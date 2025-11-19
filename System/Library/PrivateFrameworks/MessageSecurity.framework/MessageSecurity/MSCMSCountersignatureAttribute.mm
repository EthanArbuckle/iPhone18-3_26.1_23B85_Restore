@interface MSCMSCountersignatureAttribute
- (BOOL)verifyCountersignatures:(id)a3 error:(id *)a4;
- (BOOL)verifyCountersignaturesAndCountersignersWithPolicies:(id)a3 verifyTime:(id)a4 anchorCertificates:(id)a5 signature:(id)a6 error:(id *)a7;
- (MSCMSCountersignatureAttribute)initWithAttribute:(id)a3 certificates:(id)a4 LAContext:(id)a5 containingSignerInfo:(id)a6 error:(id *)a7;
- (MSCMSCountersignatureAttribute)initWithSignerInfo:(id)a3 signerChainMode:(unint64_t)a4 additionalCertificates:(id)a5;
- (MSCMSSignerInfo)containingSignerInfo;
- (id)encodeAttributeWithError:(id *)a3;
- (void)addSigner:(id)a3;
- (void)addSigner:(id)a3 withCertificates:(id)a4;
- (void)addSigner:(id)a3 withChainMode:(unint64_t)a4 error:(id *)a5;
- (void)removeSignerCertificatesWithIndexes:(id)a3;
- (void)removeSignersWithCertificate:(__SecCertificate *)a3 error:(id *)a4;
- (void)removeSignersWithEmailAddress:(id)a3 error:(id *)a4;
- (void)removeSignersWithIdentity:(__SecIdentity *)a3 error:(id *)a4;
- (void)removeSignersWithIndexes:(id)a3 error:(id *)a4;
- (void)setContainingSignerInfo:(id)a3;
@end

@implementation MSCMSCountersignatureAttribute

- (MSCMSCountersignatureAttribute)initWithAttribute:(id)a3 certificates:(id)a4 LAContext:(id)a5 containingSignerInfo:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v12 attributeType];
  v17 = [v16 isEqualToString:@"1.2.840.113549.1.9.6"];

  if (v17)
  {
    v43.receiver = self;
    v43.super_class = MSCMSCountersignatureAttribute;
    self = [(MSCMSCountersignatureAttribute *)&v43 init];
    if (!self)
    {
      goto LABEL_13;
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__2;
    v41 = __Block_byref_object_dispose__2;
    if (a7)
    {
      v18 = *a7;
      if (*a7)
      {
        v18 = [v18 copy];
      }
    }

    else
    {
      v18 = 0;
    }

    v42 = v18;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__2;
    v35 = __Block_byref_object_dispose__2;
    v20 = MEMORY[0x277CBEB18];
    v21 = [v12 attributeValues];
    v36 = [v20 arrayWithCapacity:{objc_msgSend(v21, "count")}];

    [(MSCMSCountersignatureAttribute *)self setContainingSignerInfo:v15];
    v22 = [v12 attributeValues];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __102__MSCMSCountersignatureAttribute_initWithAttribute_certificates_LAContext_containingSignerInfo_error___block_invoke;
    v25[3] = &unk_2798BE4D0;
    v29 = &v37;
    v26 = v13;
    v27 = v14;
    v28 = v15;
    v30 = &v31;
    [v22 enumerateObjectsUsingBlock:v25];

    v19 = [v32[5] count];
    if (v19)
    {
      objc_storeStrong(&self->_signers, v32[5]);
    }

    else if (a7)
    {
      v24 = v38[5];
      if (v24)
      {
        *a7 = v24;
      }
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v37, 8);

    if (v19)
    {
LABEL_13:
      self = self;
      v19 = self;
    }
  }

  else if (a7)
  {
    [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:*a7 description:@"Not a Countersignature attribute according to AttributeType"];
    *a7 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t __102__MSCMSCountersignatureAttribute_initWithAttribute_certificates_LAContext_containingSignerInfo_error___block_invoke(void *a1, void *a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v3 = nsheim_decode_SignerInfo(a2);
  if (v3)
  {
    __102__MSCMSCountersignatureAttribute_initWithAttribute_certificates_LAContext_containingSignerInfo_error___block_invoke_cold_1(v3, a1, &v12);
    v7 = v12;
    goto LABEL_4;
  }

  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  v7 = [(MSCMSSignerInfo *)MSCMSCounterSignerInfo decodeSignerInfo:v10 certificates:v4 LAContext:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  [v7 setContainingSignerInfo:a1[6]];
  if (v7)
  {
    [*(*(a1[8] + 8) + 40) addObject:v7];
LABEL_4:
  }

  return free_SignerInfo();
}

- (MSCMSCountersignatureAttribute)initWithSignerInfo:(id)a3 signerChainMode:(unint64_t)a4 additionalCertificates:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = MSCMSCountersignatureAttribute;
  v10 = [(MSCMSCountersignatureAttribute *)&v14 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
    signers = v10->_signers;
    v10->_signers = v11;

    v10->_chainMode = a4;
    objc_storeStrong(&v10->_additionalCertificates, a5);
  }

  return v10;
}

- (void)setContainingSignerInfo:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_storeWeak(&self->_containingSignerInfo, v4);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(MSCMSCountersignatureAttribute *)self signers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setContainingSignerInfo:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addSigner:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(MSCMSCountersignatureAttribute *)self containingSignerInfo];
    [v4 setContainingSignerInfo:v5];

    v6 = [MEMORY[0x277CBEB18] arrayWithArray:self->_signers];
    [(NSArray *)v6 addObject:v4];

    signers = self->_signers;
    self->_signers = v6;

    [(MSCMSCountersignatureAttribute *)self setChainMode:1];
  }
}

- (void)addSigner:(id)a3 withCertificates:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (v15)
  {
    [(MSCMSCountersignatureAttribute *)self addSigner:?];
    WeakRetained = objc_loadWeakRetained(&self->_containingSignerInfo);
    v8 = [WeakRetained containingSignedData];

    if (v8)
    {
      if (v6)
      {
        v9 = objc_loadWeakRetained(&self->_containingSignerInfo);
        v10 = [v9 containingSignedData];
        v11 = [v10 certificates];
        [v11 addObjectsFromArray:v6];
      }

      v12 = objc_loadWeakRetained(&self->_containingSignerInfo);
      v13 = [v12 containingSignedData];
      v14 = objc_loadWeakRetained(&self->_containingSignerInfo);
      [v13 addCounterSignerCertificates:v14 mode:1 error:0];
    }

    else
    {
      [(MSCMSCountersignatureAttribute *)self setAdditionalCertificates:v6];
      [(MSCMSCountersignatureAttribute *)self setChainMode:1];
    }
  }
}

- (void)addSigner:(id)a3 withChainMode:(unint64_t)a4 error:(id *)a5
{
  [(MSCMSCountersignatureAttribute *)self addSigner:a3];
  WeakRetained = objc_loadWeakRetained(&self->_containingSignerInfo);
  v9 = [WeakRetained containingSignedData];

  if (v9)
  {
    v12 = objc_loadWeakRetained(&self->_containingSignerInfo);
    v10 = [v12 containingSignedData];
    v11 = objc_loadWeakRetained(&self->_containingSignerInfo);
    [v10 addCounterSignerCertificates:v11 mode:a4 error:a5];
  }

  else
  {

    [(MSCMSCountersignatureAttribute *)self setChainMode:a4];
  }
}

- (void)removeSignerCertificatesWithIndexes:(id)a3
{
  signers = self->_signers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__MSCMSCountersignatureAttribute_removeSignerCertificatesWithIndexes___block_invoke;
  v4[3] = &unk_2798BE4F8;
  v4[4] = self;
  [(NSArray *)signers enumerateObjectsAtIndexes:a3 options:0 usingBlock:v4];
}

void __70__MSCMSCountersignatureAttribute_removeSignerCertificatesWithIndexes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setContainingSignerInfo:0];
  v7 = [*(a1 + 32) containingSignerInfo];
  v4 = [v7 containingSignedData];
  v5 = [v4 certificates];
  v6 = [v3 signerCertificate];

  [v5 removeObject:v6];
}

- (void)removeSignersWithIndexes:(id)a3 error:(id *)a4
{
  v10 = a3;
  if ([v10 count])
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithArray:self->_signers];
    [(NSArray *)v6 removeObjectsAtIndexes:v10];
    [(MSCMSCountersignatureAttribute *)self removeSignerCertificatesWithIndexes:v10];
    signers = self->_signers;
    self->_signers = v6;
  }

  else
  {
    if (a4 && *a4)
    {
      v8 = [*a4 copy];
    }

    else
    {
      v8 = 0;
    }

    signers = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v8 description:@"no signer with input certificate hash"];

    if (a4 && signers)
    {
      v9 = signers;
      *a4 = signers;
    }
  }
}

- (void)removeSignersWithCertificate:(__SecCertificate *)a3 error:(id *)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = [MEMORY[0x277CCAB58] indexSet];
  signers = self->_signers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__MSCMSCountersignatureAttribute_removeSignersWithCertificate_error___block_invoke;
  v8[3] = &unk_2798BE248;
  v8[4] = &v9;
  v8[5] = a3;
  [(NSArray *)signers enumerateObjectsUsingBlock:v8];
  [(MSCMSCountersignatureAttribute *)self removeSignersWithIndexes:v10[5] error:a4];
  _Block_object_dispose(&v9, 8);
}

uint64_t __69__MSCMSCountersignatureAttribute_removeSignersWithCertificate_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 40))
  {
    v8 = v5;
    v5 = [v5 signerCertificate];
    v6 = v8;
    if (v5)
    {
      v5 = CFEqual(*(a1 + 40), [v8 signerCertificate]);
      v6 = v8;
      if (v5)
      {
        v5 = [*(*(*(a1 + 32) + 8) + 40) addIndex:a3];
        v6 = v8;
      }
    }
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

- (void)removeSignersWithEmailAddress:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = [MEMORY[0x277CCAB58] indexSet];
  signers = self->_signers;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __70__MSCMSCountersignatureAttribute_removeSignersWithEmailAddress_error___block_invoke;
  v12 = &unk_2798BE298;
  v8 = v6;
  v13 = v8;
  v14 = &v15;
  [(NSArray *)signers enumerateObjectsUsingBlock:&v9];
  [(MSCMSCountersignatureAttribute *)self removeSignersWithIndexes:v16[5] error:a4, v9, v10, v11, v12];

  _Block_object_dispose(&v15, 8);
}

void __70__MSCMSCountersignatureAttribute_removeSignersWithEmailAddress_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 signerCertificate];
  v5 = SecCertificateCopyRFC822Names();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__MSCMSCountersignatureAttribute_removeSignersWithEmailAddress_error___block_invoke_2;
  v8[3] = &unk_2798BE270;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v6;
  v10 = v7;
  v11 = a3;
  [v5 enumerateObjectsUsingBlock:v8];
}

uint64_t __70__MSCMSCountersignatureAttribute_removeSignersWithEmailAddress_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) caseInsensitiveCompare:a2];
  if (!result)
  {
    v4 = *(a1 + 48);
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return [v5 addIndex:v4];
  }

  return result;
}

- (BOOL)verifyCountersignatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  if (a4)
  {
    v7 = *a4;
    if (*a4)
    {
      v7 = [v7 copy];
    }
  }

  else
  {
    v7 = 0;
  }

  v22 = v7;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  signers = self->_signers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__MSCMSCountersignatureAttribute_verifyCountersignatures_error___block_invoke;
  v12[3] = &unk_2798BE520;
  v12[5] = &v13;
  v12[6] = a4;
  v12[4] = &v17;
  [(NSArray *)signers enumerateObjectsUsingBlock:v12];
  if (a4)
  {
    v9 = v18[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return (v10 & 1) == 0;
}

void __64__MSCMSCountersignatureAttribute_verifyCountersignatures_error___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  if (([v16 verifySignature:a1[6]] & 1) == 0)
  {
    v7 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[4] + 8) + 40) description:@"signature verification failed for signer %lu", a3];
    v8 = *(a1[4] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
    *(*(a1[5] + 8) + 24) = 1;
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    if (([v16 verifyCountersignatures:a1[6]] & 1) == 0)
    {
      v10 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[4] + 8) + 40) description:@"countersignature verification failed for signer %lu", a3];
      v11 = *(a1[4] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      *(*(a1[5] + 8) + 24) = 1;
    }

    if ((*(*(a1[5] + 8) + 24) & 1) == 0 && ([v16 verifyTimestamps:a1[6]] & 1) == 0)
    {
      v13 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[4] + 8) + 40) description:@"timestamp verification failed for signer %lu", a3];
      v14 = *(a1[4] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      *(*(a1[5] + 8) + 24) = 1;
    }
  }
}

- (BOOL)verifyCountersignaturesAndCountersignersWithPolicies:(id)a3 verifyTime:(id)a4 anchorCertificates:(id)a5 signature:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  if (a7)
  {
    v16 = *a7;
    if (*a7)
    {
      v16 = [v16 copy];
    }
  }

  else
  {
    v16 = 0;
  }

  v40 = v16;
  v17 = (v36 + 5);
  obj = v36[5];
  v18 = [(MSCMSCountersignatureAttribute *)self verifyCountersignatures:v15 error:&obj];
  objc_storeStrong(v17, obj);
  if (v18)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    signers = self->_signers;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __133__MSCMSCountersignatureAttribute_verifyCountersignaturesAndCountersignersWithPolicies_verifyTime_anchorCertificates_signature_error___block_invoke;
    v24[3] = &unk_2798BE548;
    v25 = v12;
    v26 = v13;
    v27 = v14;
    v28 = &v35;
    v29 = &v30;
    [(NSArray *)signers enumerateObjectsUsingBlock:v24];
    if (a7)
    {
      v20 = v36[5];
      if (v20)
      {
        *a7 = v20;
      }
    }

    v21 = *(v31 + 24) ^ 1;

    _Block_object_dispose(&v30, 8);
  }

  else if (a7 && (v22 = v36[5]) != 0)
  {
    v21 = 0;
    *a7 = v22;
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(&v35, 8);

  return v21 & 1;
}

void __133__MSCMSCountersignatureAttribute_verifyCountersignaturesAndCountersignersWithPolicies_verifyTime_anchorCertificates_signature_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  error = 0;
  v4 = a1[4];
  v5 = [v3 verifyTime:a1[5]];
  v6 = a1[6];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = [v3 createTrustObjectWithPolicies:v4 verifyTime:v5 anchorCertificates:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (!v8)
  {
    goto LABEL_9;
  }

  if (!SecTrustEvaluateWithError(v8, &error))
  {
    __133__MSCMSCountersignatureAttribute_verifyCountersignaturesAndCountersignersWithPolicies_verifyTime_anchorCertificates_signature_error___block_invoke_cold_1(&error, (a1 + 7));
LABEL_8:
    CFRelease(v8);
LABEL_9:
    *(*(a1[8] + 8) + 24) = 1;
    goto LABEL_6;
  }

  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = *(a1[7] + 8);
  v17 = *(v12 + 40);
  v13 = [v3 verifyCountersignaturesAndCountersignersWithPolicies:v9 verifyTime:v10 anchorCertificates:v11 error:&v17];
  objc_storeStrong((v12 + 40), v17);
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = *(a1[7] + 8);
  v16 = *(v14 + 40);
  v15 = [v3 verifyTimestamps:&v16];
  objc_storeStrong((v14 + 40), v16);
  if (!v15)
  {
    goto LABEL_8;
  }

  CFRelease(v8);
LABEL_6:
}

- (id)encodeAttributeWithError:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_signers, "count")}];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      v5 = [v5 copy];
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = v5;
  signers = self->_signers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__MSCMSCountersignatureAttribute_encodeAttributeWithError___block_invoke;
  v12[3] = &unk_2798BE570;
  v12[4] = &v13;
  v12[5] = &v19;
  [(NSArray *)signers enumerateObjectsUsingBlock:v12];
  if ([v20[5] count])
  {
    v7 = [MSCMSAttribute alloc];
    v8 = [MSOID OIDWithString:@"1.2.840.113549.1.9.6" error:a3];
    v9 = [(MSCMSAttribute *)v7 initWithAttributeType:v8 values:v20[5]];

    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  v10 = v14[5];
  if (v10)
  {
    *a3 = v10;
  }

LABEL_11:
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __59__MSCMSCountersignatureAttribute_encodeAttributeWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = malloc_type_malloc(0x68uLL, 0x10B00404EF9CE24uLL);
  v8 = [v6 containingSignerInfo];
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = v8;
  v10 = [v6 containingSignerInfo];
  v11 = [v10 signature];

  if (!v11)
  {
LABEL_3:
    __59__MSCMSCountersignatureAttribute_encodeAttributeWithError___block_invoke_cold_1(a1);
    goto LABEL_12;
  }

  v12 = *(*(a1 + 32) + 8);
  obj = *(v12 + 40);
  v13 = [v6 encodeSignerInfo:v7 error:&obj];
  objc_storeStrong((v12 + 40), obj);
  if (!v13)
  {
    goto LABEL_12;
  }

  v26 = 0;
  v14 = length_SignerInfo(v7);
  v15 = [MEMORY[0x277CBEB28] dataWithLength:v14];
  if (!v15)
  {
    v16 = 12;
LABEL_11:
    v20 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v29[0] = @"Failed encoding type SignerInfo";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v22 = [v20 errorWithDomain:@"com.apple.HeimASN1" code:v16 userInfo:v21];
    v23 = *(*(a1 + 32) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    goto LABEL_12;
  }

  v17 = v15;
  v18 = encode_SignerInfo([v15 mutableBytes] + v14 - 1, v14, v7, &v26);
  if (v18)
  {
    v19 = v18;

    v16 = v19;
    goto LABEL_11;
  }

  if (v14 != v26)
  {
    asn1_abort();
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v17];

LABEL_12:
  __59__MSCMSCountersignatureAttribute_encodeAttributeWithError___block_invoke_cold_2(v7, a1, v6, a4);
  v25 = *MEMORY[0x277D85DE8];
}

- (MSCMSSignerInfo)containingSignerInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_containingSignerInfo);

  return WeakRetained;
}

- (void)removeSignersWithIdentity:(__SecIdentity *)a3 error:(id *)a4
{
  if (a4 && *a4)
  {
    v7 = [*a4 copy];
  }

  else
  {
    v7 = 0;
  }

  v13 = v7;
  v8 = MSSecIdentityCopyCertificateWithError(a3, &v13);
  v9 = v13;

  if (v8)
  {
    v12 = v9;
    [(MSCMSCountersignatureAttribute *)self removeSignersWithCertificate:v8 error:&v12];
    v10 = v12;

    v9 = v10;
  }

  if (a4 && v9)
  {
    v11 = v9;
    *a4 = v9;
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t __102__MSCMSCountersignatureAttribute_initWithAttribute_certificates_LAContext_containingSignerInfo_error___block_invoke_cold_1(int a1, uint64_t a2, void *a3)
{
  result = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:a1 underlyingError:*(*(*(a2 + 56) + 8) + 40) description:@"unable to decode signerInfo in countersignature"];
  v6 = *(*(a2 + 56) + 8);
  *a3 = *(v6 + 40);
  *(v6 + 40) = result;
  return result;
}

void __133__MSCMSCountersignatureAttribute_verifyCountersignaturesAndCountersignersWithPolicies_verifyTime_anchorCertificates_signature_error___block_invoke_cold_1(__CFError **a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    Code = CFErrorGetCode(v4);
    v6 = *a1;
  }

  else
  {
    v6 = 0;
    Code = -1;
  }

  v7 = [MSError MSErrorWithDomain:*MEMORY[0x277CCA590] code:Code underlyingError:v6 description:@"trust evaluation of signer failed"];
  v8 = *(*a2 + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

uint64_t __59__MSCMSCountersignatureAttribute_encodeAttributeWithError___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:0 description:@"counter signer has no reference to a signer with a signature"];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __59__MSCMSCountersignatureAttribute_encodeAttributeWithError___block_invoke_cold_2(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  free_SignerInfo();
  free(a1);
  if (*(*(*(a2 + 32) + 8) + 40))
  {
    [*(*(*(a2 + 40) + 8) + 40) removeAllObjects];
    *a4 = 1;
  }
}

@end