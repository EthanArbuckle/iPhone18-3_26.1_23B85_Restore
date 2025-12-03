@interface _ICPortraitPredictionSource
- (BOOL)_populateError:(id *)error withExplanations:(id)explanations;
- (_ICPortraitPredictionSource)init;
- (id)_makePPQuickTypeBroker;
- (id)_quickTypeQueryWithQuery:(id)query limit:(unint64_t)limit timeoutInMilliseconds:(unint64_t)milliseconds;
- (id)_quickTypeQueryWithTrigger:(id)trigger searchContext:(id)context limit:(unint64_t)limit timeoutInMilliseconds:(unint64_t)milliseconds errorWithExplanations:(id *)explanations;
- (id)getPPBroker;
- (void)getPPBroker;
- (void)hibernate;
- (void)init;
- (void)predictedItemsWithProactiveTrigger:(id)trigger searchContext:(id)context limit:(unint64_t)limit timeoutInMilliseconds:(unint64_t)milliseconds handler:(id)handler;
- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style;
- (void)searchForMeCardEmailAddressesWithTimeout:(unint64_t)timeout handler:(id)handler;
- (void)searchForMeCardRegionsWithTimeout:(unint64_t)timeout handler:(id)handler;
- (void)warmUp;
@end

@implementation _ICPortraitPredictionSource

- (void)warmUp
{
  v10 = *MEMORY[0x277D85DE8];
  getPPBroker = [(_ICPortraitPredictionSource *)self getPPBroker];
  v3 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = getPPBroker;
    _os_log_impl(&dword_254BD0000, v3, OS_LOG_TYPE_INFO, "_ICPPSource warming up %@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37___ICPortraitPredictionSource_warmUp__block_invoke;
  v6[3] = &unk_2797AD990;
  v7 = getPPBroker;
  v4 = getPPBroker;
  [v4 warmUpWithCompletion:v6];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)getPPBroker
{
  ppBroker = [(_ICPortraitPredictionSource *)self ppBroker];

  if (ppBroker)
  {
LABEL_2:
    ppBroker2 = [(_ICPortraitPredictionSource *)self ppBroker];
    goto LABEL_3;
  }

  if (![MEMORY[0x277CCACC8] isMainThread])
  {
    [(NSCondition *)self->_ppBrokerLoadedCondition lock];
    ppBroker3 = [(_ICPortraitPredictionSource *)self ppBroker];

    if (ppBroker3)
    {
      [(NSCondition *)self->_ppBrokerLoadedCondition unlock];
    }

    else
    {
      do
      {
        v8 = _ICProactiveQuickTypeOSLogFacility();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(_ICPortraitPredictionSource *)&v11 getPPBroker];
        }

        [(NSCondition *)self->_ppBrokerLoadedCondition wait];
        ppBroker4 = [(_ICPortraitPredictionSource *)self ppBroker];
      }

      while (!ppBroker4);
      [(NSCondition *)self->_ppBrokerLoadedCondition unlock];
      v10 = _ICProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [_ICPortraitPredictionSource getPPBroker];
      }
    }

    goto LABEL_2;
  }

  v6 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_ICPortraitPredictionSource getPPBroker];
  }

  ppBroker2 = 0;
LABEL_3:

  return ppBroker2;
}

- (_ICPortraitPredictionSource)init
{
  v14.receiver = self;
  v14.super_class = _ICPortraitPredictionSource;
  v2 = [(_ICPortraitPredictionSource *)&v14 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = @"_ICPortraitPredictionSource";

    v5 = objc_alloc_init(MEMORY[0x277CCA928]);
    ppBrokerLoadedCondition = v3->_ppBrokerLoadedCondition;
    v3->_ppBrokerLoadedCondition = v5;

    v7 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_ICPortraitPredictionSource init];
    }

    objc_initWeak(&location, v3);
    v8 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35___ICPortraitPredictionSource_init__block_invoke;
    block[3] = &unk_2797ADAB8;
    objc_copyWeak(&v12, &location);
    v11 = v3;
    dispatch_async(v8, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (id)_makePPQuickTypeBroker
{
  if (_makePPQuickTypeBroker_onceToken != -1)
  {
    [_ICPortraitPredictionSource _makePPQuickTypeBroker];
  }

  v3 = _makePPQuickTypeBroker_broker;

  return v3;
}

- (BOOL)_populateError:(id *)error withExplanations:(id)explanations
{
  v21[1] = *MEMORY[0x277D85DE8];
  explanationsCopy = explanations;
  v6 = *error;
  if (!*error)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = objc_opt_new();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63___ICPortraitPredictionSource__populateError_withExplanations___block_invoke;
    v13[3] = &unk_2797ADB58;
    v13[4] = &v14;
    [explanationsCopy enumerateWithBlock:v13];
    if ([v15[5] count])
    {
      v7 = [v15[5] componentsJoinedByString:@" "];
      v8 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = v7;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *error = [v8 errorWithDomain:@"com.apple.inputcontext.errors" code:5 userInfo:v9];

      v10 = _ICProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [_ICPortraitPredictionSource _populateError:withExplanations:];
      }
    }

    else
    {
      v7 = _ICProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [_ICPortraitPredictionSource _populateError:withExplanations:];
      }
    }

    _Block_object_dispose(&v14, 8);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6 == 0;
}

- (id)_quickTypeQueryWithQuery:(id)query limit:(unint64_t)limit timeoutInMilliseconds:(unint64_t)milliseconds
{
  v38 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v30 = 0;
  v28 = @"_ICPPSource_quickTypeQueryWithQuery";
  v9 = mach_absolute_time();
  v29 = v9;
  v10 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = queryCopy;
    _os_log_impl(&dword_254BD0000, v10, OS_LOG_TYPE_INFO, "_ICPPSource _quickTypeQueryWithQuery: %@", &buf, 0xCu);
  }

  getPPBroker = [(_ICPortraitPredictionSource *)self getPPBroker];
  if (getPPBroker)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__0;
    v36 = __Block_byref_object_dispose__0;
    v37 = 0;
    v12 = dispatch_semaphore_create(0);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __84___ICPortraitPredictionSource__quickTypeQueryWithQuery_limit_timeoutInMilliseconds___block_invoke;
    v25[3] = &unk_2797ADB80;
    p_buf = &buf;
    v13 = v12;
    v26 = v13;
    [getPPBroker quickTypeItemsWithQuery:queryCopy limit:limit completion:v25];
    v14 = dispatch_time(0, 1000000 * milliseconds);
    if (dispatch_semaphore_wait(v13, v14))
    {
      v15 = _ICProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [_ICPortraitPredictionSource _quickTypeQueryWithQuery:limit:timeoutInMilliseconds:];
      }

      v16 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v18 = _ICProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [*(*(&buf + 1) + 40) count];
        *v31 = 134217984;
        v32 = v19;
        _os_log_impl(&dword_254BD0000, v18, OS_LOG_TYPE_INFO, "_ICPPSource _quickTypeQueryWithQuery got %lu items", v31, 0xCu);
      }

      v16 = *(*(&buf + 1) + 40);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v17 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_ICPortraitPredictionSource _quickTypeQueryWithQuery:limit:timeoutInMilliseconds:];
    }

    v16 = MEMORY[0x277CBEBF8];
  }

  v20 = mach_absolute_time();
  v21 = _ICMachTimeToNanoseconds(v20 - v9);
  v22 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [_ICPortraitPredictionSource _quickTypeQueryWithQuery:v21 limit:? timeoutInMilliseconds:?];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_quickTypeQueryWithTrigger:(id)trigger searchContext:(id)context limit:(unint64_t)limit timeoutInMilliseconds:(unint64_t)milliseconds errorWithExplanations:(id *)explanations
{
  v78 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  contextCopy = context;
  v69 = 0;
  v67 = @"_ICPPSource_quickTypeQueryWithTrigger";
  v11 = mach_absolute_time();
  v68 = v11;
  v12 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = triggerCopy;
    _os_log_impl(&dword_254BD0000, v12, OS_LOG_TYPE_INFO, "_ICPPSource _quickTypeQueryWithTrigger: %@", &buf, 0xCu);
  }

  getPPBroker = [(_ICPortraitPredictionSource *)self getPPBroker];
  if (getPPBroker)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__0;
    v76 = __Block_byref_object_dispose__0;
    v77 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy__0;
    v65 = __Block_byref_object_dispose__0;
    v66 = 0;
    v14 = dispatch_semaphore_create(0);
    attributedString = [triggerCopy attributedString];
    v16 = [attributedString objectForKey:@"contextBeforeInput"];

    v17 = isPqt1ForContactAutofillEnabled();
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v18 == 1)
    {
      contentType = [triggerCopy contentType];
      if (contentType)
      {
        attributedString2 = [triggerCopy attributedString];
        v21 = [attributedString2 objectForKeyedSubscript:@"contextBeforeInput"];
        v22 = v21 == 0;

        if (!v22)
        {
          contentType2 = [triggerCopy contentType];
          v24 = [contentType2 isEqualToString:@"email"];

          if (v24)
          {
            v25 = 2;
          }

          else
          {
            contentType3 = [triggerCopy contentType];
            v33 = [contentType3 isEqualToString:@"tel"];

            if (v33)
            {
              v25 = 1;
            }

            else
            {
              contentType4 = [triggerCopy contentType];
              v35 = [contentType4 isEqualToString:@"street-address"];

              if (v35)
              {
                v25 = 4;
              }

              else
              {
                v25 = 0;
              }
            }
          }

          v36 = MEMORY[0x277D3A480];
          attributedString3 = [triggerCopy attributedString];
          v38 = [attributedString3 objectForKey:@"contextBeforeInput"];
          v72 = v38;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
          v40 = [v36 quickTypeQueryWithType:1 subtype:2 semanticTag:0 fields:v25 time:0 subFields:0 label:0 people:v39 localeIdentifier:0 bundleIdentifier:0 recipients:0];

          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __122___ICPortraitPredictionSource__quickTypeQueryWithTrigger_searchContext_limit_timeoutInMilliseconds_errorWithExplanations___block_invoke;
          v57[3] = &unk_2797ADBA8;
          p_buf = &buf;
          v57[4] = self;
          v60 = &v61;
          v58 = v14;
          [getPPBroker quickTypeItemsWithQuery:v40 limit:100 completion:v57];
        }
      }
    }

    else
    {
      attributedString4 = [triggerCopy attributedString];
      locale = [contextCopy locale];
      recipients = [contextCopy recipients];
      applicationBundleIdentifier = [contextCopy applicationBundleIdentifier];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __122___ICPortraitPredictionSource__quickTypeQueryWithTrigger_searchContext_limit_timeoutInMilliseconds_errorWithExplanations___block_invoke_2;
      v53[3] = &unk_2797ADBA8;
      v55 = &buf;
      v53[4] = self;
      v56 = &v61;
      v54 = v14;
      [getPPBroker quickTypeItemsWithLanguageModelingTokens:attributedString4 localeIdentifier:locale recipients:recipients bundleIdentifier:applicationBundleIdentifier limit:limit completion:v53];
    }

    v41 = dispatch_time(0, 1000000 * milliseconds);
    if (dispatch_semaphore_wait(v14, v41))
    {
      v42 = _ICProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [_ICPortraitPredictionSource _quickTypeQueryWithTrigger:searchContext:limit:timeoutInMilliseconds:errorWithExplanations:];
      }

      v27 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v43 = _ICProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = [*(*(&buf + 1) + 40) count];
        *v70 = 134217984;
        v71 = v44;
        _os_log_impl(&dword_254BD0000, v43, OS_LOG_TYPE_INFO, "_ICPPSource _quickTypeQueryWithTrigger got %lu items", v70, 0xCu);
      }

      if (*explanations)
      {
        *explanations = v62[5];
      }

      v27 = *(*(&buf + 1) + 40);
    }

    _Block_object_dispose(&v61, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v26 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [_ICPortraitPredictionSource _quickTypeQueryWithQuery:limit:timeoutInMilliseconds:];
    }

    v27 = MEMORY[0x277CBEBF8];
  }

  v45 = mach_absolute_time();
  v46 = _ICMachTimeToNanoseconds(v45 - v11);
  v47 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    [_ICPortraitPredictionSource _quickTypeQueryWithTrigger:v46 searchContext:? limit:? timeoutInMilliseconds:? errorWithExplanations:?];
  }

  v48 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)predictedItemsWithProactiveTrigger:(id)trigger searchContext:(id)context limit:(unint64_t)limit timeoutInMilliseconds:(unint64_t)milliseconds handler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  contextCopy = context;
  handlerCopy = handler;
  v34[3] = 0;
  v34[1] = @"_ICPPPredictionSource_predictedItemsWithProactiveTrigger";
  v26 = mach_absolute_time();
  v34[2] = v26;
  v13 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ICPortraitPredictionSource predictedItemsWithProactiveTrigger:searchContext:limit:timeoutInMilliseconds:handler:];
  }

  v34[0] = 0;
  v14 = [(_ICPortraitPredictionSource *)self _quickTypeQueryWithTrigger:triggerCopy searchContext:contextCopy limit:limit timeoutInMilliseconds:milliseconds errorWithExplanations:v34];
  v28 = v34[0];
  v15 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v17)
  {
    v18 = *v31;
    do
    {
      v19 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = [_ICPredictedItem predictedItemFromQuickTypeItem:*(*(&v30 + 1) + 8 * v19) trigger:triggerCopy, v26];
        if (v20)
        {
          v21 = _ICProactiveQuickTypeOSLogFacility();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v36 = v20;
            _os_log_debug_impl(&dword_254BD0000, v21, OS_LOG_TYPE_DEBUG, "DEBUG:IC:Predictions: PP result: %@", buf, 0xCu);
          }

          [v15 addObject:v20];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v17);
  }

  handlerCopy[2](handlerCopy, v15, v28);
  v22 = mach_absolute_time();
  v23 = _ICMachTimeToNanoseconds(v22 - v26);
  v24 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [_ICPortraitPredictionSource predictedItemsWithProactiveTrigger:v23 searchContext:? limit:? timeoutInMilliseconds:? handler:?];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)searchForMeCardRegionsWithTimeout:(unint64_t)timeout handler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v56 = 0;
  v54 = @"_ICPPPredictionSource_searchForMeCardRegionsWithTimeout";
  v41 = mach_absolute_time();
  v55 = v41;
  v43 = [MEMORY[0x277D3A480] quickTypeQueryWithType:1 subtype:1 semanticTag:0 fields:0x200000 time:0 subFields:0 label:0 people:0 localeIdentifier:0 bundleIdentifier:0 recipients:0];
  v6 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_ICPortraitPredictionSource searchForMeCardRegionsWithTimeout:handler:];
  }

  v7 = [(_ICPortraitPredictionSource *)self _quickTypeQueryWithQuery:v43 limit:10 timeoutInMilliseconds:timeout];
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v9)
  {
    v10 = *v51;
    do
    {
      v11 = 0;
      do
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v50 + 1) + 8 * v11);
        label = [v12 label];
        v14 = [label length] == 0;

        if (!v14)
        {
          value = [v12 value];
          v16 = [value componentsSeparatedByString:@"|"];

          if ([v16 count] == 3)
          {
            v17 = [v16 objectAtIndex:0];
            if ([v17 length])
            {
              goto LABEL_13;
            }

            v18 = [v16 objectAtIndex:1];
            if ([v18 length])
            {

LABEL_13:
LABEL_14:
              label2 = [v12 label];
              dictionary2 = [dictionary objectForKey:label2];

              if (!dictionary2)
              {
                dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                label3 = [v12 label];
                [dictionary setObject:dictionary2 forKey:label3];

                v22 = [v16 objectAtIndex:0];
                if ([v22 length])
                {
                  [dictionary2 setValue:v22 forKey:@"City"];
                }

                v23 = [v16 objectAtIndex:1];
                if ([v23 length])
                {
                  [dictionary2 setValue:v23 forKey:@"Province"];
                }

                v24 = [v16 objectAtIndex:2];
                if ([v24 length])
                {
                  [dictionary2 setValue:v24 forKey:@"Country"];
                }
              }
            }

            else
            {
              v25 = [v16 objectAtIndex:2];
              v26 = [v25 length] == 0;

              if (!v26)
              {
                goto LABEL_14;
              }
            }
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v27 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      v9 = v27;
    }

    while (v27);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  allKeys = [dictionary allKeys];
  v29 = [allKeys countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v29)
  {
    v30 = *v47;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v47 != v30)
        {
          objc_enumerationMutation(allKeys);
        }

        v32 = *(*(&v46 + 1) + 8 * i);
        v33 = [dictionary objectForKey:v32];
        [v33 setValue:v32 forKey:@"ContactLabel"];
        [array addObject:v33];
      }

      v29 = [allKeys countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v29);
  }

  handlerCopy[2](handlerCopy, array);
  v34 = mach_absolute_time();
  v35 = _ICMachTimeToNanoseconds(v34 - v41);
  v36 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    [_ICPortraitPredictionSource searchForMeCardRegionsWithTimeout:v35 handler:?];
  }

  if (!v35)
  {
    v37 = mach_absolute_time();
    v38 = _ICMachTimeToNanoseconds(v37 - v41);
    v39 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [_ICPortraitPredictionSource searchForMeCardRegionsWithTimeout:v38 handler:?];
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)searchForMeCardEmailAddressesWithTimeout:(unint64_t)timeout handler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v27 = 0;
  v25 = @"_ICPPPredictionSource_searchForMeCardEmailAddressesWithTimeout";
  v7 = mach_absolute_time();
  v26 = v7;
  v8 = [MEMORY[0x277D3A480] quickTypeQueryWithType:1 subtype:1 semanticTag:0 fields:2 time:0 subFields:0 label:0 people:0 localeIdentifier:0 bundleIdentifier:0 recipients:0];
  v9 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_ICPortraitPredictionSource searchForMeCardEmailAddressesWithTimeout:handler:];
  }

  v10 = [(_ICPortraitPredictionSource *)self _quickTypeQueryWithQuery:v8 limit:10 timeoutInMilliseconds:timeout];
  v11 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v13)
  {
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        value = [*(*(&v21 + 1) + 8 * v15) value];
        [v11 addObject:value];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v13);
  }

  handlerCopy[2](handlerCopy, v11);
  v17 = mach_absolute_time();
  v18 = _ICMachTimeToNanoseconds(v17 - v7);
  v19 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [_ICPortraitPredictionSource searchForMeCardEmailAddressesWithTimeout:v18 handler:?];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)hibernate
{
  v2 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_254BD0000, v2, OS_LOG_TYPE_INFO, "_ICPPSource hibernating", v3, 2u);
  }
}

- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style
{
  styleCopy = style;
  typeCopy = type;
  stringCopy = string;
  if (typeCopy == 3)
  {
    v9 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithOfferedString:stringCopy];
LABEL_15:
    v10 = v9;
    v11 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_ICPortraitPredictionSource provideFeedbackForString:styleCopy type:typeCopy style:v11];
    }

    [(PPQuickTypeBroker *)self->_ppBroker registerFeedback:v10 completion:0];
    goto LABEL_18;
  }

  if (typeCopy == 1 && styleCopy == 1)
  {
    v9 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithExplicitlyEngagedString:stringCopy];
    goto LABEL_15;
  }

  if (typeCopy == 1 && styleCopy == 2)
  {
    v9 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithImplicitlyEngagedString:stringCopy];
    goto LABEL_15;
  }

  if (typeCopy == 2 && styleCopy == 1)
  {
    v9 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithExplicitlyRejectedString:stringCopy];
    goto LABEL_15;
  }

  if (typeCopy == 2 && styleCopy == 2)
  {
    v9 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithImplicitlyRejectedString:stringCopy];
    goto LABEL_15;
  }

  v10 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [_ICPortraitPredictionSource provideFeedbackForString:typeCopy type:styleCopy style:v10];
  }

LABEL_18:
}

- (void)init
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getPPBroker
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_populateError:withExplanations:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_populateError:withExplanations:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_quickTypeQueryWithQuery:limit:timeoutInMilliseconds:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_quickTypeQueryWithQuery:limit:timeoutInMilliseconds:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_quickTypeQueryWithQuery:(unint64_t)a1 limit:timeoutInMilliseconds:.cold.3(unint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_quickTypeQueryWithTrigger:searchContext:limit:timeoutInMilliseconds:errorWithExplanations:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_quickTypeQueryWithTrigger:(unint64_t)a1 searchContext:limit:timeoutInMilliseconds:errorWithExplanations:.cold.3(unint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)predictedItemsWithProactiveTrigger:searchContext:limit:timeoutInMilliseconds:handler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)predictedItemsWithProactiveTrigger:(unint64_t)a1 searchContext:limit:timeoutInMilliseconds:handler:.cold.2(unint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)searchForMeCardRegionsWithTimeout:handler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)searchForMeCardRegionsWithTimeout:(unint64_t)a1 handler:.cold.2(unint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)searchForMeCardEmailAddressesWithTimeout:handler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)searchForMeCardEmailAddressesWithTimeout:(unint64_t)a1 handler:.cold.2(unint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)provideFeedbackForString:(int)a1 type:(int)a2 style:(os_log_t)log .cold.1(int a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_254BD0000, log, OS_LOG_TYPE_ERROR, "Error: feedback received by _ICPortraitPredictionSource with unknown type or style: %d / %d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)provideFeedbackForString:(unsigned __int8)a1 type:(int)a2 style:(os_log_t)log .cold.2(unsigned __int8 a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 1024;
  v6 = a1;
  _os_log_debug_impl(&dword_254BD0000, log, OS_LOG_TYPE_DEBUG, "Feedback received by _ICPortraitPredictionSource with known type and style: %d / %d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

@end