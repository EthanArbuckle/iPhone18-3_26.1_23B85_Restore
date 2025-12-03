@interface HFMediaAccessoryItemUpdateRequest
- (HFMediaAccessoryItemUpdateRequest)init;
- (HFMediaAccessoryItemUpdateRequest)initWithMediaProfileContainer:(id)container valueSource:(id)source;
- (id)_disambiguateMultipleAccessoryResponses:(id)responses forMediaSystem:(id)system;
- (id)_parentMediaSystem;
- (id)accessories;
- (id)updateWithOptions:(id)options;
- (void)_appendRestartStatusMessageForAccessory:(id)accessory toResults:(id)results;
- (void)_appendSplitMediaAccountWarningForAccessory:(id)accessory toResults:(id)results;
- (void)_appendSplitMediaAccountWarningIfNeededForAccessory:(id)accessory toResults:(id)results;
@end

@implementation HFMediaAccessoryItemUpdateRequest

- (HFMediaAccessoryItemUpdateRequest)initWithMediaProfileContainer:(id)container valueSource:(id)source
{
  containerCopy = container;
  sourceCopy = source;
  if (!containerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryLikeItem.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  hf_mediaValueSource = [containerCopy hf_mediaValueSource];

  if (hf_mediaValueSource)
  {
    if (sourceCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryLikeItem.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer.hf_mediaValueSource"}];

    if (sourceCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryLikeItem.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"valueSource"}];

LABEL_5:
  v21.receiver = self;
  v21.super_class = HFMediaAccessoryItemUpdateRequest;
  v11 = [(HFMediaAccessoryItemUpdateRequest *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_valueSource, source);
    hf_mediaValueSource2 = [containerCopy hf_mediaValueSource];
    mediaValueSource = v12->_mediaValueSource;
    v12->_mediaValueSource = hf_mediaValueSource2;

    objc_storeStrong(&v12->_mediaProfile, container);
    hf_home = [containerCopy hf_home];
    home = v12->_home;
    v12->_home = hf_home;
  }

  return v12;
}

- (HFMediaAccessoryItemUpdateRequest)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithMediaProfileContainer_valueSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryLikeItem.m" lineNumber:80 description:{@"%s is unavailable; use %@ instead", "-[HFMediaAccessoryItemUpdateRequest init]", v5}];

  return 0;
}

- (id)updateWithOptions:(id)options
{
  v76 = *MEMORY[0x277D85DE8];
  home = [(HFMediaAccessoryItemUpdateRequest *)self home];
  mediaProfile = [(HFMediaAccessoryItemUpdateRequest *)self mediaProfile];
  mediaProfile2 = [(HFMediaAccessoryItemUpdateRequest *)self mediaProfile];
  hf_home = [mediaProfile2 hf_home];
  v8 = [HFCharacteristicValueDisplayMetadata displayMetadataForMediaProfile:mediaProfile withContextProvider:hf_home];

  valueSource = [(HFMediaAccessoryItemUpdateRequest *)self valueSource];
  mediaProfile3 = [(HFMediaAccessoryItemUpdateRequest *)self mediaProfile];
  if ([home hf_isMediaAccessoryProfileValid:?])
  {
    v45 = v8;
    v46 = home;
    _parentMediaSystem = [(HFMediaAccessoryItemUpdateRequest *)self _parentMediaSystem];
    v49 = objc_opt_new();
    selfCopy = self;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = [(HFMediaAccessoryItemUpdateRequest *)self accessories];
    v52 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
    if (v52)
    {
      v48 = *v72;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v72 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v71 + 1) + 8 * i);
          mediaProfile4 = [v11 mediaProfile];
          hf_home2 = [mediaProfile3 hf_home];
          v14 = [HFCharacteristicValueDisplayMetadata displayMetadataForMediaProfile:mediaProfile4 withContextProvider:hf_home2];

          mediaProfile5 = [v11 mediaProfile];
          objc_opt_class();
          v16 = mediaProfile5;
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          components = [v18 components];
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __55__HFMediaAccessoryItemUpdateRequest_updateWithOptions___block_invoke;
          v70[3] = &unk_277DF7F50;
          v70[4] = v11;
          v20 = [components na_firstObjectPassingTest:v70];
          role = [v20 role];

          if (role)
          {
            v22 = 1;
          }

          else
          {
            v22 = _parentMediaSystem == 0;
          }

          if (!v22)
          {
            components2 = [_parentMediaSystem components];
            v69[0] = MEMORY[0x277D85DD0];
            v69[1] = 3221225472;
            v69[2] = __55__HFMediaAccessoryItemUpdateRequest_updateWithOptions___block_invoke_2;
            v69[3] = &unk_277DF7F50;
            v69[4] = v11;
            v24 = [components2 na_firstObjectPassingTest:v69];
            role = [v24 role];
          }

          settings = [v16 settings];
          mediaSession = [v16 mediaSession];
          v27 = MEMORY[0x277D2C900];
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __55__HFMediaAccessoryItemUpdateRequest_updateWithOptions___block_invoke_3;
          v57[3] = &unk_277DFDBB8;
          v58 = mediaProfile3;
          v59 = v11;
          v60 = v14;
          v61 = valueSource;
          v62 = settings;
          v63 = mediaSession;
          v64 = v18;
          v65 = _parentMediaSystem;
          v66 = v16;
          v67 = role;
          v68 = selfCopy;
          v28 = role;
          v29 = v16;
          v30 = v18;
          v31 = mediaSession;
          v32 = settings;
          v33 = v14;
          v34 = [v27 futureWithBlock:v57];
          [v49 addObject:v34];
        }

        v52 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
      }

      while (v52);
    }

    v35 = MEMORY[0x277D2C900];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v37 = [v35 combineAllFutures:v49 ignoringErrors:1 scheduler:mainThreadScheduler];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __55__HFMediaAccessoryItemUpdateRequest_updateWithOptions___block_invoke_4;
    v54[3] = &unk_277DF43F0;
    v54[4] = selfCopy;
    v55 = _parentMediaSystem;
    v8 = v45;
    v56 = v45;
    v38 = _parentMediaSystem;
    v39 = [v37 flatMap:v54];

    home = v46;
  }

  else
  {
    v40 = MEMORY[0x277D2C900];
    v41 = [HFMediaAccessoryItemUpdateResponse alloc];
    v42 = [(HFMediaAccessoryItemUpdateResponse *)v41 initWithDisplayMetadata:v8 standardResults:MEMORY[0x277CBEC10]];
    v39 = [v40 futureWithResult:v42];
  }

  v43 = *MEMORY[0x277D85DE8];

  return v39;
}

uint64_t __55__HFMediaAccessoryItemUpdateRequest_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [*(a1 + 32) mediaProfile];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __55__HFMediaAccessoryItemUpdateRequest_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [*(a1 + 32) mediaProfile];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __55__HFMediaAccessoryItemUpdateRequest_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = objc_opt_new();
  v4 = [HFServiceLikeItemResultFactory populateStandardResultsForHomeKitObject:*(a1 + 32) withBackingAccessory:*(a1 + 40) displayMetadata:*(a1 + 48) readResponse:0 batteryLevelResults:0 valueSource:*(a1 + 56) updateOptions:0];
  [v13 addEntriesFromDictionary:v4];
  v5 = [v13 objectForKey:@"dependentHomeKitObjects"];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  [v9 na_safeAddObject:*(a1 + 64)];
  [v9 na_safeAddObject:*(a1 + 40)];
  [v9 na_safeAddObject:*(a1 + 72)];
  [v9 na_safeAddObject:*(a1 + 80)];
  [v9 na_safeAddObject:*(a1 + 88)];
  [v9 na_safeAddObject:*(a1 + 96)];
  v10 = [*(a1 + 40) hf_softwareUpdateDependentObjects];
  [v9 unionSet:v10];

  [v13 setObject:v9 forKeyedSubscript:@"dependentHomeKitObjects"];
  v11 = *(a1 + 104);
  if (v11)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "type")}];
    [v13 setObject:v12 forKeyedSubscript:@"HFMediaAccessoryItemSpeakerRoleKey"];
  }

  [*(a1 + 112) _appendSplitMediaAccountWarningIfNeededForAccessory:*(a1 + 40) toResults:v13];
  [*(a1 + 112) _appendRestartStatusMessageForAccessory:*(a1 + 40) toResults:v13];
  [v3 finishWithResult:v13];
}

id __55__HFMediaAccessoryItemUpdateRequest_updateWithOptions___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _disambiguateMultipleAccessoryResponses:a2 forMediaSystem:*(a1 + 40)];
  if (!v3)
  {
    v3 = objc_opt_new();
  }

  v4 = [[HFMediaAccessoryItemUpdateResponse alloc] initWithDisplayMetadata:*(a1 + 48) standardResults:v3];
  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

- (id)_disambiguateMultipleAccessoryResponses:(id)responses forMediaSystem:(id)system
{
  v66 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  systemCopy = system;
  if ([responsesCopy count] > 1)
  {
    if ([responsesCopy count] < 3)
    {
      home = [systemCopy home];
      v17 = [HFCharacteristicValueDisplayMetadata displayMetadataForMediaProfile:systemCopy withContextProvider:home];

      valueSource = [(HFMediaAccessoryItemUpdateRequest *)self valueSource];
      v50 = v17;
      v19 = [HFServiceLikeItemResultFactory populateStandardResultsForHomeKitObject:systemCopy withBackingAccessory:0 displayMetadata:v17 readResponse:0 batteryLevelResults:0 valueSource:valueSource updateOptions:0];

      v51 = systemCopy;
      if (_MergedGlobals_282 != -1)
      {
        dispatch_once(&_MergedGlobals_282, &__block_literal_global_58_2);
      }

      v20 = qword_280E034B8;
      v21 = objc_opt_new();
      v48 = v20;
      [v21 setKeysToSkip:v20];
      firstObject = [responsesCopy firstObject];
      lastObject = [responsesCopy lastObject];
      v47 = v21;
      v24 = [v21 combineResultDictionary:firstObject withResultDictionary:lastObject reconcilationHandler:&__block_literal_global_64_0];
      firstObject3 = [v24 mutableCopy];

      v25 = [MEMORY[0x277CBEB58] set];
      v52 = responsesCopy;
      v26 = [responsesCopy arrayByAddingObject:v19];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v60;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v60 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = [*(*(&v59 + 1) + 8 * i) objectForKeyedSubscript:@"underlyingError"];
            [v25 na_safeAddObject:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v59 objects:v65 count:16];
        }

        while (v28);
      }

      v49 = v19;
      v32 = [HFCharacteristicValueDisplayError mostEgregiousError:v25];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __92__HFMediaAccessoryItemUpdateRequest__disambiguateMultipleAccessoryResponses_forMediaSystem___block_invoke_66;
      v57[3] = &unk_277DF31E8;
      v45 = v32;
      v46 = v26;
      v58 = v45;
      v33 = [v26 na_firstObjectPassingTest:v57];
      v64[0] = @"descriptionStyle";
      v64[1] = @"description";
      v64[2] = @"errorDescription";
      v64[3] = @"longErrorDescription";
      v64[4] = @"badge";
      v64[5] = @"priority";
      v64[6] = @"errorMessageButtonTitle";
      v64[7] = @"errorMessageTitle";
      [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:8];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v34 = v56 = 0u;
      v35 = [v34 countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v54;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v54 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v53 + 1) + 8 * j);
            [firstObject3 removeObjectForKey:v39];
            allKeys = [v33 allKeys];
            v41 = [allKeys containsObject:v39];

            if (v41)
            {
              v42 = [v33 objectForKeyedSubscript:v39];
              [firstObject3 setObject:v42 forKeyedSubscript:v39];
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v53 objects:v63 count:16];
        }

        while (v36);
      }

      systemCopy = v51;
      responsesCopy = v52;
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HFMediaAccessoryItemUpdateRequest _disambiguateMultipleAccessoryResponses:forMediaSystem:]"];
      [currentHandler handleFailureInFunction:v15 file:@"HFMediaAccessoryLikeItem.m" lineNumber:179 description:{@"HFMediaAccessoryItem only accepts speaker pairs at this time. %@", responsesCopy}];

      firstObject3 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    objc_opt_class();
    firstObject2 = [responsesCopy firstObject];
    v9 = [firstObject2 objectForKeyedSubscript:@"symptom"];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    _parentMediaSystem = [(HFMediaAccessoryItemUpdateRequest *)self _parentMediaSystem];
    if (_parentMediaSystem && [v11 type] == 11)
    {
      firstObject3 = MEMORY[0x277CBEC10];
    }

    else
    {
      firstObject3 = [responsesCopy firstObject];
    }
  }

  v43 = *MEMORY[0x277D85DE8];

  return firstObject3;
}

void __92__HFMediaAccessoryItemUpdateRequest__disambiguateMultipleAccessoryResponses_forMediaSystem___block_invoke_2()
{
  v5[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"serviceNameComponents";
  v5[1] = @"HFMediaAccessoryItemSpeakerRoleKey";
  v5[2] = @"errorDescription";
  v5[3] = @"longErrorDescription";
  v5[4] = @"badge";
  v5[5] = @"priority";
  v5[6] = @"errorMessageButtonTitle";
  v5[7] = @"errorMessageTitle";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:8];
  v2 = [v0 setWithArray:v1];
  v3 = qword_280E034B8;
  qword_280E034B8 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

id __92__HFMediaAccessoryItemUpdateRequest__disambiguateMultipleAccessoryResponses_forMediaSystem___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  v9 = [v6 objectForKeyedSubscript:@"symptom"];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11 && [v11 type] == 11)
  {
    v12 = [v6 objectForKeyedSubscript:@"errorHandlerURL"];
  }

  else
  {
    v13 = HFLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 138412802;
      v17 = v8;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_INFO, "Unable to reconcile key '%@' for firstResult '%@' / secondResult '%@'", &v16, 0x20u);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

BOOL __92__HFMediaAccessoryItemUpdateRequest__disambiguateMultipleAccessoryResponses_forMediaSystem___block_invoke_66(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"underlyingError"];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)accessories
{
  mediaProfile = [(HFMediaAccessoryItemUpdateRequest *)self mediaProfile];
  accessories = [mediaProfile accessories];

  return accessories;
}

- (id)_parentMediaSystem
{
  mediaProfile = [(HFMediaAccessoryItemUpdateRequest *)self mediaProfile];
  if ([mediaProfile isItemGroup])
  {
    v4 = mediaProfile;
  }

  else
  {
    home = [(HFMediaAccessoryItemUpdateRequest *)self home];
    accessories = [mediaProfile accessories];
    anyObject = [accessories anyObject];
    v4 = [home hf_mediaSystemForAccessory:anyObject];
  }

  return v4;
}

- (void)_appendSplitMediaAccountWarningIfNeededForAccessory:(id)accessory toResults:(id)results
{
  v31 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  resultsCopy = results;
  mediaProfile = [accessoryCopy mediaProfile];
  hf_homePodIsCapableOfShowingSplitAccountError = [mediaProfile hf_homePodIsCapableOfShowingSplitAccountError];

  mediaProfile2 = [accessoryCopy mediaProfile];
  hf_settingsValueManager = [mediaProfile2 hf_settingsValueManager];

  v13 = [hf_settingsValueManager valueForSettingAtKeyPath:@"root.home.dismissedHomePodHasNonMemberMediaAccountWarning"];
  bOOLValue = [v13 BOOLValue];

  v15 = HFLogForCategory(5uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = self;
    v27 = 2112;
    v28 = v16;
    v29 = 1024;
    v30 = bOOLValue;
    _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@ Was the Split Account warning dismissed? [%d]", buf, 0x1Cu);
  }

  if (!(bOOLValue & 1 | ((hf_homePodIsCapableOfShowingSplitAccountError & 1) == 0)))
  {
    objc_initWeak(buf, self);
    mediaProfile3 = [accessoryCopy mediaProfile];
    hf_homePodSupportsMultiUserLanguage = [mediaProfile3 hf_homePodSupportsMultiUserLanguage];

    if (hf_homePodSupportsMultiUserLanguage)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __99__HFMediaAccessoryItemUpdateRequest__appendSplitMediaAccountWarningIfNeededForAccessory_toResults___block_invoke;
      v21[3] = &unk_277DFA570;
      objc_copyWeak(v24, buf);
      v22 = accessoryCopy;
      v23 = resultsCopy;
      v24[1] = a2;
      v19 = [hf_homePodSupportsMultiUserLanguage addCompletionBlock:v21];

      objc_destroyWeak(v24);
    }

    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __99__HFMediaAccessoryItemUpdateRequest__appendSplitMediaAccountWarningIfNeededForAccessory_toResults___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v4)
  {
    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(*(a1 + 56));
      v24 = 138412802;
      v25 = WeakRetained;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v4;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%@:%@ Other Error returned %@", &v24, 0x20u);
    }
  }

  else
  {
    v8 = [*(a1 + 32) mediaProfile];
    v6 = [v8 hf_appleMusicCurrentLoggedInAccount];

    v9 = +[HFAppleMusicHomeAccountManager sharedInstance];
    v10 = +[HFHomeKitDispatcher sharedDispatcher];
    v11 = [v10 home];
    v12 = [v11 uniqueIdentifier];
    v13 = [v12 UUIDString];
    v14 = [v9 mediaAccountForHomeIdentifier:v13];

    v15 = [*(a1 + 32) mediaProfile];
    LOBYTE(v10) = [v15 hf_supportsPreferredMediaUser];

    if ((v10 & 1) == 0)
    {
      if (v14 && v6)
      {
        objc_opt_class();
        v16 = v14;
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        v19 = [v18 ams_altDSID];
        v20 = [v6 ams_altDSID];
        v21 = [v19 isEqualToString:v20];

        if ((v21 & 1) == 0)
        {
          [WeakRetained _appendSplitMediaAccountWarningForAccessory:*(a1 + 32) toResults:*(a1 + 40)];
        }
      }

      else
      {
        v18 = HFLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v23 = NSStringFromSelector(*(a1 + 56));
          v24 = 138413058;
          v25 = WeakRetained;
          v26 = 2112;
          v27 = v23;
          v28 = 2112;
          v29 = v6;
          v30 = 2112;
          v31 = v14;
          _os_log_debug_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEBUG, "%@:%@ HomePod [%@] and Home Media [%@] Accounts a nil", &v24, 0x2Au);
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_appendSplitMediaAccountWarningForAccessory:(id)accessory toResults:(id)results
{
  v15 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v7 = HFLogForCategory(5uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Displaying Split Account Badge", &v11, 0x16u);
  }

  v9 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessorySplitMediaAccountErrorDescription", @"HFMediaAccessorySplitMediaAccountErrorDescription", 1);
  [resultsCopy setObject:v9 forKeyedSubscript:@"detailedControlDescription"];

  [resultsCopy setObject:&unk_2825244C8 forKeyedSubscript:@"badge"];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_appendRestartStatusMessageForAccessory:(id)accessory toResults:(id)results
{
  v52 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  resultsCopy = results;
  if ([accessoryCopy hf_isHomePod])
  {
    selfCopy = self;
    mediaProfile = [accessoryCopy mediaProfile];
    hf_settingsAdapterManager = [mediaProfile hf_settingsAdapterManager];
    v11 = [hf_settingsAdapterManager adapterForIdentifier:@"DeviceOptions"];

    uniqueIdentifier = [accessoryCopy uniqueIdentifier];
    if (uniqueIdentifier)
    {
      v13 = +[HFMediaAccessoryUtility sharedInstance];
      uniqueIdentifier2 = [accessoryCopy uniqueIdentifier];
      uUIDString = [uniqueIdentifier2 UUIDString];
      v16 = [v13 isHomePodRestartingCurrently:uUIDString];
    }

    else
    {
      v16 = 0;
    }

    uniqueIdentifier3 = [accessoryCopy uniqueIdentifier];
    if (uniqueIdentifier3)
    {
      v18 = +[HFMediaAccessoryUtility sharedInstance];
      uniqueIdentifier4 = [accessoryCopy uniqueIdentifier];
      uUIDString2 = [uniqueIdentifier4 UUIDString];
      v21 = [v18 isHomePodRestartInitiated:uUIDString2];
    }

    else
    {
      v21 = 0;
    }

    v22 = HFLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v36 = NSStringFromSelector(a2);
      *buf = 138413314;
      v45 = selfCopy;
      v46 = 2112;
      v47 = v36;
      v48 = 1024;
      *v49 = v21;
      *&v49[4] = 1024;
      *&v49[6] = v16;
      v50 = 1024;
      isAccessoryReachableOverRapport = [v11 isAccessoryReachableOverRapport];
      _os_log_debug_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEBUG, "%@:%@ isHomePodRestartInitiated=[%d], isHomePodRestarting[%d], isAccessoryReachableOverRapport [%d]", buf, 0x28u);
    }

    v23 = HFLogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v37 = NSStringFromSelector(a2);
      *buf = 138412802;
      v45 = selfCopy;
      v46 = 2112;
      v47 = v37;
      v48 = 2112;
      *v49 = resultsCopy;
      _os_log_debug_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEBUG, "%@:%@ Existing results = [%@]", buf, 0x20u);
    }

    if (v16 && ![v11 isAccessoryReachableOverRapport])
    {
      if (!v21)
      {
LABEL_24:
        v34 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessoryStateDescriptionCurrentlyRestartingAccessory", @"HFMediaAccessoryStateDescriptionCurrentlyRestartingAccessory", 1);
        [resultsCopy setObject:v34 forKeyedSubscript:@"detailedControlDescription"];

LABEL_25:
        goto LABEL_26;
      }
    }

    else if (!v21 || ([v11 isAccessoryReachableOverRapport] & 1) == 0)
    {
      if (([v11 isAccessoryReachableOverRapport] & v16) == 1)
      {
        v24 = HFLogForCategory(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          uniqueIdentifier5 = [accessoryCopy uniqueIdentifier];
          uUIDString3 = [uniqueIdentifier5 UUIDString];
          *buf = 138412290;
          v45 = uUIDString3;
          _os_log_debug_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEBUG, "*** Solo Accessory is reachable over Rapport..%@", buf, 0xCu);
        }

        v25 = +[HFMediaAccessoryUtility sharedInstance];
        uniqueIdentifier6 = [accessoryCopy uniqueIdentifier];
        uUIDString4 = [uniqueIdentifier6 UUIDString];
        [v25 markUUIDReachableViaRapport:uUIDString4];

        v28 = +[HFMediaAccessoryUtility sharedInstance];
        uniqueIdentifier7 = [accessoryCopy uniqueIdentifier];
        uUIDString5 = [uniqueIdentifier7 UUIDString];
        [v28 updateHomePodAccessoryRestartState:3 with:uUIDString5];

        v31 = [resultsCopy objectForKeyedSubscript:@"longErrorDescription"];
        v32 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessoryStateDescriptionCurrentlyRestartingAccessory", @"HFMediaAccessoryStateDescriptionCurrentlyRestartingAccessory", 1);
        LODWORD(uUIDString5) = [v31 isEqualToString:v32];

        if (uUIDString5)
        {
          [resultsCopy removeObjectForKey:@"detailedControlDescription"];
          [resultsCopy removeObjectForKey:@"badge"];
        }
      }

      goto LABEL_25;
    }

    if ([v11 isAccessoryReachableOverRapport])
    {
      v33 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87__HFMediaAccessoryItemUpdateRequest__appendRestartStatusMessageForAccessory_toResults___block_invoke;
      block[3] = &unk_277DF3370;
      v42 = accessoryCopy;
      v43 = selfCopy;
      dispatch_after(v33, MEMORY[0x277D85CD0], block);
    }

    goto LABEL_24;
  }

LABEL_26:

  v35 = *MEMORY[0x277D85DE8];
}

id __87__HFMediaAccessoryItemUpdateRequest__appendRestartStatusMessageForAccessory_toResults___block_invoke(uint64_t a1)
{
  v2 = +[HFMediaAccessoryUtility sharedInstance];
  v3 = [*(a1 + 32) uniqueIdentifier];
  v4 = [v3 UUIDString];
  [v2 markUUIDUnreachableViaRapport:v4];

  v5 = +[HFMediaAccessoryUtility sharedInstance];
  v6 = [*(a1 + 32) uniqueIdentifier];
  v7 = [v6 UUIDString];
  [v5 updateHomePodAccessoryRestartState:2 with:v7];

  return [*(a1 + 40) updateWithOptions:MEMORY[0x277CBEC10]];
}

@end