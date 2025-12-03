@interface NDORequestProperties
+ (id)makePropertiesProvider;
- (NDORequestProperties)init;
- (id)OASHeadersWithOfferID:(id)d serialNumber:(id)number primarySerialNumber:(id)serialNumber currentStoreLocaleHeader:(id)header;
- (id)_appleIDSesssion;
- (id)_baaManager;
- (id)_deviceProductType;
- (id)_osVersion;
- (id)_storeLocale;
- (id)_userAgentWithBundleID:(id)d;
- (id)basicHeadersWithBundleID:(id)d;
- (id)coverageRequestBodyWithSerialNumber:(id)number primarySerialNumber:(id)serialNumber displayedEvents:(id)events;
- (id)deviceListRequestBodyWithSerialNumber:(id)number localDevices:(id)devices;
- (id)signatureHeadersForBody:(id)body;
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

- (id)basicHeadersWithBundleID:(id)d
{
  v15[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    bundleIdentifier = dCopy;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  v14[0] = @"User-Agent";
  v8 = [(NDORequestProperties *)self _userAgentWithBundleID:bundleIdentifier];
  v15[0] = v8;
  v15[1] = bundleIdentifier;
  v14[1] = @"x-apple-bundle-id";
  v14[2] = @"x-apple-os-version";
  _osVersion = [(NDORequestProperties *)self _osVersion];
  v15[2] = _osVersion;
  v14[3] = @"x-apple-primary-device-model";
  _deviceProductType = [(NDORequestProperties *)self _deviceProductType];
  v15[3] = _deviceProductType;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)deviceListRequestBodyWithSerialNumber:(id)number localDevices:(id)devices
{
  v57 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  devicesCopy = devices;
  v44 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = devicesCopy;
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
        serialNumber = [v10 serialNumber];
        v55[0] = serialNumber;
        v54[1] = @"modelInfo";
        productID = [v10 productID];
        v55[1] = productID;
        v54[2] = @"deviceName";
        name = [v10 name];
        v55[2] = name;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:3];
        v15 = [v14 mutableCopy];

        color = [v10 color];
        [NDOTypeChecking safeAddValue:color forKey:@"color" toDictionary:v15];

        [v44 addObject:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v7);
  }

  v50[0] = @"primarySN";
  v50[1] = @"localDevices";
  v51[0] = numberCopy;
  v51[1] = v44;
  v52[0] = @"devicesInfo";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
  v53[0] = v17;
  v52[1] = @"storefrontLocale";
  _storeLocale = [(NDORequestProperties *)self _storeLocale];
  v53[1] = _storeLocale;
  v52[2] = @"locale";
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];
  v53[2] = localeIdentifier;
  v52[3] = @"requestTimestamp";
  v21 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v24 = [v21 numberWithUnsignedLongLong:(v23 * 1000.0)];
  v53[3] = v24;
  v52[4] = @"requestTimezone";
  v25 = MEMORY[0x277CCABB0];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v27 = [v25 numberWithInt:{(objc_msgSend(localTimeZone, "secondsFromGMT") / 3600)}];
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

- (id)coverageRequestBodyWithSerialNumber:(id)number primarySerialNumber:(id)serialNumber displayedEvents:(id)events
{
  v41[5] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  serialNumberCopy = serialNumber;
  eventsCopy = events;
  if (numberCopy)
  {
    v9 = numberCopy;
  }

  else
  {
    v9 = @"empty";
  }

  v10 = v9;
  if (serialNumberCopy)
  {
    v11 = serialNumberCopy;
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
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];
  v41[2] = localeIdentifier;
  v40[3] = @"requestTimestamp";
  v14 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v17 = [v14 numberWithUnsignedLongLong:(v16 * 1000.0)];
  v41[3] = v17;
  v40[4] = @"requestTimezone";
  v18 = MEMORY[0x277CCABB0];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v20 = [v18 numberWithInt:{(objc_msgSend(localTimeZone, "secondsFromGMT") / 3600)}];
  v41[4] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:5];
  v22 = [v21 mutableCopy];

  v23 = eventsCopy;
  if (eventsCopy)
  {
    [NDOTypeChecking safeAddValue:eventsCopy forKey:@"displayedEvents" toDictionary:v22];
  }

  v24 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v22 options:0 error:{0, eventsCopy}];
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

- (id)OASHeadersWithOfferID:(id)d serialNumber:(id)number primarySerialNumber:(id)serialNumber currentStoreLocaleHeader:(id)header
{
  v26 = *MEMORY[0x277D85DE8];
  headerCopy = header;
  v11 = MEMORY[0x277CBEB38];
  serialNumberCopy = serialNumber;
  numberCopy = number;
  dCopy = d;
  dictionary = [v11 dictionary];
  [NDOTypeChecking safeAddValue:numberCopy forKey:@"X-Apple-SN" toDictionary:dictionary];

  [NDOTypeChecking safeAddValue:serialNumberCopy forKey:@"x-apple-primary-sn" toDictionary:dictionary];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [NDOTypeChecking safeAddValue:uUIDString forKey:@"X-Apple-Txn-ID" toDictionary:dictionary];

  v18 = CFPreferencesCopyAppValue(@"UIPreferredContentSizeCategoryName", @"com.apple.UIKit");
  [NDOTypeChecking safeAddValue:v18 forKey:@"X-Apple-Content-Size" toDictionary:dictionary];
  [NDOTypeChecking safeAddValue:@"No" forKey:@"X-Apple-DM" toDictionary:dictionary];
  [NDOTypeChecking safeAddValue:dCopy forKey:@"Offer-ID" toDictionary:dictionary];

  if ([NDOTypeChecking isNotEmptyString:headerCopy])
  {
    _storeLocale = _NDOLogSystem();
    if (os_log_type_enabled(_storeLocale, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = headerCopy;
      _os_log_impl(&dword_25BD52000, _storeLocale, OS_LOG_TYPE_DEFAULT, "storeLocale already set to %@", &v24, 0xCu);
    }
  }

  else
  {
    _storeLocale = [(NDORequestProperties *)self _storeLocale];
    v20 = _NDOLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = _storeLocale;
      _os_log_impl(&dword_25BD52000, v20, OS_LOG_TYPE_DEFAULT, "storeLocale %@", &v24, 0xCu);
    }

    [NDOTypeChecking safeAddValue:_storeLocale forKey:@"storefrontLocale" toDictionary:dictionary];
  }

  v21 = [dictionary copy];
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)signatureHeadersForBody:(id)body
{
  v26 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v25 = "[NDORequestProperties signatureHeadersForBody:]";
    _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Initiating device authentication", buf, 0xCu);
  }

  _baaManager = [(NDORequestProperties *)self _baaManager];
  v7 = [_baaManager generateBAACertficate:&__block_literal_global];
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
    v10 = [_baaManager BAAAuthenticationHeadersForBody:bodyCopy error:&v23];
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
  accountStore = [(NDORequestProperties *)self accountStore];
  ams_sharedAccountStore = [objc_opt_class() ams_sharedAccountStore];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults objectForKey:@"storefrontLocale"];

  if ([NDOTypeChecking isNotEmptyString:v5])
  {
    ams_storefront = v5;
    goto LABEL_15;
  }

  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  if (!ams_activeiTunesAccount)
  {
    v17 = _NDOLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136446210;
      v29 = "[NDORequestProperties _storeLocale]";
      _os_log_impl(&dword_25BD52000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s No active itunes account. Falling back to local account", &v28, 0xCu);
    }

    ams_localiTunesAccount = [ams_sharedAccountStore ams_localiTunesAccount];
    goto LABEL_11;
  }

  ams_localiTunesAccount = ams_activeiTunesAccount;
  ams_storefront = [ams_activeiTunesAccount ams_storefront];
  if (![NDOTypeChecking isNotEmptyString:ams_storefront])
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

    ams_storefront = &stru_286D686B8;
  }

LABEL_15:
  v26 = *MEMORY[0x277D85DE8];

  return ams_storefront;
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

- (id)_userAgentWithBundleID:(id)d
{
  dCopy = d;
  _osVersion = [(NDORequestProperties *)self _osVersion];
  _deviceProductType = [(NDORequestProperties *)self _deviceProductType];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@/%@/%@>", dCopy, _osVersion, _deviceProductType];

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
  OUTLINED_FUNCTION_0_0(&dword_25BD52000, self, a3, "%{public}s Failed to determine storefront locale", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end