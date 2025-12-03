@interface DIKeyRetriever
+ (BOOL)KKMSKeyWithURL:(id)l destKey:(char *)key destKeySize:(unint64_t)size error:(id *)error;
+ (BOOL)WKMSKeyWithURL:(id)l authData:(const AuthData *)data destKey:(char *)key destKeySize:(unint64_t)size error:(id *)error;
+ (BOOL)decryptKeyWithData:(id)data destKey:(char *)key destKeySize:(unint64_t)size error:(id *)error;
+ (BOOL)writeHexKeyToBuffer:(char *)buffer hexKey:(id)key error:(id *)error;
+ (id)getRequestWithURL:(id)l error:(id *)error;
+ (id)hintFormat:(id)format;
+ (id)jsonResponseWithRequest:(id)request session:(id)session error:(id *)error;
+ (id)newACEndpointWithEnvironment:(id)environment error:(id *)error;
+ (id)newDawTokenWithError:(id *)error;
+ (id)newEnvWithDictionary:(id)dictionary error:(id *)error;
+ (id)newSessionWithError:(id *)error;
+ (id)newUrl:(id)url;
+ (id)postRequestWithURL:(id)l session:(id)session data:(id)data error:(id *)error;
+ (id)requestSynchronousDataWithRequest:(id)request session:(id)session error:(id *)error;
@end

@implementation DIKeyRetriever

+ (id)newACEndpointWithEnvironment:(id)environment error:(id *)error
{
  environmentCopy = environment;
  if ([environmentCopy isEqual:@"uat"])
  {
    v6 = @"saks-ac-uat.g.apple.com";
  }

  else if ([environmentCopy isEqual:@"prod"])
  {
    v6 = @"saks-ac-prod.g.apple.com";
  }

  else if ([environmentCopy isEqual:@"dev"])
  {
    v6 = @"saks-ac-dev.g.apple.com";
  }

  else
  {
    v6 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Not valid SAKS environment" error:error];
  }

  return v6;
}

+ (id)newDawTokenWithError:(id *)error
{
  pipe = [MEMORY[0x277CCAC10] pipe];
  fileHandleForReading = [pipe fileHandleForReading];
  v6 = objc_alloc_init(MEMORY[0x277CCACB0]);
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/usr/local/bin/appleconnect"];
  [v6 setExecutableURL:v7];

  [v6 setArguments:&unk_285C0F458];
  [v6 setStandardOutput:pipe];
  if ([v6 launchAndReturnError:error])
  {
    [v6 waitUntilExit];
    if ([v6 terminationStatus])
    {
      v8 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Could not generate daw token - AppleConnect Failure" error:error];
    }

    else
    {
      v9 = [fileHandleForReading readDataToEndOfFileAndReturnError:error];
      if (v9)
      {
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
        newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
        v8 = [v10 stringByTrimmingCharactersInSet:newlineCharacterSet];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)newSessionWithError:(id *)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [self newDawTokenWithError:error];
  if (v3)
  {
    ephemeralSessionConfiguration = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bearer %@", v3, @"Authorization"];
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [ephemeralSessionConfiguration setHTTPAdditionalHeaders:v6];

    v7 = [MEMORY[0x277CBABB8] sessionWithConfiguration:ephemeralSessionConfiguration];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)hintFormat:(id)format
{
  if ([format hasPrefix:@"<"])
  {
    return @"plist";
  }

  else
  {
    return @"json";
  }
}

+ (id)requestSynchronousDataWithRequest:(id)request session:(id)session error:(id *)error
{
  requestCopy = request;
  sessionCopy = session;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  v9 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__DIKeyRetriever_requestSynchronousDataWithRequest_session_error___block_invoke;
  v14[3] = &unk_278F80A78;
  v16 = &v18;
  v17 = &v24;
  v10 = v9;
  v15 = v10;
  v11 = [sessionCopy dataTaskWithRequest:requestCopy completionHandler:v14];
  [v11 resume];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v19[5];
  }

  v12 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __66__DIKeyRetriever_requestSynchronousDataWithRequest_session_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *__error();
    if (DIForwardLogs())
    {
      v11 = getDIOSLog();
      os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      *buf = 68158210;
      v27 = 79;
      v28 = 2080;
      v29 = "+[DIKeyRetriever requestSynchronousDataWithRequest:session:error:]_block_invoke";
      v30 = 2112;
      v31 = v9;
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v18 = getDIOSLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 68158210;
        v27 = 79;
        v28 = 2080;
        v29 = "+[DIKeyRetriever requestSynchronousDataWithRequest:session:error:]_block_invoke";
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_248DE0000, v18, OS_LOG_TYPE_ERROR, "%.*s: %@", buf, 0x1Cu);
      }
    }

    *__error() = v10;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
      v14 = [v13 statusCode];
      if (v14 == 200)
      {
        v15 = *(*(a1 + 48) + 8);
        v16 = v7;
        v17 = *(v15 + 40);
        *(v15 + 40) = v16;
      }

      else
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"HTTP request failed with status code: %ld", v14];
        v22 = [DIError errorWithEnumValue:150 verboseInfo:v17];
        v23 = *(*(a1 + 40) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected response type: %@", v8];
      v19 = [DIError errorWithEnumValue:150 verboseInfo:v13];
      v20 = *(*(a1 + 40) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v25 = *MEMORY[0x277D85DE8];
}

+ (id)jsonResponseWithRequest:(id)request session:(id)session error:(id *)error
{
  v6 = [self requestSynchronousDataWithRequest:request session:session error:?];
  if (v6)
  {
    [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:error];
  }

  else
  {
    [DIError nilWithEnumValue:150 verboseInfo:@"AEA key retrieval failed" error:error];
  }
  v7 = ;

  return v7;
}

+ (id)postRequestWithURL:(id)l session:(id)session data:(id)data error:(id *)error
{
  sessionCopy = session;
  dataCopy = data;
  v12 = [MEMORY[0x277CBAB50] requestWithURL:l];
  [v12 setHTTPMethod:@"POST"];
  [v12 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  if (dataCopy)
  {
    [v12 setHTTPBody:dataCopy];
  }

  v13 = [self jsonResponseWithRequest:v12 session:sessionCopy error:error];

  return v13;
}

+ (id)getRequestWithURL:(id)l error:(id *)error
{
  v6 = [MEMORY[0x277CBAB50] requestWithURL:l];
  [v6 setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
  mEMORY[0x277CBABB8] = [MEMORY[0x277CBABB8] sharedSession];
  v8 = [self requestSynchronousDataWithRequest:v6 session:mEMORY[0x277CBABB8] error:error];

  if (!v8)
  {
    v8 = [DIError nilWithEnumValue:150 verboseInfo:@"AEA key retrieval failed" error:error];
  }

  return v8;
}

+ (id)newEnvWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v9 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Not valid SAKS metadata (json format expected)" error:error];
    goto LABEL_5;
  }

  v7 = [dictionaryCopy objectForKey:@"metadata"];
  v8 = [v7 valueForKey:@"environment"];

  if (!v8)
  {
    v9 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Not valid SAKS metadata (no environment field)" error:error];
LABEL_5:
    v8 = v9;
  }

  return v8;
}

+ (id)newUrl:(id)url
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@/v1/ac/decrypt", url];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];

  return v4;
}

+ (BOOL)writeHexKeyToBuffer:(char *)buffer hexKey:(id)key error:(id *)error
{
  keyCopy = key;
  uTF8String = [keyCopy UTF8String];
  v9 = strnlen(uTF8String, 0x41uLL);
  if (v9 == 64)
  {
    if (strlen(uTF8String) != 64)
    {
      v11 = "Key is not 32 bytes size.";
LABEL_11:
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
      v17 = std::generic_category();
      exception[1] = 22;
      exception[2] = v17;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = v11;
    }

    v10 = 0;
    v19 = 0;
    v11 = "Key is not hexadecimal number.";
    do
    {
      *__str = *&uTF8String[2 * v10];
      v12 = strtol(__str, 0, 16);
      buffer[v10] = v12;
      if (!v12 && *__str != 12336)
      {
        goto LABEL_11;
      }

      ++v10;
    }

    while (v10 != 32);
    v13 = 1;
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid size hex key %lu", v9];
    v13 = [DIError failWithPOSIXCode:22 verboseInfo:v14 error:error];
  }

  return v13;
}

+ (BOOL)KKMSKeyWithURL:(id)l destKey:(char *)key destKeySize:(unint64_t)size error:(id *)error
{
  lCopy = l;
  v10 = [DIKeyRetriever newSessionWithError:error];
  if (v10)
  {
    v11 = [lCopy URLByAppendingPathComponent:@"decryption-components"];
    v12 = [DIKeyRetriever postRequestWithURL:v11 session:v10 data:0 error:error];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"encryption"];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 objectForKeyedSubscript:@"key"];
        if (v16)
        {
          v17 = [self writeHexKeyToBuffer:key hexKey:v16 error:error];
        }

        else
        {
          v17 = [DIError failWithPOSIXCode:22 verboseInfo:@"Missing key in KKMS response" error:error];
        }

        v18 = v17;
      }

      else
      {
        v18 = [DIError failWithPOSIXCode:22 verboseInfo:@"Missing key in KKMS response" error:error];
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (BOOL)WKMSKeyWithURL:(id)l authData:(const AuthData *)data destKey:(char *)key destKeySize:(unint64_t)size error:(id *)error
{
  v10 = [DIKeyRetriever getRequestWithURL:l error:error, key, size];
  if (v10)
  {
    v11 = frk_metadata_from_aea_auth_data(data->var0, error);
    v12 = v11;
    if (v11)
    {
      v13 = frk_unwrapped_symmetric_key_with_shipping_private_key(v11, v10, error);
      v14 = v13;
      if (v13)
      {
        if ([v13 length] == 32)
        {
          bytes = [v14 bytes];
          v16 = bytes[1];
          *key = *bytes;
          *(key + 1) = v16;
          v17 = 1;
        }

        else
        {
          v17 = [DIError failWithPOSIXCode:22 verboseInfo:@"Invalid key size" error:error];
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)decryptKeyWithData:(id)data destKey:(char *)key destKeySize:(unint64_t)size error:(id *)error
{
  dataCopy = data;
  v10 = [self hintFormat:dataCopy];
  v11 = [dataCopy dataUsingEncoding:4];
  v12 = dataCopy;
  if ([v10 isEqual:@"plist"])
  {
    v13 = [MEMORY[0x277CCAC58] propertyListWithData:v11 options:0 format:0 error:error];
    v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:1 error:error];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v14, "bytes")}];

    v16 = v13;
    if (!v13)
    {
LABEL_3:
      v17 = 0;
      v18 = @"dev";
      goto LABEL_25;
    }
  }

  else
  {
    [MEMORY[0x277CCAAA0] JSONObjectWithData:v11 options:0 error:error];
    v16 = v15 = v12;
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  v18 = [DIKeyRetriever newEnvWithDictionary:v16 error:error];
  if (v18)
  {
    keyCopy = key;
    v19 = [DIKeyRetriever newACEndpointWithEnvironment:v18 error:error];
    if (v19)
    {
      v20 = [DIKeyRetriever newSessionWithError:error];
      if (v20)
      {
        v38 = v20;
        v35 = v19;
        v37 = [DIKeyRetriever newUrl:v19];
        v21 = [v15 dataUsingEncoding:4];
        v22 = [DIKeyRetriever postRequestWithURL:v37 session:v38 data:v21 error:error];

        if (v22)
        {
          v34 = v22;
          v23 = [v22 objectForKeyedSubscript:@"key"];
          if (v23)
          {
            v24 = v23;
            uTF8String = [v24 UTF8String];
            v26 = uTF8String;
            if (uTF8String)
            {
              v27 = strnlen(uTF8String, 0x59uLL);
              if (v27 == 88)
              {
                v28 = *(v26 + 1);
                *keyCopy = *v26;
                *(keyCopy + 1) = v28;
                v29 = *(v26 + 2);
                v30 = *(v26 + 3);
                v31 = *(v26 + 4);
                *(keyCopy + 10) = *(v26 + 10);
                *(keyCopy + 3) = v30;
                *(keyCopy + 4) = v31;
                *(keyCopy + 2) = v29;
                v17 = 1;
              }

              else
              {
                v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid size of saks response %lu", v27];
                v17 = [DIError failWithPOSIXCode:22 verboseInfo:v32 error:error];
              }
            }

            else
            {
              v17 = [DIError failWithPOSIXCode:22 verboseInfo:@"Missing key in SAKS response" error:error];
            }

            v19 = v35;
          }

          else
          {
            v24 = 0;
            v19 = v35;
            v17 = [DIError failWithPOSIXCode:22 verboseInfo:@"Bad or missing key in SAKS response." error:error];
          }

          v22 = v34;
        }

        else
        {
          v17 = 0;
          v19 = v35;
        }

        v20 = v38;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_25:

  return v17;
}

@end