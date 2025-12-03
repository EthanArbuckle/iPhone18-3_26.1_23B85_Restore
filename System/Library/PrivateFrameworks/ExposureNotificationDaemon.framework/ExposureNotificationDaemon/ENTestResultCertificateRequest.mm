@interface ENTestResultCertificateRequest
+ (id)certificateRequestWithToken:(id)token temporaryExposureKeys:(id)keys APIKey:(id)key requestURL:(id)l URLSession:(id)session queue:(id)queue error:(id *)error;
+ (id)deriveHMACForTemporaryExposureKeys:(id)keys symmetricKey:(id)key;
- (id)bodyJSON;
- (id)handleResponse:(id)response body:(id)body;
@end

@implementation ENTestResultCertificateRequest

+ (id)certificateRequestWithToken:(id)token temporaryExposureKeys:(id)keys APIKey:(id)key requestURL:(id)l URLSession:(id)session queue:(id)queue error:(id *)error
{
  errorCopy = error;
  tokenCopy = token;
  keysCopy = keys;
  keyCopy = key;
  lCopy = l;
  sessionCopy = session;
  queueCopy = queue;
  v22 = NSRandomData();
  v23 = 0;
  if (v22)
  {
    errorCopy = [[self alloc] initWithRequestURL:lCopy URLSession:sessionCopy queue:queueCopy];
    [errorCopy setAPIKey:keyCopy];
    v24 = [tokenCopy copy];
    v25 = errorCopy[10];
    errorCopy[10] = v24;

    v26 = [v22 copy];
    v27 = errorCopy[11];
    errorCopy[11] = v26;

    v28 = [objc_opt_class() deriveHMACForTemporaryExposureKeys:keysCopy symmetricKey:v22];
    v29 = errorCopy[12];
    errorCopy[12] = v28;
  }

  else if (error)
  {
    ENNestedErrorF();
    *error = errorCopy = 0;
  }

  return errorCopy;
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

- (id)handleResponse:(id)response body:(id)body
{
  bodyCopy = body;
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

+ (id)deriveHMACForTemporaryExposureKeys:(id)keys symmetricKey:(id)key
{
  v42 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  keyCopy = key;
  v6 = objc_alloc_init(MEMORY[0x277CBEB30]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = keysCopy;
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
        keyData = [v12 keyData];
        v14 = [keyData base64EncodedStringWithOptions:0];

        [v6 setObject:v12 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v9);
  }

  v28 = v7;

  v15 = objc_alloc_init(MEMORY[0x277CCAB60]);
  allKeys = [v6 allKeys];
  v17 = [allKeys sortedArrayUsingSelector:sel_compare_];

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

  uTF8String = [v15 UTF8String];
  memset(v39, 0, sizeof(v39));
  ccsha256_di();
  [keyCopy length];
  [keyCopy bytes];
  strlen(uTF8String);
  cchmac();
  v25 = [MEMORY[0x277CBEA98] dataWithBytes:v39 length:32];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

@end