@interface MKGETSecuredStatusRouter
- (MKGETSecuredStatusRouter)init;
- (MKGETStatusRouter)getStatusRouter;
- (void)server:(id)server didReceiveRequest:(id)request response:(id)response;
@end

@implementation MKGETSecuredStatusRouter

- (MKGETSecuredStatusRouter)init
{
  v9.receiver = self;
  v9.super_class = MKGETSecuredStatusRouter;
  v2 = [(MKGETSecuredStatusRouter *)&v9 init];
  if (v2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults objectForKey:@"uuid"];
    if (![v4 length])
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      [standardUserDefaults setObject:uUIDString forKey:@"uuid"];
      [standardUserDefaults synchronize];
      v4 = uUIDString;
    }

    [(MKGETSecuredStatusRouter *)v2 setUuid:v4];
    v7 = objc_alloc_init(MKStorage);
    [(MKGETSecuredStatusRouter *)v2 setStorage:v7];
  }

  return v2;
}

- (void)server:(id)server didReceiveRequest:(id)request response:(id)response
{
  v117 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained(&self->_getStatusRouter);
  v9 = [v7 numberWithInteger:{objc_msgSend(WeakRetained, "state")}];
  v86 = v6;
  [v6 setObject:v9 forKey:@"state"];

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  selfCopy = self;
  v11 = self->_supportedContentTypes;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v108 objects:v116 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v109;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v109 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v108 + 1) + 8 * i);
        v17 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v10 setObject:v17 forKey:v16];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v108 objects:v116 count:16];
    }

    while (v13);
  }

  [v86 setObject:v10 forKey:@"supported_content_types"];
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v19 = selfCopy->_supportedTransferEncodings;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v104 objects:v115 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v105;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v105 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v104 + 1) + 8 * j);
        v25 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v18 setObject:v25 forKey:v24];
      }

      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v104 objects:v115 count:16];
    }

    while (v21);
  }

  v84 = v10;

  v83 = v18;
  [v86 setObject:v18 forKey:@"supported_transfer_encodings"];
  v89 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = selfCopy->_signatures;
  v26 = [(NSDictionary *)obj countByEnumeratingWithState:&v100 objects:v114 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v101;
    v29 = MEMORY[0x277CBEC38];
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v101 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v100 + 1) + 8 * k);
        v32 = [(NSDictionary *)selfCopy->_signatures objectForKeyedSubscript:v31];
        v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v34 = v32;
        v35 = [v34 countByEnumeratingWithState:&v96 objects:v113 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v97;
          do
          {
            for (m = 0; m != v36; ++m)
            {
              if (*v97 != v37)
              {
                objc_enumerationMutation(v34);
              }

              [v33 setObject:v29 forKeyedSubscript:*(*(&v96 + 1) + 8 * m)];
            }

            v36 = [v34 countByEnumeratingWithState:&v96 objects:v113 count:16];
          }

          while (v36);
        }

        [v89 setObject:v33 forKeyedSubscript:v31];
      }

      v27 = [(NSDictionary *)obj countByEnumeratingWithState:&v100 objects:v114 count:16];
    }

    while (v27);
  }

  [v86 setObject:v89 forKey:@"signatures"];
  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  languageCode = [currentLocale languageCode];
  countryCode = [currentLocale countryCode];
  scriptCode = [currentLocale scriptCode];
  v82 = currentLocale;
  variantCode = [currentLocale variantCode];
  v81 = localeIdentifier;
  [v39 setObject:localeIdentifier forKey:@"identifier"];
  v80 = languageCode;
  [v39 setObject:languageCode forKey:@"language_code"];
  if (countryCode)
  {
    [v39 setObject:countryCode forKey:@"country_code"];
  }

  if (scriptCode)
  {
    [v39 setObject:scriptCode forKey:@"script_code"];
  }

  v78 = scriptCode;
  v79 = countryCode;
  if (variantCode)
  {
    [v39 setObject:variantCode forKey:@"variant_code"];
  }

  v77 = variantCode;
  obja = v39;
  [v86 setObject:v39 forKey:@"locale"];
  v46 = objc_alloc_init(MKDevice);
  v47 = MEMORY[0x277CCABB0];
  *&v48 = [(MKDevice *)v46 iconSize];
  v49 = [v47 numberWithFloat:v48];
  [v86 setObject:v49 forKey:@"icon_size"];

  systemName = [(MKDevice *)v46 systemName];
  [v86 setObject:systemName forKey:@"system_name"];

  systemVersion = [(MKDevice *)v46 systemVersion];
  [v86 setObject:systemVersion forKey:@"system_version"];

  deviceFamily = [(MKDevice *)v46 deviceFamily];
  [v86 setObject:deviceFamily forKey:@"device_family"];

  deviceName = [(MKDevice *)v46 deviceName];
  [v86 setObject:deviceName forKey:@"device_name"];

  deviceModel = [(MKDevice *)v46 deviceModel];
  [v86 setObject:deviceModel forKey:@"device_model"];

  uuid = [(MKGETSecuredStatusRouter *)selfCopy uuid];
  [v86 setObject:uuid forKey:@"id"];

  v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[MKStorage availableSpaceInBytes](selfCopy->_storage, "availableSpaceInBytes")}];
  [v56 setObject:v57 forKey:@"available_space_in_bytes"];

  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[MKStorage availableSpaceInMegabytes](selfCopy->_storage, "availableSpaceInMegabytes")}];
  [v56 setObject:v58 forKey:@"available_space_in_megabytes"];

  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[MKStorage availableSpaceInGigabytes](selfCopy->_storage, "availableSpaceInGigabytes")}];
  [v56 setObject:v59 forKey:@"available_space_in_gigabytes"];

  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[MKStorage availableSpaceInTerabytes](selfCopy->_storage, "availableSpaceInTerabytes")}];
  [v56 setObject:v60 forKey:@"available_space_in_terabytes"];

  [v86 setObject:v56 forKey:@"storage"];
  v76 = objc_alloc_init(MKWiFiDevice);
  currentNetwork = [(MKWiFiDevice *)v76 currentNetwork];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  allKeys = [currentNetwork allKeys];
  v63 = [allKeys countByEnumeratingWithState:&v92 objects:v112 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v93;
    do
    {
      for (n = 0; n != v64; ++n)
      {
        if (*v93 != v65)
        {
          objc_enumerationMutation(allKeys);
        }

        v67 = *(*(&v92 + 1) + 8 * n);
        v68 = [currentNetwork objectForKeyedSubscript:v67];
        [v86 setObject:v68 forKey:v67];
      }

      v64 = [allKeys countByEnumeratingWithState:&v92 objects:v112 count:16];
    }

    while (v64);
  }

  v69 = MEMORY[0x277CCABB0];
  v70 = objc_loadWeakRetained(&selfCopy->_getStatusRouter);
  v71 = [v69 numberWithInteger:{objc_msgSend(v70, "preferredChannel")}];
  [v86 setObject:v71 forKey:@"ap1"];

  v91 = 0;
  v72 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v86 options:0 error:&v91];
  v73 = v91;
  if (v73)
  {
    v74 = +[MKLog log];
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      [(MKBookmarkMigrator *)v73 import:v74];
    }
  }

  [responseCopy setBody:v72];

  v75 = *MEMORY[0x277D85DE8];
}

- (MKGETStatusRouter)getStatusRouter
{
  WeakRetained = objc_loadWeakRetained(&self->_getStatusRouter);

  return WeakRetained;
}

@end