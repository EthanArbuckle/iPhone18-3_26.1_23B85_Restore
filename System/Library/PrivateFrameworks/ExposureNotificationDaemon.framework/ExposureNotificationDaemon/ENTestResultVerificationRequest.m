@interface ENTestResultVerificationRequest
+ (id)_metadataFromVerificationResponseDictionary:(id)a3 error:(id *)a4;
+ (id)verificationRequestWithCode:(id)a3 acceptedReportTypes:(id)a4 APIKey:(id)a5 nonce:(id)a6 requestURL:(id)a7 URLSession:(id)a8 queue:(id)a9 error:(id *)a10;
- (id)_testVerificationErrorForErrorCodeString:(id)a3;
- (id)bodyJSON;
- (id)errorForUnsuccessfulResponse:(id)a3 body:(id)a4;
- (id)handleResponse:(id)a3 body:(id)a4;
@end

@implementation ENTestResultVerificationRequest

+ (id)verificationRequestWithCode:(id)a3 acceptedReportTypes:(id)a4 APIKey:(id)a5 nonce:(id)a6 requestURL:(id)a7 URLSession:(id)a8 queue:(id)a9 error:(id *)a10
{
  v54 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v48 = v17;
  if ([v17 count])
  {
    v43 = v19;
    v23 = a1;
    v44 = v22;
    v45 = v21;
    v24 = v20;
    v46 = v18;
    v47 = v16;
    v25 = DiagnosisReportTypeToServerStringMap();
    v26 = objc_alloc_init(MEMORY[0x277CBEB50]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v27 = v17;
    v28 = [v27 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v50;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v50 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v49 + 1) + 8 * i);
          v33 = [v25 objectForKeyedSubscript:v32];
          if (!v33)
          {
            [ENTestResultVerificationRequest verificationRequestWithCode:a10 acceptedReportTypes:v27 APIKey:v32 nonce:? requestURL:? URLSession:? queue:? error:?];
            v18 = v46;
            v16 = v47;
            v20 = v24;
            v22 = v44;
            v21 = v45;
            v19 = v43;
            goto LABEL_17;
          }

          [v26 addObject:v33];
        }

        v29 = [v27 countByEnumeratingWithState:&v49 objects:v53 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v34 = [v23 alloc];
    v20 = v24;
    v35 = v24;
    v22 = v44;
    v21 = v45;
    v33 = [v34 initWithRequestURL:v35 URLSession:v45 queue:v44];
    v18 = v46;
    [v33 setAPIKey:v46];
    v16 = v47;
    v36 = [v47 copy];
    v37 = *(v33 + 80);
    *(v33 + 80) = v36;

    v38 = [v26 copy];
    v39 = *(v33 + 88);
    *(v33 + 88) = v38;

    v19 = v43;
    if (v43)
    {
      v40 = [v43 copy];
    }

    else
    {
      v40 = 0;
    }

    objc_storeStrong((v33 + 96), v40);
    if (v43)
    {
    }

    [v33 setPaddedRequestSize:3072];
LABEL_17:
  }

  else if (a10)
  {
    ENErrorF();
    *a10 = v33 = 0;
  }

  else
  {
    v33 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)bodyJSON
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB30]);
  v4 = [(NSSet *)self->_acceptedTestTypes allObjects];
  [v3 setObject:v4 forKeyedSubscript:@"accept"];

  [v3 setObject:self->_verificationCode forKeyedSubscript:@"code"];
  [v3 setObject:self->_nonce forKeyedSubscript:@"nonce"];
  v5 = [v3 copy];

  return v5;
}

- (id)errorForUnsuccessfulResponse:(id)a3 body:(id)a4
{
  v6 = a3;
  v7 = a4;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v8)
  {
    v9 = [(ENTestResultVerificationRequest *)self _testVerificationErrorForErrorCodeString:v8];

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11.receiver = self;
  v11.super_class = ENTestResultVerificationRequest;
  v9 = [(ENTestResultNetworkRequest *)&v11 errorForUnsuccessfulResponse:v6 body:v7];
LABEL_6:

  return v9;
}

- (id)_testVerificationErrorForErrorCodeString:(id)a3
{
  v3 = a3;
  v4 = [&unk_285D6E4F8 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4 && ((v6 = [v4 integerValue], v6 == 12) || v6 == 3 || v6 == 2))
  {
    v7 = ENTestResultErrorF(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)handleResponse:(id)a3 body:(id)a4
{
  v5 = a4;
  v16 = 0;
  v6 = [objc_opt_class() _metadataFromVerificationResponseDictionary:v5 error:&v16];
  v7 = v16;
  v8 = v7;
  if (v6)
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      v10 = [v6 copy];
      metadata = self->_metadata;
      self->_metadata = v10;

      v12 = [v9 copy];
      token = self->_token;
      self->_token = v12;

      v14 = 0;
    }

    else
    {
      v14 = ENTestResultErrorF(4);
    }
  }

  else
  {
    v14 = v7;
  }

  return v14;
}

+ (id)_metadataFromVerificationResponseDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB30]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __85__ENTestResultVerificationRequest__metadataFromVerificationResponseDictionary_error___block_invoke;
  v27[3] = &unk_278FD1148;
  v7 = v5;
  v28 = v7;
  v8 = MEMORY[0x24C214430](v27);
  v26 = 0;
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if ([v9 length])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = &unk_285D6E228;
    v10 = [v9 lowercaseString];
    v11 = DiagnosisReportTypeToServerStringMap();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __85__ENTestResultVerificationRequest__metadataFromVerificationResponseDictionary_error___block_invoke_49;
    v19[3] = &unk_278FD1170;
    v19[4] = v10;
    v19[5] = &v20;
    [v11 enumerateKeysAndObjectsUsingBlock:v19];

    [v6 setObject:v21[5] forKeyedSubscript:*MEMORY[0x277CC5B88]];
    _Block_object_dispose(&v20, 8);
  }

  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  v13 = v12;
  if (v26 != -6727 && v26)
  {
    if (a4)
    {
      (v8)[2](v8, @"symptomDate");
      *a4 = v17 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if (![v12 length])
    {
LABEL_8:
      v17 = [v6 copy];
      goto LABEL_13;
    }

    v14 = objc_alloc_init(MEMORY[0x277CCAA60]);
    [v14 setFormatOptions:275];
    v15 = [v14 dateFromString:v13];
    if (v15)
    {
      v16 = v15;
      [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x277CC5BB0]];
      [v6 setObject:MEMORY[0x277CBEC30] forKeyedSubscript:*MEMORY[0x277CC5B98]];

      goto LABEL_8;
    }

    [(ENTestResultVerificationRequest *)a4 _metadataFromVerificationResponseDictionary:v14 error:v8];
  }

  v17 = 0;
LABEL_13:

  return v17;
}

id __85__ENTestResultVerificationRequest__metadataFromVerificationResponseDictionary_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 objectForKeyedSubscript:v3];
  v4 = ENTestResultErrorF(4);

  return v4;
}

void __85__ENTestResultVerificationRequest__metadataFromVerificationResponseDictionary_error___block_invoke_49(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = *(a1 + 32);
  v9 = [a3 lowercaseString];
  LODWORD(v8) = [v8 isEqualToString:v9];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (void)verificationRequestWithCode:(void *)a3 acceptedReportTypes:APIKey:nonce:requestURL:URLSession:queue:error:.cold.1(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    ENDiagnosisReportTypeToString([a3 unsignedIntValue]);
    *a1 = ENErrorF();
  }
}

+ (void)_metadataFromVerificationResponseDictionary:(uint64_t)a3 error:.cold.1(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    *a1 = (*(a3 + 16))(a3, @"symptomDate");
  }
}

@end