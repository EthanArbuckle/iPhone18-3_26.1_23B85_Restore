@interface NDORequestProperties
+ (id)makePropertiesProvider;
- (NDORequestProperties)init;
- (id)OASHeadersWithOfferID:(id)a3 serialNumber:(id)a4 primarySerialNumber:(id)a5 currentStoreLocaleHeader:(id)a6;
- (id)_appleIDSesssion;
- (id)_baaManager;
- (id)_deviceProductType;
- (id)_osVersion;
- (id)_storeLocale;
- (id)_userAgentWithBundleID:(id)a3;
- (id)basicHeadersWithBundleID:(id)a3;
- (id)coverageRequestBodyWithSerialNumber:(id)a3 primarySerialNumber:(id)a4 displayedEvents:(id)a5;
- (id)deviceListRequestBodyWithSerialNumber:(id)a3 localDevices:(id)a4;
- (id)signatureHeadersForBody:(id)a3;
- (void)_storeLocale;
@end

@implementation NDORequestProperties

+ (id)makePropertiesProvider
{
  v2 = objc_alloc_init(NDORequestProperties);

  return v2;
}

- (NDORequestProperties)init
{
  v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v4 = [(NDORequestProperties *)self initWithAccountStore:v3];

  return v4;
}

- (id)basicHeadersWithBundleID:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v7 bundleIdentifier];
  }

  v14[0] = @"User-Agent";
  v8 = [(NDORequestProperties *)self _userAgentWithBundleID:v6];
  v15[0] = v8;
  v15[1] = v6;
  v14[1] = @"x-apple-bundle-id";
  v14[2] = @"x-apple-os-version";
  v9 = [(NDORequestProperties *)self _osVersion];
  v15[2] = v9;
  v14[3] = @"x-apple-primary-device-model";
  v10 = [(NDORequestProperties *)self _deviceProductType];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)deviceListRequestBodyWithSerialNumber:(id)a3 localDevices:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v5 = a4;
  v44 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        v54[0] = @"serialNumber";
        v11 = [v10 serialNumber];
        v55[0] = v11;
        v54[1] = @"modelInfo";
        v12 = [v10 productID];
        v55[1] = v12;
        v54[2] = @"deviceName";
        v13 = [v10 name];
        v55[2] = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:3];
        v15 = [v14 mutableCopy];

        v16 = [v10 color];
        [NDOTypeChecking safeAddValue:v16 forKey:@"color" toDictionary:v15];

        [v44 addObject:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v7);
  }

  v50[0] = @"primarySN";
  v50[1] = @"localDevices";
  v51[0] = v42;
  v51[1] = v44;
  v52[0] = @"devicesInfo";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
  v53[0] = v17;
  v52[1] = @"storefrontLocale";
  v18 = [(NDORequestProperties *)self _storeLocale];
  v53[1] = v18;
  v52[2] = @"locale";
  v19 = [MEMORY[0x277CBEAF8] preferredLocale];
  v20 = [v19 localeIdentifier];
  v53[2] = v20;
  v52[3] = @"requestTimestamp";
  v21 = MEMORY[0x277CCABB0];
  v22 = [MEMORY[0x277CBEAA8] date];
  [v22 timeIntervalSince1970];
  v24 = [v21 numberWithUnsignedLongLong:(v23 * 1000.0)];
  v53[3] = v24;
  v52[4] = @"requestTimezone";
  v25 = MEMORY[0x277CCABB0];
  v26 = [MEMORY[0x277CBEBB0] localTimeZone];
  v27 = [v25 numberWithInt:{(objc_msgSend(v26, "secondsFromGMT") / 3600)}];
  v53[4] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:5];

  v45 = 0;
  v29 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v28 options:0 error:&v45];
  v30 = v45;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v32 = _NDOLogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [(NDORequestProperties *)v30 deviceListRequestBodyWithSerialNumber:v32 localDevices:v33, v34, v35, v36, v37, v38];
    }
  }

  v39 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)coverageRequestBodyWithSerialNumber:(id)a3 primarySerialNumber:(id)a4 displayedEvents:(id)a5
{
  v41[5] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v37 = a5;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"empty";
  }

  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = @"empty";
  }

  v40[0] = @"serialNumber";
  v40[1] = @"x-apple-primary-sn";
  v38 = v11;
  v39 = v10;
  v41[0] = v10;
  v41[1] = v38;
  v40[2] = @"locale";
  v12 = [MEMORY[0x277CBEAF8] preferredLocale];
  v13 = [v12 localeIdentifier];
  v41[2] = v13;
  v40[3] = @"requestTimestamp";
  v14 = MEMORY[0x277CCABB0];
  v15 = [MEMORY[0x277CBEAA8] date];
  [v15 timeIntervalSince1970];
  v17 = [v14 numberWithUnsignedLongLong:(v16 * 1000.0)];
  v41[3] = v17;
  v40[4] = @"requestTimezone";
  v18 = MEMORY[0x277CCABB0];
  v19 = [MEMORY[0x277CBEBB0] localTimeZone];
  v20 = [v18 numberWithInt:{(objc_msgSend(v19, "secondsFromGMT") / 3600)}];
  v41[4] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:5];
  v22 = [v21 mutableCopy];

  v23 = v37;
  if (v37)
  {
    [NDOTypeChecking safeAddValue:v37 forKey:@"displayedEvents" toDictionary:v22];
  }

  v24 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v22 options:0 error:{0, v37}];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v27 = _NDOLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(NDORequestProperties *)v27 coverageRequestBodyWithSerialNumber:v28 primarySerialNumber:v29 displayedEvents:v30, v31, v32, v33, v34];
    }
  }

  v35 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)OASHeadersWithOfferID:(id)a3 serialNumber:(id)a4 primarySerialNumber:(id)a5 currentStoreLocaleHeader:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = MEMORY[0x277CBEB38];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v11 dictionary];
  [NDOTypeChecking safeAddValue:v13 forKey:@"X-Apple-SN" toDictionary:v15];

  [NDOTypeChecking safeAddValue:v12 forKey:@"x-apple-primary-sn" toDictionary:v15];
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [v16 UUIDString];
  [NDOTypeChecking safeAddValue:v17 forKey:@"X-Apple-Txn-ID" toDictionary:v15];

  v18 = CFPreferencesCopyAppValue(@"UIPreferredContentSizeCategoryName", @"com.apple.UIKit");
  [NDOTypeChecking safeAddValue:v18 forKey:@"X-Apple-Content-Size" toDictionary:v15];
  [NDOTypeChecking safeAddValue:@"No" forKey:@"X-Apple-DM" toDictionary:v15];
  [NDOTypeChecking safeAddValue:v14 forKey:@"Offer-ID" toDictionary:v15];

  if ([NDOTypeChecking isNotEmptyString:v10])
  {
    v19 = _NDOLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v10;
      _os_log_impl(&dword_25BD52000, v19, OS_LOG_TYPE_DEFAULT, "storeLocale already set to %@", &v24, 0xCu);
    }
  }

  else
  {
    v19 = [(NDORequestProperties *)self _storeLocale];
    v20 = _NDOLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v19;
      _os_log_impl(&dword_25BD52000, v20, OS_LOG_TYPE_DEFAULT, "storeLocale %@", &v24, 0xCu);
    }

    [NDOTypeChecking safeAddValue:v19 forKey:@"storefrontLocale" toDictionary:v15];
  }

  v21 = [v15 copy];
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)signatureHeadersForBody:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v25 = "[NDORequestProperties signatureHeadersForBody:]";
    _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Initiating device authentication", buf, 0xCu);
  }

  v6 = [(NDORequestProperties *)self _baaManager];
  v7 = [v6 generateBAACertficate:&__block_literal_global];
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    *buf = 138412290;
    v25 = v9;
    _os_log_impl(&dword_25BD52000, v8, OS_LOG_TYPE_DEFAULT, "BAA certificate generation success: %@", buf, 0xCu);
  }

  if (v7)
  {
    v23 = 0;
    v10 = [v6 BAAAuthenticationHeadersForBody:v4 error:&v23];
    v11 = v23;
    v12 = _NDOLogSystem();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25BD52000, v13, OS_LOG_TYPE_DEFAULT, "Device authentication successful", buf, 2u);
      }

      v14 = v10;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(NDORequestProperties *)v11 signatureHeadersForBody:v13, v15, v16, v17, v18, v19, v20];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v10;
}

void __48__NDORequestProperties_signatureHeadersForBody___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if (v4)
  {
    v5 = _NDOLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __48__NDORequestProperties_signatureHeadersForBody___block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void __73__NDORequestProperties__GSHeadersForAccount_forceReprovisioning_avoidUI___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = _NDOLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __73__NDORequestProperties__GSHeadersForAccount_forceReprovisioning_avoidUI___block_invoke_cold_1(v5, a2, v6);
    }
  }

  else
  {
    v7 = [*(a1 + 32) accountStore];
    v6 = [v7 credentialForAccount:*(a1 + 40) serviceID:@"com.apple.gs.supportapp.auth"];

    v8 = [v6 token];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (id)_storeLocale
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [(NDORequestProperties *)self accountStore];
  v3 = [objc_opt_class() ams_sharedAccountStore];

  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 objectForKey:@"storefrontLocale"];

  if ([NDOTypeChecking isNotEmptyString:v5])
  {
    v6 = v5;
    goto LABEL_15;
  }

  v7 = [v3 ams_activeiTunesAccount];
  if (!v7)
  {
    v17 = _NDOLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136446210;
      v29 = "[NDORequestProperties _storeLocale]";
      _os_log_impl(&dword_25BD52000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s No active itunes account. Falling back to local account", &v28, 0xCu);
    }

    v8 = [v3 ams_localiTunesAccount];
    goto LABEL_11;
  }

  v8 = v7;
  v6 = [v7 ams_storefront];
  if (![NDOTypeChecking isNotEmptyString:v6])
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(NDORequestProperties *)v9 _storeLocale:v10];
    }

LABEL_11:
    v18 = _NDOLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(NDORequestProperties *)v18 _storeLocale:v19];
    }

    v6 = &stru_286D686B8;
  }

LABEL_15:
  v26 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_osVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_deviceProductType
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_userAgentWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [(NDORequestProperties *)self _osVersion];
  v6 = [(NDORequestProperties *)self _deviceProductType];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@/%@/%@>", v4, v5, v6];

  return v7;
}

- (id)_appleIDSesssion
{
  v2 = objc_opt_new();

  return v2;
}

- (id)_baaManager
{
  v2 = objc_opt_new();

  return v2;
}

- (void)deviceListRequestBodyWithSerialNumber:(uint64_t)a3 localDevices:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25BD52000, a2, a3, "Unable to serialize device list request body, error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)coverageRequestBodyWithSerialNumber:(uint64_t)a3 primarySerialNumber:(uint64_t)a4 displayedEvents:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25BD52000, a1, a3, "Unable to serialize coverage request body, error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)signatureHeadersForBody:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25BD52000, a2, a3, "Device authentication failed with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __48__NDORequestProperties_signatureHeadersForBody___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25BD52000, a2, a3, "Device authentication failed while generating certificate with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __73__NDORequestProperties__GSHeadersForAccount_forceReprovisioning_avoidUI___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_25BD52000, log, OS_LOG_TYPE_ERROR, "No way to sign request with GS token because renewal of GS credential failed: %ld, %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_storeLocale
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25BD52000, a1, a3, "%{public}s Failed to determine storefront locale", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end