@interface ECDKIMVerifier
- (BOOL)_verifyMessageBodyData:(id)data withOptions:(int64_t)options usingSignature:(id)signature;
- (BOOL)_verifyMessageHeaders:(id)headers usingSignature:(id)signature publicKeySource:(id)source error:(id *)error;
- (BOOL)verifyMessageData:(id)data options:(int64_t)options;
- (BOOL)verifyMessageData:(id)data publicKeySource:(id)source options:(int64_t)options;
- (BOOL)verifyMessageWithContext:(id)context options:(int64_t)options error:(id *)error;
- (BOOL)verifyMessageWithContext:(id)context publicKeySource:(id)source options:(int64_t)options error:(id *)error;
- (ECDKIMVerifier)init;
- (ECDKIMVerifier)initWithPublicKeySource:(id)source;
- (id)_base64HashBodyData:(id)data usingSignature:(id)signature;
- (id)_canonicalizeHeaders:(id)headers usingRelaxedAlgorithmWithSignatureHeader:(id)header;
- (id)_canonicalizeHeaders:(id)headers usingSimpleAlgorithmWithSignatureHeader:(id)header;
- (id)_relaxedCanonicalizationForHeaderName:(id)name headerBody:(id)body;
- (id)_verifyMessage:(id)message withDKIMSignatureHeaders:(id)headers publicKeySource:(id)source options:(int64_t)options error:(id *)error;
- (id)verifiableMessageForMessageData:(id)data dkimSignatureHeaders:(id *)headers error:(id *)error;
- (id)verificationContextForMessageData:(id)data error:(id *)error;
- (id)verifyMessage:(id)message withDKIMSignatureHeaders:(id)headers options:(int64_t)options error:(id *)error;
- (void)_canonicalizeBodyDataUsingRelaxedAlgorithm:(id)algorithm;
- (void)_canonicalizeBodyDataUsingSimpleAlgorithm:(id)algorithm;
@end

@implementation ECDKIMVerifier

uint64_t ___ef_log_ECDKIMVerifier_block_invoke()
{
  _ef_log_ECDKIMVerifier_log = os_log_create("com.apple.email", "ECDKIMVerifier");

  return MEMORY[0x2821F96F8]();
}

- (ECDKIMVerifier)initWithPublicKeySource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = ECDKIMVerifier;
  v6 = [(ECDKIMVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_publicKeySource, source);
  }

  return v7;
}

- (ECDKIMVerifier)init
{
  v3 = objc_alloc_init(ECDNSClient);
  v4 = [(ECDKIMVerifier *)self initWithPublicKeySource:v3];

  return v4;
}

- (id)verifiableMessageForMessageData:(id)data dkimSignatureHeaders:(id *)headers error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (headers)
  {
    *headers = 0;
  }

  if (error)
  {
    *error = 0;
  }

  v54 = 168626701;
  v42 = [MEMORY[0x277CBEA90] dataWithBytes:&v54 length:4];
  v7 = [dataCopy ef_rangeOfData:?];
  v9 = v8;
  errorCopy = error;
  if (v8)
  {
    v10 = v7;
    v39 = [dataCopy ef_subdataToIndex:{objc_msgSend(@"\r\n", "length") + v7}];
    v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v39 encoding:4];
    v37 = [dataCopy ef_subdataFromIndex:v10 + v9];
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
          transmittedName = [v16 transmittedName];
          body = [v16 body];
          v49 = 0;
          v20 = [(ECDKIMMessageHeader *)v17 initWithHeaderFieldName:transmittedName headerBody:body error:&v49];
          v21 = v49;

          if (v21)
          {
            v22 = _ef_log_ECDKIMVerifier();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              ef_publicDescription = [v21 ef_publicDescription];
              [(ECDKIMVerifier *)ef_publicDescription verifiableMessageForMessageData:buf dkimSignatureHeaders:&v56 error:v22];
            }

            v12 = v21;
          }

          else
          {
            agentOrUserIdentifier = [(ECDKIMMessageHeader *)v20 agentOrUserIdentifier];
            signingDomainIdentifier = [(ECDKIMMessageHeader *)v20 signingDomainIdentifier];
            v26 = [agentOrUserIdentifier ef_hasCaseInsensitiveSuffix:signingDomainIdentifier];

            if (v26)
            {
              signedHeaderFields = [(ECDKIMMessageHeader *)v20 signedHeaderFields];
              v28 = [signedHeaderFields containsObject:@"from"];

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
      if (headers)
      {
        v33 = v44;
        *headers = v44;
      }

      v31 = [[ECDKIMVerifiableMessage alloc] initWithHeaders:v38 bodyData:v37];
    }

    else if (errorCopy)
    {
      v30 = v12;
      v31 = 0;
      *errorCopy = v12;
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

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMVerifier" code:1 userInfo:0];
      *error = v31 = 0;
    }

    else
    {
      v31 = 0;
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return v31;
}

- (BOOL)verifyMessageData:(id)data options:(int64_t)options
{
  v10 = 0;
  v6 = [(ECDKIMVerifier *)self verifiableMessageForMessageData:data dkimSignatureHeaders:&v10 error:0];
  v7 = v10;
  v8 = [(ECDKIMVerifier *)self verifyMessage:v6 withDKIMSignatureHeaders:v7 options:options error:0];

  return v8 != 0;
}

- (id)verifyMessage:(id)message withDKIMSignatureHeaders:(id)headers options:(int64_t)options error:(id *)error
{
  messageCopy = message;
  headersCopy = headers;
  publicKeySource = [(ECDKIMVerifier *)self publicKeySource];
  v13 = [(ECDKIMVerifier *)self _verifyMessage:messageCopy withDKIMSignatureHeaders:headersCopy publicKeySource:publicKeySource options:options error:error];

  return v13;
}

- (id)_verifyMessage:(id)message withDKIMSignatureHeaders:(id)headers publicKeySource:(id)source options:(int64_t)options error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  headersCopy = headers;
  sourceCopy = source;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = headersCopy;
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
      if ((options & 2) != 0)
      {
        bodyData = [messageCopy bodyData];
        v19 = [(ECDKIMVerifier *)self _verifyMessageBodyData:bodyData withOptions:options usingSignature:v15];

        v16 = !v19;
        if ((options & 1) == 0)
        {
LABEL_8:
          v17 = 0;
          goto LABEL_12;
        }
      }

      else
      {
        v16 = 0;
        if ((options & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      headers = [messageCopy headers];
      v32 = 0;
      v21 = [(ECDKIMVerifier *)self _verifyMessageHeaders:headers usingSignature:v15 publicKeySource:sourceCopy error:&v32];
      v22 = v32;

      if (v22)
      {
        if (error)
        {
          v24 = MEMORY[0x277CCA9B8];
          v37 = *MEMORY[0x277CCA7E8];
          v38 = v22;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          *error = [v24 errorWithDomain:@"ECDKIMVerifier" code:0 userInfo:v25];
        }

        v23 = 0;
        goto LABEL_23;
      }

      v17 = !v21;
LABEL_12:
      if (((v16 | v17) & 1) == 0)
      {
        if (error)
        {
          *error = 0;
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

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMVerifier" code:1 userInfo:0];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_24:

  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)_verifyMessageBodyData:(id)data withOptions:(int64_t)options usingSignature:(id)signature
{
  optionsCopy = options;
  signatureCopy = signature;
  v9 = [data mutableCopy];
  bodyCanonicalizationAlgorithm = [signatureCopy bodyCanonicalizationAlgorithm];
  if (bodyCanonicalizationAlgorithm)
  {
    if (bodyCanonicalizationAlgorithm == 1)
    {
      [(ECDKIMVerifier *)self _canonicalizeBodyDataUsingRelaxedAlgorithm:v9];
    }
  }

  else
  {
    [(ECDKIMVerifier *)self _canonicalizeBodyDataUsingSimpleAlgorithm:v9];
  }

  bodyLength = [signatureCopy bodyLength];
  if (!bodyLength)
  {
    goto LABEL_7;
  }

  bodyLength2 = [signatureCopy bodyLength];
  unsignedIntegerValue = [bodyLength2 unsignedIntegerValue];
  v14 = [v9 length];

  if (unsignedIntegerValue == v14)
  {
    goto LABEL_7;
  }

  bodyLength3 = [signatureCopy bodyLength];
  unsignedIntegerValue2 = [bodyLength3 unsignedIntegerValue];
  v20 = [v9 length];

  if (unsignedIntegerValue2 > v20)
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

  if ((optionsCopy & 4) != 0)
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
  v15 = [(ECDKIMVerifier *)self _base64HashBodyData:v9 usingSignature:signatureCopy];
  canonicalizedBodyHash = [signatureCopy canonicalizedBodyHash];
  v17 = [v15 isEqualToString:canonicalizedBodyHash];

LABEL_15:
  return v17;
}

- (id)_base64HashBodyData:(id)data usingSignature:(id)signature
{
  dataCopy = data;
  signatureCopy = signature;
  hashingAlgorithm = [signatureCopy hashingAlgorithm];
  if (hashingAlgorithm)
  {
    v8 = 32 * (hashingAlgorithm == 1);
  }

  else
  {
    v8 = 20;
  }

  v9 = [MEMORY[0x277CBEB28] dataWithLength:v8];
  bodyLength = [signatureCopy bodyLength];
  if (bodyLength)
  {
    bodyLength2 = [signatureCopy bodyLength];
    unsignedIntegerValue = [bodyLength2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = [dataCopy length];
  }

  v13 = [dataCopy subdataWithRange:{0, unsignedIntegerValue}];
  bytes = [v13 bytes];

  hashingAlgorithm2 = [signatureCopy hashingAlgorithm];
  if (hashingAlgorithm2)
  {
    if (hashingAlgorithm2 == 1)
    {
      CC_SHA256(bytes, unsignedIntegerValue, [v9 mutableBytes]);
    }
  }

  else
  {
    CC_SHA1(bytes, unsignedIntegerValue, [v9 mutableBytes]);
  }

  v16 = [v9 base64EncodedStringWithOptions:0];

  return v16;
}

- (BOOL)_verifyMessageHeaders:(id)headers usingSignature:(id)signature publicKeySource:(id)source error:(id *)error
{
  selfCopy = self;
  v65 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  sourceCopy = source;
  allHeaders = [headers allHeaders];
  reverseObjectEnumerator = [allHeaders reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v10 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  signedHeaderFields = [signatureCopy signedHeaderFields];
  obj = signedHeaderFields;
  v12 = [signedHeaderFields countByEnumeratingWithState:&v59 objects:v64 count:16];
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
        v15 = allObjects;
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
              name = [v19 name];
              if ([name isEqualToString:v14])
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

      signedHeaderFields = obj;
      v12 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v12);
  }

  headerCanonicalizationAlgorithm = [signatureCopy headerCanonicalizationAlgorithm];
  if (!headerCanonicalizationAlgorithm)
  {
    v23 = [(ECDKIMVerifier *)selfCopy _canonicalizeHeaders:v10 usingSimpleAlgorithmWithSignatureHeader:signatureCopy];
    goto LABEL_23;
  }

  if (headerCanonicalizationAlgorithm == 1)
  {
    v23 = [(ECDKIMVerifier *)selfCopy _canonicalizeHeaders:v10 usingRelaxedAlgorithmWithSignatureHeader:signatureCopy];
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
  signingDomainIdentifier = [signatureCopy signingDomainIdentifier];
  selector = [signatureCopy selector];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __77__ECDKIMVerifier__verifyMessageHeaders_usingSignature_publicKeySource_error___block_invoke;
  v40[3] = &unk_27874B768;
  v43 = &v51;
  v44 = &v45;
  v27 = v24;
  v41 = v27;
  v28 = signatureCopy;
  v42 = v28;
  [sourceCopy getPublicKeyRecordsFromDomain:signingDomainIdentifier withSelector:selector completionHandler:v40];

  if (error)
  {
    *error = v46[5];
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

- (void)_canonicalizeBodyDataUsingSimpleAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  ef_crlfData = [MEMORY[0x277CBEA90] ef_crlfData];
  v4 = [algorithmCopy ef_hasSuffix:ef_crlfData];

  if (v4)
  {
    while ([algorithmCopy length] >= 4)
    {
      v5 = [algorithmCopy length];
      ef_crlfData2 = [MEMORY[0x277CBEA90] ef_crlfData];
      v7 = [algorithmCopy subdataWithRange:{v5 - 4, objc_msgSend(ef_crlfData2, "length")}];
      ef_crlfData3 = [MEMORY[0x277CBEA90] ef_crlfData];
      v9 = [v7 isEqualToData:ef_crlfData3];

      if (!v9)
      {
        break;
      }

      v10 = [algorithmCopy length];
      ef_crlfData4 = [MEMORY[0x277CBEA90] ef_crlfData];
      [algorithmCopy ef_deleteBytesInRange:{v10 - 4, objc_msgSend(ef_crlfData4, "length")}];
    }
  }

  else
  {
    ef_crlfData5 = [MEMORY[0x277CBEA90] ef_crlfData];
    [algorithmCopy appendData:ef_crlfData5];
  }
}

- (void)_canonicalizeBodyDataUsingRelaxedAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  v14 = 2336;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v14 length:2];
  ef_crlfData = [MEMORY[0x277CBEA90] ef_crlfData];
  [algorithmCopy ef_deleteBytesInData:v4 beforeOccurrencesOfData:ef_crlfData];

  v13 = 32;
  ef_crlfData3 = [MEMORY[0x277CBEA90] dataWithBytes:&v13 length:1];
  [algorithmCopy ef_replaceContiguousSequencesOfBytesInData:v4 withData:ef_crlfData3];
  while (1)
  {

    ef_crlfData2 = [MEMORY[0x277CBEA90] ef_crlfData];
    v8 = [algorithmCopy ef_hasSuffix:ef_crlfData2];

    if (!v8)
    {
      break;
    }

    v9 = [algorithmCopy length];
    ef_crlfData3 = [MEMORY[0x277CBEA90] ef_crlfData];
    [algorithmCopy ef_deleteBytesInRange:{v9 - 2, objc_msgSend(ef_crlfData3, "length")}];
  }

  if ([algorithmCopy length])
  {
    ef_crlfData4 = [MEMORY[0x277CBEA90] ef_crlfData];
    v11 = [algorithmCopy ef_hasSuffix:ef_crlfData4];

    if ((v11 & 1) == 0)
    {
      ef_crlfData5 = [MEMORY[0x277CBEA90] ef_crlfData];
      [algorithmCopy appendData:ef_crlfData5];
    }
  }
}

- (id)_canonicalizeHeaders:(id)headers usingSimpleAlgorithmWithSignatureHeader:(id)header
{
  v24 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  headerCopy = header;
  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = headersCopy;
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
        transmittedName = [v12 transmittedName];
        body = [v12 body];
        [v7 appendFormat:@"%@:%@", transmittedName, body, v19];
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  headerNameForCanonicalization = [headerCopy headerNameForCanonicalization];
  bodyForCanonicalization = [headerCopy bodyForCanonicalization];
  [v7 appendFormat:@"%@:%@", headerNameForCanonicalization, bodyForCanonicalization];

  while ([v7 hasSuffix:@"\r\n"])
  {
    [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - objc_msgSend(@"\r\n", "length"), objc_msgSend(@"\r\n", "length")}];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_canonicalizeHeaders:(id)headers usingRelaxedAlgorithmWithSignatureHeader:(id)header
{
  v27 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  headerCopy = header;
  v8 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = headersCopy;
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
        name = [v13 name];
        body = [v13 body];
        v16 = [(ECDKIMVerifier *)self _relaxedCanonicalizationForHeaderName:name headerBody:body];

        [v8 appendString:v16];
      }

      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  headerNameForCanonicalization = [headerCopy headerNameForCanonicalization];
  bodyForCanonicalization = [headerCopy bodyForCanonicalization];
  v19 = [(ECDKIMVerifier *)self _relaxedCanonicalizationForHeaderName:headerNameForCanonicalization headerBody:bodyForCanonicalization];

  [v8 appendString:v19];
  while ([v8 hasSuffix:@"\r\n"])
  {
    [v8 deleteCharactersInRange:{objc_msgSend(v8, "length") - objc_msgSend(@"\r\n", "length"), objc_msgSend(@"\r\n", "length")}];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_relaxedCanonicalizationForHeaderName:(id)name headerBody:(id)body
{
  bodyCopy = body;
  lowercaseString = [name lowercaseString];
  v7 = [lowercaseString mutableCopy];

  v8 = [bodyCopy mutableCopy];
  [v8 ef_rfc5322Unfold];
  ef_rfc6376WhitespaceCharacterSet = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
  [v8 ef_replaceContiguousSequencesOfCharactersInSet:ef_rfc6376WhitespaceCharacterSet withString:@" "];

  ef_rfc6376WhitespaceCharacterSet2 = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
  [v8 ef_trimTrailingCharactersInSetIgnoringNewline:ef_rfc6376WhitespaceCharacterSet2];

  ef_rfc6376WhitespaceCharacterSet3 = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
  [v7 ef_trimTrailingCharactersInSet:ef_rfc6376WhitespaceCharacterSet3];

  ef_rfc6376WhitespaceCharacterSet4 = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
  [v8 ef_trimLeadingCharactersInSet:ef_rfc6376WhitespaceCharacterSet4];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v7, v8];

  return v13;
}

- (id)verificationContextForMessageData:(id)data error:(id *)error
{
  v12 = 0;
  v5 = [(ECDKIMVerifier *)self verifiableMessageForMessageData:data dkimSignatureHeaders:&v12 error:error];
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

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMVerifier" code:1 userInfo:0];
    *error = v8 = 0;
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (BOOL)verifyMessageData:(id)data publicKeySource:(id)source options:(int64_t)options
{
  sourceCopy = source;
  v13 = 0;
  v9 = [(ECDKIMVerifier *)self verifiableMessageForMessageData:data dkimSignatureHeaders:&v13 error:0];
  v10 = v13;
  v11 = [(ECDKIMVerifier *)self _verifyMessage:v9 withDKIMSignatureHeaders:v10 publicKeySource:sourceCopy options:options error:0];

  return v11 != 0;
}

- (BOOL)verifyMessageWithContext:(id)context options:(int64_t)options error:(id *)error
{
  contextCopy = context;
  publicKeySource = [(ECDKIMVerifier *)self publicKeySource];
  LOBYTE(error) = [(ECDKIMVerifier *)self verifyMessageWithContext:contextCopy publicKeySource:publicKeySource options:options error:error];

  return error;
}

- (BOOL)verifyMessageWithContext:(id)context publicKeySource:(id)source options:(int64_t)options error:(id *)error
{
  contextCopy = context;
  sourceCopy = source;
  if ([contextCopy requireFullBodySignature])
  {
    optionsCopy = options | 4;
  }

  else
  {
    optionsCopy = options;
  }

  verifiableMessage = [contextCopy verifiableMessage];
  dkimSignatureHeaders = [contextCopy dkimSignatureHeaders];
  v15 = [(ECDKIMVerifier *)self _verifyMessage:verifiableMessage withDKIMSignatureHeaders:dkimSignatureHeaders publicKeySource:sourceCopy options:optionsCopy error:error];
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