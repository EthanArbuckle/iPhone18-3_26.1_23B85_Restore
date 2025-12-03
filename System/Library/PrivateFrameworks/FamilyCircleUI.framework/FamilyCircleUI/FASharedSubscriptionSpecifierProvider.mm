@interface FASharedSubscriptionSpecifierProvider
- (BOOL)_launchWithResourceDictionary:(id)dictionary;
- (BOOL)handleURL:(id)l;
- (FASharedSubscriptionSpecifierProvider)initWithAppleAccount:(id)account presenter:(id)presenter;
- (FASharedSubscriptionSpecifierProviderSelectionHandler)selectionHandler;
- (NSArray)specifiers;
- (NSArray)subscriptionSpecifiers;
- (NSArray)subscriptionsFamilyViewSpecifier;
- (id)_iconURLStringForService:(id)service;
- (id)_serviceSpecifiersFromArray:(id)array;
- (id)_specifierNamed:(id)named;
- (id)_valueForServiceSpecifier:(id)specifier;
- (void)_addSharedSubscriptionsButtonWasTapped:(id)tapped;
- (void)_delayedLoadIfNeeded;
- (void)_handleSubscriptionListResponse:(id)response;
- (void)_loadSubscriptionServices;
- (void)_serviceSpecifierWasTapped:(id)tapped;
- (void)reloadSpecifiers;
@end

@implementation FASharedSubscriptionSpecifierProvider

- (FASharedSubscriptionSpecifierProvider)initWithAppleAccount:(id)account presenter:(id)presenter
{
  accountCopy = account;
  presenterCopy = presenter;
  v16.receiver = self;
  v16.super_class = FASharedSubscriptionSpecifierProvider;
  v9 = [(FASharedSubscriptionSpecifierProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presenter, presenter);
    v10->_updateSubsriptionSpecifiers = 1;
    objc_storeStrong(&v10->_appleAccount, account);
    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    networkActivityQueue = v10->_networkActivityQueue;
    v10->_networkActivityQueue = v11;

    [(NSOperationQueue *)v10->_networkActivityQueue setQualityOfService:33];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    subscribers = v10->_subscribers;
    v10->_subscribers = weakObjectsHashTable;

    v10->_numberOfGroups = 0;
  }

  return v10;
}

- (NSArray)specifiers
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_updateSubsriptionSpecifiers || self->_isLoadingSpecifiers)
  {
    _sharedSubscriptionGroupSpecifier = [(FASharedSubscriptionSpecifierProvider *)self _sharedSubscriptionGroupSpecifier];
    [v3 addObject:_sharedSubscriptionGroupSpecifier];

    self->_updateSubsriptionSpecifiers = 0;
    self->_specifierState = 1;
    [(FASharedSubscriptionSpecifierProvider *)self _loadSubscriptionServices];
    services3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
LABEL_4:
    [v3 addObject:services3];
    goto LABEL_5;
  }

  services = [(FASharedServicesResponse *)self->_sharedSubscriptionResponse services];
  v16 = [services count];

  if (!v16)
  {
    _sharedSubscriptionGroupSpecifier2 = [(FASharedSubscriptionSpecifierProvider *)self _sharedSubscriptionGroupSpecifier];
    [v3 addObject:_sharedSubscriptionGroupSpecifier2];

    self->_specifierState = 2;
    v32 = MEMORY[0x277D3FAD8];
    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v34 = [v33 localizedStringForKey:@"FAILED_TO_LOAD_SERVICES" value:&stru_282D9AA68 table:@"Localizable"];
    services3 = [v32 preferenceSpecifierNamed:v34 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

    [services3 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    goto LABEL_4;
  }

  p_specifiers = &self->_specifiers;
  specifiers = self->_specifiers;
  if (!specifiers || ![(NSArray *)specifiers count]|| self->_specifierState != 3)
  {
    self->_specifierState = 3;
    serviceGroups = [(FASharedServicesResponse *)self->_sharedSubscriptionResponse serviceGroups];
    v19 = [serviceGroups count];

    if (v19)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = [(FASharedServicesResponse *)self->_sharedSubscriptionResponse serviceGroups];
      v20 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v41;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v41 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v40 + 1) + 8 * i);
            v25 = MEMORY[0x277D3FAD8];
            headerText = [v24 headerText];
            footerText = [v24 footerText];
            v28 = [v25 groupSpecifierWithHeader:headerText footer:footerText];
            [v3 addObject:v28];

            ++self->_numberOfGroups;
            services2 = [v24 services];
            v30 = [(FASharedSubscriptionSpecifierProvider *)self _serviceSpecifiersFromArray:services2];
            [v3 addObjectsFromArray:v30];
          }

          v21 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v21);
      }

      goto LABEL_6;
    }

    v35 = _FALogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v35, OS_LOG_TYPE_DEFAULT, "No groups, kickin it old school.", buf, 2u);
    }

    _sharedSubscriptionGroupSpecifier3 = [(FASharedSubscriptionSpecifierProvider *)self _sharedSubscriptionGroupSpecifier];
    [v3 addObject:_sharedSubscriptionGroupSpecifier3];

    services3 = [(FASharedServicesResponse *)self->_sharedSubscriptionResponse services];
    v37 = [(FASharedSubscriptionSpecifierProvider *)self _serviceSpecifiersFromArray:services3];
    [v3 addObjectsFromArray:v37];

LABEL_5:
LABEL_6:
    v6 = [v3 copy];
    v9 = self->_specifiers;
    v7 = &self->_specifiers;
    p_super = &v9->super;
    *v7 = v6;
    p_specifiers = v7;
    goto LABEL_7;
  }

  p_super = _FALogSystem();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, p_super, OS_LOG_TYPE_DEFAULT, "Returning existing specifiers.", buf, 2u);
  }

LABEL_7:

  v11 = *p_specifiers;
  v12 = *p_specifiers;

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_serviceSpecifiersFromArray:(id)array
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__FASharedSubscriptionSpecifierProvider__serviceSpecifiersFromArray___block_invoke;
  v5[3] = &unk_2782F3890;
  v5[4] = self;
  v3 = [array fa_map:v5];

  return v3;
}

id __69__FASharedSubscriptionSpecifierProvider__serviceSpecifiersFromArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = a2;
  v5 = [v4 displayLabel];
  v6 = [v3 preferenceSpecifierNamed:v5 target:*(a1 + 32) set:0 get:sel__valueForServiceSpecifier_ detail:0 cell:2 edit:0];

  v7 = [v4 subLabel];
  [v6 setProperty:v7 forKey:*MEMORY[0x277D40160]];

  [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  v8 = MEMORY[0x277CBEBC0];
  v9 = [*(a1 + 32) _iconURLStringForService:v4];
  v10 = [v8 URLWithString:v9];

  [v6 setProperty:v10 forKey:*MEMORY[0x277D40030]];
  [v6 setControllerLoadAction:sel__serviceSpecifierWasTapped_];
  [v6 setUserInfo:v4];
  v11 = [v4 name];
  [v6 setIdentifier:v11];

  v12 = MEMORY[0x277CBEBC0];
  v13 = [v4 actionURLString];

  v14 = [v12 URLWithString:v13];
  [v6 setProperty:v14 forKey:@"FASharedServicesSpecifierActionURLKey"];

  return v6;
}

- (id)_iconURLStringForService:(id)service
{
  v17 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  view = [(PSListController *)self->_presenter view];
  window = [view window];
  screen = [window screen];
  [screen scale];
  v9 = v8;

  switch(v9)
  {
    case 3:
      iconURLStringx3 = [serviceCopy iconURLStringx3];
      goto LABEL_7;
    case 2:
      iconURLStringx3 = [serviceCopy iconURLStringx2];
      goto LABEL_7;
    case 1:
      iconURLStringx3 = [serviceCopy iconURLString];
LABEL_7:
      iconURLStringx32 = iconURLStringx3;
      goto LABEL_11;
  }

  iconURLStringx32 = [serviceCopy iconURLStringx3];
  v12 = _FALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [FASharedSubscriptionSpecifierProvider _iconURLStringForService:v12];
  }

LABEL_11:
  v13 = _FALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = v9;
    _os_log_impl(&dword_21BB35000, v13, OS_LOG_TYPE_DEFAULT, "Returning service image at scale - %d", v16, 8u);
  }

  v14 = *MEMORY[0x277D85DE8];

  return iconURLStringx32;
}

- (void)_serviceSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_selectionHandler);
  [WeakRetained didSelectSpecifier:tappedCopy];
}

- (id)_valueForServiceSpecifier:(id)specifier
{
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FASharedSubscriptionSpecifierProvider _valueForServiceSpecifier:];
  }

  detailLabel = [userInfo detailLabel];

  return detailLabel;
}

- (void)_loadSubscriptionServices
{
  if (!self->_isLoadingSpecifiers)
  {
    self->_isLoadingSpecifiers = 1;
    self->_specifierState = 1;
    networkActivityQueue = self->_networkActivityQueue;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke;
    v3[3] = &unk_2782F29E8;
    v3[4] = self;
    [(NSOperationQueue *)networkActivityQueue addOperationWithBlock:v3];
  }
}

void __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke(uint64_t a1)
{
  v2 = _FASignpostLogSystem();
  v3 = _FASignpostCreate(v2);
  v5 = v4;

  v6 = _FASignpostLogSystem();
  v7 = v6;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21BB35000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v3, "FetchFamilySubscriptions", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = _FASignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_cold_1();
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_108;
  aBlock[3] = &unk_2782F38B8;
  aBlock[5] = v3;
  aBlock[6] = v5;
  aBlock[4] = *(a1 + 32);
  v9 = _Block_copy(aBlock);
  v10 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_2;
  v12[3] = &unk_2782F3498;
  v12[4] = *(a1 + 32);
  v13 = v9;
  v11 = v9;
  [v10 fetchAAURLConfigurationWithCompletion:v12];
}

void __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_108(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Nanoseconds = _FASignpostGetNanoseconds(a1[5], a1[6]);
  v5 = _FASignpostLogSystem();
  v6 = v5;
  v7 = a1[5];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 67240192;
    LODWORD(v17) = [v3 statusCode];
    _os_signpost_emit_with_name_impl(&dword_21BB35000, v6, OS_SIGNPOST_INTERVAL_END, v7, "FetchFamilySubscriptions", " StatusCode=%{public,signpost.telemetry:number1,name=StatusCode}d ", buf, 8u);
  }

  v8 = _FASignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = Nanoseconds / 1000000000.0;
    v12 = a1[5];
    v13 = [v3 statusCode];
    *buf = 134218496;
    v17 = v12;
    v18 = 2048;
    v19 = v11;
    v20 = 1026;
    v21 = v13;
    _os_log_debug_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:FetchFamilySubscriptions  StatusCode=%{public,signpost.telemetry:number1,name=StatusCode}d ", buf, 0x1Cu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_109;
  v14[3] = &unk_2782F2AF8;
  v14[4] = a1[4];
  v15 = v3;
  v9 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v14);

  v10 = *MEMORY[0x277D85DE8];
}

void __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 urlForEndpoint:@"getFamilySubscriptions"];
  if (!v3)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_2_cold_1(v4);
    }
  }

  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_2_cold_2();
  }

  v6 = [FASharedServicesRequest alloc];
  v7 = *(*(a1 + 32) + 24);
  v8 = [v3 absoluteString];
  v9 = [(FASharedServicesRequest *)v6 initWithAppleAccount:v7 urlString:v8];

  v10 = [objc_alloc(MEMORY[0x277CEC840]) initWithRequest:v9 handler:*(a1 + 40)];
  v11 = _FALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, "Fetching family subscriptions.", v12, 2u);
  }

  [*(*(a1 + 32) + 56) addOperation:v10];
}

- (NSArray)subscriptionSpecifiers
{
  v27 = *MEMORY[0x277D85DE8];
  p_subscriptionSpecifiers = &self->_subscriptionSpecifiers;
  if (![(NSArray *)self->_subscriptionSpecifiers count])
  {
    specifiers = [(FASharedSubscriptionSpecifierProvider *)self specifiers];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = v5;
    if (!self->_isLoadingSpecifiers)
    {
      v20 = p_subscriptionSpecifiers;
      v21 = v5;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v19 = specifiers;
      v7 = specifiers;
      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v22 + 1) + 8 * i);
            identifier = [v12 identifier];
            if ([identifier isEqual:@"ICLOUD_STORAGE"])
            {
            }

            else
            {
              identifier2 = [v12 identifier];
              v15 = [identifier2 isEqual:@"SHARE_MY_LOCATION"];

              if ((v15 & 1) == 0)
              {
                [v21 addObject:v12];
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v9);
      }

      p_subscriptionSpecifiers = v20;
      v6 = v21;
      objc_storeStrong(v20, v21);
      specifiers = v19;
    }
  }

  v16 = *p_subscriptionSpecifiers;
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (NSArray)subscriptionsFamilyViewSpecifier
{
  selfCopy = self;
  v31 = *MEMORY[0x277D85DE8];
  subscriptionsFamilyViewSpecifier = self->_subscriptionsFamilyViewSpecifier;
  if (!subscriptionsFamilyViewSpecifier || ![(NSArray *)subscriptionsFamilyViewSpecifier count])
  {
    specifiers = [(FASharedSubscriptionSpecifierProvider *)selfCopy specifiers];
    v5 = specifiers;
    if (!selfCopy->_isLoadingSpecifiers)
    {
      v24 = selfCopy;
      v6 = [specifiers count] - selfCopy->_numberOfGroups;
      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      obj = v5;
      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v23 = v5;
      if (v8)
      {
        v9 = v8;
        v10 = *v27;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            identifier = [v12 identifier];
            v14 = [identifier isEqual:@"ICLOUD_STORAGE"];

            if (v14)
            {
              v6 = (v6 - 1);
              [v7 addObject:v12];
            }

            identifier2 = [v12 identifier];
            v16 = [identifier2 isEqual:@"SHARE_MY_LOCATION"];

            if (v16)
            {
              v6 = (v6 - 1);
              [v7 addObject:v12];
            }
          }

          v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v9);
      }

      selfCopy = v24;
      v17 = [(FASharedSubscriptionSpecifierProvider *)v24 _sharedSubscriptionSpecifierCell:v6];
      [(NSArray *)v22 addObjectsFromArray:v17];

      [(NSArray *)v22 addObjectsFromArray:v7];
      v18 = v24->_subscriptionsFamilyViewSpecifier;
      v24->_subscriptionsFamilyViewSpecifier = v22;

      v5 = v23;
    }
  }

  v19 = selfCopy->_subscriptionsFamilyViewSpecifier;
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)_handleSubscriptionListResponse:(id)response
{
  v32 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  self->_isLoadingSpecifiers = 0;
  if ([responseCopy statusCode] != 200)
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      error = [responseCopy error];
      *buf = 138412290;
      v29 = error;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get subscription services %@", buf, 0xCu);
    }
  }

  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    responseDictionary = [responseCopy responseDictionary];
    *buf = 138412546;
    v29 = responseCopy;
    v30 = 2112;
    v31 = responseDictionary;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Received shared services response %@ - resourceDictionary: %@", buf, 0x16u);
  }

  services = [responseCopy services];
  if (!services)
  {
    goto LABEL_11;
  }

  v11 = services;
  services2 = [(FASharedServicesResponse *)self->_sharedSubscriptionResponse services];
  services3 = [responseCopy services];
  v14 = [services2 isEqual:services3];

  if (v14)
  {
    v15 = _FALogSystem();
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, &v15->super, OS_LOG_TYPE_DEFAULT, "Response matches current subscription services; not reloading specifiers", buf, 2u);
    }
  }

  else
  {
LABEL_11:
    v16 = _FALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v16, OS_LOG_TYPE_DEFAULT, "Response indicates changes to subscription services; reloading specifiers", buf, 2u);
    }

    objc_storeStrong(&self->_sharedSubscriptionResponse, response);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = self->_subscribers;
    v17 = [(NSHashTable *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        v20 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v23 + 1) + 8 * v20);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v21 reloadSpecifiersForProvider:self oldSpecifiers:self->_subscriptionSpecifiers animated:{1, v23}];
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [(NSHashTable *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v18);
    }
  }

  [(FASharedSubscriptionSpecifierProvider *)self _delayedLoadIfNeeded];
  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleURL:(id)l
{
  lCopy = l;
  v6 = [(FASharedSubscriptionSpecifierProvider *)self _launchWithResourceDictionary:lCopy];
  if (!v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "FASharedSubscriptionSpecifierProvider doesn't have the specifier, will try again upon response.", v9, 2u);
    }

    objc_storeStrong(&self->_cachedResourceDictionary, l);
  }

  return v6;
}

- (BOOL)_launchWithResourceDictionary:(id)dictionary
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = [dictionary objectForKeyedSubscript:*MEMORY[0x277D08130]];
  if (v4)
  {
    v5 = [(FASharedSubscriptionSpecifierProvider *)self _specifierNamed:v4];
    cachedResourceDictionary = self->_cachedResourceDictionary;
    if (cachedResourceDictionary)
    {
      v19 = @"HookContinuationParameters";
      v20[0] = cachedResourceDictionary;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v5 setProperty:v7 forKey:@"FASharedServicesAdditionalParameters"];
      v8 = _FALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [FASharedSubscriptionSpecifierProvider _launchWithResourceDictionary:];
      }
    }

    v9 = _FALogSystem();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v10)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "We have the service specifier, tapping!", &v15, 2u);
      }

      [(FASharedSubscriptionSpecifierProvider *)self _serviceSpecifierWasTapped:v5];
      v11 = 1;
    }

    else
    {
      if (v10)
      {
        specifiers = self->_specifiers;
        v15 = 138412546;
        v16 = v4;
        v17 = 2112;
        v18 = specifiers;
        _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "A specifier for %@ was not found in: %@", &v15, 0x16u);
      }

      v11 = 0;
      v5 = v9;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_delayedLoadIfNeeded
{
  if (self->_cachedResourceDictionary)
  {
    v3 = _FALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "We have a cached resource dictionary, let's try launching.", v5, 2u);
    }

    [(FASharedSubscriptionSpecifierProvider *)self _launchWithResourceDictionary:self->_cachedResourceDictionary];
    cachedResourceDictionary = self->_cachedResourceDictionary;
    self->_cachedResourceDictionary = 0;
  }
}

- (id)_specifierNamed:(id)named
{
  v19 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_specifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:namedCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)reloadSpecifiers
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "Requesting shared subscription services", v7, 2u);
  }

  sharedSubscriptionResponse = self->_sharedSubscriptionResponse;
  self->_sharedSubscriptionResponse = 0;

  subscriptionsFamilyViewSpecifier = self->_subscriptionsFamilyViewSpecifier;
  self->_subscriptionsFamilyViewSpecifier = 0;

  subscriptionSpecifiers = self->_subscriptionSpecifiers;
  self->_subscriptionSpecifiers = 0;

  self->_numberOfGroups = 0;
  [(FASharedSubscriptionSpecifierProvider *)self _loadSubscriptionServices];
}

- (void)_addSharedSubscriptionsButtonWasTapped:(id)tapped
{
  v5 = [[FASharedSubscriptionsViewController alloc] initWithAppleAccount:self->_appleAccount sharedSubscriptionSpecifierProvider:self];
  navigationController = [(PSListController *)self->_presenter navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (FASharedSubscriptionSpecifierProviderSelectionHandler)selectionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionHandler);

  return WeakRetained;
}

- (void)_valueForServiceSpecifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_21BB35000, v0, v1, "Value for service specifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_21BB35000, v0, v1, "BEGIN [%lld]: FetchFamilySubscriptions  enableTelemetry=YES ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_2_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_21BB35000, v0, v1, "Grabbed shared subscription URL string: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_launchWithResourceDictionary:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_21BB35000, v0, v1, "Adding hook continuation params %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end