@interface DIKeyRetriever
+ (BOOL)KKMSKeyWithURL:(id)a3 destKey:(char *)a4 destKeySize:(unint64_t)a5 error:(id *)a6;
+ (BOOL)WKMSKeyWithURL:(id)a3 authData:(const AuthData *)a4 destKey:(char *)a5 destKeySize:(unint64_t)a6 error:(id *)a7;
+ (BOOL)decryptKeyWithData:(id)a3 destKey:(char *)a4 destKeySize:(unint64_t)a5 error:(id *)a6;
+ (BOOL)writeHexKeyToBuffer:(char *)a3 hexKey:(id)a4 error:(id *)a5;
+ (id)getRequestWithURL:(id)a3 error:(id *)a4;
+ (id)hintFormat:(id)a3;
+ (id)jsonResponseWithRequest:(id)a3 session:(id)a4 error:(id *)a5;
+ (id)newACEndpointWithEnvironment:(id)a3 error:(id *)a4;
+ (id)newDawTokenWithError:(id *)a3;
+ (id)newEnvWithDictionary:(id)a3 error:(id *)a4;
+ (id)newSessionWithError:(id *)a3;
+ (id)newUrl:(id)a3;
+ (id)postRequestWithURL:(id)a3 session:(id)a4 data:(id)a5 error:(id *)a6;
+ (id)requestSynchronousDataWithRequest:(id)a3 session:(id)a4 error:(id *)a5;
@end

@implementation DIKeyRetriever

+ (id)newACEndpointWithEnvironment:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 isEqual:@"uat"])
  {
    v6 = @"saks-ac-uat.g.apple.com";
  }

  else if ([v5 isEqual:@"prod"])
  {
    v6 = @"saks-ac-prod.g.apple.com";
  }

  else if ([v5 isEqual:@"dev"])
  {
    v6 = @"saks-ac-dev.g.apple.com";
  }

  else
  {
    v6 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Not valid SAKS environment" error:a4];
  }

  return v6;
}

+ (id)newDawTokenWithError:(id *)a3
{
  v4 = [MEMORY[0x277CCAC10] pipe];
  v5 = [v4 fileHandleForReading];
  v6 = objc_alloc_init(MEMORY[0x277CCACB0]);
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/usr/local/bin/appleconnect"];
  [v6 setExecutableURL:v7];

  [v6 setArguments:&unk_285C0F458];
  [v6 setStandardOutput:v4];
  if ([v6 launchAndReturnError:a3])
  {
    [v6 waitUntilExit];
    if ([v6 terminationStatus])
    {
      v8 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Could not generate daw token - AppleConnect Failure" error:a3];
    }

    else
    {
      v9 = [v5 readDataToEndOfFileAndReturnError:a3];
      if (v9)
      {
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
        v11 = [MEMORY[0x277CCA900] newlineCharacterSet];
        v8 = [v10 stringByTrimmingCharactersInSet:v11];
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

+ (id)newSessionWithError:(id *)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [a1 newDawTokenWithError:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bearer %@", v3, @"Authorization"];
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v4 setHTTPAdditionalHeaders:v6];

    v7 = [MEMORY[0x277CBABB8] sessionWithConfiguration:v4];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)hintFormat:(id)a3
{
  if ([a3 hasPrefix:@"<"])
  {
    return @"plist";
  }

  else
  {
    return @"json";
  }
}

+ (id)requestSynchronousDataWithRequest:(id)a3 session:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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
  v11 = [v8 dataTaskWithRequest:v7 completionHandler:v14];
  [v11 resume];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (a5)
  {
    *a5 = v19[5];
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

+ (id)jsonResponseWithRequest:(id)a3 session:(id)a4 error:(id *)a5
{
  v6 = [a1 requestSynchronousDataWithRequest:a3 session:a4 error:?];
  if (v6)
  {
    [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:a5];
  }

  else
  {
    [DIError nilWithEnumValue:150 verboseInfo:@"AEA key retrieval failed" error:a5];
  }
  v7 = ;

  return v7;
}

+ (id)postRequestWithURL:(id)a3 session:(id)a4 data:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CBAB50] requestWithURL:a3];
  [v12 setHTTPMethod:@"POST"];
  [v12 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  if (v11)
  {
    [v12 setHTTPBody:v11];
  }

  v13 = [a1 jsonResponseWithRequest:v12 session:v10 error:a6];

  return v13;
}

+ (id)getRequestWithURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CBAB50] requestWithURL:a3];
  [v6 setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
  v7 = [MEMORY[0x277CBABB8] sharedSession];
  v8 = [a1 requestSynchronousDataWithRequest:v6 session:v7 error:a4];

  if (!v8)
  {
    v8 = [DIError nilWithEnumValue:150 verboseInfo:@"AEA key retrieval failed" error:a4];
  }

  return v8;
}

+ (id)newEnvWithDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v9 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Not valid SAKS metadata (json format expected)" error:a4];
    goto LABEL_5;
  }

  v7 = [v5 objectForKey:@"metadata"];
  v8 = [v7 valueForKey:@"environment"];

  if (!v8)
  {
    v9 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Not valid SAKS metadata (no environment field)" error:a4];
LABEL_5:
    v8 = v9;
  }

  return v8;
}

+ (id)newUrl:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@/v1/ac/decrypt", a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];

  return v4;
}

+ (BOOL)writeHexKeyToBuffer:(char *)a3 hexKey:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [v7 UTF8String];
  v9 = strnlen(v8, 0x41uLL);
  if (v9 == 64)
  {
    if (strlen(v8) != 64)
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
      *__str = *&v8[2 * v10];
      v12 = strtol(__str, 0, 16);
      a3[v10] = v12;
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
    v13 = [DIError failWithPOSIXCode:22 verboseInfo:v14 error:a5];
  }

  return v13;
}

+ (BOOL)KKMSKeyWithURL:(id)a3 destKey:(char *)a4 destKeySize:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [DIKeyRetriever newSessionWithError:a6];
  if (v10)
  {
    v11 = [v9 URLByAppendingPathComponent:@"decryption-components"];
    v12 = [DIKeyRetriever postRequestWithURL:v11 session:v10 data:0 error:a6];
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
          v17 = [a1 writeHexKeyToBuffer:a4 hexKey:v16 error:a6];
        }

        else
        {
          v17 = [DIError failWithPOSIXCode:22 verboseInfo:@"Missing key in KKMS response" error:a6];
        }

        v18 = v17;
      }

      else
      {
        v18 = [DIError failWithPOSIXCode:22 verboseInfo:@"Missing key in KKMS response" error:a6];
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

+ (BOOL)WKMSKeyWithURL:(id)a3 authData:(const AuthData *)a4 destKey:(char *)a5 destKeySize:(unint64_t)a6 error:(id *)a7
{
  v10 = [DIKeyRetriever getRequestWithURL:a3 error:a7, a5, a6];
  if (v10)
  {
    v11 = frk_metadata_from_aea_auth_data(a4->var0, a7);
    v12 = v11;
    if (v11)
    {
      v13 = frk_unwrapped_symmetric_key_with_shipping_private_key(v11, v10, a7);
      v14 = v13;
      if (v13)
      {
        if ([v13 length] == 32)
        {
          v15 = [v14 bytes];
          v16 = v15[1];
          *a5 = *v15;
          *(a5 + 1) = v16;
          v17 = 1;
        }

        else
        {
          v17 = [DIError failWithPOSIXCode:22 verboseInfo:@"Invalid key size" error:a7];
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

+ (BOOL)decryptKeyWithData:(id)a3 destKey:(char *)a4 destKeySize:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a1 hintFormat:v9];
  v11 = [v9 dataUsingEncoding:4];
  v12 = v9;
  if ([v10 isEqual:@"plist"])
  {
    v13 = [MEMORY[0x277CCAC58] propertyListWithData:v11 options:0 format:0 error:a6];
    v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:1 error:a6];
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
    [MEMORY[0x277CCAAA0] JSONObjectWithData:v11 options:0 error:a6];
    v16 = v15 = v12;
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  v18 = [DIKeyRetriever newEnvWithDictionary:v16 error:a6];
  if (v18)
  {
    v36 = a4;
    v19 = [DIKeyRetriever newACEndpointWithEnvironment:v18 error:a6];
    if (v19)
    {
      v20 = [DIKeyRetriever newSessionWithError:a6];
      if (v20)
      {
        v38 = v20;
        v35 = v19;
        v37 = [DIKeyRetriever newUrl:v19];
        v21 = [v15 dataUsingEncoding:4];
        v22 = [DIKeyRetriever postRequestWithURL:v37 session:v38 data:v21 error:a6];

        if (v22)
        {
          v34 = v22;
          v23 = [v22 objectForKeyedSubscript:@"key"];
          if (v23)
          {
            v24 = v23;
            v25 = [v24 UTF8String];
            v26 = v25;
            if (v25)
            {
              v27 = strnlen(v25, 0x59uLL);
              if (v27 == 88)
              {
                v28 = *(v26 + 1);
                *v36 = *v26;
                *(v36 + 1) = v28;
                v29 = *(v26 + 2);
                v30 = *(v26 + 3);
                v31 = *(v26 + 4);
                *(v36 + 10) = *(v26 + 10);
                *(v36 + 3) = v30;
                *(v36 + 4) = v31;
                *(v36 + 2) = v29;
                v17 = 1;
              }

              else
              {
                v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid size of saks response %lu", v27];
                v17 = [DIError failWithPOSIXCode:22 verboseInfo:v32 error:a6];
              }
            }

            else
            {
              v17 = [DIError failWithPOSIXCode:22 verboseInfo:@"Missing key in SAKS response" error:a6];
            }

            v19 = v35;
          }

          else
          {
            v24 = 0;
            v19 = v35;
            v17 = [DIError failWithPOSIXCode:22 verboseInfo:@"Bad or missing key in SAKS response." error:a6];
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