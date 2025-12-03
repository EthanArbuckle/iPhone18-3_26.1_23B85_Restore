@interface CMSCloudExtensionConfiguration
+ (id)_configurationFromJWS:(id)s URL:(id)l parentNetworkActivity:(id)activity keyID:(id)d publicKey:(id)key languageCode:(id)code error:(id *)error;
+ (void)configurationFromURL:(id)l forSession:(id)session usingAuth:(id)auth authProvider:(id)provider parentNetworkActivity:(id)activity keyID:(id)d publicKey:(id)key URLSessionConfiguration:(id)self0 languageCode:(id)self1 completion:(id)self2;
- (BOOL)isExpiringSoon;
- (CMSCloudExtensionConfiguration)init;
- (CMSCloudExtensionConfiguration)initWithDictionary:(id)dictionary fromURL:(id)l parentNetworkActivity:(id)activity languageCode:(id)code;
- (id)configForEndpoint:(id)endpoint;
- (void)_configureEndpoint:(id)endpoint withDictionary:(id)dictionary headers:(id)headers;
@end

@implementation CMSCloudExtensionConfiguration

+ (id)_configurationFromJWS:(id)s URL:(id)l parentNetworkActivity:(id)activity keyID:(id)d publicKey:(id)key languageCode:(id)code error:(id *)error
{
  lCopy = l;
  activityCopy = activity;
  codeCopy = code;
  keyCopy = key;
  dCopy = d;
  sCopy = s;
  v20 = [[CMSJSONWebSignature alloc] initWithJWSCompactEncodedString:sCopy keyID:dCopy publicKey:keyCopy];

  verificationError = [(CMSJSONWebSignature *)v20 verificationError];
  if (!verificationError)
  {
    v22 = MEMORY[0x277CCAAA0];
    payload = [(CMSJSONWebSignature *)v20 payload];
    v28 = 0;
    v24 = [v22 JSONObjectWithData:payload options:0 error:&v28];
    verificationError = v28;

    if (!verificationError)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [[CMSCloudExtensionConfiguration alloc] initWithDictionary:v24 fromURL:lCopy parentNetworkActivity:activityCopy languageCode:codeCopy];
        verificationError = [(CMSCloudExtensionConfiguration *)v25 parsingError];
        if (!verificationError)
        {

          goto LABEL_11;
        }
      }

      else
      {
        verificationError = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.configuration" code:0 userInfo:0];
      }
    }
  }

  v25 = 0;
  if (error && verificationError)
  {
    v26 = verificationError;
    v25 = 0;
    *error = verificationError;
  }

LABEL_11:

  return v25;
}

+ (void)configurationFromURL:(id)l forSession:(id)session usingAuth:(id)auth authProvider:(id)provider parentNetworkActivity:(id)activity keyID:(id)d publicKey:(id)key URLSessionConfiguration:(id)self0 languageCode:(id)self1 completion:(id)self2
{
  v76 = *MEMORY[0x277D85DE8];
  lCopy = l;
  sessionCopy = session;
  authCopy = auth;
  providerCopy = provider;
  activityCopy = activity;
  dCopy = d;
  keyCopy = key;
  configurationCopy = configuration;
  codeCopy = code;
  completionCopy = completion;
  if (configurationCopy)
  {
    [MEMORY[0x277CCAD30] sessionWithConfiguration:configurationCopy];
  }

  else
  {
    [MEMORY[0x277CCAD30] sharedSession];
  }
  v23 = ;
  v24 = sessionCopy;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy_;
  v70 = __Block_byref_object_dispose_;
  v71 = [[CMSNetworkActivity alloc] initWithLabel:3 parentActivity:activityCopy];
  v25 = CMSCreateCloudExtensionHTTPRequest(lCopy, authCopy, 0, sessionCopy);
  [v25 setValue:@"application/json" forHTTPHeaderField:@"Content-type"];
  [v25 setValue:@"application/jose" forHTTPHeaderField:@"Accept"];
  [v25 setCachePolicy:3];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __175__CMSCloudExtensionConfiguration_configurationFromURL_forSession_usingAuth_authProvider_parentNetworkActivity_keyID_publicKey_URLSessionConfiguration_languageCode_completion___block_invoke;
  v56[3] = &unk_278DDC978;
  v41 = completionCopy;
  v64 = v41;
  v65 = &v66;
  v26 = lCopy;
  v57 = v26;
  v39 = activityCopy;
  v58 = v39;
  v40 = dCopy;
  v59 = v40;
  v44 = keyCopy;
  v60 = v44;
  v27 = codeCopy;
  v61 = v27;
  v47 = configurationCopy;
  v62 = v47;
  v28 = v23;
  v63 = v28;
  v29 = MEMORY[0x245D43EE0](v56);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __175__CMSCloudExtensionConfiguration_configurationFromURL_forSession_usingAuth_authProvider_parentNetworkActivity_keyID_publicKey_URLSessionConfiguration_languageCode_completion___block_invoke_75;
  v48[3] = &unk_278DDCA18;
  v30 = v26;
  v49 = v30;
  v31 = v29;
  v54 = v31;
  v32 = v25;
  v50 = v32;
  v33 = v28;
  v51 = v33;
  v34 = providerCopy;
  v52 = v34;
  v35 = v24;
  v53 = v35;
  v55 = &v66;
  v36 = [v33 dataTaskWithRequest:v32 completionHandler:v48];
  v37 = _CMSILogingFacility();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v73 = "+[CMSCloudExtensionConfiguration configurationFromURL:forSession:usingAuth:authProvider:parentNetworkActivity:keyID:publicKey:URLSessionConfiguration:languageCode:completion:]";
    v74 = 2112;
    v75 = v30;
    _os_log_impl(&dword_2439AD000, v37, OS_LOG_TYPE_DEFAULT, "%s loading configuration from URL %@", buf, 0x16u);
  }

  [v67[5] associateWithTask:v36];
  [v36 resume];

  _Block_object_dispose(&v66, 8);
  v38 = *MEMORY[0x277D85DE8];
}

void __175__CMSCloudExtensionConfiguration_configurationFromURL_forSession_usingAuth_authProvider_parentNetworkActivity_keyID_publicKey_URLSessionConfiguration_languageCode_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!*(a1 + 88))
  {
    v18 = v9;
LABEL_17:
    if (*(a1 + 72))
    {
      [*(a1 + 80) invalidateAndCancel];
    }

    goto LABEL_19;
  }

  if ([v7 length])
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v31 = v10;
    v17 = [CMSCloudExtensionConfiguration _configurationFromJWS:v11 URL:v12 parentNetworkActivity:v13 keyID:v14 publicKey:v15 languageCode:v16 error:&v31];
    v18 = v31;

    v19 = _CMSILogingFacility();
    v20 = v19;
    if (v17)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v21 = 2;
        _os_log_impl(&dword_2439AD000, v20, OS_LOG_TYPE_DEFAULT, "Successfully created configuration from JWS encryption", buf, 2u);
      }

      else
      {
        v21 = 2;
      }
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __175__CMSCloudExtensionConfiguration_configurationFromURL_forSession_usingAuth_authProvider_parentNetworkActivity_keyID_publicKey_URLSessionConfiguration_languageCode_completion___block_invoke_cold_1();
      }

      v21 = 3;
    }

    [*(*(*(a1 + 96) + 8) + 40) completeActivity:v21];
    (*(*(a1 + 88) + 16))();

    goto LABEL_17;
  }

  v22 = _CMSILogingFacility();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    __175__CMSCloudExtensionConfiguration_configurationFromURL_forSession_usingAuth_authProvider_parentNetworkActivity_keyID_publicKey_URLSessionConfiguration_languageCode_completion___block_invoke_cold_2(v22, v23, v24, v25, v26, v27, v28, v29);
  }

  if (!v10)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.configuration" code:0 userInfo:0];
  }

  (*(*(a1 + 88) + 16))();
  [*(*(*(a1 + 96) + 8) + 40) completeActivity:3];
  v18 = v10;
LABEL_19:
}

void __175__CMSCloudExtensionConfiguration_configurationFromURL_forSession_usingAuth_authProvider_parentNetworkActivity_keyID_publicKey_URLSessionConfiguration_languageCode_completion___block_invoke_75(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v8 statusCode];
  if (a4 || v9 != 200)
  {
LABEL_28:
    [*(a1 + 40) setCachePolicy:0];
    v38 = _CMSILogingFacility();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 32);
      *buf = 136315394;
      v64 = "+[CMSCloudExtensionConfiguration configurationFromURL:forSession:usingAuth:authProvider:parentNetworkActivity:keyID:publicKey:URLSessionConfiguration:languageCode:completion:]_block_invoke";
      v65 = 2112;
      v66 = v39;
      _os_log_impl(&dword_2439AD000, v38, OS_LOG_TYPE_DEFAULT, "%s configuration from URL %@ no usable cached response - trying network", buf, 0x16u);
    }

    v41 = *(a1 + 40);
    v40 = *(a1 + 48);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __175__CMSCloudExtensionConfiguration_configurationFromURL_forSession_usingAuth_authProvider_parentNetworkActivity_keyID_publicKey_URLSessionConfiguration_languageCode_completion___block_invoke_77;
    v55[3] = &unk_278DDC9F0;
    v56 = *(a1 + 56);
    v57 = *(a1 + 32);
    v42 = *(a1 + 64);
    v43 = *(a1 + 80);
    v58 = v42;
    v62 = v43;
    v59 = *(a1 + 40);
    v60 = *(a1 + 48);
    v61 = *(a1 + 72);
    v44 = [v40 dataTaskWithRequest:v41 completionHandler:v55];
    [*(*(*(a1 + 80) + 8) + 40) associateWithTask:v44];
    [v44 resume];

    v16 = v56;
    goto LABEL_31;
  }

  v10 = v8;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v16 = 0;
LABEL_25:
    v36 = _CMSILogingFacility();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a1 + 32);
      *buf = 136315650;
      v64 = "+[CMSCloudExtensionConfiguration configurationFromURL:forSession:usingAuth:authProvider:parentNetworkActivity:keyID:publicKey:URLSessionConfiguration:languageCode:completion:]_block_invoke";
      v65 = 2112;
      v66 = v37;
      v67 = 2112;
      v68 = v16;
      _os_log_impl(&dword_2439AD000, v36, OS_LOG_TYPE_DEFAULT, "%s cached configuration for URL %@ has expired -  expiration %@", buf, 0x20u);
    }

    goto LABEL_28;
  }

  v11 = v10;
  v12 = [v11 valueForHTTPHeaderField:@"Date"];
  if (v12)
  {
    v13 = [v11 valueForHTTPHeaderField:@"Cache-Control"];
    if (v13)
    {
      v14 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v15 = [v13 componentsSeparatedByString:{@", "}];
      v16 = [v15 count];
      if (!v16)
      {
LABEL_21:

        goto LABEL_22;
      }

      v48 = a1;
      v49 = v13;
      v50 = v12;
      v51 = v11;
      v52 = v8;
      v53 = v7;
      v54 = 0;
      v17 = 0;
      v18 = 0.0;
      v19 = @"=";
      do
      {
        v20 = [v15 objectAtIndex:{v17, v48}];
        v21 = [v20 stringByTrimmingCharactersInSet:v14];

        v22 = [v21 componentsSeparatedByString:v19];
        if ([v22 count] == 2)
        {
          [v22 objectAtIndex:0];
          v23 = v16;
          v24 = v14;
          v25 = v15;
          v27 = v26 = v19;
          v28 = [v22 objectAtIndex:0];
          v29 = [v27 compare:@"Max-Age" options:9 range:{0, objc_msgSend(v28, "length")}];

          v19 = v26;
          v15 = v25;
          v14 = v24;
          v16 = v23;
          if (!v29)
          {
            v54 = 1;
            v30 = [v22 objectAtIndex:1];
            [v30 doubleValue];
            v18 = v31;
          }
        }

        ++v17;
      }

      while (v16 != v17);

      if (v54)
      {
        v15 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v15 setDateFormat:@"EE, dd LLL yyyy HH:mm:ss zz"];
        v32 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
        [v15 setLocale:v32];

        v12 = v50;
        v33 = [v15 dateFromString:v50];
        v14 = v33;
        v8 = v52;
        v7 = v53;
        v11 = v51;
        a1 = v48;
        if (v33)
        {
          v16 = [v33 dateByAddingTimeInterval:v18];
        }

        else
        {
          v16 = 0;
        }

        v13 = v49;
        goto LABEL_21;
      }

      v16 = 0;
      v8 = v52;
      v7 = v53;
      v12 = v50;
      v11 = v51;
      a1 = v48;
      v13 = v49;
    }

    else
    {
      v16 = 0;
    }

LABEL_22:

    goto LABEL_23;
  }

  v16 = 0;
LABEL_23:

  if (!v16)
  {
    goto LABEL_25;
  }

  v34 = [MEMORY[0x277CBEAA8] now];
  v35 = [v16 laterDate:v34];

  if (v35 != v16)
  {
    goto LABEL_25;
  }

  v46 = _CMSILogingFacility();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = *(a1 + 32);
    *buf = 136315650;
    v64 = "+[CMSCloudExtensionConfiguration configurationFromURL:forSession:usingAuth:authProvider:parentNetworkActivity:keyID:publicKey:URLSessionConfiguration:languageCode:completion:]_block_invoke";
    v65 = 2112;
    v66 = v47;
    v67 = 2112;
    v68 = v16;
    _os_log_impl(&dword_2439AD000, v46, OS_LOG_TYPE_DEFAULT, "%s using cached configuration for URL %@: Expires %@", buf, 0x20u);
  }

  (*(*(a1 + 72) + 16))();
LABEL_31:

  v45 = *MEMORY[0x277D85DE8];
}

void __175__CMSCloudExtensionConfiguration_configurationFromURL_forSession_usingAuth_authProvider_parentNetworkActivity_keyID_publicKey_URLSessionConfiguration_languageCode_completion___block_invoke_77(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = [v10 statusCode];
  if (!v9 && (v11 & 0xFFFFFFFFFFFFFFFDLL) == 0x191 && *(a1 + 32))
  {
    v12 = _CMSILogingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      *buf = 136315394;
      v30 = "+[CMSCloudExtensionConfiguration configurationFromURL:forSession:usingAuth:authProvider:parentNetworkActivity:keyID:publicKey:URLSessionConfiguration:languageCode:completion:]_block_invoke";
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_2439AD000, v12, OS_LOG_TYPE_DEFAULT, "%s configuration from URL %@ auth challenge - trying to renew credentials", buf, 0x16u);
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = *(*(*(a1 + 80) + 8) + 40);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __175__CMSCloudExtensionConfiguration_configurationFromURL_forSession_usingAuth_authProvider_parentNetworkActivity_keyID_publicKey_URLSessionConfiguration_languageCode_completion___block_invoke_78;
    v20[3] = &unk_278DDC9C8;
    v21 = v15;
    v22 = *(a1 + 56);
    v23 = *(a1 + 64);
    v17 = *(a1 + 72);
    v18 = *(a1 + 80);
    v27 = v17;
    v28 = v18;
    v24 = 0;
    v25 = v7;
    v26 = v10;
    [v14 authRenewalForSessionIdentifier:v21 parentNetworkActivity:v16 completion:v20];
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __175__CMSCloudExtensionConfiguration_configurationFromURL_forSession_usingAuth_authProvider_parentNetworkActivity_keyID_publicKey_URLSessionConfiguration_languageCode_completion___block_invoke_78(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || v9 || [*(a1 + 32) compare:v7])
  {
    v11 = _CMSILogingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = v10;
      if (!v10)
      {
        v20 = *(a1 + 56);
      }

      *buf = 136315394;
      v24 = "+[CMSCloudExtensionConfiguration configurationFromURL:forSession:usingAuth:authProvider:parentNetworkActivity:keyID:publicKey:URLSessionConfiguration:languageCode:completion:]_block_invoke";
      v25 = 2112;
      v26 = v20;
      _os_log_error_impl(&dword_2439AD000, v11, OS_LOG_TYPE_ERROR, "%s failed to get new tokens: %@", buf, 0x16u);
    }

    v12 = v10;
    if (!v10)
    {
      v12 = *(a1 + 56);
    }

    (*(*(a1 + 80) + 16))(*(a1 + 80), *(a1 + 64), *(a1 + 72), v12);
  }

  else
  {
    [*(a1 + 40) setValue:v8 forHTTPHeaderField:@"Authorization"];
    v15 = *(a1 + 40);
    v14 = *(a1 + 48);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __175__CMSCloudExtensionConfiguration_configurationFromURL_forSession_usingAuth_authProvider_parentNetworkActivity_keyID_publicKey_URLSessionConfiguration_languageCode_completion___block_invoke_2;
    v21[3] = &unk_278DDC9A0;
    v22 = *(a1 + 80);
    v16 = [v14 dataTaskWithRequest:v15 completionHandler:v21];
    v17 = [[CMSNetworkActivity alloc] initWithRetry:*(*(*(a1 + 88) + 8) + 40)];
    [(CMSNetworkActivity *)v17 associateWithTask:v16];
    [*(*(*(a1 + 88) + 8) + 40) completeActivity:3];
    v18 = *(*(a1 + 88) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    [v16 resume];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_configureEndpoint:(id)endpoint withDictionary:(id)dictionary headers:(id)headers
{
  endpointCopy = endpoint;
  headersCopy = headers;
  dictionaryCopy = dictionary;
  v11 = [endpointCopy componentsSeparatedByString:@"/"];
  lastObject = [v11 lastObject];
  v13 = [dictionaryCopy cmsOptionalDictionaryForKey:lastObject];

  if (v13)
  {
    v14 = [v13 objectForKeyedSubscript:@"url"];
    if (!v14)
    {
      v15 = [v13 mutableCopy];
      [v15 setObject:endpointCopy forKeyedSubscript:@"url"];
      v16 = [v15 copy];

      v13 = v16;
    }

    v17 = _CMSILogingFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [CMSCloudExtensionConfiguration _configureEndpoint:withDictionary:headers:];
    }

    v18 = objc_opt_class();
    v19 = [v11 objectAtIndexedSubscript:0];
    v20 = [v19 isEqualToString:@"intent"];

    if (v20)
    {
      v18 = objc_opt_class();
    }

    if ([endpointCopy isEqualToString:@"queues/contentProtectionKey"])
    {
      v18 = objc_opt_class();
    }

    v21 = [v18 alloc];
    baseURL = [(CMSCloudExtensionConfiguration *)self baseURL];
    v23 = [v21 initWithDictionary:v13 endpoint:endpointCopy baseURL:baseURL groupHeaders:headersCopy];

    if (v23)
    {
      [(NSMutableDictionary *)self->_endpointConfigs setObject:v23 forKey:endpointCopy];
    }
  }
}

- (CMSCloudExtensionConfiguration)init
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:&stru_2856A7BB0];
  v4 = [(CMSCloudExtensionConfiguration *)self initWithDictionary:MEMORY[0x277CBEC10] fromURL:v3 parentNetworkActivity:0 languageCode:0];

  return v4;
}

- (CMSCloudExtensionConfiguration)initWithDictionary:(id)dictionary fromURL:(id)l parentNetworkActivity:(id)activity languageCode:(id)code
{
  dictionaryCopy = dictionary;
  lCopy = l;
  activityCopy = activity;
  codeCopy = code;
  v51.receiver = self;
  v51.super_class = CMSCloudExtensionConfiguration;
  v15 = [(CMSCloudExtensionConfiguration *)&v51 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configDictionary, dictionary);
    objc_storeStrong(&v16->_configUrl, l);
    v17 = [dictionaryCopy cmsOptionalStringForKey:@"version"];
    version = v16->_version;
    v16->_version = v17;

    objc_storeStrong(&v16->_parentNetworkActivity, activity);
    objc_storeStrong(&v16->_languageCode, code);
    v19 = [(NSString *)v16->_version componentsSeparatedByString:@"."];
    if ([v19 count])
    {
      v20 = [v19 objectAtIndexedSubscript:0];
      integerValue = [v20 integerValue];

      if (integerValue >= 2)
      {
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.configuration" code:1 userInfo:0];
        parsingError = v16->_parsingError;
        v16->_parsingError = v22;

        v24 = v16;
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.configuration" code:0 userInfo:0];
      v26 = v16->_parsingError;
      v16->_parsingError = v25;
    }

    v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
    endpointConfigs = v16->_endpointConfigs;
    v16->_endpointConfigs = v27;

    v29 = [dictionaryCopy cmsOptionalURLForKey:@"url" relativeToURL:0];
    v30 = v29;
    if (v29)
    {
      baseURL = [v29 baseURL];

      if (!baseURL)
      {
        v32 = [dictionaryCopy cmsOptionalURLForKey:@"url" relativeToURL:lCopy];

        v30 = v32;
      }

      objc_storeStrong(&v16->_baseURL, v30);
    }

    if (!v16->_baseURL)
    {
      baseURL2 = [lCopy baseURL];
      baseURL = v16->_baseURL;
      v16->_baseURL = baseURL2;

      if (!v16->_baseURL)
      {
        v45 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudextension.errors.configuration" code:2 userInfo:0];
        v46 = v16->_parsingError;
        v16->_parsingError = v45;

        v47 = v16;
        goto LABEL_19;
      }
    }

    v35 = [dictionaryCopy cmsOptionalDictionaryForKey:{@"hdr", codeCopy, activityCopy}];
    globalHeaders = v16->_globalHeaders;
    v16->_globalHeaders = v35;

    v37 = [dictionaryCopy cmsOptionalDictionaryForKey:@"intent"];
    v38 = _CMSILogingFacility();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [CMSCloudExtensionConfiguration initWithDictionary:fromURL:parentNetworkActivity:languageCode:];
    }

    v39 = [v37 cmsOptionalDictionaryForKey:@"hdr"];
    [(CMSCloudExtensionConfiguration *)v16 _configureEndpoint:@"intent/playMedia" withDictionary:v37 headers:v39];
    [(CMSCloudExtensionConfiguration *)v16 _configureEndpoint:@"intent/addMedia" withDictionary:v37 headers:v39];
    [(CMSCloudExtensionConfiguration *)v16 _configureEndpoint:@"intent/updateMediaAffinity" withDictionary:v37 headers:v39];
    v40 = [dictionaryCopy cmsOptionalDictionaryForKey:@"media"];
    v41 = [v40 cmsOptionalDictionaryForKey:@"queues"];
    v42 = _CMSILogingFacility();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [CMSCloudExtensionConfiguration initWithDictionary:fromURL:parentNetworkActivity:languageCode:];
    }

    v43 = [v41 cmsOptionalDictionaryForKey:@"hdr"];
    [(CMSCloudExtensionConfiguration *)v16 _configureEndpoint:@"queues/playMedia" withDictionary:v41 headers:v43];
    [(CMSCloudExtensionConfiguration *)v16 _configureEndpoint:@"queues/updateActivity" withDictionary:v41 headers:v43];
    [(CMSCloudExtensionConfiguration *)v16 _configureEndpoint:@"queues/contentProtectionKey" withDictionary:v41 headers:v43];
    [(CMSCloudExtensionConfiguration *)v16 _configureEndpoint:@"queues/contentPlaybackFailure" withDictionary:v41 headers:v43];

    codeCopy = v49;
    activityCopy = v50;
  }

  v44 = v16;
LABEL_20:

  return v16;
}

- (id)configForEndpoint:(id)endpoint
{
  v4 = [(NSMutableDictionary *)self->_endpointConfigs objectForKey:endpoint];
  v5 = v4;
  if (v4)
  {
    request = [v4 request];

    if (!request)
    {
      endpointURL = [v5 endpointURL];

      if (!endpointURL)
      {
        goto LABEL_9;
      }

      endpointURL2 = [v5 endpointURL];
      v9 = CMSCreateCloudExtensionHTTPRequest(endpointURL2, 0, 4, 0);

      languageCode = [(CMSCloudExtensionConfiguration *)self languageCode];
      if (!languageCode)
      {
        languageCode = CMSCloudExtensionLanguageCode();
      }

      [v9 setValue:languageCode forHTTPHeaderField:@"Accept-Language"];
      baseURL = [(CMSCloudExtensionConfiguration *)self baseURL];
      [v9 setMainDocumentURL:baseURL];

      [v9 setNetworkServiceType:6];
      [v9 setHTTPShouldUsePipelining:1];
      [v9 setHTTPShouldHandleCookies:1];
      globalHeaders = [(CMSCloudExtensionConfiguration *)self globalHeaders];
      applyHeaderOverrides(globalHeaders, v9);

      groupHeaders = [v5 groupHeaders];
      applyHeaderOverrides(groupHeaders, v9);

      headers = [v5 headers];
      applyHeaderOverrides(headers, v9);

      [v5 setRequest:v9];
    }

    endpointURL = v5;
  }

  else
  {
    endpointURL = 0;
  }

LABEL_9:

  return endpointURL;
}

- (BOOL)isExpiringSoon
{
  configExpiry = self->_configExpiry;
  if (configExpiry)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(NSDate *)configExpiry timeIntervalSinceDate:date];
    LOBYTE(configExpiry) = v4 > -1800.0;
  }

  return configExpiry;
}

void __175__CMSCloudExtensionConfiguration_configurationFromURL_forSession_usingAuth_authProvider_parentNetworkActivity_keyID_publicKey_URLSessionConfiguration_languageCode_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2439AD000, v0, v1, "Failed to create configuration from JWS encryption: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __175__CMSCloudExtensionConfiguration_configurationFromURL_forSession_usingAuth_authProvider_parentNetworkActivity_keyID_publicKey_URLSessionConfiguration_languageCode_completion___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2439AD000, a1, a3, "%s no configuration data returned", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_configureEndpoint:withDictionary:headers:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2439AD000, v0, v1, "endpointDict: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:fromURL:parentNetworkActivity:languageCode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2439AD000, v0, v1, "intentDict: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:fromURL:parentNetworkActivity:languageCode:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2439AD000, v0, v1, "queuesDict: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end