@interface _CDSpotlightItemRecorder
+ (_CDSpotlightItemRecorder)spotlightItemRecorderWithInteractionRecorder:(id)recorder;
+ (_CDSpotlightItemRecorder)spotlightItemRecorderWithInteractionRecorder:(id)recorder knowledgeStore:(id)store;
+ (id)spotlightItemRecorder;
- (_CDSpotlightItemRecorder)initWithInteractionRecorder:(id)recorder;
- (_CDSpotlightItemRecorder)initWithInteractionRecorder:(id)recorder knowledgeStore:(id)store;
- (_CDSpotlightItemRecorder)initWithInteractionRecorder:(id)recorder knowledgeStore:(id)store rateLimitEnforcer:(id)enforcer deletionManagerOverride:(id)override;
- (id)getUserNameOfDonator;
- (void)_addOrUpdateCoreDuetInteractions:(void *)interactions bundleID:;
- (void)_cacheUserActivity:(uint64_t)activity;
- (void)_deleteUserActivitiesWithPersistentIdentifiers:(void *)identifiers bundleID:;
- (void)_enqueueOperation:(uint64_t)operation;
- (void)addInteractions:(id)interactions bundleID:(id)d protectionClass:(id)class withCompletion:(id)completion;
- (void)addOrUpdateSearchableItems:(id)items bundleID:(id)d withCompletion:(id)completion;
- (void)addUserAction:(id)action withItem:(id)item withCompletion:(id)completion;
- (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class withCompletion:(id)completion;
- (void)deleteAllItemsWithBundleID:(int)d isCSSIDeletion:(void *)deletion completion:;
- (void)deleteAllSearchableItemsWithBundleID:(id)d withCompletion:(id)completion;
- (void)deleteAllUserActivities:(id)activities;
- (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class withCompletion:(id)completion;
- (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class withCompletion:(id)completion;
- (void)deleteKnowledgeEventsMatchingPredicate:(void *)predicate withCompletion:;
- (void)deleteSearchableItemsSinceDate:(id)date bundleID:(id)d withCompletion:(id)completion;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers bundleID:(id)d withCompletion:(id)completion;
- (void)deleteSearchableItemsWithIdentifiers:(id)identifiers bundleID:(id)d withCompletion:(id)completion;
- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d;
- (void)donateRelevantShortcuts:(id)shortcuts bundleID:(id)d;
- (void)getUidOfDonator;
- (void)registerSpotlightRecorderWithServiceName:(id)name;
- (void)runOperation:(uint64_t)operation;
- (void)saveRateLimitedEvents:(int)events donatorUid:(void *)uid responseQueue:(void *)queue withCompletion:;
- (void)startIntentDeletionForContactDeletions;
- (void)submitOperation:(void *)operation;
@end

@implementation _CDSpotlightItemRecorder

- (void)getUidOfDonator
{
  if (!self)
  {
    return 0;
  }

  SpotlightReceiverConnectionUIDKey = getSpotlightReceiverConnectionUIDKey();
  if (!SpotlightReceiverConnectionUIDKey)
  {
    v6 = getuid();
    if (v6)
    {
      return v6;
    }

LABEL_11:
    v8 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v20[0] = 0;
      _os_log_debug_impl(&dword_191750000, v8, OS_LOG_TYPE_DEBUG, "Using process UID. Dispatch queue UID key or value was not found.", v20, 2u);
    }

    return geteuid();
  }

  v3 = SpotlightReceiverConnectionUIDKey;
  v4 = +[_CDLogging spotlightReceiverChannel];
  if (OUTLINED_FUNCTION_80(v4))
  {
    v20[16] = 0;
    OUTLINED_FUNCTION_22_6();
    _os_log_debug_impl(v10, v11, v12, v13, v14, 2u);
  }

  specific = dispatch_get_specific(v3);
  v6 = getuid();
  if (v6)
  {
    return v6;
  }

  if (!specific)
  {
    goto LABEL_11;
  }

  v7 = +[_CDLogging spotlightReceiverChannel];
  if (OUTLINED_FUNCTION_80(v7))
  {
    v20[8] = 0;
    OUTLINED_FUNCTION_22_6();
    _os_log_debug_impl(v15, v16, v17, v18, v19, 2u);
  }

  return specific;
}

- (id)getUserNameOfDonator
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    getUidOfDonator = [(_CDSpotlightItemRecorder *)self getUidOfDonator];
    v3 = +[_CDLogging spotlightReceiverChannel];
    if (OUTLINED_FUNCTION_80(v3))
    {
      *v21 = 67109120;
      *&v21[4] = getUidOfDonator;
      OUTLINED_FUNCTION_22_6();
      _os_log_debug_impl(v10, v11, v12, v13, v14, 8u);
    }

    v4 = getpwuid(getUidOfDonator);
    if (v4 && (v5 = v4, v4->pw_name))
    {
      v6 = +[_CDLogging spotlightReceiverChannel];
      if (OUTLINED_FUNCTION_80(v6))
      {
        pw_name = v5->pw_name;
        *v21 = 136315138;
        *&v21[4] = pw_name;
        OUTLINED_FUNCTION_22_6();
        _os_log_debug_impl(v16, v17, v18, v19, v20, 0xCu);
      }

      self = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5->pw_name];
    }

    else
    {
      v7 = +[_CDLogging spotlightReceiverChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_191750000, v7, OS_LOG_TYPE_ERROR, "Error converting Spotlight Receiver donator UID to OS user name. Cannot extract OS user name of interaction.", v21, 2u);
      }

      self = NSUserName();
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return self;
}

+ (id)spotlightItemRecorder
{
  v3 = +[_CDInteractionRecorder interactionRecorder];
  v4 = [self spotlightItemRecorderWithInteractionRecorder:v3];

  return v4;
}

+ (_CDSpotlightItemRecorder)spotlightItemRecorderWithInteractionRecorder:(id)recorder
{
  recorderCopy = recorder;
  v4 = [[_CDSpotlightItemRecorder alloc] initWithInteractionRecorder:recorderCopy];

  return v4;
}

+ (_CDSpotlightItemRecorder)spotlightItemRecorderWithInteractionRecorder:(id)recorder knowledgeStore:(id)store
{
  storeCopy = store;
  recorderCopy = recorder;
  v7 = [[_CDSpotlightItemRecorder alloc] initWithInteractionRecorder:recorderCopy knowledgeStore:storeCopy];

  return v7;
}

- (_CDSpotlightItemRecorder)initWithInteractionRecorder:(id)recorder
{
  recorderCopy = recorder;
  v5 = +[_DKKnowledgeStore knowledgeStore];
  v6 = [(_CDSpotlightItemRecorder *)self initWithInteractionRecorder:recorderCopy knowledgeStore:v5];

  return v6;
}

- (_CDSpotlightItemRecorder)initWithInteractionRecorder:(id)recorder knowledgeStore:(id)store
{
  storeCopy = store;
  recorderCopy = recorder;
  v8 = +[_DKRateLimitPolicyEnforcer rateLimitPolicyEnforcer];
  v9 = [(_CDSpotlightItemRecorder *)self initWithInteractionRecorder:recorderCopy knowledgeStore:storeCopy rateLimitEnforcer:v8];

  return v9;
}

- (_CDSpotlightItemRecorder)initWithInteractionRecorder:(id)recorder knowledgeStore:(id)store rateLimitEnforcer:(id)enforcer deletionManagerOverride:(id)override
{
  recorderCopy = recorder;
  storeCopy = store;
  enforcerCopy = enforcer;
  overrideCopy = override;
  v76.receiver = self;
  v76.super_class = _CDSpotlightItemRecorder;
  v13 = [(_CDSpotlightItemRecorder *)&v76 init];
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E69C5D60]);
    v15 = objc_opt_new();
    v16 = [v14 initWithGuardedData:{v15, enforcerCopy, storeCopy}];
    v17 = *(v13 + 17);
    *(v13 + 17) = v16;

    objc_initWeak(&location, v13);
    objc_storeStrong(v13 + 9, store);
    objc_storeStrong(v13 + 10, enforcer);
    v18 = +[_DKPrivacyPolicyEnforcer privacyPolicyEnforcer];
    v19 = *(v13 + 11);
    *(v13 + 11) = v18;

    v20 = [_DKContactsPrivacyMaintainer alloc];
    v21 = *(v13 + 9);
    v22 = objc_loadWeakRetained(&location);
    v23 = [(_DKContactsPrivacyMaintainer *)v20 initWithKnowledgeStore:v21 spotlightRecorder:v22];
    v24 = *(v13 + 12);
    *(v13 + 12) = v23;

    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create("rateLimiterQueue", v25);
    v27 = *(v13 + 7);
    *(v13 + 7) = v26;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v29 = *(v13 + 8);
    *(v13 + 8) = dictionary;

    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v31 = dispatch_queue_attr_make_with_qos_class(v30, 5u, 0);

    v32 = dispatch_queue_create("batchExecutionSourceQueue", v31);
    v33 = *(v13 + 2);
    *(v13 + 2) = v32;

    v34 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_191750000, v34, OS_LOG_TYPE_DEFAULT, "SpotlightRecorder init biome BMLibrary.App.Intent stream", buf, 2u);
    }

    v35 = BiomeLibrary();
    v36 = [v35 App];
    intent = [v36 Intent];
    source = [intent source];
    v39 = *(v13 + 19);
    *(v13 + 19) = source;

    v40 = BiomeLibrary();
    v41 = [v40 App];
    relevantShortcuts = [v41 RelevantShortcuts];
    v43 = *(v13 + 22);
    *(v13 + 22) = relevantShortcuts;

    v44 = BiomeLibrary();
    v45 = [v44 App];
    locationActivity = [v45 LocationActivity];
    source2 = [locationActivity source];
    v48 = *(v13 + 21);
    *(v13 + 21) = source2;

    v49 = BiomeLibrary();
    v50 = [v49 App];
    activity = [v50 Activity];
    source3 = [activity source];
    v53 = *(v13 + 20);
    *(v13 + 20) = source3;

    if (overrideCopy)
    {
      objc_storeStrong(v13 + 16, override);
    }

    if (recorderCopy)
    {
      objc_storeStrong(v13 + 18, recorder);
      array = [MEMORY[0x1E695DF70] array];
      v55 = *(v13 + 4);
      *(v13 + 4) = array;

      *(v13 + 5) = 0;
      v56 = dispatch_queue_create("batchArrayQueue", v31);
      v57 = *(v13 + 3);
      *(v13 + 3) = v56;

      v58 = *(v13 + 6);
      *(v13 + 6) = 0;

      v59 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, *(v13 + 2));
      v60 = *(v13 + 1);
      *(v13 + 1) = v59;

      v61 = *(v13 + 1);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __113___CDSpotlightItemRecorder_initWithInteractionRecorder_knowledgeStore_rateLimitEnforcer_deletionManagerOverride___block_invoke;
      handler[3] = &unk_1E736AA30;
      v62 = v13;
      v73 = v62;
      objc_copyWeak(&v74, &location);
      dispatch_source_set_event_handler(v61, handler);
      dispatch_resume(*(v13 + 1));
      v63 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v13 + 7));
      dispatch_source_set_timer(v63, 0, 0x1176592E000uLL, 0x37E11D6000uLL);
      objc_initWeak(buf, *(v13 + 8));
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __113___CDSpotlightItemRecorder_initWithInteractionRecorder_knowledgeStore_rateLimitEnforcer_deletionManagerOverride___block_invoke_568;
      v68[3] = &unk_1E73675D0;
      objc_copyWeak(&v70, buf);
      v69 = v62;
      dispatch_source_set_event_handler(v63, v68);
      dispatch_resume(v63);

      objc_destroyWeak(&v70);
      objc_destroyWeak(buf);

      objc_destroyWeak(&v74);
    }

    v64 = v13;

    objc_destroyWeak(&location);
  }

  return v13;
}

- (void)registerSpotlightRecorderWithServiceName:(id)name
{
  nameCopy = name;
  if (SpotlightReceiverLibraryCore())
  {
    if (!self->_coalescedDeletionManager)
    {
      v5 = [[_CDSpotlightCoalescedDeletionManager alloc] initWithKnowledgeStore:self->_knowledgeStore];
      coalescedDeletionManager = self->_coalescedDeletionManager;
      self->_coalescedDeletionManager = v5;
    }

    cd_SpotlightReceiverRegister(nameCopy, self);
    self->_registeredSpotlightReceiver = 1;
    v7 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v8 = "SpotlightReceiver is available, registering receiver";
      v9 = &v11;
LABEL_8:
      _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else
  {
    v7 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = "SpotlightReceiver is NOT available";
      v9 = &v10;
      goto LABEL_8;
    }
  }
}

- (void)_addOrUpdateCoreDuetInteractions:(void *)interactions bundleID:
{
  v78 = *MEMORY[0x1E69E9840];
  v41 = a2;
  interactionsCopy = interactions;
  if (!self || !*(self + 144))
  {
    goto LABEL_60;
  }

  selfCopy = self;
  if ([v41 count])
  {
    if (*(self + 104) && [interactionsCopy isEqualToString:@"com.apple.mobilecal"])
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      obj = v41;
      v44 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
      if (v44)
      {
        v5 = 0;
        v43 = *v68;
        while (1)
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v68 != v43)
            {
              objc_enumerationMutation(obj);
            }

            domainIdentifier = [*(*(&v67 + 1) + 8 * i) domainIdentifier];
            v6 = domainIdentifier;
            if (domainIdentifier)
            {
              v7 = [*(selfCopy + 104) computeHashesForString:domainIdentifier reuse:v5];

              [*(selfCopy + 104) setWithHashes:v7];
              v8 = domainIdentifier;
              v9 = objc_opt_self();

              if (v9)
              {
                v66 = 0;
                v64 = 0u;
                v65 = 0u;
                v62 = 0u;
                theString = 0u;
                v60 = 0u;
                v61 = 0u;
                v58 = 0u;
                v59 = 0u;
                v57 = 0u;
                *buffer = 0u;
                v56 = 0u;
                Length = CFStringGetLength(v8);
                *&theString = v8;
                *(&v64 + 1) = 0;
                *&v65 = Length;
                *(&theString + 1) = CFStringGetCharactersPtr(v8);
                v11 = *(&theString + 1) ? 0 : CFStringGetCStringPtr(v8, 0x600u);
                *&v64 = v11;
                *(&v65 + 1) = 0;
                v66 = 0;
                if (Length >= 1)
                {
                  v12 = 0;
                  v13 = 0;
                  v14 = 64;
                  while (1)
                  {
                    if (v13 >= 4)
                    {
                      v15 = 4;
                    }

                    else
                    {
                      v15 = v13;
                    }

                    v16 = v65;
                    if (v65 <= v13)
                    {
LABEL_29:
                      v5 = v7;
                      goto LABEL_30;
                    }

                    if (*(&theString + 1))
                    {
                      break;
                    }

                    if (!v64)
                    {
                      v22 = *(&v65 + 1);
                      if (v66 <= v13 || *(&v65 + 1) > v13)
                      {
                        v24 = v13 - v15;
                        v25 = v15 + v12;
                        v26 = v14 - v15;
                        v27 = v24 + 64;
                        if (v24 + 64 >= v65)
                        {
                          v27 = v65;
                        }

                        *(&v65 + 1) = v24;
                        v66 = v27;
                        if (v65 >= v26)
                        {
                          v16 = v26;
                        }

                        v79.location = *(&v64 + 1) + v24;
                        v79.length = v16 + v25;
                        CFStringGetCharacters(theString, v79, buffer);
                        v22 = *(&v65 + 1);
                      }

                      v17 = &buffer[-v22];
                      goto LABEL_24;
                    }

                    v18 = *(v64 + *(&v64 + 1) + v13);
LABEL_27:
                    if (v18 != 46)
                    {
                      goto LABEL_29;
                    }

                    v19 = objc_autoreleasePoolPush();
                    v20 = *(selfCopy + 104);
                    v21 = [(__CFString *)v8 substringToIndex:v13];
                    v5 = [v20 computeHashesForString:v21 reuse:v7];

                    [*(selfCopy + 104) setWithHashes:v5];
                    objc_autoreleasePoolPop(v19);
LABEL_30:
                    ++v13;
                    --v12;
                    ++v14;
                    v7 = v5;
                    if (Length == v13)
                    {
                      goto LABEL_43;
                    }
                  }

                  v17 = (*(&theString + 1) + 2 * *(&v64 + 1));
LABEL_24:
                  v18 = v17[v13];
                  goto LABEL_27;
                }
              }

              v5 = v7;
LABEL_43:

              v6 = domainIdentifier;
            }
          }

          v44 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
          if (!v44)
          {
            goto LABEL_48;
          }
        }
      }

      v5 = 0;
LABEL_48:
    }

    v28 = +[_CDConstants mobileMessagesBundleId];
    if ([v28 isEqual:interactionsCopy])
    {

LABEL_52:
      v31 = objc_autoreleasePoolPush();
      *buffer = 0;
      *&buffer[4] = buffer;
      *&v56 = 0x2020000000;
      BYTE8(v56) = 0;
      v32 = [MEMORY[0x1E695DF00] now];
      v33 = *(selfCopy + 136);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __70___CDSpotlightItemRecorder__addOrUpdateCoreDuetInteractions_bundleID___block_invoke;
      v50[3] = &unk_1E736AA80;
      v34 = interactionsCopy;
      v51 = v34;
      v35 = v41;
      v52 = v35;
      v36 = v32;
      v53 = v36;
      v54 = buffer;
      [v33 runWithLockAcquired:v50];
      if (*(*&buffer[4] + 24) == 1)
      {
        v37 = [v35 count];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __70___CDSpotlightItemRecorder__addOrUpdateCoreDuetInteractions_bundleID___block_invoke_2;
        v48[3] = &unk_1E736AAA8;
        v49 = v36;
        v41 = [v35 _pas_filteredArrayWithTest:v48];

        v38 = [v41 count];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v72 = v37;
          v73 = 2114;
          v74 = v34;
          v75 = 2048;
          v76 = v37 - v38;
          _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_addOrUpdateCoreDuetInteractions:(count %tu) bundleID:%{public}@ dropping %tu items due to throttling!", buf, 0x20u);
        }
      }

      else
      {
        v41 = v35;
      }

      _Block_object_dispose(buffer, 8);
      objc_autoreleasePoolPop(v31);
      goto LABEL_58;
    }

    v29 = +[_CDConstants contactsAutocompleteBundleId];
    v30 = [v29 isEqual:interactionsCopy];

    if (v30)
    {
      goto LABEL_52;
    }
  }

LABEL_58:
  if ([v41 count])
  {
    [(_CDSpotlightItemRecorder *)v41 _addOrUpdateCoreDuetInteractions:interactionsCopy bundleID:selfCopy];
  }

LABEL_60:

  v39 = *MEMORY[0x1E69E9840];
}

- (void)donateRelevantShortcuts:(id)shortcuts bundleID:(id)d
{
  v45 = *MEMORY[0x1E69E9840];
  shortcutsCopy = shortcuts;
  dCopy = d;
  v8 = _os_activity_create(&dword_191750000, "CoreDuet: donateRelevantShortcuts:bundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v8, state);
  os_activity_scope_leave(state);

  v9 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(shortcutsCopy, "count")}];
    *state = 138412546;
    *&state[4] = v10;
    *&state[12] = 2112;
    *&state[14] = dCopy;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "Donate %@ relevant shortcuts for bundleID: %@", state, 0x16u);
  }

  if (dCopy)
  {
    v11 = +[_DKSystemEventStreams appRelevantShortcutsStream];
    name = [v11 name];
    v13 = [_DKQuery predicateForEventsWithStreamName:name];

    v14 = [_DKQuery predicateForEventsWithStringValue:dCopy];
    v15 = MEMORY[0x1E696AB28];
    v36 = v14;
    v37 = v13;
    v43[0] = v13;
    v43[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v17 = [v15 andPredicateWithSubpredicates:v16];

    if (self)
    {
      [(_CDSpotlightItemRecorder *)self deleteKnowledgeEventsMatchingPredicate:v17 withCompletion:0];
    }

    selfCopy = self;
    v35 = v17;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = shortcutsCopy;
    v20 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      do
      {
        v23 = 0;
        do
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v38 + 1) + 8 * v23);
          v25 = objc_autoreleasePoolPush();
          v26 = [_DKEvent eventWithRelevantShortcut:v24 bundleID:dCopy];
          if (v26)
          {
            [v18 addObject:v26];
          }

          objc_autoreleasePoolPop(v25);
          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v21);
    }

    v27 = [v19 count];
    if (v27 > [v18 count])
    {
      v28 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "count") - objc_msgSend(v18, "count")}];
        *state = 138412546;
        *&state[4] = v32;
        *&state[12] = 2112;
        *&state[14] = dCopy;
        _os_log_error_impl(&dword_191750000, v28, OS_LOG_TYPE_ERROR, "Unable to convert %@ relevant shortcuts for bundleID %@ to knowledge events", state, 0x16u);
      }
    }

    if ([v18 count])
    {
      v30 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [(_CDSpotlightItemRecorder *)v18 donateRelevantShortcuts:dCopy bundleID:v30];
      }

      getUidOfDonator = [(_CDSpotlightItemRecorder *)v34 getUidOfDonator];
      [(_CDSpotlightItemRecorder *)v34 saveRateLimitedEvents:v18 donatorUid:getUidOfDonator responseQueue:0 withCompletion:&__block_literal_global_626];
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)addInteractions:(id)interactions bundleID:(id)d protectionClass:(id)class withCompletion:(id)completion
{
  v57 = *MEMORY[0x1E69E9840];
  interactionsCopy = interactions;
  dCopy = d;
  classCopy = class;
  completionCopy = completion;
  v14 = _os_activity_create(&dword_191750000, "CoreDuet: addInteractions:bundleID:protectionClass:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v14, state);
  os_activity_scope_leave(state);

  v15 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(interactionsCopy, "count")}];
    *state = 138412546;
    *&state[4] = v16;
    *&state[12] = 2112;
    *&state[14] = dCopy;
    _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_INFO, "Adding %@ interactions for bundleID: %@", state, 0x16u);
  }

  if (([classCopy isEqualToString:*MEMORY[0x1E696A378]] & 1) == 0 && (objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x1E696A380]) & 1) == 0)
  {
    v18 = interactionsCopy;
    v19 = dCopy;
    v20 = +[_CDConstants mobileMessagesBundleId];
    v21 = [v19 isEqualToString:v20];

    if (v21)
    {
      [_CDSpotlightItemRecorder addInteractions:v53 bundleID:v18 protectionClass:state withCompletion:?];
    }

    context = objc_autoreleasePoolPush();
    if (self)
    {
      if (self->_recorder)
      {
        v22 = +[_CDConstants mobileMessagesBundleId];
        v23 = [v19 isEqualToString:v22];

        if ((v23 & 1) == 0)
        {
          v38 = completionCopy;
          v39 = dCopy;
          v40 = interactionsCopy;
          selfCopy = self;
          getUserNameOfDonator = [(_CDSpotlightItemRecorder *)self getUserNameOfDonator];
          v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"intent.cd_saveToPeopleStore = YES"];
          v37 = v18;
          v27 = [v18 filteredArrayUsingPredicate:v26];

          v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v27, "count")}];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          obj = v27;
          v29 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v50;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v50 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v49 + 1) + 8 * i);
                v34 = [_CDInteraction shareSheetInteractionFromINInteraction:v33 bundleID:v19 nsUserName:getUserNameOfDonator knowledgeStore:selfCopy->_knowledgeStore];
                if (v34)
                {
                  [v28 addObject:v34];
                }

                else
                {
                  v35 = [[_CDInteraction alloc] initWithINInteraction:v33 bundleID:v19 nsUserName:getUserNameOfDonator];
                  if (v35)
                  {
                    [v28 addObject:v35];
                  }
                }
              }

              v30 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
            }

            while (v30);
          }

          [(_CDSpotlightItemRecorder *)selfCopy _addOrUpdateCoreDuetInteractions:v28 bundleID:v19];
          self = selfCopy;
          dCopy = v39;
          interactionsCopy = v40;
          completionCopy = v38;
          v18 = v37;
        }
      }
    }

    *state = 0;
    *&state[8] = state;
    *&state[16] = 0x2020000000;
    getUidOfDonator = [(_CDSpotlightItemRecorder *)self getUidOfDonator];
    batchExecutionSourceQueue = self->_batchExecutionSourceQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84___CDSpotlightItemRecorder_addInteractions_bundleID_protectionClass_withCompletion___block_invoke;
    block[3] = &unk_1E736AB40;
    v44 = v18;
    v45 = v19;
    selfCopy2 = self;
    v48 = state;
    v47 = completionCopy;
    dispatch_sync(batchExecutionSourceQueue, block);

    _Block_object_dispose(state, 8);
    objc_autoreleasePoolPop(context);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)addOrUpdateSearchableItems:(id)items bundleID:(id)d withCompletion:(id)completion
{
  v67[2] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_191750000, "CoreDuet: addOrUpdateSearchableItems:bundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v8, state);
  os_activity_scope_leave(state);

  v9 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemsCopy, "count")}];
    *state = 138412546;
    *&state[4] = v10;
    *&state[12] = 2112;
    *&state[14] = dCopy;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "Adding %@ searchable items for bundleID: %@", state, 0x16u);
  }

  if ([dCopy isEqualToString:@"com.apple.mobilesafari"] && objc_msgSend(itemsCopy, "count") == 1)
  {
    firstObject = [itemsCopy firstObject];
    attributeSet = [firstObject attributeSet];
    contentURL = [attributeSet contentURL];

    if (contentURL)
    {
      keyPathForMostRecentSafariSpotlightDonation = [get_CDContextQueriesClass() keyPathForMostRecentSafariSpotlightDonation];
      mostRecentSafariSearchableItem = [get_CDContextQueriesClass() mostRecentSafariSearchableItem];
      v66[0] = mostRecentSafariSearchableItem;
      v67[0] = firstObject;
      safariURLInMostRecentSearchableItem = [get_CDContextQueriesClass() safariURLInMostRecentSearchableItem];
      v66[1] = safariURLInMostRecentSearchableItem;
      v67[1] = contentURL;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];
      userContext = [get_CDClientContextClass() userContext];
      [userContext setObject:v17 forKeyedSubscript:keyPathForMostRecentSafariSpotlightDonation];
    }
  }

  v19 = [itemsCopy count];
  if ([dCopy isEqualToString:@"com.apple.icloud.drive.fileprovider"])
  {
    v46 = MEMORY[0x1E695E0F0];
LABEL_12:

    goto LABEL_14;
  }

  if ([dCopy isEqualToString:@"com.apple.shortcuts"])
  {
    v20 = objc_alloc(MEMORY[0x1E69C5D18]);
    v65[0] = @"com.apple.duetexpertd.spotlightZKW";
    v65[1] = @"spotlightZKW";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    v22 = [v20 initWithDomainsFromArray:v21];

    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __79___CDSpotlightItemRecorder_addOrUpdateSearchableItems_bundleID_withCompletion___block_invoke;
    v60[3] = &unk_1E736AB68;
    v61 = v22;
    v23 = v22;
    v46 = [itemsCopy _pas_filteredArrayWithTest:v60];

    itemsCopy = v23;
    goto LABEL_12;
  }

  v46 = itemsCopy;
LABEL_14:
  if (v19 != [v46 count])
  {
    v24 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v19 - objc_msgSend(v46, "count")}];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
      *state = 138412802;
      *&state[4] = v25;
      *&state[12] = 2112;
      *&state[14] = v26;
      *&state[22] = 2112;
      v64 = dCopy;
      _os_log_impl(&dword_191750000, v24, OS_LOG_TYPE_INFO, "Ignoring %@ of %@ searchable items added for bundleID: %@", state, 0x20u);
    }
  }

  if ([v46 count])
  {
    selfCopy2 = self;
    if (self && self->_recorder)
    {
      context = objc_autoreleasePoolPush();
      getUserNameOfDonator = [(_CDSpotlightItemRecorder *)self getUserNameOfDonator];
      v49 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v46, "count")}];
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = v46;
      v29 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
      if (!v29)
      {
        goto LABEL_34;
      }

      v30 = *v57;
      while (1)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v57 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v56 + 1) + 8 * i);
          context = [_CDSpotlightItemUtils interactionForSearchableItem:v32 nsUserName:getUserNameOfDonator, context];
          if (context)
          {
            [v49 addObject:context];
            v34 = +[_CDConstants mobileMessagesBundleId];
            if ([dCopy isEqualToString:v34])
            {
              isGroupChat = [context isGroupChat];

              if (!isGroupChat)
              {
                goto LABEL_32;
              }

              v34 = [_CDSpotlightItemUtils interactionForSearchableItem:v32 nsUserName:getUserNameOfDonator];
              uniqueIdentifier = [v32 uniqueIdentifier];
              v37 = +[_CDConstants contactsAutocompleteBundleId];
              v38 = [_CDSpotlightItemUtils interactionUUIDForSearchableItemWithUID:uniqueIdentifier bundleID:v37];
              [v34 setUuid:v38];

              v39 = +[_CDConstants contactsAutocompleteBundleId];
              [v34 setBundleId:v39];

              if (v34)
              {
                [v49 addObject:v34];
              }
            }
          }

LABEL_32:
        }

        v29 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
        if (!v29)
        {
LABEL_34:

          [(_CDSpotlightItemRecorder *)self _addOrUpdateCoreDuetInteractions:v49 bundleID:dCopy];
          objc_autoreleasePoolPop(context);
          selfCopy2 = self;
          break;
        }
      }
    }

    *state = 0;
    *&state[8] = state;
    *&state[16] = 0x2020000000;
    LODWORD(v64) = [(_CDSpotlightItemRecorder *)selfCopy2 getUidOfDonator];
    v40 = objc_autoreleasePoolPush();
    batchExecutionSourceQueue = self->_batchExecutionSourceQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79___CDSpotlightItemRecorder_addOrUpdateSearchableItems_bundleID_withCompletion___block_invoke_645;
    block[3] = &unk_1E736AB40;
    v51 = v46;
    v52 = dCopy;
    selfCopy3 = self;
    v55 = state;
    v54 = completionCopy;
    dispatch_sync(batchExecutionSourceQueue, block);

    objc_autoreleasePoolPop(v40);
    _Block_object_dispose(state, 8);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllUserActivities:(id)activities
{
  v9 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  v5 = _os_activity_create(&dword_191750000, "CoreDuet: deleteAllUserActivities:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v5, &v8);
  os_activity_scope_leave(&v8);

  v6 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v8.opaque[0]) = 138412290;
    *(v8.opaque + 4) = activitiesCopy;
    _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_DEFAULT, "Deleting user activies with bundleID: %@", &v8, 0xCu);
  }

  [(_CDSpotlightItemRecorder *)self _deleteUserActivitiesWithPersistentIdentifiers:activitiesCopy bundleID:?];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  v8 = _os_activity_create(&dword_191750000, "CoreDuet: deleteUserActivitiesWithPersistentIdentifiers:bundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *v12 = 0;
  *&v12[8] = 0;
  os_activity_scope_enter(v8, v12);
  os_activity_scope_leave(v12);

  v9 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [identifiersCopy count];
    *v12 = 138412802;
    *&v12[4] = identifiersCopy;
    *&v12[12] = 1024;
    *&v12[14] = v10;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_DEFAULT, "Deleting user activies with persistent identifiers: %@, count: %u, bundleID: %@", v12, 0x1Cu);
  }

  if (identifiersCopy && [identifiersCopy count])
  {
    [(_CDSpotlightItemRecorder *)self _deleteUserActivitiesWithPersistentIdentifiers:identifiersCopy bundleID:dCopy];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers bundleID:(id)d withCompletion:(id)completion
{
  v49[2] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  completionCopy = completion;
  v11 = [identifiersCopy count];
  if ([dCopy isEqualToString:@"com.apple.icloud.drive.fileprovider"])
  {

    identifiersCopy = MEMORY[0x1E695E0F0];
  }

  else if ([dCopy isEqualToString:@"com.apple.shortcuts"])
  {
    v12 = objc_alloc(MEMORY[0x1E69C5D18]);
    v49[0] = @"com.apple.duetexpertd.spotlightZKW";
    v49[1] = @"spotlightZKW";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v14 = [v12 initWithDomainsFromArray:v13];

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __95___CDSpotlightItemRecorder_deleteSearchableItemsWithDomainIdentifiers_bundleID_withCompletion___block_invoke;
    v43[3] = &unk_1E7368CD0;
    v44 = v14;
    v15 = v14;
    v16 = [identifiersCopy _pas_filteredArrayWithTest:v43];

    identifiersCopy = v16;
  }

  else if ([dCopy isEqualToString:@"com.apple.mobilecal"] && self->_calendarAddedItemsFilter)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v46 = __Block_byref_object_copy__27;
    v47 = __Block_byref_object_dispose__27;
    v48 = 0;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __95___CDSpotlightItemRecorder_deleteSearchableItemsWithDomainIdentifiers_bundleID_withCompletion___block_invoke_2;
    v42[3] = &unk_1E736ABE0;
    v42[4] = self;
    v42[5] = buf;
    v17 = [identifiersCopy _pas_filteredArrayWithTest:v42];

    _Block_object_dispose(buf, 8);
    identifiersCopy = v17;
  }

  if (v11 != [identifiersCopy count])
  {
    v18 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v11 - objc_msgSend(identifiersCopy, "count")}];
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      *buf = 138412802;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      *&buf[22] = 2112;
      v46 = dCopy;
      _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring %@ of %@ domain identifiers in call to delete searchable items for bundle %@", buf, 0x20u);
    }
  }

  if ([identifiersCopy count])
  {
    v21 = _os_activity_create(&dword_191750000, "CoreDuet: deleteSearchableItemsWithDomainIdentifiers:bundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *buf = 0;
    *&buf[8] = 0;
    os_activity_scope_enter(v21, buf);
    os_activity_scope_leave(buf);

    v22 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [identifiersCopy count];
      *buf = 134218498;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = dCopy;
      *&buf[22] = 2112;
      v46 = identifiersCopy;
      _os_log_impl(&dword_191750000, v22, OS_LOG_TYPE_DEFAULT, "Deleting %lu searchable items for bundleID: %@ with domain identifiers: %@", buf, 0x20u);
    }

    if (self && self->_recorder)
    {
      v24 = +[_CDInteractionPolicies disallowedCSSIBundleIds];
      v25 = [v24 containsObject:dCopy];

      if (v25)
      {
        v26 = +[_CDLogging spotlightReceiverChannel];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = dCopy;
          _os_log_impl(&dword_191750000, v26, OS_LOG_TYPE_DEFAULT, "Interaction store ignoring call to delete domain identifiers for %{public}@ (disallowed bundle ID)", buf, 0xCu);
        }
      }

      else
      {
        objc_initWeak(buf, self);
        batchExecutionSourceQueue = self->_batchExecutionSourceQueue;
        v35 = MEMORY[0x1E69E9820];
        v36 = 3221225472;
        v37 = __95___CDSpotlightItemRecorder_deleteSearchableItemsWithDomainIdentifiers_bundleID_withCompletion___block_invoke_659;
        v38 = &unk_1E736AC08;
        objc_copyWeak(&v41, buf);
        v39 = dCopy;
        v40 = identifiersCopy;
        dispatch_sync(batchExecutionSourceQueue, &v35);

        objc_destroyWeak(&v41);
        objc_destroyWeak(buf);
      }
    }

    v28 = [&unk_1F05EF6E0 containsObject:{dCopy, v35, v36, v37, v38}];
    v29 = +[_CDLogging spotlightReceiverChannel];
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
    if (v28)
    {
      if (v30)
      {
        *buf = 138412290;
        *&buf[4] = dCopy;
        _os_log_impl(&dword_191750000, v29, OS_LOG_TYPE_INFO, "Deleting searchable items for bundleId: %@ using coalesced deletion path", buf, 0xCu);
      }

      coalescedDeletionManager = self->_coalescedDeletionManager;
      v32 = [_CDSpotlightDeletionOperation deletionForEventsWithDomainIdentifiers:identifiersCopy bundleId:dCopy completion:completionCopy];
      [(_CDSpotlightCoalescedDeletionManager *)coalescedDeletionManager processDeletionForOperation:v32];
    }

    else
    {
      if (v30)
      {
        *buf = 138412290;
        *&buf[4] = dCopy;
        _os_log_impl(&dword_191750000, v29, OS_LOG_TYPE_INFO, "Deleting searchable items for bundleId: %@ using direct deletion path", buf, 0xCu);
      }

      v33 = [_DKQuery predicateForSpotlightEventsWithDomainIdentifiers:identifiersCopy bundleID:dCopy];
      [(_CDSpotlightItemRecorder *)self deleteKnowledgeEventsMatchingPredicate:v33 withCompletion:completionCopy];
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllSearchableItemsWithBundleID:(id)d withCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if ([dCopy isEqualToString:@"com.apple.icloud.drive.fileprovider"])
  {
    v8 = +[_CDLogging spotlightReceiverChannel];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    LODWORD(v19.opaque[0]) = 138543362;
    *(v19.opaque + 4) = dCopy;
    v9 = "Ignoring call to delete all searchable items for %{public}@ (File provider bundle ID)";
    goto LABEL_11;
  }

  v10 = [dCopy isEqualToString:@"com.apple.mobilecal"];
  if (self && v10 && self->_recorder)
  {
    LODWORD(v11) = 953267991;
    v12 = [MEMORY[0x1E69C5CC8] bloomFilterInMemoryWithNumberOfValuesN:13355 errorRateP:v11];
    calendarAddedItemsFilter = self->_calendarAddedItemsFilter;
    self->_calendarAddedItemsFilter = v12;
  }

  v14 = +[_CDConstants mobileMessagesBundleId];
  v15 = [dCopy isEqualToString:v14];

  if (v15)
  {
    v8 = +[_CDLogging spotlightReceiverChannel];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    LODWORD(v19.opaque[0]) = 138543362;
    *(v19.opaque + 4) = dCopy;
    v9 = "Ignoring call to delete all searchable items for %{public}@ (Messages bundle ID)";
LABEL_11:
    _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, v9, &v19, 0xCu);
LABEL_12:

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    goto LABEL_14;
  }

  v17 = _os_activity_create(&dword_191750000, "CoreDuet: deleteAllSearchableItemsWithBundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(v17, &v19);
  os_activity_scope_leave(&v19);

  v18 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v19.opaque[0]) = 138543362;
    *(v19.opaque + 4) = dCopy;
    _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_DEFAULT, "Deleting searchable items with bundleID: %{public}@", &v19, 0xCu);
  }

  [(_CDSpotlightItemRecorder *)self deleteAllItemsWithBundleID:dCopy isCSSIDeletion:1 completion:completionCopy];
LABEL_14:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)deleteSearchableItemsWithIdentifiers:(id)identifiers bundleID:(id)d withCompletion:(id)completion
{
  v116 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  completionCopy = completion;
  if ([dCopy isEqualToString:@"com.apple.icloud.drive.fileprovider"])
  {
    v11 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(identifiersCopy, "count")}];
      *buf = 138412546;
      *&buf[4] = dCopy;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring call to delete searchable items for %@ with %@ item identifiers", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    goto LABEL_18;
  }

  v13 = _os_activity_create(&dword_191750000, "CoreDuet: deleteSearchableItemsWithIdentifiers:bundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *buf = 0;
  *&buf[8] = 0;
  os_activity_scope_enter(v13, buf);
  os_activity_scope_leave(buf);

  v14 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(identifiersCopy, "count")}];
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_DEFAULT, "Deleting seachable items from %@ identifiers with bundleID: %@", buf, 0x16u);
  }

  if (self && self->_recorder)
  {
    v16 = +[_CDInteractionPolicies disallowedCSSIBundleIds];
    v17 = [v16 containsObject:dCopy];

    if (v17)
    {
      p_super = +[_CDLogging spotlightReceiverChannel];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = dCopy;
        _os_log_impl(&dword_191750000, p_super, OS_LOG_TYPE_DEFAULT, "Interaction store ignoring call to delete searchable items by ID for %{public}@ (disallowed bundle ID)", buf, 0xCu);
      }

LABEL_13:

      goto LABEL_14;
    }

    v26 = 0x1E7366000uLL;
    v27 = +[_CDConstants mobileMailBundleId];
    v28 = [dCopy containsString:v27];

    if (!v28)
    {
LABEL_64:
      v76 = objc_alloc_init(_CDSpotlightItemRecorderOperation);
      p_super = &v76->super;
      if (v76)
      {
        v76->_type = 1;
      }

      [(_DKPredictionTimeline *)v76 setStartDate:identifiersCopy];
      [(_DKSyncWindow *)p_super setStartDate:dCopy];
      [(_CDSpotlightItemRecorder *)self submitOperation:?];
      v77 = *(v26 + 264);
      v78 = +[_CDConstants mobilePhoneBundleId];
      v79 = [dCopy isEqualToString:v78];

      if (v79)
      {
        [_CDSpotlightItemRecorder deleteSearchableItemsWithIdentifiers:identifiersCopy bundleID:self withCompletion:?];
      }

      v80 = *(v26 + 264);
      v81 = +[_CDConstants mobileMessagesBundleId];
      v82 = [dCopy isEqualToString:v81];

      if (v82)
      {
        [_CDSpotlightItemRecorder deleteSearchableItemsWithIdentifiers:identifiersCopy bundleID:self withCompletion:?];
      }

      goto LABEL_13;
    }

    selfCopy = self;
    v87 = completionCopy;
    v97 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    obj = identifiersCopy;
    v29 = [obj countByEnumeratingWithState:&v108 objects:v114 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v109;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v109 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v108 + 1) + 8 * i);
          v34 = [_CDSpotlightItemUtils interactionUUIDForSearchableItemWithUID:v33 bundleID:dCopy];
          [v97 addObject:v34];
          v35 = +[_CDConstants mobileMessagesBundleId];
          v36 = [dCopy isEqualToString:v35];

          if (v36)
          {
            v37 = +[_CDConstants contactsAutocompleteBundleId];
            v38 = [_CDSpotlightItemUtils interactionUUIDForSearchableItemWithUID:v33 bundleID:v37];

            [v97 addObject:v38];
          }
        }

        v30 = [obj countByEnumeratingWithState:&v108 objects:v114 count:16];
      }

      while (v30);
    }

    v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"((bundleId == %@) AND (uuid IN %@))", dCopy, v97];
    self = selfCopy;
    recorder = selfCopy->_recorder;
    v107 = 0;
    v41 = recorder;
    v85 = v39;
    v42 = [(_CDInteractionQuerying *)v41 queryInteractionsUsingPredicate:v39 sortDescriptors:0 limit:0 error:&v107];
    v43 = v107;

    if (v43)
    {
      v75 = +[_CDLogging spotlightReceiverChannel];
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        [_CDSpotlightItemRecorder deleteSearchableItemsWithIdentifiers:bundleID:withCompletion:];
      }
    }

    else
    {
      if (![v42 count])
      {
LABEL_63:
        identifiersCopy = [v97 copy];

        goto LABEL_64;
      }

      v44 = MEMORY[0x1E696AE18];
      v45 = +[_CDConstants shareSheetTargetBundleIdMail];
      v46 = [v44 predicateWithFormat:@"((mechanism == %@) AND (targetBundleId == %@) AND (mailShareSheetDeletionCandidate == %@))", &unk_1F05EEF58, v45, &unk_1F05EEFA0];

      v47 = selfCopy->_recorder;
      v106 = 0;
      v48 = v47;
      v83 = v46;
      v49 = [(_CDInteractionQuerying *)v48 queryInteractionsUsingPredicate:v46 sortDescriptors:0 limit:0 error:&v106];
      v50 = v106;

      v84 = v50;
      if (v50)
      {
        v51 = +[_CDLogging spotlightReceiverChannel];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          [_CDSpotlightItemRecorder deleteSearchableItemsWithIdentifiers:bundleID:withCompletion:];
        }
      }

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v88 = v49;
      v92 = [v88 countByEnumeratingWithState:&v102 objects:v113 count:16];
      if (v92)
      {
        v90 = dCopy;
        v91 = *v103;
        v89 = v42;
        do
        {
          for (j = 0; j != v92; ++j)
          {
            if (*v103 != v91)
            {
              objc_enumerationMutation(v88);
            }

            v53 = *(*(&v102 + 1) + 8 * j);
            v54 = objc_autoreleasePoolPush();
            recipients = [v53 recipients];
            v56 = [recipients count];

            if (v56)
            {
              v93 = v54;
              v94 = j;
              v57 = MEMORY[0x1E695DFD8];
              v96 = v53;
              recipients2 = [v53 recipients];
              v59 = [recipients2 valueForKey:@"identifier"];
              v60 = [v57 setWithArray:v59];

              v100 = 0u;
              v101 = 0u;
              v98 = 0u;
              v99 = 0u;
              v61 = v42;
              v62 = [v61 countByEnumeratingWithState:&v98 objects:v112 count:16];
              if (v62)
              {
                v63 = v62;
                v64 = *v99;
                do
                {
                  for (k = 0; k != v63; ++k)
                  {
                    if (*v99 != v64)
                    {
                      objc_enumerationMutation(v61);
                    }

                    v66 = *(*(&v98 + 1) + 8 * k);
                    v67 = objc_autoreleasePoolPush();
                    if ([v66 direction])
                    {
                      recipients3 = [v66 recipients];
                      v69 = [recipients3 count];

                      if (v69)
                      {
                        v70 = MEMORY[0x1E695DFD8];
                        recipients4 = [v66 recipients];
                        v72 = [recipients4 valueForKey:@"identifier"];
                        v73 = [v70 setWithArray:v72];

                        if ([v60 isEqualToSet:v73])
                        {
                          uuid = [v96 uuid];
                          [v97 addObject:uuid];
                        }
                      }
                    }

                    objc_autoreleasePoolPop(v67);
                  }

                  v63 = [v61 countByEnumeratingWithState:&v98 objects:v112 count:16];
                }

                while (v63);
              }

              v42 = v89;
              dCopy = v90;
              v26 = 0x1E7366000;
              v54 = v93;
              j = v94;
            }

            objc_autoreleasePoolPop(v54);
          }

          v92 = [v88 countByEnumeratingWithState:&v102 objects:v113 count:16];
        }

        while (v92);
      }

      self = selfCopy;
      completionCopy = v87;
      v75 = v83;
      v43 = v84;
    }

    goto LABEL_63;
  }

LABEL_14:
  v19 = [&unk_1F05EF6F8 containsObject:dCopy];
  v20 = +[_CDLogging spotlightReceiverChannel];
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v19)
  {
    if (v21)
    {
      *buf = 138412290;
      *&buf[4] = dCopy;
      _os_log_impl(&dword_191750000, v20, OS_LOG_TYPE_INFO, "Deleting searchable items for bundleId: %@ using coalesced deletion path", buf, 0xCu);
    }

    coalescedDeletionManager = self->_coalescedDeletionManager;
    v23 = [_CDSpotlightDeletionOperation deletionForEventsWithItemIdentifiers:identifiersCopy bundleId:dCopy completion:completionCopy];
    [(_CDSpotlightCoalescedDeletionManager *)coalescedDeletionManager processDeletionForOperation:v23];
  }

  else
  {
    if (v21)
    {
      *buf = 138412290;
      *&buf[4] = dCopy;
      _os_log_impl(&dword_191750000, v20, OS_LOG_TYPE_INFO, "Deleting searchable items for bundleId: %@ using direct deletion path", buf, 0xCu);
    }

    v25 = [_DKQuery predicateForSpotlightEventsWithItemIdentifiers:identifiersCopy bundleID:dCopy];
    [(_CDSpotlightItemRecorder *)self deleteKnowledgeEventsMatchingPredicate:v25 withCompletion:completionCopy];
  }

LABEL_18:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)deleteSearchableItemsSinceDate:(id)date bundleID:(id)d withCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  dCopy = d;
  completionCopy = completion;
  if ([dCopy isEqualToString:@"com.apple.icloud.drive.fileprovider"])
  {
    v11 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = _CDFormattedDate(dateCopy);
      *buf = 138412546;
      *&buf[4] = dCopy;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring call to delete searchable items for %@ since date %@", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    v13 = _os_activity_create(&dword_191750000, "CoreDuet: deleteSearchableItemsSinceDate:bundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *buf = 0;
    *&buf[8] = 0;
    os_activity_scope_enter(v13, buf);
    os_activity_scope_leave(buf);

    v14 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = _CDFormattedDate(dateCopy);
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = dCopy;
      _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_DEFAULT, "Deleting searchable items since date %@ with bundleID %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    batchExecutionSourceQueue = self->_batchExecutionSourceQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83___CDSpotlightItemRecorder_deleteSearchableItemsSinceDate_bundleID_withCompletion___block_invoke;
    block[3] = &unk_1E7367B60;
    v17 = dateCopy;
    v22 = v17;
    v18 = dCopy;
    v23 = v18;
    objc_copyWeak(&v24, buf);
    dispatch_sync(batchExecutionSourceQueue, block);
    v19 = [_DKQuery predicateForSpotlightEventsWithBundleID:v18 sinceDate:v17];
    [(_CDSpotlightItemRecorder *)self deleteKnowledgeEventsMatchingPredicate:v19 withCompletion:completionCopy];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)startIntentDeletionForContactDeletions
{
  [(_DKContactsPrivacyMaintainer *)self->_contactsPrivacyMaintainer registerContactDeletionNotifications];
  contactsPrivacyMaintainer = self->_contactsPrivacyMaintainer;

  [(_DKContactsPrivacyMaintainer *)contactsPrivacyMaintainer scheduleIntentsPruningXPCActivity];
}

- (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class withCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  completionCopy = completion;
  v14 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsWithIdentifiers:bundleID:protectionClass:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *v20 = 0;
  *&v20[8] = 0;
  os_activity_scope_enter(v14, v20);
  os_activity_scope_leave(v20);

  v15 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(identifiersCopy, "count")}];
    *v20 = 138412546;
    *&v20[4] = v16;
    *&v20[12] = 2112;
    *&v20[14] = dCopy;
    _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_DEFAULT, "Deleting interactions from %@ identifiers with bundleID: %@", v20, 0x16u);
  }

  if (([classCopy isEqualToString:*MEMORY[0x1E696A378]] & 1) != 0 || objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x1E696A380]))
  {
    v17 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_191750000, v17, OS_LOG_TYPE_INFO, "Request to delete items with identifiers with protectionClass A or B when in class C, D.", v20, 2u);
    }
  }

  [(_CDSpotlightItemRecorder *)self deleteSearchableItemsWithIdentifiers:identifiersCopy bundleID:dCopy withCompletion:completionCopy];
  v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:identifiersCopy];
  [getBMLibraryStreamsPrunerClass() pruneWithDeletedIntentIdentifiers:v18 bundleId:dCopy];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class withCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  completionCopy = completion;
  v14 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsWithGroupIdentifiers:bundleID:protectionClass:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *v22 = 0;
  *&v22[8] = 0;
  os_activity_scope_enter(v14, v22);
  os_activity_scope_leave(v22);

  v15 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 138412546;
    *&v22[4] = identifiersCopy;
    *&v22[12] = 2112;
    *&v22[14] = dCopy;
    _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_DEFAULT, "Deleting interactions with group identifiers %@, bundleID: %@", v22, 0x16u);
  }

  if (([classCopy isEqualToString:*MEMORY[0x1E696A378]] & 1) != 0 || objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x1E696A380]))
  {
    v16 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_191750000, v16, OS_LOG_TYPE_INFO, "Request to delete items with identifiers with protectionClass A or B when in class C, D.", v22, 2u);
    }
  }

  [(_CDSpotlightItemRecorder *)self deleteSearchableItemsWithDomainIdentifiers:identifiersCopy bundleID:dCopy withCompletion:completionCopy];
  v17 = +[_CDConstants mobileMessagesBundleId];
  v18 = [dCopy isEqualToString:v17];

  if (v18)
  {
    v19 = +[_CDConstants contactsAutocompleteBundleId];
    [(_CDSpotlightItemRecorder *)self deleteSearchableItemsWithDomainIdentifiers:identifiersCopy bundleID:v19 withCompletion:0];
  }

  v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:identifiersCopy];
  [getBMLibraryStreamsPrunerClass() pruneWithDeletedIntentGroupIdentifiers:v20 bundleId:dCopy];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)runOperation:(uint64_t)operation
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!operation || !*(operation + 144))
  {
    goto LABEL_27;
  }

  if (!v3)
  {
LABEL_6:
    v6 = +[_CDInteractionPolicies interactionPolicies];
    v7 = v6;
    if (v4)
    {
      v8 = v4[1];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v6 filterAndModifyInteractionsWithPolicies:v8 enforceDataLimits:1 enforcePrivacy:1];

    [*(operation + 144) recordInteractions:v9];
    goto LABEL_26;
  }

  v5 = v3[3];
  if (v5 == 1)
  {
    v10 = v3[1];
    [v10 count];
    v11 = [OUTLINED_FUNCTION_5_1() arrayWithCapacity:?];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = v10;
    v12 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v40;
      do
      {
        v15 = 0;
        do
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v39 + 1) + 8 * v15);
          if ([v4[2] isEqualToString:@"com.apple.mobilemail"])
          {
            [v11 addObject:v16];
          }

          else
          {
            v17 = [_CDSpotlightItemUtils interactionUUIDForSearchableItemWithUID:v16 bundleID:v4[2]];
            [v11 addObject:v17];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v13);
    }

    v18 = v4[2];
    v19 = +[_CDConstants mobileMessagesBundleId];
    v20 = [v18 isEqualToString:v19];

    if (v20)
    {
      v21 = +[_CDConstants shareSheetTargetBundleIdMessages];
    }

    else
    {
      v22 = v4[2];
      OUTLINED_FUNCTION_19_7();
      v23 = +[_CDConstants mobileMailBundleId];
      v24 = [v20 isEqualToString:v23];

      if (!v24)
      {
        v26 = 0x1E695D000uLL;
        goto LABEL_25;
      }

      v21 = +[_CDConstants shareSheetTargetBundleIdMail];
    }

    v25 = v21;
    v26 = 0x1E695D000;

    v18 = v25;
LABEL_25:
    v27 = objc_alloc(*(v26 + 3952));
    v28 = MEMORY[0x1E696AE18];
    v29 = v4[2];
    v30 = [v28 predicateWithFormat:@"mechanism != %@ && bundleId == %@", &unk_1F05EEF58, v29, v39];
    v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mechanism == %@ && targetBundleId == %@", &unk_1F05EEF58, v18];

    v32 = [v27 initWithObjects:{v30, v31, 0}];
    v33 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v32];
    v34 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v11];
    v35 = MEMORY[0x1E696AB28];
    v43[0] = v33;
    v43[1] = v34;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v37 = [v35 andPredicateWithSubpredicates:v36];

    [*(operation + 144) deleteInteractionsMatchingPredicate:v37 sortDescriptors:MEMORY[0x1E695E0F0] limit:0 debuggingReason:@"_CDSpotlightItemRecorderOperationTypeDelete" error:0];
LABEL_26:

    goto LABEL_27;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_27:

  v38 = *MEMORY[0x1E69E9840];
}

- (void)_enqueueOperation:(uint64_t)operation
{
  v3 = a2;
  v4 = v3;
  if (operation && *(operation + 144))
  {
    v5 = *(operation + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46___CDSpotlightItemRecorder__enqueueOperation___block_invoke;
    v6[3] = &unk_1E7367710;
    v6[4] = operation;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

- (void)submitOperation:(void *)operation
{
  v3 = a2;
  v4 = v3;
  if (operation && operation[18])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v5 = operation[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44___CDSpotlightItemRecorder_submitOperation___block_invoke;
    block[3] = &unk_1E7367248;
    v16 = &v17;
    block[4] = operation;
    v6 = v3;
    v15 = v6;
    dispatch_sync(v5, block);
    if (*(v18 + 24) == 1)
    {
      objc_initWeak(&location, operation);
      v7 = operation[2];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44___CDSpotlightItemRecorder_submitOperation___block_invoke_2;
      v10[3] = &unk_1E73675D0;
      objc_copyWeak(&v12, &location);
      v11 = v6;
      dispatch_sync(v7, v10);

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      v8 = OUTLINED_FUNCTION_11_9();
      [(_CDSpotlightItemRecorder *)v8 _enqueueOperation:v9];
    }

    _Block_object_dispose(&v17, 8);
  }
}

- (void)saveRateLimitedEvents:(int)events donatorUid:(void *)uid responseQueue:(void *)queue withCompletion:
{
  HIDWORD(v388) = events;
  v690 = *MEMORY[0x1E69E9840];
  v8 = a2;
  uidCopy = uid;
  queueCopy = queue;
  selfCopy = self;
  if (self)
  {
    if ([v8 count])
    {
      v11 = *(self + 80);
      v391 = queueCopy;
      if (v11)
      {
        v12 = [v11 filterObjectsByEnforcingRateLimit:v8];
      }

      else
      {
        v12 = [v8 copy];
      }

      v393 = v12;
      [v12 count];
      if (queueCopy != [OUTLINED_FUNCTION_16_6() count])
      {
        v13 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          [v393 count];
          *buf = 134218240;
          v687 = v13;
          v688 = 2048;
          v689 = [OUTLINED_FUNCTION_16_6() count];
          _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "SpotlightRecorder rate limiting kicked in - saving %lu of %lu objects.", buf, 0x16u);
        }
      }

      v392 = uidCopy;
      v15 = [*(self + 88) enforcePrivacy:v393];
      v16 = [v15 count];
      if (v16 != [v8 count])
      {
        v17 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = [v15 count];
          v20 = [v393 count];
          *buf = 134218240;
          v687 = v19;
          v688 = 2048;
          v689 = v20;
          _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "SpotlightRecorder privacy policy kicked in - saving %lu of %lu objects.", buf, 0x16u);
        }
      }

      v387 = v8;
      v21 = *(self + 72);
      v681[0] = MEMORY[0x1E69E9820];
      v681[1] = 3221225472;
      v681[2] = __90___CDSpotlightItemRecorder_saveRateLimitedEvents_donatorUid_responseQueue_withCompletion___block_invoke_2;
      v681[3] = &unk_1E736AAD0;
      v683 = v391;
      v22 = v15;
      v682 = v22;
      [v21 saveObjects:v22 tracker:&__block_literal_global_78 responseQueue:v392 withCompletion:v681];
      startDate2 = 0x1E695D000;
      v390 = objc_opt_new();
      v389 = objc_opt_new();
      v24 = objc_opt_new();
      v677 = 0u;
      v678 = 0u;
      v679 = 0u;
      v680 = 0u;
      obj = v22;
      v656 = [obj countByEnumeratingWithState:&v677 objects:v685 count:16];
      if (v656)
      {
        v25 = MEMORY[0x1E69E9C10];
        v655 = *v678;
        v632 = v24;
        do
        {
          v26 = 0;
          do
          {
            if (*v678 != v655)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v677 + 1) + 8 * v26);
            v28 = v25;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v687 = v27;
              _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "SpotlightRecorder trying to donate to biome with event: %@", buf, 0xCu);
            }

            stream = [v27 stream];
            [stream name];
            objc_claimAutoreleasedReturnValue();
            appRelevantShortcutsStream = [OUTLINED_FUNCTION_20_8() appRelevantShortcutsStream];
            name = [appRelevantShortcutsStream name];
            v32 = [OUTLINED_FUNCTION_11_0() isEqual:?];

            if (!v32)
            {
              stream2 = [v27 stream];
              [stream2 name];
              objc_claimAutoreleasedReturnValue();
              appIntentsStream = [OUTLINED_FUNCTION_20_8() appIntentsStream];
              name2 = [appIntentsStream name];
              v44 = [OUTLINED_FUNCTION_11_0() isEqual:?];

              if (v44)
              {
                v660 = v26;
                metadata = [v27 metadata];
                v46 = v27;
                source = [v27 source];
                groupID = [source groupID];

                v48 = +[_DKIntentMetadataKey serializedInteraction];
                v49 = [metadata objectForKeyedSubscript:v48];
                null = [MEMORY[0x1E695DFB0] null];
                v666 = metadata;
                if (v49 == null)
                {
                  v651 = 0;
                }

                else
                {
                  v51 = +[_DKIntentMetadataKey serializedInteraction];
                  v651 = [metadata objectForKeyedSubscript:v51];
                }

                v79 = +[_DKIntentMetadataKey intentClass];
                v80 = [metadata objectForKeyedSubscript:v79];
                null2 = [MEMORY[0x1E695DFB0] null];
                if (v80 == null2)
                {
                  v83 = 0;
                }

                else
                {
                  v82 = +[_DKIntentMetadataKey intentClass];
                  v83 = [metadata objectForKeyedSubscript:v82];
                }

                v85 = objc_opt_class();
                v86 = NSStringFromClass(v85);
                v87 = [v83 isEqualToString:v86];

                if (v87)
                {
                  v88 = MEMORY[0x1E696ACD0];
                  v89 = objc_opt_class();
                  v676 = 0;
                  v86 = [v88 unarchivedObjectOfClass:v89 fromData:v651 error:&v676];
                  v90 = metadata;
                  v658 = v676;
                  if (v658 || ([v86 intent], v91 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v91, (isKindOfClass & 1) == 0))
                  {
                    v100 = v46;
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "SpotlightRecorder unable to unarchive serialized interaction for INStartCallIntent", buf, 2u);
                    }
                  }

                  else
                  {
                    intent = [v86 intent];
                    contacts = [intent contacts];
                    v95 = [contacts count];

                    if (v95)
                    {
                      contacts2 = [intent contacts];
                      v97 = [contacts2 objectAtIndexedSubscript:0];
                      personHandle = [v97 personHandle];
                      value = [personHandle value];

                      groupID = value;
                    }

                    else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "SpotlightRecorder INStartCallIntent received with no contacts", buf, 2u);
                    }

                    v90 = v666;
                    v100 = v46;
                  }
                }

                else
                {
                  v658 = 0;
                  v90 = metadata;
                  v100 = v46;
                }

                v610 = objc_alloc(MEMORY[0x1E698EA98]);
                startDate = [v100 startDate];
                source2 = [v100 source];
                bundleID = [source2 bundleID];
                source3 = [v100 source];
                sourceID = [source3 sourceID];
                +[_DKIntentMetadataKey intentVerb];
                objc_claimAutoreleasedReturnValue();
                v101 = OUTLINED_FUNCTION_9_10();
                v622 = v102;
                v103 = [v101 objectForKeyedSubscript:?];
                null3 = [MEMORY[0x1E695DFB0] null];
                if (v103 == null3)
                {
                  v607 = 0;
                }

                else
                {
                  +[_DKIntentMetadataKey intentVerb];
                  objc_claimAutoreleasedReturnValue();
                  v104 = OUTLINED_FUNCTION_9_10();
                  v579 = v105;
                  v575 = [v104 objectForKeyedSubscript:?];
                  v607 = v575;
                }

                +[_DKIntentMetadataKey intentType];
                objc_claimAutoreleasedReturnValue();
                v106 = OUTLINED_FUNCTION_9_10();
                v613 = v107;
                [v106 objectForKeyedSubscript:?];
                objc_claimAutoreleasedReturnValue();
                [OUTLINED_FUNCTION_3_20() null];
                v636 = v639 = v86;
                if (v86 == v636)
                {
                  v110 = 0;
                }

                else
                {
                  +[_DKIntentMetadataKey intentType];
                  objc_claimAutoreleasedReturnValue();
                  v108 = OUTLINED_FUNCTION_9_10();
                  v578 = v109;
                  v110 = [v108 objectForKeyedSubscript:?];
                  v573 = v110;
                }

                integerValue = [v110 integerValue];
                if (integerValue >= 4)
                {
                  v86 = +[_CDLogging spotlightReceiverChannel];
                  v112 = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
                  if (v112)
                  {
                    OUTLINED_FUNCTION_14_7(v112, v113, v114, v115, v116, v117, v118, v119, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v120);
                    _os_log_error_impl(&dword_191750000, v86, OS_LOG_TYPE_ERROR, "unable to convert _INIntentType enum value: %ld", v342, 0xCu);
                  }

                  integerValue = 0;
                }

                +[_DKIntentMetadataKey intentHandlingStatus];
                objc_claimAutoreleasedReturnValue();
                v121 = OUTLINED_FUNCTION_9_10();
                v604 = v122;
                [v121 objectForKeyedSubscript:?];
                objc_claimAutoreleasedReturnValue();
                null4 = [OUTLINED_FUNCTION_3_20() null];
                v595 = integerValue;
                if (v86 == null4)
                {
                  v125 = 0;
                }

                else
                {
                  +[_DKIntentMetadataKey intentHandlingStatus];
                  objc_claimAutoreleasedReturnValue();
                  v123 = OUTLINED_FUNCTION_9_10();
                  v577 = v124;
                  v125 = [v123 objectForKeyedSubscript:?];
                  v572 = v125;
                }

                v601 = v86;
                integerValue2 = [v125 integerValue];
                if (integerValue2 >= 7)
                {
                  v86 = +[_CDLogging spotlightReceiverChannel];
                  v127 = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
                  if (v127)
                  {
                    OUTLINED_FUNCTION_14_7(v127, v128, v129, v130, v131, v132, v133, v134, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v135);
                    _os_log_error_impl(&dword_191750000, v86, OS_LOG_TYPE_ERROR, "unable to convert INIntentHandlingStatus enum value: %ld", v343, 0xCu);
                  }

                  v589 = 0;
                }

                else
                {
                  v589 = integerValue2 + 1;
                }

                source4 = [v100 source];
                itemID = [source4 itemID];
                +[_DKIntentMetadataKey donatedBySiri];
                objc_claimAutoreleasedReturnValue();
                v136 = [OUTLINED_FUNCTION_16_6() objectForKeyedSubscript:v86];
                [MEMORY[0x1E695DFB0] null];
                v138 = v137 = v90;
                v619 = v103;
                startDate2 = v83;
                if (v136 == v138)
                {
                  v141 = 0;
                }

                else
                {
                  +[_DKIntentMetadataKey donatedBySiri];
                  objc_claimAutoreleasedReturnValue();
                  v139 = OUTLINED_FUNCTION_5_1();
                  v576 = v140;
                  v141 = [v139 objectForKeyedSubscript:?];
                  v571 = v141;
                }

                v142 = +[_DKIntentMetadataKey direction];
                v143 = [v137 objectForKeyedSubscript:v142];
                null5 = [MEMORY[0x1E695DFB0] null];
                if (v143 == null5)
                {
                  v147 = 0;
                }

                else
                {
                  +[_DKIntentMetadataKey direction];
                  objc_claimAutoreleasedReturnValue();
                  v145 = OUTLINED_FUNCTION_5_1();
                  v574 = v146;
                  v147 = [v145 objectForKeyedSubscript:?];
                  v570 = v147;
                }

                integerValue3 = [v147 integerValue];
                v149 = integerValue3;
                if (integerValue3 >= 4)
                {
                  v151 = +[_CDLogging spotlightReceiverChannel];
                  if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
                  {
                    v344 = [MEMORY[0x1E696AD98] numberWithInteger:v149];
                    *buf = 138412290;
                    v687 = v344;
                    _os_log_error_impl(&dword_191750000, v151, OS_LOG_TYPE_ERROR, "unable to convert _CDInteractionDirection enum value: %@", buf, 0xCu);
                  }

                  v150 = 0;
                }

                else
                {
                  v150 = dword_19190EF40[integerValue3];
                }

                v363 = groupID;
                LODWORD(v362) = v150;
                v360 = itemID;
                v361 = v141;
                v359 = v651;
                LODWORD(v358) = v589;
                v152 = [v610 initWithAbsoluteTimestamp:startDate bundleID:bundleID sourceID:sourceID intentClass:startDate2 intentVerb:v607 intentType:v595 handlingStatus:v358 interaction:? itemID:? donatedBySiri:? interactionDirection:? groupIdentifier:?];
                v26 = v660;
                if (v143 != null5)
                {
                }

                v24 = v632;
                if (v136 != v138)
                {
                }

                v25 = MEMORY[0x1E69E9C10];
                if (v601 != null4)
                {
                }

                metadata4 = v666;
                value4 = groupID;
                if (v639 != v636)
                {
                }

                if (v619 != null3)
                {
                }

                [*(selfCopy + 152) sendEvent:v152];
              }

              else
              {
                stream3 = [v27 stream];
                [stream3 name];
                objc_claimAutoreleasedReturnValue();
                appActivityStream = [OUTLINED_FUNCTION_20_8() appActivityStream];
                name3 = [appActivityStream name];
                v55 = [OUTLINED_FUNCTION_11_0() isEqual:?];

                if (v55)
                {
                  v652 = v27;
                  metadata2 = [v27 metadata];
                  v57 = [metadata2 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.date"];
                  [MEMORY[0x1E695DFB0] null];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_21_8();
                  if (v58)
                  {
                    v665 = 0;
                  }

                  else
                  {
                    v665 = [metadata2 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.date"];
                  }

                  v153 = [metadata2 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.endDate"];
                  [MEMORY[0x1E695DFB0] null];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_21_8();
                  if (v58)
                  {
                    v154 = 0;
                  }

                  else
                  {
                    v154 = [metadata2 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.endDate"];
                  }

                  v544 = objc_alloc(MEMORY[0x1E698EA88]);
                  value2 = [v27 value];
                  stringValue = [value2 stringValue];
                  v562 = +[_DKApplicationActivityMetadataKey activityType];
                  v155 = [metadata2 objectForKeyedSubscript:?];
                  [MEMORY[0x1E695DFB0] null];
                  v558 = v560 = v155;
                  if (v155 == v558)
                  {
                    v541 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey activityType];
                    objc_claimAutoreleasedReturnValue();
                    v156 = OUTLINED_FUNCTION_8_4();
                    v500 = v157;
                    v496 = [v156 objectForKeyedSubscript:?];
                    v541 = v496;
                  }

                  +[_DKApplicationActivityMetadataKey beginningOfActivity];
                  objc_claimAutoreleasedReturnValue();
                  v158 = OUTLINED_FUNCTION_8_4();
                  v556 = v159;
                  v160 = [v158 objectForKeyedSubscript:?];
                  null6 = [MEMORY[0x1E695DFB0] null];
                  if (v160 == null6)
                  {
                    v538 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey beginningOfActivity];
                    objc_claimAutoreleasedReturnValue();
                    v161 = OUTLINED_FUNCTION_8_4();
                    v499 = v162;
                    v494 = [v161 objectForKeyedSubscript:?];
                    v538 = v494;
                  }

                  +[_DKApplicationActivityMetadataKey contentDescription];
                  objc_claimAutoreleasedReturnValue();
                  v163 = OUTLINED_FUNCTION_8_4();
                  v552 = v164;
                  [v163 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v643 = v646 = metadata2;
                  if (metadata2 == v643)
                  {
                    v537 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey contentDescription];
                    objc_claimAutoreleasedReturnValue();
                    v165 = OUTLINED_FUNCTION_8_4();
                    v498 = v166;
                    v492 = [v165 objectForKeyedSubscript:?];
                    v537 = v492;
                  }

                  +[_DKApplicationActivityMetadataKey expirationDate];
                  objc_claimAutoreleasedReturnValue();
                  v167 = OUTLINED_FUNCTION_8_4();
                  v550 = v168;
                  [v167 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v637 = v640 = metadata2;
                  if (metadata2 == v637)
                  {
                    v534 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey expirationDate];
                    objc_claimAutoreleasedReturnValue();
                    v169 = OUTLINED_FUNCTION_8_4();
                    v497 = v170;
                    v490 = [v169 objectForKeyedSubscript:?];
                    v534 = v490;
                  }

                  +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
                  objc_claimAutoreleasedReturnValue();
                  v171 = OUTLINED_FUNCTION_8_4();
                  v548 = v172;
                  [v171 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v629 = v634 = metadata2;
                  if (metadata2 == v629)
                  {
                    v532 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
                    objc_claimAutoreleasedReturnValue();
                    v173 = OUTLINED_FUNCTION_8_4();
                    v495 = v174;
                    v488 = [v173 objectForKeyedSubscript:?];
                    v532 = v488;
                  }

                  +[_DKApplicationActivityMetadataKey isPubliclyIndexable];
                  objc_claimAutoreleasedReturnValue();
                  v175 = OUTLINED_FUNCTION_8_4();
                  v547 = v176;
                  [v175 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v623 = v626 = metadata2;
                  if (metadata2 == v623)
                  {
                    v529 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey isPubliclyIndexable];
                    objc_claimAutoreleasedReturnValue();
                    v177 = OUTLINED_FUNCTION_8_4();
                    v493 = v178;
                    v486 = [v177 objectForKeyedSubscript:?];
                    v529 = v486;
                  }

                  +[_DKApplicationActivityMetadataKey itemIdentifier];
                  objc_claimAutoreleasedReturnValue();
                  v179 = OUTLINED_FUNCTION_8_4();
                  v543 = v180;
                  [v179 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v617 = v620 = metadata2;
                  if (metadata2 == v617)
                  {
                    v526 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey itemIdentifier];
                    objc_claimAutoreleasedReturnValue();
                    v181 = OUTLINED_FUNCTION_8_4();
                    v491 = v182;
                    v484 = [v181 objectForKeyedSubscript:?];
                    v526 = v484;
                  }

                  +[_DKApplicationActivityMetadataKey itemRelatedContentURL];
                  objc_claimAutoreleasedReturnValue();
                  v183 = OUTLINED_FUNCTION_8_4();
                  v540 = v184;
                  [v183 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v611 = v614 = metadata2;
                  if (metadata2 == v611)
                  {
                    v525 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey itemRelatedContentURL];
                    objc_claimAutoreleasedReturnValue();
                    v185 = OUTLINED_FUNCTION_8_4();
                    v489 = v186;
                    v482 = [v185 objectForKeyedSubscript:?];
                    v525 = v482;
                  }

                  +[_DKApplicationActivityMetadataKey itemRelatedUniqueIdentifier];
                  objc_claimAutoreleasedReturnValue();
                  v187 = OUTLINED_FUNCTION_8_4();
                  v535 = v188;
                  [v187 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v605 = v608 = metadata2;
                  if (metadata2 == v605)
                  {
                    v522 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey itemRelatedUniqueIdentifier];
                    objc_claimAutoreleasedReturnValue();
                    v189 = OUTLINED_FUNCTION_8_4();
                    v487 = v190;
                    v480 = [v189 objectForKeyedSubscript:?];
                    v522 = v480;
                  }

                  +[_DKApplicationActivityMetadataKey shortcutAvailability];
                  objc_claimAutoreleasedReturnValue();
                  v191 = OUTLINED_FUNCTION_8_4();
                  v531 = v192;
                  [v191 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v599 = v602 = metadata2;
                  if (metadata2 == v599)
                  {
                    v518 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey shortcutAvailability];
                    objc_claimAutoreleasedReturnValue();
                    v193 = OUTLINED_FUNCTION_8_4();
                    v485 = v194;
                    v478 = [v193 objectForKeyedSubscript:?];
                    v518 = v478;
                  }

                  +[_DKApplicationActivityMetadataKey suggestedInvocationPhrase];
                  objc_claimAutoreleasedReturnValue();
                  v195 = OUTLINED_FUNCTION_8_4();
                  v528 = v196;
                  [v195 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v593 = v596 = metadata2;
                  if (metadata2 == v593)
                  {
                    v516 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey suggestedInvocationPhrase];
                    objc_claimAutoreleasedReturnValue();
                    v197 = OUTLINED_FUNCTION_8_4();
                    v483 = v198;
                    v476 = [v197 objectForKeyedSubscript:?];
                    v516 = v476;
                  }

                  +[_DKApplicationActivityMetadataKey title];
                  objc_claimAutoreleasedReturnValue();
                  v199 = OUTLINED_FUNCTION_8_4();
                  v523 = v200;
                  [v199 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v586 = v590 = metadata2;
                  if (metadata2 == v586)
                  {
                    v509 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey title];
                    objc_claimAutoreleasedReturnValue();
                    v201 = OUTLINED_FUNCTION_8_4();
                    v481 = v202;
                    v474 = [v201 objectForKeyedSubscript:?];
                    v509 = v474;
                  }

                  +[_DKApplicationActivityMetadataKey userActivityRequiredString];
                  objc_claimAutoreleasedReturnValue();
                  v203 = OUTLINED_FUNCTION_8_4();
                  v520 = v204;
                  [v203 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v582 = v584 = metadata2;
                  if (metadata2 == v582)
                  {
                    v503 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey userActivityRequiredString];
                    objc_claimAutoreleasedReturnValue();
                    v205 = OUTLINED_FUNCTION_8_4();
                    v479 = v206;
                    v473 = [v205 objectForKeyedSubscript:?];
                    v503 = v473;
                  }

                  +[_DKApplicationActivityMetadataKey userActivityUUID];
                  objc_claimAutoreleasedReturnValue();
                  v207 = OUTLINED_FUNCTION_8_4();
                  v515 = v208;
                  [v207 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v513 = metadata2;
                  v661 = v26;
                  v658 = v154;
                  v511 = v554 = v160;
                  if (metadata2 == v511)
                  {
                    v501 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey userActivityUUID];
                    objc_claimAutoreleasedReturnValue();
                    v209 = OUTLINED_FUNCTION_8_4();
                    v477 = v210;
                    v472 = [v209 objectForKeyedSubscript:?];
                    v501 = v472;
                  }

                  v211 = metadata2;
                  source5 = [v27 source];
                  sourceID2 = [source5 sourceID];
                  source6 = [v27 source];
                  bundleID2 = [source6 bundleID];
                  source7 = [v27 source];
                  itemID2 = [source7 itemID];
                  source8 = [v652 source];
                  groupID2 = [source8 groupID];
                  v217 = MEMORY[0x1E695DF00];
                  [v665 doubleValue];
                  v218 = [v217 dateWithTimeIntervalSinceReferenceDate:?];
                  v219 = [v211 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.externalID"];
                  null7 = [MEMORY[0x1E695DFB0] null];
                  v668 = v211;
                  if (v219 == null7)
                  {
                    v221 = 0;
                  }

                  else
                  {
                    v221 = [v211 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.externalID"];
                    v475 = v221;
                  }

                  v222 = MEMORY[0x1E695DF00];
                  [v658 doubleValue];
                  [v222 dateWithTimeIntervalSinceReferenceDate:?];
                  v373 = v372 = v221;
                  v370 = groupID2;
                  v371 = v218;
                  v368 = bundleID2;
                  v369 = itemID2;
                  v366 = v501;
                  v367 = sourceID2;
                  v364 = v509;
                  v365 = v503;
                  v362 = v518;
                  v363 = v516;
                  v360 = v525;
                  v361 = v522;
                  v358 = v529;
                  v359 = v526;
                  v545 = [v544 initWithBundleID:stringValue activityType:v541 beginningOfActivity:v538 contentDescription:v537 expirationDate:v534 isEligibleForPrediction:v532 isPubliclyIndexable:? itemIdentifier:? itemRelatedContentURL:? itemRelatedUniqueIdentifier:? shortcutAvailability:? suggestedInvocationPhrase:? title:? userActivityRequiredString:? userActivityUUID:? sourceID:? sourceBundleID:? sourceItemID:? sourceGroupID:? calendarUserActivityDate:? calendarUserActivityExternalID:? calendarUserActivityEndDate:?];

                  if (v219 != null7)
                  {
                  }

                  if (v513 != v511)
                  {
                  }

                  v24 = v632;
                  v25 = MEMORY[0x1E69E9C10];
                  v26 = v661;
                  metadata4 = v668;
                  if (v584 != v582)
                  {
                  }

                  if (v590 != v586)
                  {
                  }

                  if (v596 != v593)
                  {
                  }

                  if (v602 != v599)
                  {
                  }

                  if (v608 != v605)
                  {
                  }

                  if (v614 != v611)
                  {
                  }

                  if (v620 != v617)
                  {
                  }

                  if (v626 != v623)
                  {
                  }

                  if (v634 != v629)
                  {
                  }

                  if (v640 != v637)
                  {
                  }

                  if (v646 != v643)
                  {
                  }

                  if (v554 != null6)
                  {
                  }

                  if (v560 != v558)
                  {
                  }

                  v223 = *(selfCopy + 160);
                  startDate2 = [v652 startDate];
                  [startDate2 timeIntervalSinceReferenceDate];
                  [v223 sendEvent:v545 timestamp:?];
                }

                else
                {
                  stream4 = [v27 stream];
                  [stream4 name];
                  objc_claimAutoreleasedReturnValue();
                  appLocationActivityStream = [OUTLINED_FUNCTION_20_8() appLocationActivityStream];
                  name4 = [appLocationActivityStream name];
                  v62 = [OUTLINED_FUNCTION_11_0() isEqual:?];

                  if (!v62)
                  {
                    goto LABEL_298;
                  }

                  v653 = v27;
                  metadata3 = [v27 metadata];
                  v64 = [metadata3 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.date"];
                  [MEMORY[0x1E695DFB0] null];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_21_8();
                  if (v58)
                  {
                    v665 = 0;
                  }

                  else
                  {
                    v665 = [metadata3 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.date"];
                  }

                  [metadata3 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.endDate"];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_20() null];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_21_8();
                  if (v58)
                  {
                    v658 = 0;
                  }

                  else
                  {
                    v658 = [metadata3 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.endDate"];
                  }

                  +[_DKLocationApplicationActivityMetadataKey URL];
                  objc_claimAutoreleasedReturnValue();
                  v224 = [OUTLINED_FUNCTION_16_6() objectForKeyedSubscript:v64];
                  null8 = [MEMORY[0x1E695DFB0] null];
                  v669 = metadata3;
                  if (v224 == null8)
                  {
                    v227 = 0;
                  }

                  else
                  {
                    v226 = +[_DKLocationApplicationActivityMetadataKey URL];
                    metadata3 = [metadata3 objectForKeyedSubscript:v226];

                    v227 = metadata3;
                  }

                  if (v227)
                  {
                    v650 = [MEMORY[0x1E695DFF8] URLWithString:v227];
                  }

                  else
                  {
                    v650 = 0;
                  }

                  objc_alloc(MEMORY[0x1E698EB28]);
                  value3 = [v27 value];
                  [value3 stringValue];
                  objc_claimAutoreleasedReturnValue();
                  +[_DKApplicationActivityMetadataKey activityType];
                  objc_claimAutoreleasedReturnValue();
                  v228 = OUTLINED_FUNCTION_12();
                  v514 = v229;
                  v230 = [v228 objectForKeyedSubscript:?];
                  null9 = [MEMORY[0x1E695DFB0] null];
                  if (v230 != null9)
                  {
                    +[_DKApplicationActivityMetadataKey activityType];
                    objc_claimAutoreleasedReturnValue();
                    v231 = OUTLINED_FUNCTION_12();
                    v444 = v232;
                    v440 = [v231 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey beginningOfActivity];
                  objc_claimAutoreleasedReturnValue();
                  v233 = OUTLINED_FUNCTION_12();
                  v508 = v234;
                  [v233 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v647 = v506 = metadata3;
                  if (metadata3 != v647)
                  {
                    +[_DKApplicationActivityMetadataKey beginningOfActivity];
                    objc_claimAutoreleasedReturnValue();
                    v235 = OUTLINED_FUNCTION_12();
                    v443 = v236;
                    v438 = [v235 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey contentDescription];
                  objc_claimAutoreleasedReturnValue();
                  v237 = OUTLINED_FUNCTION_12();
                  v504 = v238;
                  [v237 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v641 = v644 = metadata3;
                  if (metadata3 != v641)
                  {
                    +[_DKApplicationActivityMetadataKey contentDescription];
                    objc_claimAutoreleasedReturnValue();
                    v239 = OUTLINED_FUNCTION_12();
                    v442 = v240;
                    v436 = [v239 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey expirationDate];
                  objc_claimAutoreleasedReturnValue();
                  v241 = OUTLINED_FUNCTION_12();
                  v502 = v242;
                  [v241 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v635 = v638 = metadata3;
                  if (metadata3 != v635)
                  {
                    +[_DKApplicationActivityMetadataKey expirationDate];
                    objc_claimAutoreleasedReturnValue();
                    v243 = OUTLINED_FUNCTION_12();
                    v441 = v244;
                    v434 = [v243 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
                  objc_claimAutoreleasedReturnValue();
                  v245 = OUTLINED_FUNCTION_12();
                  v471 = v246;
                  [v245 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v627 = v630 = metadata3;
                  if (metadata3 != v627)
                  {
                    +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
                    objc_claimAutoreleasedReturnValue();
                    v247 = OUTLINED_FUNCTION_12();
                    v439 = v248;
                    v432 = [v247 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey isPubliclyIndexable];
                  objc_claimAutoreleasedReturnValue();
                  v249 = OUTLINED_FUNCTION_12();
                  v470 = v250;
                  [v249 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v621 = v624 = metadata3;
                  if (metadata3 != v621)
                  {
                    +[_DKApplicationActivityMetadataKey isPubliclyIndexable];
                    objc_claimAutoreleasedReturnValue();
                    v251 = OUTLINED_FUNCTION_12();
                    v437 = v252;
                    v430 = [v251 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey itemIdentifier];
                  objc_claimAutoreleasedReturnValue();
                  v253 = OUTLINED_FUNCTION_12();
                  v469 = v254;
                  [v253 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v615 = v618 = metadata3;
                  if (metadata3 != v615)
                  {
                    +[_DKApplicationActivityMetadataKey itemIdentifier];
                    objc_claimAutoreleasedReturnValue();
                    v255 = OUTLINED_FUNCTION_12();
                    v435 = v256;
                    v428 = [v255 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey itemRelatedContentURL];
                  objc_claimAutoreleasedReturnValue();
                  v257 = OUTLINED_FUNCTION_12();
                  v468 = v258;
                  [v257 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v609 = v612 = metadata3;
                  if (metadata3 != v609)
                  {
                    +[_DKApplicationActivityMetadataKey itemRelatedContentURL];
                    objc_claimAutoreleasedReturnValue();
                    v259 = OUTLINED_FUNCTION_12();
                    v433 = v260;
                    v426 = [v259 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey itemRelatedUniqueIdentifier];
                  objc_claimAutoreleasedReturnValue();
                  v261 = OUTLINED_FUNCTION_12();
                  v467 = v262;
                  [v261 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v603 = v606 = metadata3;
                  if (metadata3 != v603)
                  {
                    +[_DKApplicationActivityMetadataKey itemRelatedUniqueIdentifier];
                    objc_claimAutoreleasedReturnValue();
                    v263 = OUTLINED_FUNCTION_12();
                    v431 = v264;
                    v424 = [v263 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey shortcutAvailability];
                  objc_claimAutoreleasedReturnValue();
                  v265 = OUTLINED_FUNCTION_12();
                  v466 = v266;
                  [v265 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v597 = v600 = metadata3;
                  if (metadata3 != v597)
                  {
                    +[_DKApplicationActivityMetadataKey shortcutAvailability];
                    objc_claimAutoreleasedReturnValue();
                    v267 = OUTLINED_FUNCTION_12();
                    v429 = v268;
                    v422 = [v267 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey suggestedInvocationPhrase];
                  objc_claimAutoreleasedReturnValue();
                  v269 = OUTLINED_FUNCTION_12();
                  v465 = v270;
                  [v269 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v591 = v594 = metadata3;
                  if (metadata3 != v591)
                  {
                    +[_DKApplicationActivityMetadataKey suggestedInvocationPhrase];
                    objc_claimAutoreleasedReturnValue();
                    v271 = OUTLINED_FUNCTION_12();
                    v427 = v272;
                    v420 = [v271 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey title];
                  objc_claimAutoreleasedReturnValue();
                  v273 = OUTLINED_FUNCTION_12();
                  v463 = v274;
                  [v273 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v585 = v587 = metadata3;
                  if (metadata3 != v585)
                  {
                    +[_DKApplicationActivityMetadataKey title];
                    objc_claimAutoreleasedReturnValue();
                    v275 = OUTLINED_FUNCTION_12();
                    v425 = v276;
                    v417 = [v275 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey userActivityRequiredString];
                  objc_claimAutoreleasedReturnValue();
                  v277 = OUTLINED_FUNCTION_12();
                  v462 = v278;
                  [v277 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v581 = v583 = metadata3;
                  if (metadata3 != v581)
                  {
                    +[_DKApplicationActivityMetadataKey userActivityRequiredString];
                    objc_claimAutoreleasedReturnValue();
                    v279 = OUTLINED_FUNCTION_12();
                    v423 = v280;
                    v415 = [v279 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey userActivityUUID];
                  objc_claimAutoreleasedReturnValue();
                  v281 = OUTLINED_FUNCTION_12();
                  v461 = v282;
                  [v281 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v565 = v567 = metadata3;
                  if (metadata3 != v565)
                  {
                    +[_DKApplicationActivityMetadataKey userActivityUUID];
                    objc_claimAutoreleasedReturnValue();
                    v283 = OUTLINED_FUNCTION_12();
                    v421 = v284;
                    v413 = [v283 objectForKeyedSubscript:?];
                  }

                  source9 = [v27 source];
                  sourceID3 = [source9 sourceID];
                  source10 = [v27 source];
                  bundleID3 = [source10 bundleID];
                  source11 = [v27 source];
                  itemID3 = [source11 itemID];
                  source12 = [v27 source];
                  groupID3 = [source12 groupID];
                  v285 = MEMORY[0x1E695DF00];
                  [v665 doubleValue];
                  v555 = [v285 dateWithTimeIntervalSinceReferenceDate:?];
                  [OUTLINED_FUNCTION_11_0() objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_20() null];
                  v551 = v553 = v285;
                  if (v285 != v551)
                  {
                    v419 = [OUTLINED_FUNCTION_11_0() objectForKeyedSubscript:?];
                  }

                  v286 = MEMORY[0x1E695DF00];
                  [v658 doubleValue];
                  v549 = [v286 dateWithTimeIntervalSinceReferenceDate:?];
                  +[_DKLocationApplicationActivityMetadataKey locationName];
                  objc_claimAutoreleasedReturnValue();
                  v287 = OUTLINED_FUNCTION_12();
                  v456 = v288;
                  [v287 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null10 = [OUTLINED_FUNCTION_3_20() null];
                  if (v286 != null10)
                  {
                    +[_DKLocationApplicationActivityMetadataKey locationName];
                    objc_claimAutoreleasedReturnValue();
                    v289 = OUTLINED_FUNCTION_12();
                    v418 = v290;
                    v411 = [v289 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey latitude];
                  objc_claimAutoreleasedReturnValue();
                  v291 = OUTLINED_FUNCTION_12();
                  v455 = v292;
                  [v291 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null11 = [OUTLINED_FUNCTION_3_20() null];
                  if (v286 != null11)
                  {
                    +[_DKLocationApplicationActivityMetadataKey latitude];
                    objc_claimAutoreleasedReturnValue();
                    v293 = OUTLINED_FUNCTION_12();
                    v416 = v294;
                    v409 = [v293 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey longitude];
                  objc_claimAutoreleasedReturnValue();
                  v295 = OUTLINED_FUNCTION_12();
                  v454 = v296;
                  [v295 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null12 = [OUTLINED_FUNCTION_3_20() null];
                  if (v286 != null12)
                  {
                    +[_DKLocationApplicationActivityMetadataKey longitude];
                    objc_claimAutoreleasedReturnValue();
                    v297 = OUTLINED_FUNCTION_12();
                    v414 = v298;
                    v407 = [v297 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey city];
                  objc_claimAutoreleasedReturnValue();
                  v299 = OUTLINED_FUNCTION_12();
                  v453 = v300;
                  [v299 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null13 = [OUTLINED_FUNCTION_3_20() null];
                  if (v286 != null13)
                  {
                    +[_DKLocationApplicationActivityMetadataKey city];
                    objc_claimAutoreleasedReturnValue();
                    v301 = OUTLINED_FUNCTION_12();
                    v412 = v302;
                    v405 = [v301 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey stateOrProvince];
                  objc_claimAutoreleasedReturnValue();
                  v303 = OUTLINED_FUNCTION_12();
                  v452 = v304;
                  [v303 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null14 = [OUTLINED_FUNCTION_3_20() null];
                  if (v286 != null14)
                  {
                    +[_DKLocationApplicationActivityMetadataKey stateOrProvince];
                    objc_claimAutoreleasedReturnValue();
                    v305 = OUTLINED_FUNCTION_12();
                    v410 = v306;
                    v403 = [v305 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey country];
                  objc_claimAutoreleasedReturnValue();
                  v307 = OUTLINED_FUNCTION_12();
                  v451 = v308;
                  [v307 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null15 = [OUTLINED_FUNCTION_3_20() null];
                  if (v286 != null15)
                  {
                    +[_DKLocationApplicationActivityMetadataKey country];
                    objc_claimAutoreleasedReturnValue();
                    v309 = OUTLINED_FUNCTION_12();
                    v408 = v310;
                    v401 = [v309 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey thoroughfare];
                  objc_claimAutoreleasedReturnValue();
                  v311 = OUTLINED_FUNCTION_12();
                  v450 = v312;
                  [v311 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null16 = [OUTLINED_FUNCTION_3_20() null];
                  if (v286 != null16)
                  {
                    +[_DKLocationApplicationActivityMetadataKey thoroughfare];
                    objc_claimAutoreleasedReturnValue();
                    v313 = OUTLINED_FUNCTION_12();
                    v406 = v314;
                    v399 = [v313 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey fullyFormattedAddress];
                  objc_claimAutoreleasedReturnValue();
                  v315 = OUTLINED_FUNCTION_12();
                  v449 = v316;
                  [v315 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null17 = [OUTLINED_FUNCTION_3_20() null];
                  if (v286 != null17)
                  {
                    +[_DKLocationApplicationActivityMetadataKey fullyFormattedAddress];
                    objc_claimAutoreleasedReturnValue();
                    v317 = OUTLINED_FUNCTION_12();
                    v404 = v318;
                    v397 = [v317 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey subThoroughfare];
                  objc_claimAutoreleasedReturnValue();
                  v319 = OUTLINED_FUNCTION_12();
                  v448 = v320;
                  [v319 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null18 = [OUTLINED_FUNCTION_3_20() null];
                  if (v286 != null18)
                  {
                    +[_DKLocationApplicationActivityMetadataKey subThoroughfare];
                    objc_claimAutoreleasedReturnValue();
                    v321 = OUTLINED_FUNCTION_12();
                    v402 = v322;
                    v396 = [v321 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey postalCode];
                  objc_claimAutoreleasedReturnValue();
                  v323 = OUTLINED_FUNCTION_12();
                  v447 = v324;
                  [v323 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null19 = [OUTLINED_FUNCTION_3_20() null];
                  v512 = v230;
                  if (v286 != null19)
                  {
                    +[_DKLocationApplicationActivityMetadataKey postalCode];
                    objc_claimAutoreleasedReturnValue();
                    v325 = OUTLINED_FUNCTION_12();
                    v400 = v326;
                    v395 = [v325 objectForKeyedSubscript:?];
                  }

                  v519 = v227;
                  +[_DKLocationApplicationActivityMetadataKey phoneNumbers];
                  objc_claimAutoreleasedReturnValue();
                  v327 = OUTLINED_FUNCTION_8_4();
                  v445 = v328;
                  v329 = [v327 objectForKeyedSubscript:?];
                  null20 = [MEMORY[0x1E695DFB0] null];
                  v662 = v26;
                  if (v329 != null20)
                  {
                    +[_DKLocationApplicationActivityMetadataKey phoneNumbers];
                    objc_claimAutoreleasedReturnValue();
                    v331 = OUTLINED_FUNCTION_8_4();
                    v398 = v332;
                    v394 = [v331 objectForKeyedSubscript:?];
                  }

                  v333 = +[_DKLocationApplicationActivityMetadataKey displayName];
                  v334 = [v669 objectForKeyedSubscript:v333];
                  null21 = [MEMORY[0x1E695DFB0] null];
                  if (v334 == null21)
                  {
                    OUTLINED_FUNCTION_1_28();
                    v385 = 0;
                    v386 = v340;
                    v464 = OUTLINED_FUNCTION_4_18();
                  }

                  else
                  {
                    v336 = +[_DKLocationApplicationActivityMetadataKey displayName];
                    v337 = [v669 objectForKeyedSubscript:v336];
                    OUTLINED_FUNCTION_1_28();
                    v385 = v338;
                    v386 = v339;
                    v464 = OUTLINED_FUNCTION_4_18();

                    v24 = v632;
                  }

                  if (v329 != null20)
                  {
                  }

                  v25 = MEMORY[0x1E69E9C10];
                  v26 = v662;
                  metadata4 = v669;
                  if (v286 != null19)
                  {
                  }

                  if (v286 != null18)
                  {
                  }

                  if (v286 != null17)
                  {
                  }

                  if (v286 != null16)
                  {
                  }

                  if (v286 != null15)
                  {
                  }

                  if (v286 != null14)
                  {
                  }

                  if (v286 != null13)
                  {
                  }

                  if (v286 != null12)
                  {
                  }

                  if (v286 != null11)
                  {
                  }

                  if (v286 != null10)
                  {
                  }

                  if (v553 != v551)
                  {
                  }

                  if (v567 != v565)
                  {
                  }

                  if (v583 != v581)
                  {
                  }

                  if (v587 != v585)
                  {
                  }

                  if (v594 != v591)
                  {
                  }

                  if (v600 != v597)
                  {
                  }

                  if (v606 != v603)
                  {
                  }

                  if (v612 != v609)
                  {
                  }

                  if (v618 != v615)
                  {
                  }

                  if (v624 != v621)
                  {
                  }

                  if (v630 != v627)
                  {
                  }

                  if (v638 != v635)
                  {
                  }

                  if (v644 != v641)
                  {
                  }

                  if (v506 != v647)
                  {
                  }

                  if (v512 != null9)
                  {
                  }

                  v341 = *(selfCopy + 168);
                  startDate2 = [v653 startDate];
                  [startDate2 timeIntervalSinceReferenceDate];
                  [v341 sendEvent:v464 timestamp:?];
                }

                value4 = v665;
              }

              v84 = v658;
              goto LABEL_296;
            }

            metadata4 = [v27 metadata];
            value4 = [v27 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v659 = v26;
              v35 = objc_alloc(MEMORY[0x1E698EB30]);
              v663 = value4;
              stringValue2 = [value4 stringValue];
              startDate2 = +[_DKRelevantShortcutMetadataKey keyImageProxyIdentifier];
              v36 = [metadata4 objectForKeyedSubscript:startDate2];
              null22 = [MEMORY[0x1E695DFB0] null];
              if (v36 == null22)
              {
                v40 = 0;
              }

              else
              {
                +[_DKRelevantShortcutMetadataKey keyImageProxyIdentifier];
                objc_claimAutoreleasedReturnValue();
                v38 = OUTLINED_FUNCTION_9_10();
                v568 = v39;
                v40 = [v38 objectForKeyedSubscript:?];
                v569 = v40;
              }

              v65 = +[_DKRelevantShortcutMetadataKey serializedRelevantShortcut];
              v66 = [metadata4 objectForKeyedSubscript:v65];
              null23 = [MEMORY[0x1E695DFB0] null];
              v667 = metadata4;
              if (v66 == null23)
              {
                v78 = [v35 initWithBundleID:stringValue2 keyImageProxyIdentifier:v40 serializedRelevantShortcut:0];
              }

              else
              {
                +[_DKRelevantShortcutMetadataKey serializedRelevantShortcut];
                v654 = v66;
                v68 = v65;
                v69 = v40;
                v70 = null22;
                v71 = v36;
                v72 = startDate2;
                v74 = v73 = v35;
                v75 = [metadata4 objectForKeyedSubscript:v74];
                v76 = v73;
                startDate2 = v72;
                v36 = v71;
                null22 = v70;
                v77 = v69;
                v65 = v68;
                v66 = v654;
                v78 = [v76 initWithBundleID:stringValue2 keyImageProxyIdentifier:v77 serializedRelevantShortcut:v75];
              }

              value4 = v663;

              v26 = v659;
              if (v36 != null22)
              {
              }

              v24 = v632;
              [v632 addObject:v78];
              v25 = MEMORY[0x1E69E9C10];
              v84 = v78;
              metadata4 = v667;
LABEL_296:
            }

LABEL_298:
            ++v26;
          }

          while (v656 != v26);
          v345 = [obj countByEnumeratingWithState:&v677 objects:v685 count:16];
          v656 = v345;
        }

        while (v345);
      }

      v346 = v390;
      if ([v390 count])
      {
        [*(selfCopy + 184) publishXPCEventForAppIntents:v390 appActivities:v389 uid:HIDWORD(v388)];
      }

      if ([v24 count])
      {
        v347 = [v24 objectAtIndexedSubscript:0];
        bundleID4 = [v347 bundleID];

        pruner = [*(selfCopy + 176) pruner];
        v674[0] = MEMORY[0x1E69E9820];
        v674[1] = 3221225472;
        v674[2] = __90___CDSpotlightItemRecorder_saveRateLimitedEvents_donatorUid_responseQueue_withCompletion___block_invoke_619;
        v674[3] = &unk_1E7369840;
        v350 = bundleID4;
        v675 = v350;
        [pruner deleteEventsPassingTest:v674];

        source13 = [*(selfCopy + 176) source];
        v670 = 0u;
        v671 = 0u;
        v672 = 0u;
        v673 = 0u;
        v352 = v24;
        v353 = [v352 countByEnumeratingWithState:&v670 objects:v684 count:16];
        if (v353)
        {
          v354 = v353;
          v355 = *v671;
          do
          {
            for (i = 0; i != v354; ++i)
            {
              if (*v671 != v355)
              {
                objc_enumerationMutation(v352);
              }

              [source13 sendEvent:*(*(&v670 + 1) + 8 * i)];
            }

            v354 = [v352 countByEnumeratingWithState:&v670 objects:v684 count:16];
          }

          while (v354);
        }

        v346 = v390;
      }

      queueCopy = v391;
      uidCopy = v392;
      v8 = v387;
    }

    else if (queueCopy)
    {
      (*(queueCopy + 2))(queueCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  v357 = *MEMORY[0x1E69E9840];
}

- (void)_cacheUserActivity:(uint64_t)activity
{
  v3 = a2;
  if (activity)
  {
    v4 = *(activity + 112);
    if (v4)
    {
      v11 = v3;
      source = [v3 source];
      sourceID = [source sourceID];
      value = [v11 value];
      stringValue = [value stringValue];
      source2 = [v11 source];
      itemID = [source2 itemID];
      [v4 addSourceID:sourceID bundleID:stringValue itemID:itemID];

      v3 = v11;
    }
  }
}

- (void)addUserAction:(id)action withItem:(id)item withCompletion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  itemCopy = item;
  completionCopy = completion;
  v9 = _os_activity_create(&dword_191750000, "CoreDuet: addUserAction:withItem:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  v10 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    bundleID = [itemCopy bundleID];
    LODWORD(state.opaque[0]) = 138412290;
    *(state.opaque + 4) = bundleID;
    _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_INFO, "Adding user action for bundleID: %@", &state, 0xCu);
  }

  [_CDSpotlightItemUtils knowledgeEventsForSearchableItem:itemCopy userAction:actionCopy];
  objc_claimAutoreleasedReturnValue();
  v12 = OUTLINED_FUNCTION_16_6();
  getUidOfDonator = [(_CDSpotlightItemRecorder *)v12 getUidOfDonator];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v13)
  {
    v14 = *v42;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        [(_CDSpotlightItemRecorder *)self _cacheUserActivity:v16];
        state.opaque[0] = 0;
        state.opaque[1] = &state;
        v47 = 0x2020000000;
        v48 = 1;
        v17 = MEMORY[0x1E696AEC0];
        bundleID2 = [itemCopy bundleID];
        stream = [v16 stream];
        name = [stream name];
        v21 = [v17 stringWithFormat:@"%@_%@", bundleID2, name];

        activityRateLimiterQueue = self->_activityRateLimiterQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __66___CDSpotlightItemRecorder_addUserAction_withItem_withCompletion___block_invoke;
        block[3] = &unk_1E7369DF0;
        block[4] = self;
        v23 = v21;
        v37 = v23;
        v38 = v16;
        v24 = itemCopy;
        v39 = v24;
        p_state = &state;
        dispatch_sync(activityRateLimiterQueue, block);
        v25 = *(state.opaque[1] + 24);
        if ((v25 & 1) == 0)
        {

          _Block_object_dispose(&state, 8);
          goto LABEL_14;
        }

        v45 = v16;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __66___CDSpotlightItemRecorder_addUserAction_withItem_withCompletion___block_invoke_655;
        v32[3] = &unk_1E736AB90;
        v33 = v24;
        v34 = actionCopy;
        v35 = completionCopy;
        [(_CDSpotlightItemRecorder *)self saveRateLimitedEvents:v26 donatorUid:getUidOfDonator responseQueue:0 withCompletion:v32];

        _Block_object_dispose(&state, 8);
        if (!v25)
        {
          goto LABEL_14;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_deleteUserActivitiesWithPersistentIdentifiers:(void *)identifiers bundleID:
{
  v35[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  identifiersCopy = identifiers;
  v7 = identifiersCopy;
  if (self)
  {
    if (!identifiersCopy)
    {
      v10 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_191750000, v10, OS_LOG_TYPE_ERROR, "Delete user activities failed because the bundleID is nil.", buf, 2u);
      }

      goto LABEL_25;
    }

    v8 = +[_DKSystemEventStreams appActivityStream];
    name = [v8 name];
    v10 = [_DKQuery predicateForEventsWithStreamName:name];

    v11 = +[_DKSystemEventStreams appLocationActivityStream];
    name2 = [v11 name];
    v13 = [_DKQuery predicateForEventsWithStreamName:name2];

    v35[0] = v10;
    v35[1] = v13;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    objc_claimAutoreleasedReturnValue();
    v14 = [OUTLINED_FUNCTION_19_7() orPredicateWithSubpredicates:name2];

    v15 = *(self + 112);
    v16 = v15 == 0;
    if (v15)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __84___CDSpotlightItemRecorder__deleteUserActivitiesWithPersistentIdentifiers_bundleID___block_invoke;
      v31[3] = &unk_1E736ABB8;
      v31[4] = self;
      v32 = v7;
      v17 = [v5 _pas_filteredArrayWithTest:v31];
    }

    else
    {
      v17 = v5;
    }

    if ([v17 count])
    {
      v18 = arc4random_uniform(0x64u) == 0;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(self + 112);
    if (v19)
    {
      v20 = [v19 count] != 0 && (v17 == 0 || v18);
      if (v15)
      {
        v16 = v20;
      }

      else
      {
        v16 = 1;
      }
    }

    v21 = v14;
    if (v17)
    {
      if (![v17 count])
      {
        v22 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_191750000, v22, OS_LOG_TYPE_INFO, "Skipping deletion, all identifiers filterd by cache", buf, 2u);
        }

LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v30 = v16;
      +[_DKSource spotlightSourceID];
      objc_claimAutoreleasedReturnValue();
      v23 = [OUTLINED_FUNCTION_17_9() predicateForEventsWithSourceID:? bundleID:? itemIDs:?];
    }

    else
    {
      v30 = v16;
      +[_DKSource spotlightSourceID];
      objc_claimAutoreleasedReturnValue();
      v23 = [OUTLINED_FUNCTION_17_9() predicateForEventsWithSourceID:? bundleID:?];
    }

    v22 = v23;

    v24 = MEMORY[0x1E696AB28];
    v34[0] = v21;
    v34[1] = v22;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v26 = [v24 andPredicateWithSubpredicates:v25];

    [(_CDSpotlightItemRecorder *)self deleteKnowledgeEventsMatchingPredicate:v26 withCompletion:0];
    if (v30)
    {
      v27 = [[_CDUserActivityCache alloc] initWithKnowledgeStore:*(self + 72)];
      [(_CDUserActivityCache *)v27 populateCache];
      v28 = *(self + 112);
      *(self + 112) = v27;
    }

    goto LABEL_24;
  }

LABEL_26:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)deleteKnowledgeEventsMatchingPredicate:(void *)predicate withCompletion:
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  predicateCopy = predicate;
  if (self)
  {
    v7 = +[_CDLogging spotlightReceiverChannel];
    v8 = os_signpost_id_generate(v7);

    v9 = +[_CDLogging spotlightReceiverChannel];
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_191750000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "_CDSpotlightReceieverDeleteKnowledgeEvents", " enableTelemetry=YES ", buf, 2u);
    }

    v11 = *(self + 72);
    v24 = 0;
    v12 = [v11 deleteAllEventsMatchingPredicate:v5 error:&v24];
    v13 = v24;
    v14 = +[_CDLogging spotlightReceiverChannel];
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        cd_sanitizeForLogging = [v5 cd_sanitizeForLogging];
        *buf = 138478083;
        v26 = cd_sanitizeForLogging;
        v27 = 2114;
        v28 = v13;
        _os_log_error_impl(&dword_191750000, v15, OS_LOG_TYPE_ERROR, "Failed to delete knowledge events with predicate %{private}@. Error = %{public}@.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      cd_sanitizeForLogging2 = [v5 cd_sanitizeForLogging];
      *buf = 134218243;
      v26 = v12;
      v27 = 2113;
      v28 = cd_sanitizeForLogging2;
      _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_DEFAULT, "Successfully deleted %lu knowledge events with predicate %{private}@.", buf, 0x16u);
    }

    v18 = +[_CDLogging spotlightReceiverChannel];
    v19 = v18;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_191750000, v19, OS_SIGNPOST_INTERVAL_END, v8, "_CDSpotlightReceieverDeleteKnowledgeEvents", &unk_19191A712, buf, 2u);
    }

    if (predicateCopy)
    {
      v20 = predicateCopy[2];
      v21 = OUTLINED_FUNCTION_11_0();
      v22(v21);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllItemsWithBundleID:(int)d isCSSIDeletion:(void *)deletion completion:
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  deletionCopy = deletion;
  if (self)
  {
    if (self[18])
    {
      if (d && (+[_CDInteractionPolicies disallowedCSSIBundleIds](_CDInteractionPolicies, "disallowedCSSIBundleIds"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 containsObject:v7], v9, v10))
      {
        v11 = +[_CDLogging spotlightReceiverChannel];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v19 = v7;
          _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_DEFAULT, "Interaction store ignoring call to delete all searchable items for %{public}@ (disallowed bundle ID)", buf, 0xCu);
        }
      }

      else
      {
        objc_initWeak(buf, self);
        v12 = self[2];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __81___CDSpotlightItemRecorder_deleteAllItemsWithBundleID_isCSSIDeletion_completion___block_invoke;
        v15[3] = &unk_1E73675D0;
        objc_copyWeak(&v17, buf);
        v16 = v7;
        dispatch_sync(v12, v15);

        objc_destroyWeak(&v17);
        objc_destroyWeak(buf);
      }
    }

    v13 = [_DKQuery predicateForSpotlightEventsWithBundleID:v7];
    [(_CDSpotlightItemRecorder *)self deleteKnowledgeEventsMatchingPredicate:v13 withCompletion:deletionCopy];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class withCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  classCopy = class;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_191750000, "CoreDuet: deleteAllInteractionsWithBundleID:protectionClass:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v11, &v15);
  os_activity_scope_leave(&v15);

  v12 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v15.opaque[0]) = 138412290;
    *(v15.opaque + 4) = dCopy;
    _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_DEFAULT, "Deleting interactions with bundleID: %@", &v15, 0xCu);
  }

  if (([classCopy isEqualToString:*MEMORY[0x1E696A378]] & 1) != 0 || objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x1E696A380]))
  {
    v13 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15.opaque[0]) = 0;
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "Request to delete items with identifiers with protectionClass A or B when in class C, D.", &v15, 2u);
    }
  }

  [(_CDSpotlightItemRecorder *)self deleteAllItemsWithBundleID:dCopy isCSSIDeletion:0 completion:completionCopy];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_addOrUpdateCoreDuetInteractions:(void *)a3 bundleID:.cold.1(void *a1, uint64_t a2, void *a3)
{
  v5 = objc_alloc_init(_CDSpotlightItemRecorderOperation);
  v6 = v5;
  if (v5)
  {
    v5->_type = 0;
  }

  [(_DKPredictionTimeline *)v5 setStartDate:a1];
  v7 = OUTLINED_FUNCTION_11_9();
  [(_DKSyncWindow *)v7 setStartDate:v8];
  [(_CDSpotlightItemRecorder *)a3 submitOperation:v6];
}

- (void)donateRelevantShortcuts:(NSObject *)a3 bundleID:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  [a1 count];
  v5 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_191750000, a3, OS_LOG_TYPE_DEBUG, "Saving %@ relevant shortcuts with bundleID %@ to knowledge store", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)addInteractions:(uint64_t)a3 bundleID:protectionClass:withCompletion:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E695DF00] date];
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  obj = a2;
  v28 = a3;
  v7 = [obj countByEnumeratingWithState:a1 objects:a3 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = **(a1 + 16);
    v30 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (**(a1 + 16) != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(a1 + 8) + 8 * i);
        v12 = [v11 dateInterval];
        v13 = [v12 startDate];

        if (v13)
        {
          [v6 timeIntervalSinceDate:v13];
          v15 = v14;
          if ([v11 direction] == 2)
          {
            v16 = [v11 intent];
            [v16 _className];
            v18 = v17 = v6;
            v19 = objc_opt_class();
            NSStringFromClass(v19);
            v21 = v20 = v8;
            v22 = [v18 isEqualToString:v21];

            v8 = v20;
            v6 = v17;
            v9 = v30;

            if (v22)
            {
              if (v15 > 0.0 && v15 < 180.0)
              {
                v23 = [v11 intent];
                v24 = [_CDSpotlightItemUtils messageContextDictionaryForSendMessageIntent:v23];
                if (v24)
                {
                  [v29 addObject:v24];
                }
              }
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:a1 objects:v28 count:16];
    }

    while (v8);
  }

  if ([v29 count])
  {
    v25 = [get_CDContextualKeyPathClass() ephemeralKeyPathWithKey:@"/interactions/messages"];
    v26 = [v29 copy];
    v27 = [get_CDClientContextClass() userContext];
    [v27 setObject:v26 forKeyedSubscript:v25];
  }
}

- (void)deleteSearchableItemsWithIdentifiers:bundleID:withCompletion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error retrieving mail interactions to delete by identifiers: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteSearchableItemsWithIdentifiers:bundleID:withCompletion:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error retrieving share sheet interactions marked as mail special deletion candidates: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteSearchableItemsWithIdentifiers:(uint64_t)a1 bundleID:(void *)a2 withCompletion:.cold.3(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(_CDSpotlightItemRecorderOperation);
  v4 = v3;
  if (v3)
  {
    v3->_type = 1;
  }

  v5 = OUTLINED_FUNCTION_11_9();
  [(_DKPredictionTimeline *)v5 setStartDate:v6];
  v7 = +[_CDConstants facetimeBundleId];
  v8 = OUTLINED_FUNCTION_11_9();
  [(_DKSyncWindow *)v8 setStartDate:v9];

  [(_CDSpotlightItemRecorder *)a2 submitOperation:v4];
}

- (void)deleteSearchableItemsWithIdentifiers:(uint64_t)a1 bundleID:(void *)a2 withCompletion:.cold.4(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(_CDSpotlightItemRecorderOperation);
  v4 = v3;
  if (v3)
  {
    v3->_type = 1;
  }

  v5 = OUTLINED_FUNCTION_11_9();
  [(_DKPredictionTimeline *)v5 setStartDate:v6];
  v7 = +[_CDConstants contactsAutocompleteBundleId];
  v8 = OUTLINED_FUNCTION_11_9();
  [(_DKSyncWindow *)v8 setStartDate:v9];

  [(_CDSpotlightItemRecorder *)a2 submitOperation:v4];
}

@end