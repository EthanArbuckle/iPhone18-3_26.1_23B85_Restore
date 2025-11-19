@interface NNMKURLRequest
+ (id)_buildNumber;
+ (id)_hardwareModel;
+ (id)_methodNameForType:(unint64_t)a3;
+ (id)_osName;
+ (id)_osVersion;
+ (id)_systemVersionDictionary;
+ (id)mailNotificationURL;
+ (id)serverFriendlyDescription;
+ (void)_formBodyRequestWithBaseURLString:(id)a3 path:(id)a4 body:(id)a5 method:(id)a6 token:(id)a7 errorParser:(id)a8 completion:(id)a9;
+ (void)_getRequestWithBaseURLString:(id)a3 path:(id)a4 params:(id)a5 token:(id)a6 errorParser:(id)a7 completion:(id)a8;
+ (void)_handleRequest:(id)a3 errorParser:(id)a4 completion:(id)a5;
+ (void)_jsonBodyRequestWithBaseURLString:(id)a3 path:(id)a4 body:(id)a5 method:(id)a6 token:(id)a7 needsBAA:(BOOL)a8 errorParser:(id)a9 completion:(id)a10;
@end

@implementation NNMKURLRequest

+ (id)mailNotificationURL
{
  nnmk_setupLoggingSubsystems();
  if (!os_variant_has_internal_ui() || (v2 = CFPreferencesCopyAppValue(@"NanoMailCloudNotificationStagingServer", @"com.apple.NanoMail")) == 0)
  {
    v2 = @"https://mailnotifications.apple.com";
  }

  return v2;
}

+ (void)_getRequestWithBaseURLString:(id)a3 path:(id)a4 params:(id)a5 token:(id)a6 errorParser:(id)a7 completion:(id)a8
{
  v14 = a5;
  v15 = a6;
  v16 = MEMORY[0x277CCACE0];
  v17 = a8;
  v18 = a7;
  v19 = a4;
  v20 = a3;
  v21 = [[v16 alloc] initWithString:v20];

  [v21 setPath:v19];
  if ([v14 count])
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v14, "count")}];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __88__NNMKURLRequest__getRequestWithBaseURLString_path_params_token_errorParser_completion___block_invoke;
    v28[3] = &unk_279935D70;
    v29 = v22;
    v23 = v22;
    [v14 enumerateKeysAndObjectsUsingBlock:v28];
    [v21 setQueryItems:v23];
  }

  v24 = MEMORY[0x277CCAB70];
  v25 = [v21 URL];
  v26 = [v24 requestWithURL:v25];

  if (v15)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bearer %@", v15];
    [v26 addValue:v27 forHTTPHeaderField:@"Authorization"];
  }

  [v26 setHTTPMethod:@"GET"];
  [a1 _handleRequest:v26 errorParser:v18 completion:v17];
}

void __88__NNMKURLRequest__getRequestWithBaseURLString_path_params_token_errorParser_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCAD18];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithName:v7 value:v6];

  [v4 addObject:v8];
}

+ (void)_jsonBodyRequestWithBaseURLString:(id)a3 path:(id)a4 body:(id)a5 method:(id)a6 token:(id)a7 needsBAA:(BOOL)a8 errorParser:(id)a9 completion:(id)a10
{
  v10 = a8;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v33 = a9;
  v18 = a10;
  v19 = MEMORY[0x277CBEBC0];
  v20 = a6;
  v21 = [v19 URLWithString:a3];
  v22 = v21;
  if (v15)
  {
    v23 = [v21 URLByAppendingPathComponent:v15];
  }

  else
  {
    v23 = v21;
  }

  v24 = v23;
  v25 = [MEMORY[0x277CCAB70] requestWithURL:v23];
  if (v17)
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bearer %@", v17];
    [v25 addValue:v26 forHTTPHeaderField:@"Authorization"];
  }

  [v25 addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v25 setHTTPMethod:v20];

  if (v10)
  {
    v27 = +[NNMKURLRequest serverFriendlyDescription];
    [v25 addValue:v27 forHTTPHeaderField:@"X-MMe-Client-Info"];
  }

  if (v16)
  {
    v28 = v16;
  }

  else
  {
    v28 = MEMORY[0x277CBEC10];
  }

  v39 = 0;
  v29 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v28 options:0 error:&v39];
  v30 = v39;
  [v25 setHTTPBody:v29];
  if (v30)
  {
    v18[2](v18, 0, v30);
    v31 = v33;
  }

  else if (v10)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __107__NNMKURLRequest__jsonBodyRequestWithBaseURLString_path_body_method_token_needsBAA_errorParser_completion___block_invoke;
    v34[3] = &unk_279935D98;
    v36 = v18;
    v35 = v25;
    v31 = v33;
    v38 = a1;
    v37 = v33;
    [NNMKBAAManager appleAuthHeaderFrom:v29 completion:v34];
  }

  else
  {
    v31 = v33;
    [a1 _handleRequest:v25 errorParser:v33 completion:v18];
  }
}

uint64_t __107__NNMKURLRequest__jsonBodyRequestWithBaseURLString_path_body_method_token_needsBAA_errorParser_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    return v5();
  }

  else
  {
    [*(a1 + 32) addValue:a2 forHTTPHeaderField:@"X-Apple-Authentication"];
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);

    return [v7 _handleRequest:v9 errorParser:v8 completion:v10];
  }
}

+ (void)_formBodyRequestWithBaseURLString:(id)a3 path:(id)a4 body:(id)a5 method:(id)a6 token:(id)a7 errorParser:(id)a8 completion:(id)a9
{
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = MEMORY[0x277CBEBC0];
  v32 = a9;
  v18 = a8;
  v19 = a5;
  v20 = [v17 URLWithString:a3];
  v21 = v20;
  v34 = v14;
  if (v14)
  {
    v22 = [v20 URLByAppendingPathComponent:v14];
  }

  else
  {
    v22 = v20;
  }

  v23 = v22;
  v24 = [MEMORY[0x277CCAB70] requestWithURL:v22];
  if (v16)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bearer %@", v16];
    [v24 addValue:v25 forHTTPHeaderField:@"Authorization"];
  }

  [v24 setHTTPMethod:v15];
  v26 = objc_opt_new();
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __98__NNMKURLRequest__formBodyRequestWithBaseURLString_path_body_method_token_errorParser_completion___block_invoke;
  v35[3] = &unk_279935DC0;
  v36 = v26;
  v27 = v26;
  [v19 enumerateKeysAndObjectsUsingBlock:v35];

  v28 = [v27 dataUsingEncoding:1];
  [v24 setHTTPBody:v28];
  [v24 addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
  v29 = v15;
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v28, "length")}];
  v31 = [v30 stringValue];
  [v24 setValue:v31 forHTTPHeaderField:@"Content-Length"];

  [a1 _handleRequest:v24 errorParser:v18 completion:v32];
}

void __98__NNMKURLRequest__formBodyRequestWithBaseURLString_path_body_method_token_errorParser_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  if ([v5 length])
  {
    v7 = @"&%@=%@";
  }

  else
  {
    v7 = @"%@=%@";
  }

  [*(a1 + 32) appendFormat:v7, v8, v6];
}

+ (void)_handleRequest:(id)a3 errorParser:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCAD30] sharedSession];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__NNMKURLRequest__handleRequest_errorParser_completion___block_invoke;
  v15[3] = &unk_279935DE8;
  v16 = v7;
  v17 = v9;
  v18 = v8;
  v11 = v8;
  v12 = v9;
  v13 = v7;
  v14 = [v10 dataTaskWithRequest:v13 completionHandler:v15];

  [v14 resume];
}

void __56__NNMKURLRequest__handleRequest_errorParser_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 statusCode];
    if (v9)
    {
LABEL_3:
      v11 = MEMORY[0x277CCACA8];
      v12 = [*(a1 + 32) URL];
      v13 = [v12 absoluteString];
      v14 = [v9 localizedDescription];
      v15 = [v11 stringWithFormat:@"%@: %@", v13, v14];

      v16 = *(a1 + 40);
      v17 = MEMORY[0x277CCA9B8];
      v18 = [v9 domain];
      v19 = [v9 code];
      v39 = *MEMORY[0x277CCA450];
      v40[0] = v15;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      v21 = [v17 errorWithDomain:v18 code:v19 userInfo:v20];
      (*(v16 + 16))(v16, 0, v21);

      goto LABEL_24;
    }
  }

  else
  {
    v10 = -1;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  if (!v7 || (v10 - 200) > 0x63)
  {
    if ([v7 length])
    {
      v37 = 0;
      v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v37];
      v24 = *(a1 + 48);
      if (v24)
      {
        if (v9)
        {
          v25 = (*(v24 + 16))(v24, v9);
          if (v25)
          {
            v26 = v25;
            v27 = MEMORY[0x277CCACA8];
            v28 = [*(a1 + 32) URL];
            v29 = [v28 absoluteString];
            v30 = [v27 stringWithFormat:@"%@: %@", v29, v26];

            v31 = [MEMORY[0x277CCA9B8] httpErrorWithCode:v10 message:v30];

            v32 = *(a1 + 40);
            if (v31)
            {
              (*(v32 + 16))(*(a1 + 40), v9, v31);
LABEL_21:

              goto LABEL_24;
            }

LABEL_20:
            v33 = MEMORY[0x277CCA9B8];
            v31 = [*(a1 + 32) URL];
            v34 = [v31 absoluteString];
            v35 = [v33 httpErrorWithCode:v10 message:v34];
            (*(v32 + 16))(v32, v9, v35);

            goto LABEL_21;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = *(a1 + 40);
    goto LABEL_20;
  }

  if ([v7 length])
  {
    v38 = 0;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v38];
    v22 = v38;
    if (v22)
    {
      v23 = __logCategories;
      if (os_log_type_enabled(__logCategories, OS_LOG_TYPE_ERROR))
      {
        __56__NNMKURLRequest__handleRequest_errorParser_completion___block_invoke_cold_1(v23, v22);
      }
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  (*(*(a1 + 40) + 16))();
LABEL_24:

  v36 = *MEMORY[0x277D85DE8];
}

+ (id)_methodNameForType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"GET";
  }

  else
  {
    return off_279935E28[a3 - 1];
  }
}

+ (id)serverFriendlyDescription
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NNMKURLRequest_serverFriendlyDescription__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (serverFriendlyDescription_onceToken != -1)
  {
    dispatch_once(&serverFriendlyDescription_onceToken, block);
  }

  v2 = serverFriendlyDescription__serverFriendlyDescription;

  return v2;
}

void __43__NNMKURLRequest_serverFriendlyDescription__block_invoke(uint64_t a1)
{
  v23 = +[NNMKURLRequest _hardwareModel];
  v2 = MEMORY[0x277CCACA8];
  v3 = +[NNMKURLRequest _osName];
  v4 = +[NNMKURLRequest _osVersion];
  v5 = +[NNMKURLRequest _buildNumber];
  v6 = [v2 stringWithFormat:@"%@%@;%@", v3, v4, v5];;

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 infoDictionary];
  v10 = *MEMORY[0x277CBED58];
  v11 = [v9 objectForKey:*MEMORY[0x277CBED58]];

  v12 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [v12 infoDictionary];
  v14 = [v13 objectForKey:v10];

  v15 = MEMORY[0x277CCACA8];
  v16 = [v8 bundleIdentifier];
  v17 = [v12 bundleIdentifier];
  v18 = v17;
  v19 = @"1.0";
  if (v14)
  {
    v19 = v14;
  }

  v20 = [v15 stringWithFormat:@"%@/%@ (%@/%@)", v16, v11, v17, v19];

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@> <%@> <%@>", v23, v6, v20];
  v22 = serverFriendlyDescription__serverFriendlyDescription;
  serverFriendlyDescription__serverFriendlyDescription = v21;
}

+ (id)_systemVersionDictionary
{
  if (_systemVersionDictionary_onceToken != -1)
  {
    +[NNMKURLRequest _systemVersionDictionary];
  }

  v3 = _systemVersionDictionary_platformDictionary;

  return v3;
}

uint64_t __42__NNMKURLRequest__systemVersionDictionary__block_invoke()
{
  _systemVersionDictionary_platformDictionary = _CFCopySystemVersionDictionary();

  return MEMORY[0x2821F96F8]();
}

+ (id)_osName
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

+ (id)_osVersion
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

+ (id)_buildNumber
{
  v2 = [a1 _systemVersionDictionary];
  v3 = [v2 objectForKey:*MEMORY[0x277CBEC70]];

  return v3;
}

+ (id)_hardwareModel
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

void __56__NNMKURLRequest__handleRequest_errorParser_completion___block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_25B19F000, v3, OS_LOG_TYPE_ERROR, "Unable to parse JSON response: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end