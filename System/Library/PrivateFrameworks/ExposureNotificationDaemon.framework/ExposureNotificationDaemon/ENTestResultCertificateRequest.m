@interface ENTestResultCertificateRequest
+ (id)certificateRequestWithToken:(id)a3 temporaryExposureKeys:(id)a4 APIKey:(id)a5 requestURL:(id)a6 URLSession:(id)a7 queue:(id)a8 error:(id *)a9;
+ (id)deriveHMACForTemporaryExposureKeys:(id)a3 symmetricKey:(id)a4;
- (id)bodyJSON;
- (id)handleResponse:(id)a3 body:(id)a4;
@end

@implementation ENTestResultCertificateRequest

+ (id)certificateRequestWithToken:(id)a3 temporaryExposureKeys:(id)a4 APIKey:(id)a5 requestURL:(id)a6 URLSession:(id)a7 queue:(id)a8 error:(id *)a9
{
  v15 = a9;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = NSRandomData();
  v23 = 0;
  if (v22)
  {
    v15 = [[a1 alloc] initWithRequestURL:v19 URLSession:v20 queue:v21];
    [v15 setAPIKey:v18];
    v24 = [v16 copy];
    v25 = v15[10];
    v15[10] = v24;

    v26 = [v22 copy];
    v27 = v15[11];
    v15[11] = v26;

    v28 = [objc_opt_class() deriveHMACForTemporaryExposureKeys:v17 symmetricKey:v22];
    v29 = v15[12];
    v15[12] = v28;
  }

  else if (a9)
  {
    ENNestedErrorF();
    *a9 = v15 = 0;
  }

  return v15;
}

- (id)bodyJSON
{
  v8[2] = *MEMORY[0x277D85DE8];
  token = self->_token;
  v7[0] = @"token";
  v7[1] = @"ekeyhmac";
  v8[0] = token;
  v3 = [(NSData *)self->_HMAC base64EncodedStringWithOptions:0];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)handleResponse:(id)a3 body:(id)a4
{
  v5 = a4;
  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();

  if (v6)
  {
    objc_storeStrong(&self->_certificate, v6);
    v7 = 0;
  }

  else
  {
    v7 = ENTestResultErrorF(4);
  }

  return v7;
}

+ (id)deriveHMACForTemporaryExposureKeys:(id)a3 symmetricKey:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v29 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB30]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [v12 keyData];
        v14 = [v13 base64EncodedStringWithOptions:0];

        [v6 setObject:v12 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v9);
  }

  v28 = v7;

  v15 = objc_alloc_init(MEMORY[0x277CCAB60]);
  v16 = [v6 allKeys];
  v17 = [v16 sortedArrayUsingSelector:sel_compare_];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v31 + 1) + 8 * j);
        v23 = [v6 objectForKeyedSubscript:v22];
        if ([v15 length])
        {
          [v15 appendString:{@", "}];
        }

        [v15 appendFormat:@"%@.%u.%u.%u", v22, objc_msgSend(v23, "rollingStartNumber"), objc_msgSend(v23, "rollingPeriod"), objc_msgSend(v23, "transmissionRiskLevel")];
      }

      v19 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v19);
  }

  v24 = [v15 UTF8String];
  memset(v39, 0, sizeof(v39));
  ccsha256_di();
  [v29 length];
  [v29 bytes];
  strlen(v24);
  cchmac();
  v25 = [MEMORY[0x277CBEA98] dataWithBytes:v39 length:32];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

@end