@interface HFMediaAccessoryItemUpdateRequest
- (HFMediaAccessoryItemUpdateRequest)init;
- (HFMediaAccessoryItemUpdateRequest)initWithMediaProfileContainer:(id)a3 valueSource:(id)a4;
- (id)_disambiguateMultipleAccessoryResponses:(id)a3 forMediaSystem:(id)a4;
- (id)_parentMediaSystem;
- (id)accessories;
- (id)updateWithOptions:(id)a3;
- (void)_appendRestartStatusMessageForAccessory:(id)a3 toResults:(id)a4;
- (void)_appendSplitMediaAccountWarningForAccessory:(id)a3 toResults:(id)a4;
- (void)_appendSplitMediaAccountWarningIfNeededForAccessory:(id)a3 toResults:(id)a4;
@end

@implementation HFMediaAccessoryItemUpdateRequest

- (HFMediaAccessoryItemUpdateRequest)initWithMediaProfileContainer:(id)a3 valueSource:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryLikeItem.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  v10 = [v8 hf_mediaValueSource];

  if (v10)
  {
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryLikeItem.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer.hf_mediaValueSource"}];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryLikeItem.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"valueSource"}];

LABEL_5:
  v21.receiver = self;
  v21.super_class = HFMediaAccessoryItemUpdateRequest;
  v11 = [(HFMediaAccessoryItemUpdateRequest *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_valueSource, a4);
    v13 = [v8 hf_mediaValueSource];
    mediaValueSource = v12->_mediaValueSource;
    v12->_mediaValueSource = v13;

    objc_storeStrong(&v12->_mediaProfile, a3);
    v15 = [v8 hf_home];
    home = v12->_home;
    v12->_home = v15;
  }

  return v12;
}

- (HFMediaAccessoryItemUpdateRequest)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithMediaProfileContainer_valueSource_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryLikeItem.m" lineNumber:80 description:{@"%s is unavailable; use %@ instead", "-[HFMediaAccessoryItemUpdateRequest init]", v5}];

  return 0;
}

- (id)updateWithOptions:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = [(HFMediaAccessoryItemUpdateRequest *)self home];
  v5 = [(HFMediaAccessoryItemUpdateRequest *)self mediaProfile];
  v6 = [(HFMediaAccessoryItemUpdateRequest *)self mediaProfile];
  v7 = [v6 hf_home];
  v8 = [HFCharacteristicValueDisplayMetadata displayMetadataForMediaProfile:v5 withContextProvider:v7];

  v51 = [(HFMediaAccessoryItemUpdateRequest *)self valueSource];
  v53 = [(HFMediaAccessoryItemUpdateRequest *)self mediaProfile];
  if ([v4 hf_isMediaAccessoryProfileValid:?])
  {
    v45 = v8;
    v46 = v4;
    v9 = [(HFMediaAccessoryItemUpdateRequest *)self _parentMediaSystem];
    v49 = objc_opt_new();
    v50 = self;
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
          v12 = [v11 mediaProfile];
          v13 = [v53 hf_home];
          v14 = [HFCharacteristicValueDisplayMetadata displayMetadataForMediaProfile:v12 withContextProvider:v13];

          v15 = [v11 mediaProfile];
          objc_opt_class();
          v16 = v15;
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          v19 = [v18 components];
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __55__HFMediaAccessoryItemUpdateRequest_updateWithOptions___block_invoke;
          v70[3] = &unk_277DF7F50;
          v70[4] = v11;
          v20 = [v19 na_firstObjectPassingTest:v70];
          v21 = [v20 role];

          if (v21)
          {
            v22 = 1;
          }

          else
          {
            v22 = v9 == 0;
          }

          if (!v22)
          {
            v23 = [v9 components];
            v69[0] = MEMORY[0x277D85DD0];
            v69[1] = 3221225472;
            v69[2] = __55__HFMediaAccessoryItemUpdateRequest_updateWithOptions___block_invoke_2;
            v69[3] = &unk_277DF7F50;
            v69[4] = v11;
            v24 = [v23 na_firstObjectPassingTest:v69];
            v21 = [v24 role];
          }

          v25 = [v16 settings];
          v26 = [v16 mediaSession];
          v27 = MEMORY[0x277D2C900];
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __55__HFMediaAccessoryItemUpdateRequest_updateWithOptions___block_invoke_3;
          v57[3] = &unk_277DFDBB8;
          v58 = v53;
          v59 = v11;
          v60 = v14;
          v61 = v51;
          v62 = v25;
          v63 = v26;
          v64 = v18;
          v65 = v9;
          v66 = v16;
          v67 = v21;
          v68 = v50;
          v28 = v21;
          v29 = v16;
          v30 = v18;
          v31 = v26;
          v32 = v25;
          v33 = v14;
          v34 = [v27 futureWithBlock:v57];
          [v49 addObject:v34];
        }

        v52 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
      }

      while (v52);
    }

    v35 = MEMORY[0x277D2C900];
    v36 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v37 = [v35 combineAllFutures:v49 ignoringErrors:1 scheduler:v36];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __55__HFMediaAccessoryItemUpdateRequest_updateWithOptions___block_invoke_4;
    v54[3] = &unk_277DF43F0;
    v54[4] = v50;
    v55 = v9;
    v8 = v45;
    v56 = v45;
    v38 = v9;
    v39 = [v37 flatMap:v54];

    v4 = v46;
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

- (id)_disambiguateMultipleAccessoryResponses:(id)a3 forMediaSystem:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count] > 1)
  {
    if ([v6 count] < 3)
    {
      v16 = [v7 home];
      v17 = [HFCharacteristicValueDisplayMetadata displayMetadataForMediaProfile:v7 withContextProvider:v16];

      v18 = [(HFMediaAccessoryItemUpdateRequest *)self valueSource];
      v50 = v17;
      v19 = [HFServiceLikeItemResultFactory populateStandardResultsForHomeKitObject:v7 withBackingAccessory:0 displayMetadata:v17 readResponse:0 batteryLevelResults:0 valueSource:v18 updateOptions:0];

      v51 = v7;
      if (_MergedGlobals_282 != -1)
      {
        dispatch_once(&_MergedGlobals_282, &__block_literal_global_58_2);
      }

      v20 = qword_280E034B8;
      v21 = objc_opt_new();
      v48 = v20;
      [v21 setKeysToSkip:v20];
      v22 = [v6 firstObject];
      v23 = [v6 lastObject];
      v47 = v21;
      v24 = [v21 combineResultDictionary:v22 withResultDictionary:v23 reconcilationHandler:&__block_literal_global_64_0];
      v13 = [v24 mutableCopy];

      v25 = [MEMORY[0x277CBEB58] set];
      v52 = v6;
      v26 = [v6 arrayByAddingObject:v19];
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
            [v13 removeObjectForKey:v39];
            v40 = [v33 allKeys];
            v41 = [v40 containsObject:v39];

            if (v41)
            {
              v42 = [v33 objectForKeyedSubscript:v39];
              [v13 setObject:v42 forKeyedSubscript:v39];
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v53 objects:v63 count:16];
        }

        while (v36);
      }

      v7 = v51;
      v6 = v52;
    }

    else
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HFMediaAccessoryItemUpdateRequest _disambiguateMultipleAccessoryResponses:forMediaSystem:]"];
      [v14 handleFailureInFunction:v15 file:@"HFMediaAccessoryLikeItem.m" lineNumber:179 description:{@"HFMediaAccessoryItem only accepts speaker pairs at this time. %@", v6}];

      v13 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    objc_opt_class();
    v8 = [v6 firstObject];
    v9 = [v8 objectForKeyedSubscript:@"symptom"];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [(HFMediaAccessoryItemUpdateRequest *)self _parentMediaSystem];
    if (v12 && [v11 type] == 11)
    {
      v13 = MEMORY[0x277CBEC10];
    }

    else
    {
      v13 = [v6 firstObject];
    }
  }

  v43 = *MEMORY[0x277D85DE8];

  return v13;
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
  v2 = [(HFMediaAccessoryItemUpdateRequest *)self mediaProfile];
  v3 = [v2 accessories];

  return v3;
}

- (id)_parentMediaSystem
{
  v3 = [(HFMediaAccessoryItemUpdateRequest *)self mediaProfile];
  if ([v3 isItemGroup])
  {
    v4 = v3;
  }

  else
  {
    v5 = [(HFMediaAccessoryItemUpdateRequest *)self home];
    v6 = [v3 accessories];
    v7 = [v6 anyObject];
    v4 = [v5 hf_mediaSystemForAccessory:v7];
  }

  return v4;
}

- (void)_appendSplitMediaAccountWarningIfNeededForAccessory:(id)a3 toResults:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 mediaProfile];
  v10 = [v9 hf_homePodIsCapableOfShowingSplitAccountError];

  v11 = [v7 mediaProfile];
  v12 = [v11 hf_settingsValueManager];

  v13 = [v12 valueForSettingAtKeyPath:@"root.home.dismissedHomePodHasNonMemberMediaAccountWarning"];
  v14 = [v13 BOOLValue];

  v15 = HFLogForCategory(5uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    *buf = 138412802;
    v26 = self;
    v27 = 2112;
    v28 = v16;
    v29 = 1024;
    v30 = v14;
    _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@ Was the Split Account warning dismissed? [%d]", buf, 0x1Cu);
  }

  if (!(v14 & 1 | ((v10 & 1) == 0)))
  {
    objc_initWeak(buf, self);
    v17 = [v7 mediaProfile];
    v18 = [v17 hf_homePodSupportsMultiUserLanguage];

    if (v18)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __99__HFMediaAccessoryItemUpdateRequest__appendSplitMediaAccountWarningIfNeededForAccessory_toResults___block_invoke;
      v21[3] = &unk_277DFA570;
      objc_copyWeak(v24, buf);
      v22 = v7;
      v23 = v8;
      v24[1] = a2;
      v19 = [v18 addCompletionBlock:v21];

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

- (void)_appendSplitMediaAccountWarningForAccessory:(id)a3 toResults:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory(5uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Displaying Split Account Badge", &v11, 0x16u);
  }

  v9 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessorySplitMediaAccountErrorDescription", @"HFMediaAccessorySplitMediaAccountErrorDescription", 1);
  [v6 setObject:v9 forKeyedSubscript:@"detailedControlDescription"];

  [v6 setObject:&unk_2825244C8 forKeyedSubscript:@"badge"];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_appendRestartStatusMessageForAccessory:(id)a3 toResults:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 hf_isHomePod])
  {
    v40 = self;
    v9 = [v7 mediaProfile];
    v10 = [v9 hf_settingsAdapterManager];
    v11 = [v10 adapterForIdentifier:@"DeviceOptions"];

    v12 = [v7 uniqueIdentifier];
    if (v12)
    {
      v13 = +[HFMediaAccessoryUtility sharedInstance];
      v14 = [v7 uniqueIdentifier];
      v15 = [v14 UUIDString];
      v16 = [v13 isHomePodRestartingCurrently:v15];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v7 uniqueIdentifier];
    if (v17)
    {
      v18 = +[HFMediaAccessoryUtility sharedInstance];
      v19 = [v7 uniqueIdentifier];
      v20 = [v19 UUIDString];
      v21 = [v18 isHomePodRestartInitiated:v20];
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
      v45 = v40;
      v46 = 2112;
      v47 = v36;
      v48 = 1024;
      *v49 = v21;
      *&v49[4] = 1024;
      *&v49[6] = v16;
      v50 = 1024;
      v51 = [v11 isAccessoryReachableOverRapport];
      _os_log_debug_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEBUG, "%@:%@ isHomePodRestartInitiated=[%d], isHomePodRestarting[%d], isAccessoryReachableOverRapport [%d]", buf, 0x28u);
    }

    v23 = HFLogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v37 = NSStringFromSelector(a2);
      *buf = 138412802;
      v45 = v40;
      v46 = 2112;
      v47 = v37;
      v48 = 2112;
      *v49 = v8;
      _os_log_debug_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEBUG, "%@:%@ Existing results = [%@]", buf, 0x20u);
    }

    if (v16 && ![v11 isAccessoryReachableOverRapport])
    {
      if (!v21)
      {
LABEL_24:
        v34 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessoryStateDescriptionCurrentlyRestartingAccessory", @"HFMediaAccessoryStateDescriptionCurrentlyRestartingAccessory", 1);
        [v8 setObject:v34 forKeyedSubscript:@"detailedControlDescription"];

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
          v38 = [v7 uniqueIdentifier];
          v39 = [v38 UUIDString];
          *buf = 138412290;
          v45 = v39;
          _os_log_debug_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEBUG, "*** Solo Accessory is reachable over Rapport..%@", buf, 0xCu);
        }

        v25 = +[HFMediaAccessoryUtility sharedInstance];
        v26 = [v7 uniqueIdentifier];
        v27 = [v26 UUIDString];
        [v25 markUUIDReachableViaRapport:v27];

        v28 = +[HFMediaAccessoryUtility sharedInstance];
        v29 = [v7 uniqueIdentifier];
        v30 = [v29 UUIDString];
        [v28 updateHomePodAccessoryRestartState:3 with:v30];

        v31 = [v8 objectForKeyedSubscript:@"longErrorDescription"];
        v32 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessoryStateDescriptionCurrentlyRestartingAccessory", @"HFMediaAccessoryStateDescriptionCurrentlyRestartingAccessory", 1);
        LODWORD(v30) = [v31 isEqualToString:v32];

        if (v30)
        {
          [v8 removeObjectForKey:@"detailedControlDescription"];
          [v8 removeObjectForKey:@"badge"];
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
      v42 = v7;
      v43 = v40;
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