@interface CHInteraction
- (CHInteraction)init;
- (void)deleteInteractionWithCall:(id)call;
- (void)deleteInteractionWithCalls:(id)calls;
- (void)donateCallHistoryInteractionWithCall:(id)call;
@end

@implementation CHInteraction

- (CHInteraction)init
{
  v6.receiver = self;
  v6.super_class = CHInteraction;
  v2 = [(CHInteraction *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6964E78]);
    searchableIndex = v2->_searchableIndex;
    v2->_searchableIndex = v3;
  }

  return v2;
}

- (void)donateCallHistoryInteractionWithCall:(id)call
{
  v94[4] = *MEMORY[0x1E69E9840];
  callCopy = call;
  context = objc_autoreleasePoolPush();
  v3 = +[CHLogServer sharedInstance];
  v4 = [v3 logHandleForDomain:"intent"];

  v5 = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueId = [callCopy uniqueId];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = uniqueId;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "Adding interaction for call %{public}@", &buf, 0xCu);
  }

  serviceProvider = [callCopy serviceProvider];
  v65 = CHServiceProviderToINPreferredCallProvider(serviceProvider);

  if (v65)
  {
    v64 = objc_alloc_init(MEMORY[0x1E695CE28]);
    v62 = objc_alloc_init(CHFeatureFlags);
    if ([(CHFeatureFlags *)v62 junkFilteringEnabled])
    {
      [v64 setIncludeAcceptedIntroductions:1];
    }

    v8 = [CHContactProvider alloc];
    v9 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v64];
    v61 = [(CHContactProvider *)v8 initWithDataSource:v9];

    v10 = *MEMORY[0x1E695C330];
    v94[0] = *MEMORY[0x1E695C258];
    v94[1] = v10;
    v94[2] = *MEMORY[0x1E695C208];
    descriptorForUsedKeys = [MEMORY[0x1E696ADF0] descriptorForUsedKeys];
    v94[3] = descriptorForUsedKeys;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:4];

    v93 = callCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
    v82 = 0;
    v67 = [(CHContactProvider *)v61 contactsByHandleForCalls:v12 keyDescriptors:v60 error:&v82];
    v59 = v82;

    if (v67)
    {
      v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
      remoteParticipantHandles = [callCopy remoteParticipantHandles];
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      v78 = 0u;
      v14 = [remoteParticipantHandles countByEnumeratingWithState:&v78 objects:v92 count:16];
      if (v14)
      {
        v15 = *v79;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v79 != v15)
            {
              objc_enumerationMutation(remoteParticipantHandles);
            }

            v17 = *(*(&v78 + 1) + 8 * i);
            if (([v17 type] - 4) >= 0xFFFFFFFFFFFFFFFELL)
            {
              v18 = [v67 objectForKeyedSubscript:v17];
              firstObject = [v18 firstObject];

              isoCountryCode = [callCopy isoCountryCode];
              v21 = CHHandleToINPersonHandle(v17, firstObject, isoCountryCode);

              if (firstObject)
              {
                v22 = [MEMORY[0x1E696ADF0] componentsForContact:firstObject];
              }

              else
              {
                v22 = 0;
              }

              v23 = objc_alloc(MEMORY[0x1E696E940]);
              identifier = [firstObject identifier];
              LOBYTE(v58) = 0;
              v25 = [v23 initWithPersonHandle:v21 nameComponents:v22 displayName:0 image:0 contactIdentifier:identifier customIdentifier:0 isMe:v58];

              [v66 addObject:v25];
            }
          }

          v14 = [remoteParticipantHandles countByEnumeratingWithState:&v78 objects:v92 count:16];
        }

        while (v14);
      }
    }

    else
    {
      if (!v59)
      {
        v66 = 0;
        goto LABEL_27;
      }

      v29 = +[CHLogServer sharedInstance];
      remoteParticipantHandles = [v29 logHandleForDomain:"intent"];

      if (os_log_type_enabled(remoteParticipantHandles, OS_LOG_TYPE_ERROR))
      {
        [(CHInteraction *)v59 donateCallHistoryInteractionWithCall:remoteParticipantHandles];
      }

      v66 = 0;
    }

LABEL_27:
    v30 = CHTTYTypeToINTTYType([callCopy ttyType]);
    v31 = CHRecentCallMediaTypeToINCallCapability([callCopy mediaType]);
    v32 = objc_alloc_init(MEMORY[0x1E696EA68]);
    timeToEstablish = [callCopy timeToEstablish];
    [timeToEstablish doubleValue];
    [v32 setTimeToEstablish:?];

    [callCopy duration];
    [v32 setCallDuration:?];
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(callCopy, "callStatus")}];
    [v32 setRecentCallStatus:v34];

    disconnectedCause = [callCopy disconnectedCause];
    [v32 setDisconnectedReason:disconnectedCause];

    v36 = [objc_alloc(MEMORY[0x1E696EA60]) initWithAudioRoute:0 destinationType:1 preferredCallProvider:v65 contacts:v66 recordTypeForRedialing:0 ttyType:v30 callCapability:v31];
    [v36 _setLaunchId:@"com.apple.InCallService"];
    [v36 _setExtensionBundleId:@"com.apple.TelephonyUtilities.PhoneIntentHandler"];
    notificationThreadIdentifier = [callCopy notificationThreadIdentifier];
    [v36 setNotificationThreadIdentifier:notificationThreadIdentifier];

    [v36 setDonationMetadata:v32];
    v38 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v36 response:0];
    interactionDateInterval = [callCopy interactionDateInterval];
    [v38 setDateInterval:interactionDateInterval];

    [v38 setDirection:{CHCallStatusToINInteractionDirection(objc_msgSend(callCopy, "callStatus"))}];
    uniqueId2 = [callCopy uniqueId];
    [v38 setIdentifier:uniqueId2];

    [v38 setIntentHandlingStatus:3];
    if ([callCopy callStatus] == 8)
    {
      location = 0;
      p_location = &location;
      v85 = 0x2050000000;
      v41 = get_DKSystemEventStreamsClass_softClass;
      v86 = get_DKSystemEventStreamsClass_softClass;
      if (!get_DKSystemEventStreamsClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v88 = __get_DKSystemEventStreamsClass_block_invoke;
        v89 = &unk_1E81DC190;
        v90 = &location;
        __get_DKSystemEventStreamsClass_block_invoke(&buf);
        v41 = p_location[3];
      }

      v42 = v41;
      _Block_object_dispose(&location, 8);
      appIntentsStream = [v41 appIntentsStream];
      name = [appIntentsStream name];

      location = 0;
      p_location = &location;
      v85 = 0x2020000000;
      v45 = get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_ptr;
      v86 = get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_ptr;
      if (!get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v88 = __get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_block_invoke;
        v89 = &unk_1E81DC190;
        v90 = &location;
        v46 = CoreDuetLibrary();
        v47 = dlsym(v46, "_DKKnowledgeStorageDidInsertEventsNotification");
        *(v90[1] + 3) = v47;
        get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_ptr = *(v90[1] + 3);
        v45 = p_location[3];
      }

      _Block_object_dispose(&location, 8);
      if (!v45)
      {
        [CHInteraction donateCallHistoryInteractionWithCall:];
        __break(1u);
      }

      v48 = *v45;
      v49 = v48;
      if (name && v48)
      {
        defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
        objc_initWeak(&location, defaultCenter);

        *&buf = 0;
        *(&buf + 1) = &buf;
        v88 = 0x3032000000;
        v89 = __Block_byref_object_copy__0;
        v90 = __Block_byref_object_dispose__0;
        v91 = 0;
        defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __54__CHInteraction_donateCallHistoryInteractionWithCall___block_invoke;
        v72[3] = &unk_1E81DC118;
        v73 = callCopy;
        objc_copyWeak(&v77, &location);
        p_buf = &buf;
        v74 = v49;
        v75 = name;
        v52 = [defaultCenter2 addObserverForName:v74 object:v75 queue:0 usingBlock:v72];
        v53 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v52;

        _Block_object_dispose(&buf, 8);
        objc_destroyWeak(&v77);

        objc_destroyWeak(&location);
      }
    }

    uniqueId3 = [callCopy uniqueId];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __54__CHInteraction_donateCallHistoryInteractionWithCall___block_invoke_15;
    v69[3] = &unk_1E81DC140;
    v70 = v38;
    v71 = uniqueId3;
    v55 = uniqueId3;
    v56 = v38;
    [v56 donateInteractionWithCompletion:v69];

    v28 = v64;
    goto LABEL_38;
  }

  v26 = +[CHLogServer sharedInstance];
  v27 = [v26 logHandleForDomain:"intent"];

  v28 = v27;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [CHInteraction donateCallHistoryInteractionWithCall:v27];
    v28 = v27;
  }

LABEL_38:

  objc_autoreleasePoolPop(context);
  v57 = *MEMORY[0x1E69E9840];
}

void __54__CHInteraction_donateCallHistoryInteractionWithCall___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"intent"];

  v6 = v5;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 name];
    v8 = [*(a1 + 32) uniqueId];
    v12 = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Handling %{public}@ for call with identifier %{public}@", &v12, 0x16u);
  }

  v9 = [*(a1 + 32) interaction];

  if (v9)
  {
    notify_post("com.apple.callhistory.notification.call-interactions-changed");
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained removeObserver:*(*(*(a1 + 56) + 8) + 40) name:*(a1 + 40) object:*(a1 + 48)];

  v11 = *MEMORY[0x1E69E9840];
}

void __54__CHInteraction_donateCallHistoryInteractionWithCall___block_invoke_15(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = +[CHLogServer sharedInstance];
  v6 = [v5 logHandleForDomain:"intent"];

  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __54__CHInteraction_donateCallHistoryInteractionWithCall___block_invoke_15_cold_1(a1, v3, v6);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = 138412546;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Successfully donated interaction %@ for call with identifier %{public}@", &v10, 0x16u);
  }

  [MEMORY[0x1E696E9B8] _resetCache];
  objc_autoreleasePoolPop(v4);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)deleteInteractionWithCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  if (call)
  {
    callCopy = call;
    v4 = MEMORY[0x1E695DEC8];
    callCopy2 = call;
    v6 = [v4 arrayWithObjects:&callCopy count:1];

    [(CHInteraction *)self deleteInteractionWithCalls:v6, callCopy, v9];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)deleteInteractionWithCalls:(id)calls
{
  v22 = *MEMORY[0x1E69E9840];
  callsCopy = calls;
  v5 = @"com.apple.InCallService";
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__CHInteraction_deleteInteractionWithCalls___block_invoke;
  aBlock[3] = &unk_1E81DC168;
  v6 = callsCopy;
  v17 = v6;
  v7 = _Block_copy(aBlock);
  if ([v6 count])
  {
    v8 = +[CHLogServer sharedInstance];
    v9 = [v8 logHandleForDomain:"intent"];

    v10 = v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 count];
      *buf = 134218242;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Removing %lu donated interactions for bundle identifier %@", buf, 0x16u);
    }

    searchableIndex = [(CHInteraction *)self searchableIndex];
    [searchableIndex deleteInteractionsWithIdentifiers:v6 bundleID:v5 protectionClass:0 completionHandler:v7];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v14 = +[CHLogServer sharedInstance];
    v15 = [v14 logHandleForDomain:"intent"];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_1C3E90000, v15, OS_LOG_TYPE_DEFAULT, "Removing all donated interactions for bundle identifier %@", buf, 0xCu);
    }

    searchableIndex = [(CHInteraction *)self searchableIndex];
    [searchableIndex deleteAllInteractionsWithBundleID:v5 protectionClass:0 completionHandler:v7];
  }

LABEL_7:
  v13 = *MEMORY[0x1E69E9840];
}

void __44__CHInteraction_deleteInteractionWithCalls___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"intent"];

  v6 = v5;
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__CHInteraction_deleteInteractionWithCalls___block_invoke_cold_1(a1, v3, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) count];
    v10 = 134217984;
    v11 = v8;
    _os_log_impl(&dword_1C3E90000, v7, OS_LOG_TYPE_DEFAULT, "Deleting interaction for %lu calls succeeded", &v10, 0xCu);
  }

  [MEMORY[0x1E696E9B8] _resetCache];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)donateCallHistoryInteractionWithCall:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C3E90000, a2, OS_LOG_TYPE_ERROR, "Could not fetch contacts: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (uint64_t)donateCallHistoryInteractionWithCall:.cold.2()
{
  dlerror();
  v0 = abort_report_np();
  return [CHInteraction donateCallHistoryInteractionWithCall:v0];
}

void __54__CHInteraction_donateCallHistoryInteractionWithCall___block_invoke_15_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1C3E90000, log, OS_LOG_TYPE_ERROR, "Could not donate interaction for call with identifier %{public}@: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __44__CHInteraction_deleteInteractionWithCalls___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) count];
  v7 = 134218242;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1C3E90000, a3, OS_LOG_TYPE_ERROR, "Deleting interaction for %lu calls failed: %@", &v7, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

@end