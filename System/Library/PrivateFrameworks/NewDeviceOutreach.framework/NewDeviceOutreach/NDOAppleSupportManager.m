@interface NDOAppleSupportManager
- (void)appSupportAvailability:(id)a3 withReply:(id)a4;
- (void)checkIsAvailableInStore:(id)a3 withReply:(id)a4;
@end

@implementation NDOAppleSupportManager

- (void)checkIsAvailableInStore:(id)a3 withReply:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v5;
    _os_log_impl(&dword_25BD52000, v7, OS_LOG_TYPE_DEFAULT, "Checking for %@ in the App Store", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [v8 objectForKey:@"AppSupportAvailability"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v23[0] = @"AppTitleKey";
    v23[1] = @"AppVendorName";
    v24[0] = @"Apple Support";
    v24[1] = @"Apple";
    v23[2] = @"AppAvailablityText";
    v23[3] = @"AppAvailabilityType";
    v24[2] = @"OVERRIDE";
    v24[3] = &unk_286D6E468;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
    v6[2](v6, v11);
  }

  else
  {
    v12 = MEMORY[0x277CEE3F8];
    v13 = [MEMORY[0x277CEE570] bagSubProfile];
    v14 = [MEMORY[0x277CEE570] bagSubProfileVersion];
    v11 = [v12 bagForProfile:v13 profileVersion:v14];

    v15 = [objc_alloc(MEMORY[0x277CEE570]) initWithType:0 clientIdentifier:@"com.apple.preferences.applesupport" clientVersion:@"1" bag:v11];
    v22 = v5;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [v15 setBundleIdentifiers:v16];

    v17 = [v15 perform];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60__NDOAppleSupportManager_checkIsAvailableInStore_withReply___block_invoke;
    v19[3] = &unk_279976350;
    v20 = v5;
    v21 = v6;
    [v17 addFinishBlock:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __60__NDOAppleSupportManager_checkIsAvailableInStore_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v34 = _NDOLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 32);
      *buf = 138412546;
      v46 = v35;
      v47 = 2112;
      v48 = v7;
      _os_log_impl(&dword_25BD52000, v34, OS_LOG_TYPE_DEFAULT, "Lookup for %@ in the App Store failed with error %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [v5 responseDataItems];
    v9 = [v8 count];

    if (v9 == 1)
    {
      v10 = [v5 responseDataItems];
      v11 = [v10 firstObject];

      v12 = [v11 objectForKeyedSubscript:@"attributes"];
      v13 = v12;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      if (v11 && v12)
      {
        v14 = [v12 objectForKeyedSubscript:@"artistName"];
        v40 = [v13 objectForKeyedSubscript:@"name"];
        v39 = [v13 objectForKeyedSubscript:@"platformAttributes"];
        v17 = [v39 objectForKeyedSubscript:@"ios"];
        v18 = [v17 objectForKeyedSubscript:@"artwork"];
        v19 = [v18 objectForKeyedSubscript:@"url"];
        v20 = v13;
        v21 = v11;
        v22 = v19;
        v23 = &stru_286D686B8;
        if (v19)
        {
          v23 = v19;
        }

        v16 = v23;

        v11 = v21;
        v13 = v20;

        v15 = v40;
      }

      v24 = [v13 objectForKeyedSubscript:@"url"];
      v25 = v24;
      v26 = &stru_286D686B8;
      if (v24)
      {
        v26 = v24;
      }

      v27 = v26;

      if ([(__CFString *)v27 length])
      {
        v28 = [(__CFString *)v27 stringByAppendingString:@"?pt=2003&ct=coverage.settings&mt=8"];

        v27 = v28;
      }

      v29 = *(a1 + 40);
      v43[0] = @"AppLinkURL";
      v43[1] = @"AppIconURL";
      if (v16)
      {
        v30 = v16;
      }

      else
      {
        v30 = &stru_286D686B8;
      }

      v44[0] = v27;
      v44[1] = v30;
      if (v15)
      {
        v31 = v15;
      }

      else
      {
        v31 = &stru_286D686B8;
      }

      v43[2] = @"AppTitleKey";
      v43[3] = @"AppVendorName";
      if (v14)
      {
        v32 = v14;
      }

      else
      {
        v32 = &stru_286D686B8;
      }

      v44[2] = v31;
      v44[3] = v32;
      v43[4] = @"AppAvailablityText";
      v43[5] = @"AppAvailabilityType";
      v44[4] = @"Free – On the App Store";
      v44[5] = &unk_286D6E480;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:6];
      (*(v29 + 16))(v29, v33);
    }

    else
    {
      v36 = *(a1 + 40);
      v41 = @"AppAvailabilityType";
      v42 = &unk_286D6E498;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      (*(v36 + 16))(v36, v37);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)appSupportAvailability:(id)a3 withReply:(id)a4
{
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v39 = @"AppBundleID";
  v40[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v32 = [v8 mutableCopy];

  v9 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v6];
  v10 = [v9 appState];
  v11 = [v10 isInstalled];

  if (v11)
  {
    v12 = [v9 vendorName];
    v13 = [v9 localizedName];
    v14 = _NDOLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = v6;
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&dword_25BD52000, v14, OS_LOG_TYPE_DEFAULT, "appSupportAvailability %@ %@ is installed.", buf, 0x16u);
    }

    v15 = v28[5];
    v16 = &stru_286D686B8;
    v33[0] = @"AppTitleKey";
    v33[1] = @"AppVendorName";
    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = &stru_286D686B8;
    }

    if (v12)
    {
      v16 = v12;
    }

    v34[0] = v17;
    v34[1] = v16;
    v33[2] = @"AppAvailablityText";
    v18 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v19 = [v18 localizedStringForKey:@"INSTALLED" value:&stru_286D686B8 table:@"Localizable"];
    v33[3] = @"AppAvailabilityType";
    v34[2] = v19;
    v34[3] = &unk_286D6E468;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
    [v15 addEntriesFromDictionary:v20];

    v7[2](v7, v28[5]);
  }

  else
  {
    v12 = [(NDOAppleSupportManager *)self checkAppIsPurchased:v6];
    v21 = [(__CFString *)v12 objectForKey:@"AppAvailabilityType"];
    v13 = v21;
    if (v12 && [(__CFString *)v21 intValue])
    {
      v22 = _NDOLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v6;
        _os_log_impl(&dword_25BD52000, v22, OS_LOG_TYPE_DEFAULT, "appSupportAvailability %@ is purchased.", buf, 0xCu);
      }

      [v28[5] addEntriesFromDictionary:v12];
      v7[2](v7, v28[5]);
    }

    else
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __59__NDOAppleSupportManager_appSupportAvailability_withReply___block_invoke;
      v24[3] = &unk_279976378;
      v26 = &v27;
      v25 = v7;
      [(NDOAppleSupportManager *)self checkIsAvailableInStore:v6 withReply:v24];
    }
  }

  _Block_object_dispose(&v27, 8);
  v23 = *MEMORY[0x277D85DE8];
}

void __59__NDOAppleSupportManager_appSupportAvailability_withReply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_25BD52000, v4, OS_LOG_TYPE_DEFAULT, "AppStore --> appSupportAvailability %@.", &v7, 0xCu);
  }

  if (v3)
  {
    [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:v3];
  }

  v5 = *(*(*(a1 + 40) + 8) + 40);
  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

@end