@interface ECDKIMVerifier
- (BOOL)_verifyMessageBodyData:(id)a3 withOptions:(int64_t)a4 usingSignature:(id)a5;
- (BOOL)_verifyMessageHeaders:(id)a3 usingSignature:(id)a4 publicKeySource:(id)a5 error:(id *)a6;
- (BOOL)verifyMessageData:(id)a3 options:(int64_t)a4;
- (BOOL)verifyMessageData:(id)a3 publicKeySource:(id)a4 options:(int64_t)a5;
- (BOOL)verifyMessageWithContext:(id)a3 options:(int64_t)a4 error:(id *)a5;
- (BOOL)verifyMessageWithContext:(id)a3 publicKeySource:(id)a4 options:(int64_t)a5 error:(id *)a6;
- (ECDKIMVerifier)init;
- (ECDKIMVerifier)initWithPublicKeySource:(id)a3;
- (id)_base64HashBodyData:(id)a3 usingSignature:(id)a4;
- (id)_canonicalizeHeaders:(id)a3 usingRelaxedAlgorithmWithSignatureHeader:(id)a4;
- (id)_canonicalizeHeaders:(id)a3 usingSimpleAlgorithmWithSignatureHeader:(id)a4;
- (id)_relaxedCanonicalizationForHeaderName:(id)a3 headerBody:(id)a4;
- (id)_verifyMessage:(id)a3 withDKIMSignatureHeaders:(id)a4 publicKeySource:(id)a5 options:(int64_t)a6 error:(id *)a7;
- (id)verifiableMessageForMessageData:(id)a3 dkimSignatureHeaders:(id *)a4 error:(id *)a5;
- (id)verificationContextForMessageData:(id)a3 error:(id *)a4;
- (id)verifyMessage:(id)a3 withDKIMSignatureHeaders:(id)a4 options:(int64_t)a5 error:(id *)a6;
- (void)_canonicalizeBodyDataUsingRelaxedAlgorithm:(id)a3;
- (void)_canonicalizeBodyDataUsingSimpleAlgorithm:(id)a3;
@end

@implementation ECDKIMVerifier

uint64_t ___ef_log_ECDKIMVerifier_block_invoke()
{
  _ef_log_ECDKIMVerifier_log = os_log_create("com.apple.email", "ECDKIMVerifier");

  return MEMORY[0x2821F96F8]();
}

- (ECDKIMVerifier)initWithPublicKeySource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ECDKIMVerifier;
  v6 = [(ECDKIMVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_publicKeySource, a3);
  }

  return v7;
}

- (ECDKIMVerifier)init
{
  v3 = objc_alloc_init(ECDNSClient);
  v4 = [(ECDKIMVerifier *)self initWithPublicKeySource:v3];

  return v4;
}

- (id)verifiableMessageForMessageData:(id)a3 dkimSignatureHeaders:(id *)a4 error:(id *)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v43 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v54 = 168626701;
  v42 = [MEMORY[0x277CBEA90] dataWithBytes:&v54 length:4];
  v7 = [v43 ef_rangeOfData:?];
  v9 = v8;
  v41 = a5;
  if (v8)
  {
    v10 = v7;
    v39 = [v43 ef_subdataToIndex:{objc_msgSend(@"\r\n", "length") + v7}];
    v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v39 encoding:4];
    v37 = [v43 ef_subdataFromIndex:v10 + v9];
    v38 = [[ECRawMessageHeaders alloc] initWithHeaderString:v40];
    v36 = [(ECRawMessageHeaders *)v38 headersForKey:@"dkim-signature"];
    v44 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v11 = v36;
    v12 = 0;
    v13 = [v11 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v13)
    {
      v14 = *v51;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v50 + 1) + 8 * i);
          v17 = [ECDKIMMessageHeader alloc];
          v18 = [v16 transmittedName];
          v19 = [v16 body];
          v49 = 0;
          v20 = [(ECDKIMMessageHeader *)v17 initWithHeaderFieldName:v18 headerBody:v19 error:&v49];
          v21 = v49;

          if (v21)
          {
            v22 = _ef_log_ECDKIMVerifier();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = [v21 ef_publicDescription];
              [(ECDKIMVerifier *)v23 verifiableMessageForMessageData:buf dkimSignatureHeaders:&v56 error:v22];
            }

            v12 = v21;
          }

          else
          {
            v24 = [(ECDKIMMessageHeader *)v20 agentOrUserIdentifier];
            v25 = [(ECDKIMMessageHeader *)v20 signingDomainIdentifier];
            v26 = [v24 ef_hasCaseInsensitiveSuffix:v25];

            if (v26)
            {
              v27 = [(ECDKIMMessageHeader *)v20 signedHeaderFields];
              v28 = [v27 containsObject:@"from"];

              if (v28)
              {
                [v44 addObject:v20];
                v12 = 0;
                goto LABEL_23;
              }

              v29 = _ef_log_ECDKIMVerifier();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                [ECDKIMVerifier verifiableMessageForMessageData:v46 dkimSignatureHeaders:? error:?];
              }
            }

            else
            {
              v29 = _ef_log_ECDKIMVerifier();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                [ECDKIMVerifier verifiableMessageForMessageData:v48 dkimSignatureHeaders:? error:?];
              }
            }

            v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMVerifier" code:1 userInfo:0];
          }

LABEL_23:
        }

        v13 = [v11 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v13);
    }

    if ([v44 count] || !v12)
    {
      if (a4)
      {
        v33 = v44;
        *a4 = v44;
      }

      v31 = [[ECDKIMVerifiableMessage alloc] initWithHeaders:v38 bodyData:v37];
    }

    else if (v41)
    {
      v30 = v12;
      v31 = 0;
      *v41 = v12;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v32 = _ef_log_ECDKIMVerifier();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ECDKIMVerifier verifiableMessageForMessageData:v32 dkimSignatureHeaders:? error:?];
    }

    if (a5)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMVerifier" code:1 userInfo:0];
      *a5 = v31 = 0;
    }

    else
    {
      v31 = 0;
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return v31;
}

- (BOOL)verifyMessageData:(id)a3 options:(int64_t)a4
{
  v10 = 0;
  v6 = [(ECDKIMVerifier *)self verifiableMessageForMessageData:a3 dkimSignatureHeaders:&v10 error:0];
  v7 = v10;
  v8 = [(ECDKIMVerifier *)self verifyMessage:v6 withDKIMSignatureHeaders:v7 options:a4 error:0];

  return v8 != 0;
}

- (id)verifyMessage:(id)a3 withDKIMSignatureHeaders:(id)a4 options:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(ECDKIMVerifier *)self publicKeySource];
  v13 = [(ECDKIMVerifier *)self _verifyMessage:v10 withDKIMSignatureHeaders:v11 publicKeySource:v12 options:a5 error:a6];

  return v13;
}

- (id)_verifyMessage:(id)a3 withDKIMSignatureHeaders:(id)a4 publicKeySource:(id)a5 options:(int64_t)a6 error:(id *)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v11 = a4;
  v29 = a5;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v12)
  {
    v13 = *v34;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v34 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v33 + 1) + 8 * v14);
      if ((a6 & 2) != 0)
      {
        v18 = [v31 bodyData];
        v19 = [(ECDKIMVerifier *)self _verifyMessageBodyData:v18 withOptions:a6 usingSignature:v15];

        v16 = !v19;
        if ((a6 & 1) == 0)
        {
LABEL_8:
          v17 = 0;
          goto LABEL_12;
        }
      }

      else
      {
        v16 = 0;
        if ((a6 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v20 = [v31 headers];
      v32 = 0;
      v21 = [(ECDKIMVerifier *)self _verifyMessageHeaders:v20 usingSignature:v15 publicKeySource:v29 error:&v32];
      v22 = v32;

      if (v22)
      {
        if (a7)
        {
          v24 = MEMORY[0x277CCA9B8];
          v37 = *MEMORY[0x277CCA7E8];
          v38 = v22;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          *a7 = [v24 errorWithDomain:@"ECDKIMVerifier" code:0 userInfo:v25];
        }

        v23 = 0;
        goto LABEL_23;
      }

      v17 = !v21;
LABEL_12:
      if (((v16 | v17) & 1) == 0)
      {
        if (a7)
        {
          *a7 = 0;
        }

        v23 = v15;
LABEL_23:

        goto LABEL_24;
      }

      if (v12 == ++v14)
      {
        v12 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (a7)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMVerifier" code:1 userInfo:0];
    *a7 = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_24:

  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)_verifyMessageBodyData:(id)a3 withOptions:(int64_t)a4 usingSignature:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [a3 mutableCopy];
  v10 = [v8 bodyCanonicalizationAlgorithm];
  if (v10)
  {
    if (v10 == 1)
    {
      [(ECDKIMVerifier *)self _canonicalizeBodyDataUsingRelaxedAlgorithm:v9];
    }
  }

  else
  {
    [(ECDKIMVerifier *)self _canonicalizeBodyDataUsingSimpleAlgorithm:v9];
  }

  v11 = [v8 bodyLength];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = [v8 bodyLength];
  v13 = [v12 unsignedIntegerValue];
  v14 = [v9 length];

  if (v13 == v14)
  {
    goto LABEL_7;
  }

  v18 = [v8 bodyLength];
  v19 = [v18 unsignedIntegerValue];
  v20 = [v9 length];

  if (v19 > v20)
  {
    v21 = _ef_log_ECDKIMVerifier();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ECDKIMVerifier _verifyMessageBodyData:v21 withOptions:? usingSignature:?];
    }

LABEL_14:

    v17 = 0;
    goto LABEL_15;
  }

  if ((v5 & 4) != 0)
  {
    v21 = _ef_log_ECDKIMVerifier();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_22D092000, v21, OS_LOG_TYPE_DEFAULT, "Ignoring DKIM signature that did not sign the entire body (required by options).", v23, 2u);
    }

    goto LABEL_14;
  }

LABEL_7:
  v15 = [(ECDKIMVerifier *)self _base64HashBodyData:v9 usingSignature:v8];
  v16 = [v8 canonicalizedBodyHash];
  v17 = [v15 isEqualToString:v16];

LABEL_15:
  return v17;
}

- (id)_base64HashBodyData:(id)a3 usingSignature:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 hashingAlgorithm];
  if (v7)
  {
    v8 = 32 * (v7 == 1);
  }

  else
  {
    v8 = 20;
  }

  v9 = [MEMORY[0x277CBEB28] dataWithLength:v8];
  v10 = [v6 bodyLength];
  if (v10)
  {
    v11 = [v6 bodyLength];
    v12 = [v11 unsignedIntegerValue];
  }

  else
  {
    v12 = [v5 length];
  }

  v13 = [v5 subdataWithRange:{0, v12}];
  v14 = [v13 bytes];

  v15 = [v6 hashingAlgorithm];
  if (v15)
  {
    if (v15 == 1)
    {
      CC_SHA256(v14, v12, [v9 mutableBytes]);
    }
  }

  else
  {
    CC_SHA1(v14, v12, [v9 mutableBytes]);
  }

  v16 = [v9 base64EncodedStringWithOptions:0];

  return v16;
}

- (BOOL)_verifyMessageHeaders:(id)a3 usingSignature:(id)a4 publicKeySource:(id)a5 error:(id *)a6
{
  v32 = self;
  v65 = *MEMORY[0x277D85DE8];
  v35 = a4;
  v34 = a5;
  v8 = [a3 allHeaders];
  v9 = [v8 reverseObjectEnumerator];
  v38 = [v9 allObjects];

  v10 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v11 = [v35 signedHeaderFields];
  obj = v11;
  v12 = [v11 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v12)
  {
    v37 = *v60;
    do
    {
      v39 = v12;
      for (i = 0; i != v39; ++i)
      {
        if (*v60 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v59 + 1) + 8 * i);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v15 = v38;
        v16 = [v15 countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v16)
        {
          v17 = *v56;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v56 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v55 + 1) + 8 * j);
              v20 = [v19 name];
              if ([v20 isEqualToString:v14])
              {
                v21 = [v10 containsObject:v19];

                if ((v21 & 1) == 0)
                {
                  [v10 addObject:v19];
                  goto LABEL_17;
                }
              }

              else
              {
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v55 objects:v63 count:16];
          }

          while (v16);
        }

LABEL_17:
      }

      v11 = obj;
      v12 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v12);
  }

  v22 = [v35 headerCanonicalizationAlgorithm];
  if (!v22)
  {
    v23 = [(ECDKIMVerifier *)v32 _canonicalizeHeaders:v10 usingSimpleAlgorithmWithSignatureHeader:v35];
    goto LABEL_23;
  }

  if (v22 == 1)
  {
    v23 = [(ECDKIMVerifier *)v32 _canonicalizeHeaders:v10 usingRelaxedAlgorithmWithSignatureHeader:v35];
LABEL_23:
    v24 = v23;
    goto LABEL_25;
  }

  v24 = 0;
LABEL_25:
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = 0;
  v25 = [v35 signingDomainIdentifier];
  v26 = [v35 selector];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __77__ECDKIMVerifier__verifyMessageHeaders_usingSignature_publicKeySource_error___block_invoke;
  v40[3] = &unk_27874B768;
  v43 = &v51;
  v44 = &v45;
  v27 = v24;
  v41 = v27;
  v28 = v35;
  v42 = v28;
  [v34 getPublicKeyRecordsFromDomain:v25 withSelector:v26 completionHandler:v40];

  if (a6)
  {
    *a6 = v46[5];
  }

  v29 = *(v52 + 24);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  v30 = *MEMORY[0x277D85DE8];
  return v29 & 1;
}

void __77__ECDKIMVerifier__verifyMessageHeaders_usingSignature_publicKeySource_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v19 = a3;
  if (v19)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  else
  {
    v21 = [*(a1 + 32) dataUsingEncoding:1];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v20;
    v5 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v5)
    {
      v6 = *v29;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v29 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [[ECDKIMPublicKey alloc] initWithRecord:*(*(&v28 + 1) + 8 * i)];
          v9 = [(ECDKIMPublicKey *)v8 publicKeyData];
          v10 = v9 == 0;

          if (v10)
          {
            v16 = _ef_log_ECDKIMVerifier();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              __77__ECDKIMVerifier__verifyMessageHeaders_usingSignature_publicKeySource_error___block_invoke_cold_2(&v26, v27);
            }
          }

          else
          {
            v11 = [(ECDKIMPublicKey *)v8 signingAlgorithm];
            if (v11 == [*(a1 + 40) signingAlgorithm])
            {
              v12 = [*(a1 + 40) signatureData];
              v13 = [(ECDKIMPublicKey *)v8 publicKeyData];
              v14 = [*(a1 + 40) hashingAlgorithm];
              v23 = 0;
              v15 = [ECDKIMCryptoUtil verifySignedData:v21 withSignatureData:v12 publicKeyData:v13 hashingAlgorithm:v14 error:&v23];
              v16 = v23;
              *(*(*(a1 + 48) + 8) + 24) = v15;

              if (*(*(*(a1 + 48) + 8) + 24) == 1)
              {

                goto LABEL_22;
              }

              v17 = _ef_log_ECDKIMVerifier();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v33 = v16;
                _os_log_error_impl(&dword_22D092000, v17, OS_LOG_TYPE_ERROR, "Failed to verify DKIM signed data: %{public}@", buf, 0xCu);
              }
            }

            else
            {
              v16 = _ef_log_ECDKIMVerifier();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                __77__ECDKIMVerifier__verifyMessageHeaders_usingSignature_publicKeySource_error___block_invoke_cold_1(&v24, v25);
              }
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_canonicalizeBodyDataUsingSimpleAlgorithm:(id)a3
{
  v13 = a3;
  v3 = [MEMORY[0x277CBEA90] ef_crlfData];
  v4 = [v13 ef_hasSuffix:v3];

  if (v4)
  {
    while ([v13 length] >= 4)
    {
      v5 = [v13 length];
      v6 = [MEMORY[0x277CBEA90] ef_crlfData];
      v7 = [v13 subdataWithRange:{v5 - 4, objc_msgSend(v6, "length")}];
      v8 = [MEMORY[0x277CBEA90] ef_crlfData];
      v9 = [v7 isEqualToData:v8];

      if (!v9)
      {
        break;
      }

      v10 = [v13 length];
      v11 = [MEMORY[0x277CBEA90] ef_crlfData];
      [v13 ef_deleteBytesInRange:{v10 - 4, objc_msgSend(v11, "length")}];
    }
  }

  else
  {
    v12 = [MEMORY[0x277CBEA90] ef_crlfData];
    [v13 appendData:v12];
  }
}

- (void)_canonicalizeBodyDataUsingRelaxedAlgorithm:(id)a3
{
  v3 = a3;
  v14 = 2336;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v14 length:2];
  v5 = [MEMORY[0x277CBEA90] ef_crlfData];
  [v3 ef_deleteBytesInData:v4 beforeOccurrencesOfData:v5];

  v13 = 32;
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&v13 length:1];
  [v3 ef_replaceContiguousSequencesOfBytesInData:v4 withData:v6];
  while (1)
  {

    v7 = [MEMORY[0x277CBEA90] ef_crlfData];
    v8 = [v3 ef_hasSuffix:v7];

    if (!v8)
    {
      break;
    }

    v9 = [v3 length];
    v6 = [MEMORY[0x277CBEA90] ef_crlfData];
    [v3 ef_deleteBytesInRange:{v9 - 2, objc_msgSend(v6, "length")}];
  }

  if ([v3 length])
  {
    v10 = [MEMORY[0x277CBEA90] ef_crlfData];
    v11 = [v3 ef_hasSuffix:v10];

    if ((v11 & 1) == 0)
    {
      v12 = [MEMORY[0x277CBEA90] ef_crlfData];
      [v3 appendData:v12];
    }
  }
}

- (id)_canonicalizeHeaders:(id)a3 usingSimpleAlgorithmWithSignatureHeader:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 transmittedName];
        v14 = [v12 body];
        [v7 appendFormat:@"%@:%@", v13, v14, v19];
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15 = [v6 headerNameForCanonicalization];
  v16 = [v6 bodyForCanonicalization];
  [v7 appendFormat:@"%@:%@", v15, v16];

  while ([v7 hasSuffix:@"\r\n"])
  {
    [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - objc_msgSend(@"\r\n", "length"), objc_msgSend(@"\r\n", "length")}];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_canonicalizeHeaders:(id)a3 usingRelaxedAlgorithmWithSignatureHeader:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v13 body];
        v16 = [(ECDKIMVerifier *)self _relaxedCanonicalizationForHeaderName:v14 headerBody:v15];

        [v8 appendString:v16];
      }

      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v17 = [v7 headerNameForCanonicalization];
  v18 = [v7 bodyForCanonicalization];
  v19 = [(ECDKIMVerifier *)self _relaxedCanonicalizationForHeaderName:v17 headerBody:v18];

  [v8 appendString:v19];
  while ([v8 hasSuffix:@"\r\n"])
  {
    [v8 deleteCharactersInRange:{objc_msgSend(v8, "length") - objc_msgSend(@"\r\n", "length"), objc_msgSend(@"\r\n", "length")}];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_relaxedCanonicalizationForHeaderName:(id)a3 headerBody:(id)a4
{
  v5 = a4;
  v6 = [a3 lowercaseString];
  v7 = [v6 mutableCopy];

  v8 = [v5 mutableCopy];
  [v8 ef_rfc5322Unfold];
  v9 = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
  [v8 ef_replaceContiguousSequencesOfCharactersInSet:v9 withString:@" "];

  v10 = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
  [v8 ef_trimTrailingCharactersInSetIgnoringNewline:v10];

  v11 = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
  [v7 ef_trimTrailingCharactersInSet:v11];

  v12 = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
  [v8 ef_trimLeadingCharactersInSet:v12];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v7, v8];

  return v13;
}

- (id)verificationContextForMessageData:(id)a3 error:(id *)a4
{
  v12 = 0;
  v5 = [(ECDKIMVerifier *)self verifiableMessageForMessageData:a3 dkimSignatureHeaders:&v12 error:a4];
  v6 = v12;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_8;
  }

  if ([v6 count])
  {
    v8 = [[ECDKIMVerificationContext alloc] initWithVerifiableMessage:v5 dkimSignatureHeaders:v7];
    goto LABEL_9;
  }

  v9 = _ef_log_ECDKIMVerifier();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_22D092000, v9, OS_LOG_TYPE_DEFAULT, "No DKIM signature headers found.", v11, 2u);
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMVerifier" code:1 userInfo:0];
    *a4 = v8 = 0;
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (BOOL)verifyMessageData:(id)a3 publicKeySource:(id)a4 options:(int64_t)a5
{
  v8 = a4;
  v13 = 0;
  v9 = [(ECDKIMVerifier *)self verifiableMessageForMessageData:a3 dkimSignatureHeaders:&v13 error:0];
  v10 = v13;
  v11 = [(ECDKIMVerifier *)self _verifyMessage:v9 withDKIMSignatureHeaders:v10 publicKeySource:v8 options:a5 error:0];

  return v11 != 0;
}

- (BOOL)verifyMessageWithContext:(id)a3 options:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(ECDKIMVerifier *)self publicKeySource];
  LOBYTE(a5) = [(ECDKIMVerifier *)self verifyMessageWithContext:v8 publicKeySource:v9 options:a4 error:a5];

  return a5;
}

- (BOOL)verifyMessageWithContext:(id)a3 publicKeySource:(id)a4 options:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if ([v10 requireFullBodySignature])
  {
    v12 = a5 | 4;
  }

  else
  {
    v12 = a5;
  }

  v13 = [v10 verifiableMessage];
  v14 = [v10 dkimSignatureHeaders];
  v15 = [(ECDKIMVerifier *)self _verifyMessage:v13 withDKIMSignatureHeaders:v14 publicKeySource:v11 options:v12 error:a6];
  v16 = v15 != 0;

  return v16;
}

- (void)verifiableMessageForMessageData:(void *)a3 dkimSignatureHeaders:(os_log_t)log error:.cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&dword_22D092000, log, OS_LOG_TYPE_ERROR, "Error parsing DKIM signature: %{public}@", buf, 0xCu);
}

@end