@interface EDMessageCategorizer
+ (EDMessageCategorizationResult)noneMessageCategorizationResult;
+ (OS_os_log)signpostLog;
+ (id)log;
+ (id)queryForMessagesToCategorizeForVersion:(int64_t)a3;
- (BOOL)_categorizeMessages:(id)a3 senderAttributes:(id)a4 signpostID:(unint64_t)a5 results:(id)a6 reason:(int64_t)a7;
- (BOOL)_categorizeMessages:(id)a3 signpostID:(unint64_t)a4 results:(id *)a5 reason:(int64_t)a6;
- (BOOL)_shouldGenerateSummaries;
- (EDMessageCategorizer)initWithCategoryPersistence:(id)a3 vipManager:(id)a4 contactStore:(id)a5 analyticsLogger:(id)a6 senderPersistence:(id)a7 hookRegistry:(id)a8;
- (id)_makeCategorizationResultFromPrediction:(id)a3;
- (id)_makeCategorizationResultMetadataFromPrediction:(id)a3;
- (id)_messagesToCategorizeFromMessages:(id)a3;
- (id)_stableEmailAddressForMessage:(id)a3;
- (id)categorizeMessages:(id)a3 reason:(int64_t)a4;
- (unint64_t)_categoryTypeForString:(id)a3 subType:(unint64_t *)a4;
- (unint64_t)signpostID;
- (void)getModelVersionWithCompletion:(id)a3;
- (void)persistenceDidAddNewMessages:(id)a3;
- (void)persistenceDidReconcileJournaledMessages:(id)a3 generationWindow:(id)a4;
- (void)persistenceWillAddNewMessages:(id)a3;
@end

@implementation EDMessageCategorizer

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EDMessageCategorizer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_58 != -1)
  {
    dispatch_once(&log_onceToken_58, block);
  }

  v2 = log_log_58;

  return v2;
}

void __27__EDMessageCategorizer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_58;
  log_log_58 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__EDMessageCategorizer_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken_2 != -1)
  {
    dispatch_once(&signpostLog_onceToken_2, block);
  }

  v2 = signpostLog_log_2;

  return v2;
}

void __35__EDMessageCategorizer_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_2;
  signpostLog_log_2 = v1;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

+ (EDMessageCategorizationResult)noneMessageCategorizationResult
{
  if (noneMessageCategorizationResult_onceToken != -1)
  {
    +[EDMessageCategorizer noneMessageCategorizationResult];
  }

  v3 = noneMessageCategorizationResult_sInstance;

  return v3;
}

void __55__EDMessageCategorizer_noneMessageCategorizationResult__block_invoke()
{
  v0 = [EDMessageCategorizationResult alloc];
  v3 = [objc_alloc(MEMORY[0x1E699AC48]) initWithType:0 subtype:0 isHighImpact:0 state:1];
  v1 = [EDMessageCategorizationResult initWithCategory:v0 metadata:"initWithCategory:metadata:"];
  v2 = noneMessageCategorizationResult_sInstance;
  noneMessageCategorizationResult_sInstance = v1;
}

- (EDMessageCategorizer)initWithCategoryPersistence:(id)a3 vipManager:(id)a4 contactStore:(id)a5 analyticsLogger:(id)a6 senderPersistence:(id)a7 hookRegistry:(id)a8
{
  v44 = a3;
  v43 = a4;
  v15 = a5;
  v42 = a6;
  v16 = a7;
  v17 = a8;
  v47.receiver = self;
  v47.super_class = EDMessageCategorizer;
  v18 = [(EDMessageCategorizer *)&v47 init];
  if (v18)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x2050000000;
    v19 = getMCCSecretAgentControllerClass_softClass_1;
    v52 = getMCCSecretAgentControllerClass_softClass_1;
    if (!getMCCSecretAgentControllerClass_softClass_1)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getMCCSecretAgentControllerClass_block_invoke_1;
      location[3] = &unk_1E8250000;
      location[4] = &v49;
      __getMCCSecretAgentControllerClass_block_invoke_1(location);
      v19 = v50[3];
    }

    v20 = v19;
    _Block_object_dispose(&v49, 8);
    v21 = objc_alloc_init(v19);
    secretAgentController = v18->_secretAgentController;
    v18->_secretAgentController = v21;

    objc_storeStrong(&v18->_persistence, a3);
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_UTILITY, 0);
    v25 = dispatch_queue_create("com.apple.email.EDMessageCategorizer", v24);
    processingQueue = v18->_processingQueue;
    v18->_processingQueue = v25;

    v27 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:{1, v42, v43, v44}];
    categorizationState = v18->_categorizationState;
    v18->_categorizationState = v27;

    objc_storeStrong(&v18->_vipManager, a4);
    if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl() && EMIsGreymatterSupported())
    {
      v29 = [objc_alloc(MEMORY[0x1E699AC40]) initWithStore:v15 options:2];
      contactStore = v18->_contactStore;
      v18->_contactStore = v29;
    }

    objc_storeStrong(&v18->_analyticsLogger, a6);
    objc_storeStrong(&v18->_senderPersistence, a7);
    v31 = objc_alloc_init(MEMORY[0x1E699B230]);
    verifier = v18->_verifier;
    v18->_verifier = v31;

    [v17 registerMessageChangeHookResponder:v18];
    objc_initWeak(location, v18);
    v33 = v18->_processingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __123__EDMessageCategorizer_initWithCategoryPersistence_vipManager_contactStore_analyticsLogger_senderPersistence_hookRegistry___block_invoke;
    block[3] = &unk_1E8250808;
    objc_copyWeak(&v46, location);
    dispatch_async(v33, block);
    if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
    {
      v34 = objc_alloc(MEMORY[0x1E699AE00]);
      v35 = [v34 initWithUserDefaultKey:*MEMORY[0x1E699AB68] keyRepresentsDisabled:1 handler:0];
      automaticallySummarizeMessages = v18->_automaticallySummarizeMessages;
      v18->_automaticallySummarizeMessages = v35;
    }

    v37 = objc_alloc(MEMORY[0x1E699B7F0]);
    v38 = [MEMORY[0x1E695DFA8] set];
    v39 = [v37 initWithObject:v38];
    messagesWithCategorization = v18->_messagesWithCategorization;
    v18->_messagesWithCategorization = v39;

    objc_destroyWeak(&v46);
    objc_destroyWeak(location);
  }

  return v18;
}

void __123__EDMessageCategorizer_initWithCategoryPersistence_vipManager_contactStore_analyticsLogger_senderPersistence_hookRegistry___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained categorizationState];
  [v1 lock];

  v2 = [WeakRetained categorizationState];
  [v2 unlockWithCondition:0];
}

- (BOOL)_shouldGenerateSummaries
{
  if (!_os_feature_enabled_impl() || !EMIsGreymatterAvailable())
  {
    return 0;
  }

  v3 = [(EDMessageCategorizer *)self automaticallySummarizeMessages];
  v4 = [v3 isEnabled];

  return v4;
}

- (void)persistenceWillAddNewMessages:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_os_feature_enabled_impl() & 1) != 0 || [(EDMessageCategorizer *)self _shouldGenerateSummaries])
  {
    v5 = +[EDMessageCategorizer signpostLog];
    v6 = os_signpost_id_make_with_pointer(v5, [MEMORY[0x1E696AFB0] UUID]);

    v7 = +[EDMessageCategorizer signpostLog];
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 134349056;
      v31 = [v4 count];
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "EDMessageCategorization", "Begin message categorization (count=%{public,signpost.telemetry:number1}lu) enableTelemetry=YES ", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__EDMessageCategorizer_persistenceWillAddNewMessages___block_invoke;
    aBlock[3] = &unk_1E8253848;
    v29 = v6;
    v9 = v4;
    v28 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [MEMORY[0x1E695DF00] ef_dateHoursAgo:168];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __54__EDMessageCategorizer_persistenceWillAddNewMessages___block_invoke_114;
    v25[3] = &unk_1E8253878;
    v12 = v11;
    v26 = v12;
    v13 = [v9 ef_filter:v25];
    v14 = [v13 count];
    if (v14 < [v9 count])
    {
      v15 = [v9 count];
      v16 = [v13 count];
      v17 = +[EDMessageCategorizer log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v31 = v15 - v16;
        _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Filtered out %lu messages older than one day", buf, 0xCu);
      }
    }

    v24 = 0;
    [(EDMessageCategorizer *)self _categorizeMessages:v13 signpostID:v6 results:&v24 reason:0];
    v18 = v24;
    if ([v18 count])
    {
      [v18 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_119];
      v19 = [(EDMessageCategorizer *)self messagesWithCategorization];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __54__EDMessageCategorizer_persistenceWillAddNewMessages___block_invoke_2;
      v22[3] = &unk_1E82538C0;
      v20 = v18;
      v23 = v20;
      [v19 performWhileLocked:v22];

      v10[2](v10, [v20 count]);
    }

    else
    {
      v10[2](v10, 0);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __54__EDMessageCategorizer_persistenceWillAddNewMessages___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = +[EDMessageCategorizer signpostLog];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = [*(a1 + 32) count];
    v9 = 134349312;
    v10 = v7;
    v11 = 2050;
    v12 = a2;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_INTERVAL_END, v6, "EDMessageCategorization", "Finish message categorization (count=%{public,signpost.telemetry:number1}lu, result=%{public,signpost.telemetry:number2}lu) enableTelemetry=YES ", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __54__EDMessageCategorizer_persistenceWillAddNewMessages___block_invoke_114(uint64_t a1, void *a2)
{
  v3 = [a2 dateReceived];
  v4 = [v3 ef_isLaterThanDate:*(a1 + 32)];

  return v4;
}

void __54__EDMessageCategorizer_persistenceWillAddNewMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) allKeys];
  [v4 addObjectsFromArray:v3];
}

- (void)persistenceDidAddNewMessages:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(EDMessageCategorizer *)self messagesWithCategorization];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__EDMessageCategorizer_persistenceDidAddNewMessages___block_invoke;
  v10[3] = &unk_1E8253910;
  v7 = v4;
  v11 = v7;
  v8 = v5;
  v12 = v8;
  v13 = self;
  [v6 performWhileLocked:v10];

  v9 = [(EDMessageCategorizer *)self analyticsLogger];
  [v9 logReceiveEventForMessagesWithResult:v8];
}

void __53__EDMessageCategorizer_persistenceDidAddNewMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__EDMessageCategorizer_persistenceDidAddNewMessages___block_invoke_2;
  v8[3] = &unk_1E82538E8;
  v5 = v3;
  v9 = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = v6;
  v11 = v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  [v5 removeAllObjects];
}

void __53__EDMessageCategorizer_persistenceDidAddNewMessages___block_invoke_2(id *a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([a1[4] containsObject:v6])
  {
    v7 = [v6 categorizationResult];
    [a1[5] setObject:v7 forKeyedSubscript:v5];

    v8 = [v5 category];
    v9 = [v8 state];

    if (v9 == 3)
    {
      v10 = [a1[6] analyticsLogger];
      v16[0] = v5;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v12 = [v5 category];
      v13 = [v12 type];
      v14 = [a1[6] persistence];
      [v10 logRecategorizationEventForMessages:v11 categoryType:v13 categoryPersistence:v14];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidReconcileJournaledMessages:(id)a3 generationWindow:(id)a4
{
  v8 = a3;
  if (_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl() && (EMIsGreymatterAvailable())
  {
    v5 = [v8 ef_filter:&__block_literal_global_126];
    v6 = [(EDMessageCategorizer *)self categorizeMessages:v5 reason:4];
    v7 = [(EDMessageCategorizer *)self persistence];
    [v7 persistCategorizationResultMap:v6 userInitiated:0];
  }
}

BOOL __82__EDMessageCategorizer_persistenceDidReconcileJournaledMessages_generationWindow___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 category];
  v3 = [v2 state] == 2;

  return v3;
}

- (id)categorizeMessages:(id)a3 reason:(int64_t)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[EDMessageCategorizer signpostLog];
  v8 = os_signpost_id_make_with_pointer(v7, [MEMORY[0x1E696AFB0] UUID]);

  v9 = +[EDMessageCategorizer signpostLog];
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 134349056;
    v33 = [v6 count];
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "EDMessageCategorization", "Begin message categorization (count=%{public,signpost.telemetry:number1}lu) enableTelemetry=YES ", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__EDMessageCategorizer_categorizeMessages_reason___block_invoke;
  aBlock[3] = &unk_1E8253848;
  v31 = v8;
  v11 = v6;
  v30 = v11;
  v12 = _Block_copy(aBlock);
  v28 = 0;
  v13 = [(EDMessageCategorizer *)self _categorizeMessages:v11 signpostID:v8 results:&v28 reason:a4];
  v14 = v28;
  v15 = v14;
  if (v13 && [v14 count])
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __50__EDMessageCategorizer_categorizeMessages_reason___block_invoke_127;
    v26 = &unk_1E8253958;
    v17 = v16;
    v27 = v17;
    [v15 enumerateKeysAndObjectsUsingBlock:&v23];
    v18 = [EDMessageCategorizer log:v23];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = v17;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Biome donation of categorization results map: %{public}@", buf, 0xCu);
    }

    v19 = [(EDMessageCategorizer *)self analyticsLogger];
    [v19 logReceiveEventForMessagesWithResult:v17];

    v12[2](v12, [v15 count]);
    v20 = v15;
  }

  else
  {
    v12[2](v12, 0);
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __50__EDMessageCategorizer_categorizeMessages_reason___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = +[EDMessageCategorizer signpostLog];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = [*(a1 + 32) count];
    v9 = 134349312;
    v10 = v7;
    v11 = 2050;
    v12 = a2;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_INTERVAL_END, v6, "EDMessageCategorization", "Finish message categorization (count=%{public,signpost.telemetry:number1}lu, result=%{public,signpost.telemetry:number2}lu) enableTelemetry=YES ", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __50__EDMessageCategorizer_categorizeMessages_reason___block_invoke_127(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 category];
  v7 = [v6 state];

  if (v7 != 2)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];
  }
}

- (BOOL)_categorizeMessages:(id)a3 signpostID:(unint64_t)a4 results:(id *)a5 reason:(int64_t)a6
{
  v66 = *MEMORY[0x1E69E9840];
  v42 = [(EDMessageCategorizer *)self _messagesToCategorizeFromMessages:a3];
  if ([v42 count])
  {
    v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v50 = [(EDMessageCategorizer *)self senderPersistence];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v42;
    v6 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (!v6)
    {
      goto LABEL_23;
    }

    v7 = *v57;
    v8 = *MEMORY[0x1E699B748];
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v56 + 1) + 8 * i);
        v11 = [v10 senders];
        v12 = [v11 firstObject];
        v13 = [v12 emailAddressValue];
        v14 = [v13 simpleAddress];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = [v12 stringValue];
        }

        v17 = v16;

        v18 = [v17 lowercaseString];

        v19 = [v50 userHasSentToSenderAddress:v18];
        if (v19)
        {
          if (v19 == 1)
          {
            if ((*(v8 + 16))(v8, v18))
            {
              [v43 addObject:v18];
              v20 = v47;
            }

            else
            {
              v21 = +[EDMessageCategorizer log];
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v10;
                _os_log_error_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_ERROR, "Found nil sender for message %@", &buf, 0xCu);
              }

              v20 = v47;
            }
          }

          else
          {
            if (v19 != 2)
            {
              goto LABEL_21;
            }

            [v45 addObject:v18];
            v20 = v48;
          }
        }

        else
        {
          [v44 addObject:v18];
          v20 = v46;
        }

        [v20 addObject:v10];
LABEL_21:
      }

      v6 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (!v6)
      {
LABEL_23:

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __70__EDMessageCategorizer__categorizeMessages_signpostID_results_reason___block_invoke;
        aBlock[3] = &unk_1E8253980;
        aBlock[4] = self;
        v22 = _Block_copy(aBlock);
        v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
        if ([v48 count])
        {
          v24 = v22[2](v22, v45, 1);
          v25 = [(EDMessageCategorizer *)self _categorizeMessages:v48 senderAttributes:v24 signpostID:a4 results:v23 reason:a6];

          if (!v25)
          {
            goto LABEL_37;
          }
        }

        if ([v47 count] && (v22[2](v22, v43, 0), v26 = objc_claimAutoreleasedReturnValue(), v27 = -[EDMessageCategorizer _categorizeMessages:senderAttributes:signpostID:results:reason:](self, "_categorizeMessages:senderAttributes:signpostID:results:reason:", v47, v26, a4, v23, a6), v26, !v27))
        {
LABEL_37:
          v32 = 0;
        }

        else if ([v46 count])
        {
          v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v29 = v22[2](v22, v44, 1);
          if ([(EDMessageCategorizer *)self _categorizeMessages:v46 senderAttributes:v29 signpostID:a4 results:v28 reason:a6])
          {
            v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v31 = [v29 ef_mapValues:&__block_literal_global_136];
            v32 = [(EDMessageCategorizer *)self _categorizeMessages:v46 senderAttributes:v31 signpostID:a4 results:v30 reason:a6];
            if (v32)
            {
              *&buf = 0;
              *(&buf + 1) = &buf;
              v63 = 0x2020000000;
              v64 = 0;
              v51[0] = MEMORY[0x1E69E9820];
              v51[1] = 3221225472;
              v51[2] = __70__EDMessageCategorizer__categorizeMessages_signpostID_results_reason___block_invoke_4;
              v51[3] = &unk_1E82539C8;
              v52 = v30;
              v53 = v23;
              p_buf = &buf;
              [v28 enumerateKeysAndObjectsUsingBlock:v51];
              v33 = +[EDMessageCategorizer log];
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = *(*(&buf + 1) + 24);
                *v60 = 134217984;
                v61 = v34;
                _os_log_impl(&dword_1C61EF000, v33, OS_LOG_TYPE_DEFAULT, "%lu messages with temporary categorization", v60, 0xCu);
              }

              _Block_object_dispose(&buf, 8);
            }
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 1;
        }

        if (a5)
        {
          if (v32)
          {
            v35 = v23;
          }

          else
          {
            v35 = 0;
          }

          *a5 = v35;
        }

        goto LABEL_47;
      }
    }
  }

  if (a5)
  {
    *a5 = 0;
  }

  LOBYTE(v32) = 1;
LABEL_47:

  v36 = *MEMORY[0x1E69E9840];
  return v32;
}

id __70__EDMessageCategorizer__categorizeMessages_signpostID_results_reason___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v5 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [v17 allObjects];
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [*(a1 + 32) contactStore];
        v11 = [v10 contactExistsForEmailAddress:v9];

        v12 = [*(a1 + 32) vipManager];
        v13 = [v12 isVIPAddress:v9];

        v14 = [[_EDSenderAttributes alloc] initWithisVIP:v13 isContact:v11 isCoreRecent:0 isPrimarySender:a3];
        [v5 setObject:v14 forKey:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

_EDSenderAttributes *__70__EDMessageCategorizer__categorizeMessages_signpostID_results_reason___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = -[_EDSenderAttributes initWithisVIP:isContact:isCoreRecent:isPrimarySender:]([_EDSenderAttributes alloc], "initWithisVIP:isContact:isCoreRecent:isPrimarySender:", [v2 isVIP], objc_msgSend(v2, "isContact"), objc_msgSend(v2, "isCoreRecent"), objc_msgSend(v2, "isPrimarySender") ^ 1);

  return v3;
}

void __70__EDMessageCategorizer__categorizeMessages_signpostID_results_reason___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v14];
  v7 = [v5 category];
  v8 = [v6 category];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v14];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E699AC48]) initWithType:objc_msgSend(v7 subtype:"type") isHighImpact:objc_msgSend(v7 state:{"subtype"), objc_msgSend(v7, "isHighImpact"), 2}];
    v11 = [EDMessageCategorizationResult alloc];
    v12 = [v5 metadata];
    v13 = [(EDMessageCategorizationResult *)v11 initWithCategory:v10 metadata:v12];
    [*(a1 + 40) setObject:v13 forKeyedSubscript:v14];

    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

+ (id)queryForMessagesToCategorizeForVersion:(int64_t)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = [EDMessageListItemPredicates predicateForCategorizationVersionLessThanVersion:a3];
  v4 = +[EDMessageListItemPredicates predicateForNilModelVersion];
  v5 = MEMORY[0x1E696AB28];
  v21[0] = v4;
  v21[1] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v7 = [v5 orPredicateWithSubpredicates:v6];

  v8 = [MEMORY[0x1E699ADA0] predicateForMessagesInMailboxWithType:7];
  v9 = MEMORY[0x1E696AB28];
  v20[0] = v7;
  v20[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  v12 = objc_alloc(MEMORY[0x1E699AE28]);
  v13 = objc_opt_class();
  v14 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:0];
  v19 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v16 = [v12 initWithTargetClass:v13 predicate:v11 sortDescriptors:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_messagesToCategorizeFromMessages:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 ef_filter:&__block_literal_global_145];
  v5 = [v4 count];
  if (v5 < [v3 count])
  {
    v6 = [v3 count];
    v7 = [v4 count];
    v8 = +[EDMessageCategorizer log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v6 - v7;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Filtered out %lu messages not in inbox", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __58__EDMessageCategorizer__messagesToCategorizeFromMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 mailbox];
  v4 = [v3 type];

  if (v4 == 7)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v2 labels];
    v5 = [v6 ef_any:&__block_literal_global_148];
  }

  return v5;
}

uint64_t __58__EDMessageCategorizer__messagesToCategorizeFromMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 labelName];
  v3 = [v2 isEqualToString:*MEMORY[0x1E699B040]];

  return v3;
}

- (BOOL)_categorizeMessages:(id)a3 senderAttributes:(id)a4 signpostID:(unint64_t)a5 results:(id)a6 reason:(int64_t)a7
{
  v107 = *MEMORY[0x1E69E9840];
  v67 = a3;
  v71 = a4;
  v69 = a6;
  v72 = objc_opt_new();
  v66 = a7;
  [EDCategoryPowerLog logStartCategorizationWithReason:a7];
  v10 = +[EDMessageCategorizer signpostLog];
  v11 = v10;
  v65 = a5 - 1;
  if (a5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 134349056;
    *&buf[4] = [v67 count];
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v11, OS_SIGNPOST_INTERVAL_BEGIN, a5, "EDMessageCategorizationMessageCategorizer", "Begin categorizer call (count=%{public,signpost.telemetry:number1}lu) enableTelemetry=YES ", buf, 0xCu);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v67;
  v12 = [obj countByEnumeratingWithState:&v91 objects:v106 count:16];
  if (v12)
  {
    v74 = *v92;
    do
    {
      v13 = 0;
      v75 = v12;
      do
      {
        if (*v92 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v91 + 1) + 8 * v13);
        context = objc_autoreleasePoolPush();
        v15 = [v14 from];
        v16 = [v15 firstObject];
        v17 = [v16 emailAddressValue];

        if (v17)
        {
          v18 = [v14 senders];
          v19 = [v18 firstObject];
          v20 = [v19 emailAddressValue];

          v21 = [v20 simpleAddress];
          v22 = [v21 lowercaseString];

          v23 = [v71 objectForKeyedSubscript:v22];
          v24 = v23;
          v80 = v23;
          if (v23)
          {
            v79 = [v23 isContact];
            v78 = [v24 isVIP];
            v76 = [v24 isPrimarySender];
            v25 = [v14 headers];
            v26 = [v25 allHeaderKeys];
            v77 = [v26 containsObject:@"list-unsubscribe"];

            v27 = +[EDMessageCategorizer log];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              if (v78)
              {
                v51 = "true";
              }

              else
              {
                v51 = "false";
              }

              *buf = 138413314;
              *&buf[4] = v17;
              if (v79)
              {
                v52 = "true";
              }

              else
              {
                v52 = "false";
              }

              *&buf[12] = 2080;
              if (v77)
              {
                v53 = "true";
              }

              else
              {
                v53 = "false";
              }

              *&buf[14] = v51;
              if (v76)
              {
                v54 = "true";
              }

              else
              {
                v54 = "false";
              }

              *&buf[22] = 2080;
              v100 = v52;
              *v101 = 2080;
              *&v101[2] = v53;
              v102 = 2080;
              v103 = v54;
              _os_log_debug_impl(&dword_1C61EF000, v27, OS_LOG_TYPE_DEBUG, "Sender %{mask:mailaddr}@ isVIP: %s isContact: %s unsubPresent: %s isPrimarySender: %s", buf, 0x34u);
            }

            v95 = 0;
            v96 = &v95;
            v97 = 0x2050000000;
            v28 = getMCCCategoryContextClass_softClass;
            v98 = getMCCCategoryContextClass_softClass;
            if (!getMCCCategoryContextClass_softClass)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __getMCCCategoryContextClass_block_invoke;
              v100 = &unk_1E8250000;
              *v101 = &v95;
              __getMCCCategoryContextClass_block_invoke(buf);
              v28 = v96[3];
            }

            v29 = v28;
            _Block_object_dispose(&v95, 8);
            v30 = objc_alloc_init(v28);
            v31 = [v17 displayName];
            v32 = v31;
            if (v31)
            {
              v33 = v31;
            }

            else
            {
              v33 = &stru_1F45B4608;
            }

            [v30 setSenderName:{v33, v65}];

            v34 = v17;
            v35 = [v34 emailAddressValue];
            v36 = [v35 simpleAddress];
            v37 = v36;
            if (v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = [v34 stringValue];
            }

            v42 = v38;

            [v30 setSenderEmail:v42];
            v43 = [v14 subject];
            v44 = [v43 subjectString];
            [v30 setEmailSubject:v44];

            [v30 setIsUnsubscribeHeaderPresent:v77];
            [v30 setIsSenderVIP:v78];
            [v30 setIsSenderInAddressBook:v79];
            [v30 setIsSenderRecentContact:0];
            [v30 setIsSenderPrimary:v76];
            v45 = [(EDMessageCategorizer *)self _stableEmailAddressForMessage:v14];
            [v30 setReceiverEmail:v45];

            v46 = [v14 account];
            v47 = [v46 systemAccount];
            v48 = [v47 accountPropertyForKey:@"kMCCCategoryIsNonPersonalAccountKey"];
            [v30 setIsNonPersonalAccount:{objc_msgSend(v48, "BOOLValue")}];

            v49 = +[EDMessageCategorizer log];
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              v55 = [v30 receiverEmail];
              v56 = [v30 isNonPersonalAccount];
              *buf = 138412546;
              v57 = "false";
              if (v56)
              {
                v57 = "true";
              }

              *&buf[4] = v55;
              *&buf[12] = 2080;
              *&buf[14] = v57;
              _os_log_debug_impl(&dword_1C61EF000, v49, OS_LOG_TYPE_DEBUG, "Recipient %{mask:mailaddr}@ isNotPersonal: %s", buf, 0x16u);
            }

            secretAgentController = self->_secretAgentController;
            v82[0] = MEMORY[0x1E69E9820];
            v82[1] = 3221225472;
            v82[2] = __87__EDMessageCategorizer__categorizeMessages_senderAttributes_signpostID_results_reason___block_invoke;
            v82[3] = &unk_1E8253A30;
            v83 = v72;
            v84 = v14;
            v85 = self;
            v86 = v34;
            v87 = v78;
            v88 = v79;
            v89 = v77;
            v90 = v76;
            [(MCCSecretAgentController *)secretAgentController predictCommerceEmailWithContext:v30 completion:v82];
          }

          else
          {
            v41 = +[EDMessageCategorizer log];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v17;
              _os_log_error_impl(&dword_1C61EF000, v41, OS_LOG_TYPE_ERROR, "BlackPearl requires senderAttributes. Treating as category none for address %{public}@", buf, 0xCu);
            }

            v30 = +[EDMessageCategorizer noneMessageCategorizationResult];
            [v72 setObject:v30 forKeyedSubscript:v14];
          }
        }

        else
        {
          v39 = +[EDMessageCategorizer log];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [EDMessageCategorizer _categorizeMessages:v104 senderAttributes:&v105 signpostID:v39 results:? reason:?];
          }

          v40 = [EDMessageCategorizationResult alloc];
          v20 = [objc_alloc(MEMORY[0x1E699AC48]) initWithType:3 subtype:2 isHighImpact:0 state:1];
          v22 = [(EDMessageCategorizationResult *)v40 initWithCategory:v20 metadata:0];
          [v69 setObject:v22 forKeyedSubscript:v14];
        }

        objc_autoreleasePoolPop(context);
        ++v13;
      }

      while (v75 != v13);
      v12 = [obj countByEnumeratingWithState:&v91 objects:v106 count:16];
    }

    while (v12);
  }

  +[EDCategoryPowerLog logStopCategorizationWithReason:count:](EDCategoryPowerLog, "logStopCategorizationWithReason:count:", v66, [v72 count]);
  v58 = +[EDMessageCategorizer signpostLog];
  v59 = v58;
  if (v65 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
  {
    v60 = [obj count];
    v61 = [v72 count];
    *buf = 134349312;
    *&buf[4] = v60;
    *&buf[12] = 2050;
    *&buf[14] = v61;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v59, OS_SIGNPOST_INTERVAL_END, a5, "EDMessageCategorizationMessageCategorizer", "Finish categorizer call (count=%{public,signpost.telemetry:number1}lu, result=%{public,signpost.telemetry:number2}lu) enableTelemetry=YES ", buf, 0x16u);
  }

  [v69 addEntriesFromDictionary:v72];
  v62 = [v72 count] != 0;

  v63 = *MEMORY[0x1E69E9840];
  return v62;
}

void __87__EDMessageCategorizer__categorizeMessages_senderAttributes_signpostID_results_reason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 48) _makeCategorizationResultFromPrediction:v5];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    v8 = +[EDMessageCategorizer log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 ef_publicDescription];
      __87__EDMessageCategorizer__categorizeMessages_senderAttributes_signpostID_results_reason___block_invoke_cold_1(v9, a1, v11, v8);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_stableEmailAddressForMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 account];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v3 account];
    v7 = [v6 firstEmailAddress];
  }

  else
  {
    v8 = [v3 account];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v6 = [v3 account];
      v7 = [v6 canonicalEmailAddress];
    }

    else
    {
      v10 = [v3 account];
      v6 = [v10 emailAddressStrings];

      if ([v6 count] >= 2)
      {
        v11 = [v6 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
        v12 = [v11 firstObject];

        goto LABEL_9;
      }

      v7 = [v6 firstObject];
    }
  }

  v12 = v7;
LABEL_9:

  return v12;
}

- (id)_makeCategorizationResultFromPrediction:(id)a3
{
  v4 = a3;
  v5 = [(EDMessageCategorizer *)self _makeCategorizationResultMetadataFromPrediction:v4];
  v22 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v6 = getkDecisionSubCategoryKeySymbolLoc_ptr;
  v31 = getkDecisionSubCategoryKeySymbolLoc_ptr;
  if (!getkDecisionSubCategoryKeySymbolLoc_ptr)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getkDecisionSubCategoryKeySymbolLoc_block_invoke;
    v26 = &unk_1E8250000;
    v27 = &v28;
    v7 = icloudMCCKitLibrary_0();
    v29[3] = dlsym(v7, "kDecisionSubCategoryKey");
    getkDecisionSubCategoryKeySymbolLoc_ptr = *(v27[1] + 24);
    v6 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v6)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionSubCategoryKey(void)"];
    [v20 handleFailureInFunction:v21 file:@"EDMessageCategorizer.m" lineNumber:49 description:{@"%s", dlerror()}];
LABEL_12:

    __break(1u);
    return result;
  }

  v8 = [v4 objectForKey:*v6];
  v9 = [(EDMessageCategorizer *)self _categoryTypeForString:v8 subType:&v22];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v10 = getkDecisionTimeSensitiveKeySymbolLoc_ptr;
  v31 = getkDecisionTimeSensitiveKeySymbolLoc_ptr;
  if (!getkDecisionTimeSensitiveKeySymbolLoc_ptr)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getkDecisionTimeSensitiveKeySymbolLoc_block_invoke;
    v26 = &unk_1E8250000;
    v27 = &v28;
    v11 = icloudMCCKitLibrary_0();
    v12 = dlsym(v11, "kDecisionTimeSensitiveKey");
    *(v27[1] + 24) = v12;
    getkDecisionTimeSensitiveKeySymbolLoc_ptr = *(v27[1] + 24);
    v10 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v10)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionTimeSensitiveKey(void)"];
    [v20 handleFailureInFunction:v21 file:@"EDMessageCategorizer.m" lineNumber:51 description:{@"%s", dlerror()}];
    goto LABEL_12;
  }

  v13 = [v4 objectForKey:*v10];
  v14 = [v13 BOOLValue];

  v15 = [EDMessageCategorizationResult alloc];
  v16 = objc_alloc(MEMORY[0x1E699AC48]);
  v17 = [v16 initWithType:v9 subtype:v22 isHighImpact:v14 state:1];
  v18 = [(EDMessageCategorizationResult *)v15 initWithCategory:v17 metadata:v5];

  return v18;
}

- (id)_makeCategorizationResultMetadataFromPrediction:(id)a3
{
  v3 = a3;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v4 = getkDecisionScoreKeySymbolLoc_ptr;
  v77 = getkDecisionScoreKeySymbolLoc_ptr;
  if (!getkDecisionScoreKeySymbolLoc_ptr)
  {
    v5 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v5, "kDecisionScoreKey");
    getkDecisionScoreKeySymbolLoc_ptr = v75[3];
    v4 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v4)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionScoreKey(void)"];
    [v55 handleFailureInFunction:v56 file:@"EDMessageCategorizer.m" lineNumber:47 description:{@"%s", dlerror()}];
LABEL_59:

    __break(1u);
LABEL_60:
    v57 = [MEMORY[0x1E696AAA8] currentHandler];
    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionBPRolloutFactorPackIdKey(void)"];
    [v57 handleFailureInFunction:v58 file:@"EDMessageCategorizer.m" lineNumber:40 description:{@"%s", dlerror()}];

    __break(1u);
    return result;
  }

  v6 = [v3 objectForKey:*v4];
  [v6 doubleValue];
  v8 = v7;

  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v9 = getkDecisionSenderScoreKeySymbolLoc_ptr;
  v77 = getkDecisionSenderScoreKeySymbolLoc_ptr;
  if (!getkDecisionSenderScoreKeySymbolLoc_ptr)
  {
    v10 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v10, "kDecisionSenderScoreKey");
    getkDecisionSenderScoreKeySymbolLoc_ptr = v75[3];
    v9 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v9)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionSenderScoreKey(void)"];
    [v55 handleFailureInFunction:v56 file:@"EDMessageCategorizer.m" lineNumber:48 description:{@"%s", dlerror()}];
    goto LABEL_59;
  }

  v11 = [v3 objectForKey:*v9];
  [v11 doubleValue];
  v13 = v12;

  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v14 = getkDecisionTSScoreKeySymbolLoc_ptr;
  v77 = getkDecisionTSScoreKeySymbolLoc_ptr;
  if (!getkDecisionTSScoreKeySymbolLoc_ptr)
  {
    v15 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v15, "kDecisionTSScoreKey");
    getkDecisionTSScoreKeySymbolLoc_ptr = v75[3];
    v14 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v14)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionTSScoreKey(void)"];
    [v55 handleFailureInFunction:v56 file:@"EDMessageCategorizer.m" lineNumber:50 description:{@"%s", dlerror()}];
    goto LABEL_59;
  }

  v16 = [v3 objectForKey:*v14];
  [v16 doubleValue];
  v18 = v17;

  v19 = [EDMessageCategorizationResultMetadata alloc];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v20 = getkDecisionReasonCodesKeySymbolLoc_ptr;
  v77 = getkDecisionReasonCodesKeySymbolLoc_ptr;
  if (!getkDecisionReasonCodesKeySymbolLoc_ptr)
  {
    v21 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v21, "kDecisionReasonCodesKey");
    getkDecisionReasonCodesKeySymbolLoc_ptr = v75[3];
    v20 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v20)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionReasonCodesKey(void)"];
    [v55 handleFailureInFunction:v56 file:@"EDMessageCategorizer.m" lineNumber:46 description:{@"%s", dlerror()}];
    goto LABEL_59;
  }

  v22 = *v20;
  v23 = [v3 objectForKey:v22];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v24 = getkDecisionBPModelVersionKeySymbolLoc_ptr;
  v77 = getkDecisionBPModelVersionKeySymbolLoc_ptr;
  if (!getkDecisionBPModelVersionKeySymbolLoc_ptr)
  {
    v25 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v25, "kDecisionBPModelVersionKey");
    getkDecisionBPModelVersionKeySymbolLoc_ptr = v75[3];
    v24 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v24)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionBPModelVersionKey(void)"];
    [v55 handleFailureInFunction:v56 file:@"EDMessageCategorizer.m" lineNumber:38 description:{@"%s", dlerror()}];
    goto LABEL_59;
  }

  v26 = *v24;
  v27 = [v3 objectForKey:v26];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v28 = getkDecisionBPSenderModelVersionKeySymbolLoc_ptr;
  v77 = getkDecisionBPSenderModelVersionKeySymbolLoc_ptr;
  if (!getkDecisionBPSenderModelVersionKeySymbolLoc_ptr)
  {
    v29 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v29, "kDecisionBPSenderModelVersionKey");
    getkDecisionBPSenderModelVersionKeySymbolLoc_ptr = v75[3];
    v28 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v28)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionBPSenderModelVersionKey(void)"];
    [v55 handleFailureInFunction:v56 file:@"EDMessageCategorizer.m" lineNumber:42 description:{@"%s", dlerror()}];
    goto LABEL_59;
  }

  v73 = v26;
  v30 = *v28;
  v31 = [v3 objectForKey:v30];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v32 = getkDecisionBPTSModelVersionKeySymbolLoc_ptr;
  v77 = getkDecisionBPTSModelVersionKeySymbolLoc_ptr;
  if (!getkDecisionBPTSModelVersionKeySymbolLoc_ptr)
  {
    v33 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v33, "kDecisionBPTSModelVersionKey");
    getkDecisionBPTSModelVersionKeySymbolLoc_ptr = v75[3];
    v32 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v32)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionBPTSModelVersionKey(void)"];
    [v55 handleFailureInFunction:v56 file:@"EDMessageCategorizer.m" lineNumber:43 description:{@"%s", dlerror()}];
    goto LABEL_59;
  }

  v71 = v22;
  v34 = v23;
  v35 = *v32;
  v72 = [v3 objectForKey:v35];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v36 = getkDecisionBPFinalRuleModelVersionKeySymbolLoc_ptr;
  v77 = getkDecisionBPFinalRuleModelVersionKeySymbolLoc_ptr;
  if (!getkDecisionBPFinalRuleModelVersionKeySymbolLoc_ptr)
  {
    v37 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v37, "kDecisionBPFinalRuleModelVersionKey");
    getkDecisionBPFinalRuleModelVersionKeySymbolLoc_ptr = v75[3];
    v36 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v36)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionBPFinalRuleModelVersionKey(void)"];
    [v55 handleFailureInFunction:v56 file:@"EDMessageCategorizer.m" lineNumber:52 description:{@"%s", dlerror()}];
    goto LABEL_59;
  }

  v70 = *v36;
  v69 = [v3 objectForKey:?];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v38 = getkDecisionBPExperimentIdKeySymbolLoc_ptr;
  v77 = getkDecisionBPExperimentIdKeySymbolLoc_ptr;
  if (!getkDecisionBPExperimentIdKeySymbolLoc_ptr)
  {
    v39 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v39, "kDecisionBPExperimentIdKey");
    getkDecisionBPExperimentIdKeySymbolLoc_ptr = v75[3];
    v38 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v38)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionBPExperimentIdKey(void)"];
    [v55 handleFailureInFunction:v56 file:@"EDMessageCategorizer.m" lineNumber:37 description:{@"%s", dlerror()}];
    goto LABEL_59;
  }

  v68 = *v38;
  v67 = [v3 objectForKey:?];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v40 = getkDecisionBPExperimentDeploymentIdKeySymbolLoc_ptr;
  v77 = getkDecisionBPExperimentDeploymentIdKeySymbolLoc_ptr;
  if (!getkDecisionBPExperimentDeploymentIdKeySymbolLoc_ptr)
  {
    v41 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v41, "kDecisionBPExperimentDeploymentIdKey");
    getkDecisionBPExperimentDeploymentIdKeySymbolLoc_ptr = v75[3];
    v40 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v40)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionBPExperimentDeploymentIdKey(void)"];
    [v55 handleFailureInFunction:v56 file:@"EDMessageCategorizer.m" lineNumber:36 description:{@"%s", dlerror()}];
    goto LABEL_59;
  }

  v65 = *v40;
  v42 = [v3 objectForKey:?];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v43 = getkDecisionBPTreatmentIdKeySymbolLoc_ptr;
  v77 = getkDecisionBPTreatmentIdKeySymbolLoc_ptr;
  if (!getkDecisionBPTreatmentIdKeySymbolLoc_ptr)
  {
    v44 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v44, "kDecisionBPTreatmentIdKey");
    getkDecisionBPTreatmentIdKeySymbolLoc_ptr = v75[3];
    v43 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v43)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionBPTreatmentIdKey(void)"];
    [v55 handleFailureInFunction:v56 file:@"EDMessageCategorizer.m" lineNumber:44 description:{@"%s", dlerror()}];
    goto LABEL_59;
  }

  v64 = *v43;
  v66 = [v3 objectForKey:?];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v45 = getkDecisionBPRolloutIdKeySymbolLoc_ptr;
  v77 = getkDecisionBPRolloutIdKeySymbolLoc_ptr;
  if (!getkDecisionBPRolloutIdKeySymbolLoc_ptr)
  {
    v46 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v46, "kDecisionBPRolloutIdKey");
    getkDecisionBPRolloutIdKeySymbolLoc_ptr = v75[3];
    v45 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v45)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionBPRolloutIdKey(void)"];
    [v55 handleFailureInFunction:v56 file:@"EDMessageCategorizer.m" lineNumber:41 description:{@"%s", dlerror()}];
    goto LABEL_59;
  }

  v62 = v35;
  v63 = v31;
  v61 = *v45;
  v47 = [v3 objectForKey:?];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v48 = getkDecisionBPRolloutDeploymentIdKeySymbolLoc_ptr;
  v77 = getkDecisionBPRolloutDeploymentIdKeySymbolLoc_ptr;
  if (!getkDecisionBPRolloutDeploymentIdKeySymbolLoc_ptr)
  {
    v49 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v49, "kDecisionBPRolloutDeploymentIdKey");
    getkDecisionBPRolloutDeploymentIdKeySymbolLoc_ptr = v75[3];
    v48 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v48)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDecisionBPRolloutDeploymentIdKey(void)"];
    [v55 handleFailureInFunction:v56 file:@"EDMessageCategorizer.m" lineNumber:39 description:{@"%s", dlerror()}];
    goto LABEL_59;
  }

  v60 = *v48;
  v50 = [v3 objectForKey:?];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v51 = getkDecisionBPRolloutFactorPackIdKeySymbolLoc_ptr;
  v77 = getkDecisionBPRolloutFactorPackIdKeySymbolLoc_ptr;
  if (!getkDecisionBPRolloutFactorPackIdKeySymbolLoc_ptr)
  {
    v52 = icloudMCCKitLibrary_0();
    v75[3] = dlsym(v52, "kDecisionBPRolloutFactorPackIdKey");
    getkDecisionBPRolloutFactorPackIdKeySymbolLoc_ptr = v75[3];
    v51 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v51)
  {
    goto LABEL_60;
  }

  v53 = [v3 objectForKey:*v51];
  v59 = [(EDMessageCategorizationResultMetadata *)v19 initWithScore:v34 senderScore:v27 tsScore:v63 reasonCodes:v72 modelVersion:v69 senderModelVersion:v67 tsModelVersion:v8 finalRuleVersion:v13 experimentID:v18 experimentDeploymentID:v42 experimentTreatmentID:v66 rolloutID:v47 rolloutDeploymentID:v50 rolloutFactorPackID:v53];

  return v59;
}

- (unint64_t)_categoryTypeForString:(id)a3 subType:(unint64_t *)a4
{
  v5 = a3;
  if ([v5 caseInsensitiveCompare:@"personal"])
  {
    if ([v5 caseInsensitiveCompare:@"promotions"])
    {
      if ([v5 caseInsensitiveCompare:@"social"])
      {
        if ([v5 caseInsensitiveCompare:@"transactions"])
        {
          if ([v5 caseInsensitiveCompare:@"news"])
          {
            if ([v5 caseInsensitiveCompare:@"unsupported_language"])
            {
              if ([v5 caseInsensitiveCompare:@"nop_sa"])
              {
                if ([v5 caseInsensitiveCompare:@"others"])
                {
                  v6 = +[EDMessageCategorizer log];
                  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
                  {
                    [EDMessageCategorizer _categoryTypeForString:v5 subType:v6];
                  }

                  v7 = 0;
                  v8 = 0;
                }

                else
                {
                  v8 = 2;
                  v7 = 6;
                }
              }

              else
              {
                v8 = 2;
                v7 = 8;
              }
            }

            else
            {
              v8 = 0;
              v7 = 7;
            }
          }

          else
          {
            v8 = 2;
            v7 = 5;
          }
        }

        else
        {
          v8 = 1;
          v7 = 4;
        }
      }

      else
      {
        v8 = 2;
        v7 = 3;
      }
    }

    else
    {
      v8 = 3;
      v7 = 2;
    }
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  *a4 = v7;

  return v8;
}

- (void)getModelVersionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(EDMessageCategorizer *)self secretAgentController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__EDMessageCategorizer_getModelVersionWithCompletion___block_invoke;
  v7[3] = &unk_1E8253A58;
  v6 = v4;
  v8 = v6;
  [v5 getBlackPearlVersionWithCompletion:v7];
}

void __54__EDMessageCategorizer_getModelVersionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
LABEL_13:
    (*(*(a1 + 32) + 16))();

    return;
  }

  v8 = MEMORY[0x1E696AEC0];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v9 = getkBPCategorizationMajorVersionKeySymbolLoc_ptr;
  v28 = getkBPCategorizationMajorVersionKeySymbolLoc_ptr;
  if (!getkBPCategorizationMajorVersionKeySymbolLoc_ptr)
  {
    v10 = icloudMCCKitLibrary_0();
    v26[3] = dlsym(v10, "kBPCategorizationMajorVersionKey");
    getkBPCategorizationMajorVersionKeySymbolLoc_ptr = v26[3];
    v9 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v9)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkBPCategorizationMajorVersionKey(void)"];
    [v20 handleFailureInFunction:v21 file:@"EDMessageCategorizer.m" lineNumber:53 description:{@"%s", dlerror()}];

    __break(1u);
LABEL_15:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkBPCategorizationMinorVersionKey(void)"];
    [v22 handleFailureInFunction:v23 file:@"EDMessageCategorizer.m" lineNumber:54 description:{@"%s", dlerror()}];

    goto LABEL_17;
  }

  v11 = *v9;
  v12 = [v5 objectForKeyedSubscript:v11];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v13 = getkBPCategorizationMinorVersionKeySymbolLoc_ptr;
  v28 = getkBPCategorizationMinorVersionKeySymbolLoc_ptr;
  if (!getkBPCategorizationMinorVersionKeySymbolLoc_ptr)
  {
    v14 = icloudMCCKitLibrary_0();
    v26[3] = dlsym(v14, "kBPCategorizationMinorVersionKey");
    getkBPCategorizationMinorVersionKeySymbolLoc_ptr = v26[3];
    v13 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v13)
  {
    goto LABEL_15;
  }

  v15 = *v13;
  v16 = [v5 objectForKeyedSubscript:v15];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v17 = getkBPCategorizationPatchVersionKeySymbolLoc_ptr;
  v28 = getkBPCategorizationPatchVersionKeySymbolLoc_ptr;
  if (!getkBPCategorizationPatchVersionKeySymbolLoc_ptr)
  {
    v18 = icloudMCCKitLibrary_0();
    v26[3] = dlsym(v18, "kBPCategorizationPatchVersionKey");
    getkBPCategorizationPatchVersionKeySymbolLoc_ptr = v26[3];
    v17 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (v17)
  {
    v19 = [v5 objectForKeyedSubscript:*v17];
    v7 = [v8 stringWithFormat:@"%@.%@.%@", v12, v16, v19];

    goto LABEL_13;
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkBPCategorizationPatchVersionKey(void)"];
  [v22 handleFailureInFunction:v24 file:@"EDMessageCategorizer.m" lineNumber:55 description:{@"%s", dlerror()}];

LABEL_17:
  __break(1u);
}

- (void)_categorizeMessages:(os_log_t)log senderAttributes:signpostID:results:reason:.cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 138412290;
  *a2 = 0;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Address string for address %{mask:mailaddr}@ is invalid. Treating as commerce", buf, 0xCu);
}

void __87__EDMessageCategorizer__categorizeMessages_senderAttributes_signpostID_results_reason___block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  v7 = *(a2 + 65);
  v8 = *(a2 + 66);
  v9 = *(a2 + 67);
  *buf = 138544642;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  *(buf + 11) = 1024;
  *(buf + 6) = v6;
  *(buf + 14) = 1024;
  *(buf + 30) = v7;
  *(buf + 17) = 1024;
  *(buf + 9) = v8;
  *(buf + 20) = 1024;
  *(buf + 42) = v9;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to categorize message with error %{public}@ sender %{mask:mailaddr}@ isVIP: %{BOOL}d isContact: %{BOOL}d unsubPresent: %{BOOL}d isPrimarySender: %{BOOL}d", buf, 0x2Eu);
}

- (void)_categoryTypeForString:(uint64_t)a1 subType:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Attempt to convert unknown subcategory string %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end