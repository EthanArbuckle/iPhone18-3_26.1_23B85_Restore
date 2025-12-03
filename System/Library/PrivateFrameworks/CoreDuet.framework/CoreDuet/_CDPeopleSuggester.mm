@interface _CDPeopleSuggester
+ (id)createAdvisorSettingsFromContext:(id)context settings:(id)settings;
+ (id)peopleSuggesterUsingDaemon;
+ (id)peopleSuggesterWithDirectDBAccess;
+ (id)restrictedPrefixForPrefix:(id)prefix;
- (BOOL)enableCaching;
- (_CDPeopleSuggester)init;
- (_CDPeopleSuggester)initWithAdvisor:(id)advisor;
- (id)suggestPeopleWithError:(id *)error;
- (void)dealloc;
- (void)invalidateCache;
- (void)setEnableCaching:(BOOL)caching;
- (void)suggestPeopleWithCompletionHandler:(id)handler;
- (void)updateSettings;
@end

@implementation _CDPeopleSuggester

+ (id)peopleSuggesterWithDirectDBAccess
{
  v2 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[_CDPeopleSuggester peopleSuggesterWithDirectDBAccess];
  }

  v3 = +[_CDInteractionStore defaultDatabaseDirectory];
  v4 = [_CDInteractionStore storeWithDirectory:v3 readOnly:1];
  openAndCheckIfReadable = [v4 openAndCheckIfReadable];
  v6 = +[_CDLogging interactionChannel];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (openAndCheckIfReadable)
  {
    if (v7)
    {
      +[_CDPeopleSuggester peopleSuggesterWithDirectDBAccess];
    }
  }

  else if (v7)
  {
    +[_CDPeopleSuggester peopleSuggesterWithDirectDBAccess];
  }

  v8 = [_CDInteractionAdviceEngine interactionAdviceEngineWithStore:v4];
  v9 = [[_CDPeopleSuggester alloc] initWithAdvisor:v8];

  return v9;
}

+ (id)peopleSuggesterUsingDaemon
{
  v2 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[_CDPeopleSuggester peopleSuggesterUsingDaemon];
  }

  v3 = objc_alloc_init(_CDPeopleSuggester);

  return v3;
}

- (_CDPeopleSuggester)init
{
  v3 = +[_CDInteractionAdvisor sharedInteractionAdvisor];
  v4 = [(_CDPeopleSuggester *)self initWithAdvisor:v3];

  return v4;
}

- (_CDPeopleSuggester)initWithAdvisor:(id)advisor
{
  advisorCopy = advisor;
  v23.receiver = self;
  v23.super_class = _CDPeopleSuggester;
  v6 = [(_CDPeopleSuggester *)&v23 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.coreduet.people.suggest", v7);
    v9 = *(v6 + 2);
    *(v6 + 2) = v8;

    objc_storeStrong(v6 + 1, advisor);
    v10 = +[_CDPeopleSuggesterContext currentContext];
    v11 = *(v6 + 6);
    *(v6 + 6) = v10;

    v12 = +[_CDPeopleSuggesterSettings defaultSettings];
    v13 = *(v6 + 7);
    *(v6 + 7) = v12;

    v14 = *(v6 + 3);
    *(v6 + 3) = 0;

    *(v6 + 44) = 1;
    *(v6 + 8) = 0x403E000000000000;
    v15 = objc_opt_new();
    v16 = *(v6 + 4);
    *(v6 + 4) = v15;

    [v6 updateSettings];
    objc_initWeak(&location, v6);
    uTF8String = [@"com.apple.coreduet.CDPeopleSettingsDidChange" UTF8String];
    v18 = *(v6 + 2);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __38___CDPeopleSuggester_initWithAdvisor___block_invoke;
    v20[3] = &unk_1E7368E78;
    objc_copyWeak(&v21, &location);
    notify_register_dispatch(uTF8String, v6 + 10, v18, v20);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  notify_cancel(self->_settingsNotifyToken);
  v3.receiver = self;
  v3.super_class = _CDPeopleSuggester;
  [(_CDPeopleSuggester *)&v3 dealloc];
}

- (void)invalidateCache
{
  obj = self;
  objc_sync_enter(obj);
  cache = obj->_cache;
  obj->_cache = 0;

  objc_sync_exit(obj);
}

- (BOOL)enableCaching
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  enableCaching = selfCopy->_enableCaching;
  objc_sync_exit(selfCopy);

  return enableCaching;
}

- (void)setEnableCaching:(BOOL)caching
{
  obj = self;
  objc_sync_enter(obj);
  obj->_enableCaching = caching;
  if (!caching)
  {
    [(_CDPeopleSuggester *)obj invalidateCache];
  }

  objc_sync_exit(obj);
}

- (void)updateSettings
{
  v9 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreDuet"];
  v3 = [v9 valueForKey:@"com.apple.coreduet.peoplePrediction.heuristic.nearbyPeople"];
  v4 = v3;
  if (v3 && ([v3 BOOLValue] & 1) == 0)
  {
    context = [(_CDPeopleSuggester *)self context];
    [context setNearbyPeople:0];
  }

  v6 = [v9 valueForKey:@"com.apple.coreduet.peoplePrediction.heuristic.activeInteraction"];
  v7 = v6;
  if (v6 && ([v6 BOOLValue] & 1) == 0)
  {
    context2 = [(_CDPeopleSuggester *)self context];
    [context2 setActiveInteraction:0];
  }
}

- (void)suggestPeopleWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = _os_activity_create(&dword_191750000, "CoreDuet: suggestPeople async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);
    os_activity_scope_leave(&state);

    v6 = +[_CDLogging interactionSignpost];
    if (os_signpost_enabled(v6))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_191750000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SuggestPeopleAsync", " enableTelemetry=YES ", &state, 2u);
    }

    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57___CDPeopleSuggester_suggestPeopleWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E73674E0;
    v12[4] = self;
    v13 = handlerCopy;
    v8 = v12;
    v9 = queue;
    v10 = os_transaction_create();
    state.opaque[0] = MEMORY[0x1E69E9820];
    state.opaque[1] = 3221225472;
    v15 = __cd_dispatch_async_capture_tx_block_invoke_4;
    v16 = &unk_1E7367818;
    v17 = v10;
    v18 = v8;
    v11 = v10;
    dispatch_async(v9, &state);
  }
}

- (id)suggestPeopleWithError:(id *)error
{
  v131 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_191750000, "CoreDuet: suggestPeople sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  os_activity_scope_leave(&state);

  v5 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_CDPeopleSuggester *)self suggestPeopleWithError:v5];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v94 = selfCopy;
  if (selfCopy->_enableCaching)
  {
    cache = selfCopy->_cache;
    if (cache)
    {
      if ([(_CDCachedPeopleSuggestion *)cache isValidForContext:selfCopy->_context settings:selfCopy->_settings timeoutSeconds:selfCopy->_cacheTimeoutSeconds])
      {
        v8 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [_CDPeopleSuggester suggestPeopleWithError:];
        }

        v9 = +[_CDLogging interactionSignpost];
        if (os_signpost_enabled(v9))
        {
          LOWORD(state.opaque[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_191750000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PeopleSuggester", "Early-out: Cache hit enableTelemetry=YES ", &state, 2u);
        }

        suggestions = [(_CDCachedPeopleSuggestion *)v94->_cache suggestions];
        goto LABEL_88;
      }

      v11 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [_CDPeopleSuggester suggestPeopleWithError:];
      }

      v12 = +[_CDLogging interactionSignpost];
      if (os_signpost_enabled(v12))
      {
        LOWORD(state.opaque[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_191750000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PeopleSuggester", "Cache miss enableTelemetry=YES ", &state, 2u);
      }
    }
  }

  v13 = +[_CDLogging interactionSignpost];
  if (os_signpost_enabled(v13))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_191750000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SuggestPeople", " enableTelemetry=YES ", &state, 2u);
  }

  context = [(_CDPeopleSuggester *)v94 context];
  settings = [(_CDPeopleSuggester *)v94 settings];
  v91 = [objc_opt_class() createAdvisorSettingsFromContext:context settings:settings];
  v14 = [(_CDInteractionAdvising *)v94->_advisor adviseInteractionsUsingSettings:?];
  v15 = [v14 mutableCopy];

  v16 = objc_opt_new();
  v99 = objc_opt_new();
  v98 = v16;
  context2 = [(_CDPeopleSuggester *)v94 context];
  activeInteraction = [context2 activeInteraction];

  if (activeInteraction)
  {
    v19 = objc_alloc_init(_CDAdvisedInteraction);
    context3 = [(_CDPeopleSuggester *)v94 context];
    activeInteraction2 = [context3 activeInteraction];

    recipients = [activeInteraction2 recipients];
    firstObject = [recipients firstObject];
    [(_CDAdvisedInteraction *)v19 setContact:firstObject];

    account = [activeInteraction2 account];
    [(_CDAdvisedInteraction *)v19 setAccount:account];

    bundleId = [activeInteraction2 bundleId];
    [(_CDAdvisedInteraction *)v19 setBundleId:bundleId];

    -[_CDAdvisedInteraction setMechanism:](v19, "setMechanism:", [activeInteraction2 mechanism]);
    [(_CDAdvisedInteraction *)v19 setScore:INFINITY];
    [(_CDAdvisedInteraction *)v19 addReason:9];
    [v15 insertObject:v19 atIndex:0];
    v26 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [_CDPeopleSuggester suggestPeopleWithError:];
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = v15;
  v28 = [obj countByEnumeratingWithState:&v119 objects:v129 count:16];
  if (v28)
  {
    v29 = *v120;
    v30 = 1;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v120 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v119 + 1) + 8 * i);
        contact = [v32 contact];
        v34 = [v99 containsObject:contact];

        if ((v34 & 1) == 0)
        {
          v35 = objc_alloc_init(_CDSuggestedPerson);
          [v32 score];
          [(_CDSuggestedPerson *)v35 setScore:?];
          [(_CDSuggestedPerson *)v35 setRank:v30];
          v128 = v32;
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:1];
          [(_CDSuggestedPerson *)v35 setInteractions:v36];

          contact2 = [v32 contact];
          [(_CDSuggestedPerson *)v35 setContact:contact2];

          bundleId2 = [v32 bundleId];
          [(_CDSuggestedPerson *)v35 setInteractionBundleID:bundleId2];

          [v98 addObject:v35];
          contact3 = [(_CDSuggestedPerson *)v35 contact];
          [v99 addObject:contact3];

          v40 = [v98 count];
          LOBYTE(v40) = v40 == [settings maxNumberOfPeopleSuggested];

          if (v40)
          {
            goto LABEL_33;
          }

          ++v30;
        }
      }

      v28 = [obj countByEnumeratingWithState:&v119 objects:v129 count:16];
    }

    while (v28);
  }

LABEL_33:

  v102 = objc_opt_new();
  context4 = [(_CDPeopleSuggester *)v94 context];
  nearbyPeople = [context4 nearbyPeople];
  v43 = [nearbyPeople count];

  if (v43)
  {
    context5 = [(_CDPeopleSuggester *)v94 context];
    nearbyPeople2 = [context5 nearbyPeople];
    v100 = [nearbyPeople2 mutableCopy];

    v95 = [v100 mutableCopy];
    v46 = v98;
    [v95 intersectSet:v99];
    if ([v95 count])
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v47 = v98;
      v48 = [v47 countByEnumeratingWithState:&v115 objects:v127 count:16];
      if (v48)
      {
        v92 = 0;
        v49 = *v116;
        while (2)
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v116 != v49)
            {
              objc_enumerationMutation(v47);
            }

            v51 = *(*(&v115 + 1) + 8 * j);
            contact4 = [v51 contact];
            v53 = [v95 containsObject:contact4];

            if (!v53)
            {
              goto LABEL_50;
            }

            contact5 = [v51 contact];
            [v95 removeObject:contact5];

            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            interactions = [v51 interactions];
            v56 = [interactions countByEnumeratingWithState:&v111 objects:v126 count:16];
            if (v56)
            {
              v57 = *v112;
              do
              {
                for (k = 0; k != v56; ++k)
                {
                  if (*v112 != v57)
                  {
                    objc_enumerationMutation(interactions);
                  }

                  [*(*(&v111 + 1) + 8 * k) addReason:10];
                }

                v56 = [interactions countByEnumeratingWithState:&v111 objects:v126 count:16];
              }

              while (v56);
            }

            [v51 rank];
            if (v59 > v27)
            {
              [v102 insertObject:v51 atIndex:v27++];
              v92 = 1;
            }

            else
            {
LABEL_50:
              [v102 addObject:v51];
            }

            if (![v95 count])
            {
              v60 = [v47 indexOfObject:v51];
              v61 = [v47 subarrayWithRange:{v60 + 1, objc_msgSend(v47, "count") - (v60 + 1)}];
              [v102 addObjectsFromArray:v61];

              goto LABEL_58;
            }
          }

          v48 = [v47 countByEnumeratingWithState:&v115 objects:v127 count:16];
          if (v48)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v92 = 0;
      }

LABEL_58:

      v46 = v98;
    }

    else
    {
      v92 = 0;
    }

    [v100 minusSet:v99];
    if ([v100 count])
    {
      if ((v92 & 1) == 0)
      {
        v62 = v46;

        v102 = v62;
      }

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v101 = v100;
      v63 = [v101 countByEnumeratingWithState:&v107 objects:v125 count:16];
      if (v63)
      {
        v64 = *v108;
        do
        {
          for (m = 0; m != v63; ++m)
          {
            if (*v108 != v64)
            {
              objc_enumerationMutation(v101);
            }

            v66 = *(*(&v107 + 1) + 8 * m);
            v67 = objc_alloc_init(_CDSuggestedPerson);
            [(_CDSuggestedPerson *)v67 setContact:v66];
            [(_CDSuggestedPerson *)v67 setInteractionBundleID:0];
            v68 = objc_alloc_init(_CDAdvisedInteraction);
            [(_CDAdvisedInteraction *)v68 setContact:v66];
            interactionBundleID = [(_CDSuggestedPerson *)v67 interactionBundleID];
            [(_CDAdvisedInteraction *)v68 setBundleId:interactionBundleID];

            [(_CDSuggestedPerson *)v67 score];
            [(_CDAdvisedInteraction *)v68 setScore:?];
            [(_CDAdvisedInteraction *)v68 addReason:10];
            v124 = v68;
            v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
            [(_CDSuggestedPerson *)v67 setInteractions:v70];

            [v102 insertObject:v67 atIndex:v27];
            ++v27;
          }

          v63 = [v101 countByEnumeratingWithState:&v107 objects:v125 count:16];
        }

        while (v63);
      }

      goto LABEL_71;
    }

    if (v92)
    {
LABEL_71:
      v71 = [v102 count];
      maxNumberOfPeopleSuggested = [settings maxNumberOfPeopleSuggested];
      if (v71 >= maxNumberOfPeopleSuggested)
      {
        v73 = maxNumberOfPeopleSuggested;
      }

      else
      {
        v73 = v71;
      }

      v74 = [v102 subarrayWithRange:{0, v73}];
      v75 = [v74 mutableCopy];

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v76 = v75;
      v77 = [v76 countByEnumeratingWithState:&v103 objects:v123 count:16];
      if (v77)
      {
        v78 = *v104;
        v79 = 1;
        do
        {
          for (n = 0; n != v77; ++n)
          {
            if (*v104 != v78)
            {
              objc_enumerationMutation(v76);
            }

            [*(*(&v103 + 1) + 8 * n) setRank:v79++];
          }

          v77 = [v76 countByEnumeratingWithState:&v103 objects:v123 count:16];
        }

        while (v77);
      }

      v81 = v76;

      goto LABEL_83;
    }
  }

  v81 = v98;
LABEL_83:
  suggestions = [v81 copy];

  if (v94->_enableCaching)
  {
    v82 = objc_alloc_init(_CDCachedPeopleSuggestion);
    v83 = v94->_cache;
    v94->_cache = v82;

    date = [MEMORY[0x1E695DF00] date];
    [(_CDCachedPeopleSuggestion *)v94->_cache setDate:date];

    v85 = [context copy];
    [(_CDCachedPeopleSuggestion *)v94->_cache setContext:v85];

    v86 = [settings copy];
    [(_CDCachedPeopleSuggestion *)v94->_cache setSettings:v86];

    [(_CDCachedPeopleSuggestion *)v94->_cache setSuggestions:suggestions];
  }

  v87 = +[_CDLogging interactionSignpost];
  if (os_signpost_enabled(v87))
  {
    v88 = [suggestions count];
    LODWORD(state.opaque[0]) = 134349056;
    *(state.opaque + 4) = v88;
    _os_signpost_emit_with_name_impl(&dword_191750000, v87, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SuggestPeople", "SuggestionsCount=%{signpost.telemetry:number1,public}lu", &state, 0xCu);
  }

LABEL_88:
  objc_sync_exit(v94);

  v89 = *MEMORY[0x1E69E9840];

  return suggestions;
}

+ (id)restrictedPrefixForPrefix:(id)prefix
{
  prefixCopy = prefix;
  v4 = [prefixCopy substringToIndex:{objc_msgSend(prefixCopy, "length") != 0}];

  return v4;
}

+ (id)createAdvisorSettingsFromContext:(id)context settings:(id)settings
{
  contextCopy = context;
  settingsCopy = settings;
  v8 = +[_CDInteractionAdvisorSettings interactionAdvisorSettingsDefault];
  date = [contextCopy date];
  [v8 setInteractionDate:date];

  title = [contextCopy title];
  [v8 setInteractionTitle:title];

  seedContactIdentifiers = [contextCopy seedContactIdentifiers];
  [v8 setSeedIdentifiers:seedContactIdentifiers];

  locationUUID = [contextCopy locationUUID];
  [v8 setInteractionLocationUUID:locationUUID];

  contactPrefix = [contextCopy contactPrefix];
  v14 = [self restrictedPrefixForPrefix:contactPrefix];
  [v8 setContactPrefix:v14];

  constrainMechanisms = [settingsCopy constrainMechanisms];
  [v8 setConstrainMechanisms:constrainMechanisms];

  constrainAccounts = [settingsCopy constrainAccounts];
  [v8 setConstrainAccounts:constrainAccounts];

  constrainBundleIds = [settingsCopy constrainBundleIds];
  [v8 setConstrainBundleIds:constrainBundleIds];

  constrainDomainIdentifiers = [settingsCopy constrainDomainIdentifiers];
  [v8 setConstrainDomainIdentifiers:constrainDomainIdentifiers];

  [v8 setResultLimit:{objc_msgSend(settingsCopy, "maxNumberOfPeopleSuggested")}];
  constrainIdentifiers = [settingsCopy constrainIdentifiers];
  [v8 setConstrainIdentifiers:constrainIdentifiers];

  constrainPersonIds = [settingsCopy constrainPersonIds];
  [v8 setConstrainPersonIds:constrainPersonIds];

  constrainPersonIdType = [settingsCopy constrainPersonIdType];
  [v8 setConstrainPersonIdType:constrainPersonIdType];

  ignoreContactIdentifiers = [settingsCopy ignoreContactIdentifiers];
  [v8 setIgnoreContactIdentifiers:ignoreContactIdentifiers];

  [v8 setUseFuture:{objc_msgSend(settingsCopy, "useFuture")}];
  [v8 setAggregateByIdentifier:{objc_msgSend(settingsCopy, "aggregateByIdentifier")}];
  [v8 setRequireOutgoingInteraction:{objc_msgSend(settingsCopy, "requireOutgoingInteraction")}];
  [v8 setConstrainMaxRecipientCount:{objc_msgSend(settingsCopy, "constrainMaxRecipientCount")}];
  consumerIdentifier = [contextCopy consumerIdentifier];
  [v8 setConsumerIdentifier:consumerIdentifier];

  LODWORD(consumerIdentifier) = [settingsCopy useTitleToContrainKeywords];
  if (consumerIdentifier)
  {
    title2 = [contextCopy title];

    if (title2)
    {
      title3 = [contextCopy title];
      v26 = [_CDStringTokenizer extractNormalizedKeywords:title3];
      [v8 setConstrainKeywords:v26];
    }
  }

  return v8;
}

- (void)suggestPeopleWithError:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 context];
  v5 = [a1 settings];
  v7 = 138412546;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "_CDPeopleSuggester:suggestPeopleWithError. context: %@, settings: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end