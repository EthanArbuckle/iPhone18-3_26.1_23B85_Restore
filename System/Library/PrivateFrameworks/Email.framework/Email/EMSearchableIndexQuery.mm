@interface EMSearchableIndexQuery
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
+ (double)intervalForSpotlightFailureSimulation;
+ (id)_modifierStringFromModifiers:(unint64_t)modifiers;
+ (id)_operandStringForOperand:(int64_t)operand;
+ (id)_queryStringForPhrase:(id)phrase attributes:(id)attributes modifiers:(unint64_t)modifiers phraseMatchFormatString:(id)string;
+ (id)_queryStringForPhrase:(id)phrase attributes:(id)attributes modifiers:(unint64_t)modifiers phraseMatchFormatString:(id)string comparisonOperator:(int64_t)operator;
+ (id)queryStringByJoiningQueries:(id)queries withOperand:(int64_t)operand;
+ (id)queryStringForPhrase:(id)phrase attributes:(id)attributes modifiers:(unint64_t)modifiers languages:(id)languages phraseMatchFormatString:(id)string comparisonOperator:(int64_t)operator;
+ (id)queryWithExpression:(id)expression builder:(id)builder;
+ (id)searchWordsForPhrase:(id)phrase languages:(id)languages;
- (BOOL)_isCancellationError:(id)error;
- (BOOL)_isFinishedQueryStatus:(id)status;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (EMSearchableIndexQuery)initWithExpression:(id)expression builder:(id)builder;
- (EMSearchableIndexQuery)initWithExpression:(id)expression builder:(id)builder queryContext:(id)context querySetup:(id)setup;
- (NSString)ef_publicDescription;
- (NSString)logPrefixString;
- (int64_t)count;
- (unint64_t)signpostID;
- (void)_cancel;
- (void)_cancelQuery;
- (void)_changeCount:(int64_t)count;
- (void)_changedAttribute:(id)attribute values:(id)values;
- (void)_changedItems:(id)items;
- (void)_completed;
- (void)_failedWithError:(id)error;
- (void)_foundAttribute:(id)attribute values:(id)values;
- (void)_foundItems:(id)items;
- (void)_gathered;
- (void)_logSignpostForSearchQueryDidFinishWithStatus:(id)status;
- (void)_logSignpostForSearchQueryDidReceiveFirstResultsWithItemCount:(unint64_t)count;
- (void)_logSignpostForSearchQueryStart;
- (void)_performClientWork:(id)work;
- (void)_removeAllLiveUpdatesBlocks;
- (void)_removeResultsBlock;
- (void)_removedItems:(id)items;
- (void)_searchQueryDidChangeAttribute:(id)attribute values:(id)values;
- (void)_searchQueryDidChangeCount:(int64_t)count;
- (void)_searchQueryDidChangeItems:(id)items;
- (void)_searchQueryDidComplete;
- (void)_searchQueryDidFailWithError:(id)error;
- (void)_searchQueryDidFindAttribute:(id)attribute values:(id)values;
- (void)_searchQueryDidFindItems:(id)items;
- (void)_searchQueryDidRemoveIdentifiers:(id)identifiers;
- (void)_searchQueryGatherDidEnd;
- (void)dealloc;
- (void)setQueryStatus:(id)status;
- (void)simulateFailedQueryWithError:(id)error;
- (void)start;
@end

@implementation EMSearchableIndexQuery

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__EMSearchableIndexQuery_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_36 != -1)
  {
    dispatch_once(&log_onceToken_36, block);
  }

  v2 = log_log_36;

  return v2;
}

void __29__EMSearchableIndexQuery_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_36;
  log_log_36 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EMSearchableIndexQuery_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_4 != -1)
  {
    dispatch_once(&signpostLog_onceToken_4, block);
  }

  v2 = signpostLog_log_4;

  return v2;
}

void __37__EMSearchableIndexQuery_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_4;
  signpostLog_log_4 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

+ (double)intervalForSpotlightFailureSimulation
{
  if (intervalForSpotlightFailureSimulation_onceToken != -1)
  {
    +[EMSearchableIndexQuery intervalForSpotlightFailureSimulation];
  }

  return *&intervalForSpotlightFailureSimulation_intervalForSpotlightFailureSimulation;
}

void __63__EMSearchableIndexQuery_intervalForSpotlightFailureSimulation__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [v0 objectForKey:@"kSearchableIndexQueryKeyIntervalForSpotlightFailureSimulation"];

  v1 = v3;
  if (v3)
  {
    [v3 doubleValue];
    intervalForSpotlightFailureSimulation_intervalForSpotlightFailureSimulation = v2;
    v1 = v3;
  }
}

+ (id)queryWithExpression:(id)expression builder:(id)builder
{
  expressionCopy = expression;
  builderCopy = builder;
  v8 = [[self alloc] initWithExpression:expressionCopy builder:builderCopy];

  return v8;
}

- (NSString)logPrefixString
{
  logPrefixString = self->_logPrefixString;
  if (!logPrefixString)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    logIdentifier = [(EMSearchableIndexQuery *)self logIdentifier];
    v6 = [v4 initWithFormat:@"%@<%@: %p>", logIdentifier, objc_opt_class(), self];
    v7 = self->_logPrefixString;
    self->_logPrefixString = v6;

    logPrefixString = self->_logPrefixString;
  }

  return logPrefixString;
}

- (EMSearchableIndexQuery)initWithExpression:(id)expression builder:(id)builder
{
  expressionCopy = expression;
  builderCopy = builder;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__EMSearchableIndexQuery_initWithExpression_builder___block_invoke;
  aBlock[3] = &unk_1E826F7D8;
  v8 = expressionCopy;
  v14 = v8;
  v9 = _Block_copy(aBlock);
  v10 = objc_alloc_init(MEMORY[0x1E6964E70]);
  v11 = [(EMSearchableIndexQuery *)self initWithExpression:v8 builder:builderCopy queryContext:v10 querySetup:v9];

  return v11;
}

id __53__EMSearchableIndexQuery_initWithExpression_builder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E6964E68]);
  v5 = [*(a1 + 32) queryString];
  v6 = [v4 initWithQueryString:v5 context:v3];

  return v6;
}

- (EMSearchableIndexQuery)initWithExpression:(id)expression builder:(id)builder queryContext:(id)context querySetup:(id)setup
{
  v108[1] = *MEMORY[0x1E69E9840];
  expressionCopy = expression;
  builderCopy = builder;
  contextCopy = context;
  setupCopy = setup;
  v13 = setupCopy;
  if (builderCopy)
  {
    if (setupCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMSearchableIndexQuery.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"builder"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"EMSearchableIndexQuery.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"querySetup"}];

LABEL_3:
  v104.receiver = self;
  v104.super_class = EMSearchableIndexQuery;
  v14 = [(EMSearchableIndexQuery *)&v104 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_40;
  }

  logIdentifier = v14->_logIdentifier;
  v14->_logIdentifier = &stru_1F45FD218;

  builderCopy[2](builderCopy, v15);
  v17 = objc_alloc_init(MEMORY[0x1E696AD10]);
  lock = v15->_lock;
  v15->_lock = v17;

  v19 = objc_alloc_init(MEMORY[0x1E699B868]);
  resultsPromise = v15->_resultsPromise;
  v15->_resultsPromise = v19;

  queryStatus = v15->_queryStatus;
  v15->_queryStatus = @"not started";

  v15->_count = 0x7FFFFFFFFFFFFFFFLL;
  v22 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
  progress = v15->_progress;
  v15->_progress = v22;

  v24 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:-1];
  internalProgress = v15->_internalProgress;
  v15->_internalProgress = v24;

  [(NSProgress *)v15->_progress addChild:v15->_internalProgress withPendingUnitCount:1];
  v26 = _os_activity_create(&dword_1C6655000, "Spotlight search query", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  activity = v15->activity;
  v15->activity = v26;

  [objc_opt_class() intervalForSpotlightFailureSimulation];
  if (v28 > 0.0)
  {
    v29 = dispatch_time(0, (v28 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke;
    block[3] = &unk_1E826C098;
    v103 = v15;
    dispatch_after(v29, MEMORY[0x1E69E96A0], block);
  }

  resultsBlock = [(EMSearchableIndexQuery *)v15 resultsBlock];
  v69 = resultsBlock;
  if (resultsBlock)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_2;
    aBlock[3] = &unk_1E826F800;
    v101 = resultsBlock;
    v31 = v15;
    v100 = v31;
    v32 = _Block_copy(aBlock);
    [(EMSearchableIndexQuery *)v31 setResultsBlock:v32];
  }

  completionBlock = [(EMSearchableIndexQuery *)v15 completionBlock];
  future = [(EFPromise *)v15->_resultsPromise future];
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_3;
  v96[3] = &unk_1E826F828;
  v34 = v15;
  v97 = v34;
  v68 = completionBlock;
  v98 = v68;
  [future addSuccessBlock:v96];

  [(EMSearchableIndexQuery *)v34 setCompletionBlock:0];
  failureBlock = [(EMSearchableIndexQuery *)v34 failureBlock];
  future2 = [(EFPromise *)v15->_resultsPromise future];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_4;
  v93[3] = &unk_1E826EAC0;
  v36 = v34;
  v94 = v36;
  v67 = failureBlock;
  v95 = v67;
  [future2 addFailureBlock:v93];

  [v36 setFailureBlock:0];
  [v36 setExpression:expressionCopy];
  fetchAttributes = [v36 fetchAttributes];
  [contextCopy setFetchAttributes:fetchAttributes];

  [v36 setFetchAttributes:0];
  rankingQueries = [v36 rankingQueries];
  [contextCopy setRankingQueries:rankingQueries];

  [v36 setRankingQueries:0];
  [contextCopy setLive:{objc_msgSend(v36, "live")}];
  [contextCopy setCounting:{objc_msgSend(v36, "counting")}];
  bundleID = [v36 bundleID];
  v40 = bundleID;
  if (bundleID)
  {
    v108[0] = bundleID;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:1];
  }

  else
  {
    v41 = 0;
  }

  [contextCopy setBundleIDs:v41];
  if (v40)
  {
  }

  [contextCopy setAttribute:{objc_msgSend(v36, "attribute")}];
  [contextCopy setMaxCount:{objc_msgSend(v36, "maxCount")}];
  protectionClasses = [v36 protectionClasses];

  if (protectionClasses)
  {
    protectionClasses2 = [v36 protectionClasses];
    [contextCopy setProtectionClasses:protectionClasses2];

    [v36 setProtectionClasses:0];
  }

  else
  {
    v44 = +[EMSearchableIndex protectionClass];
    v45 = v44;
    if (v44)
    {
      v107 = v44;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
      [contextCopy setProtectionClasses:v46];
    }
  }

  v47 = (v13)[2](v13, contextCopy);
  [v36 setQuery:v47];

  objc_initWeak(&location, v36);
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_5;
  v90[3] = &unk_1E826C070;
  objc_copyWeak(&v91, &location);
  [(NSProgress *)v15->_internalProgress setCancellationHandler:v90];
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_63;
  v88[3] = &unk_1E826F850;
  objc_copyWeak(&v89, &location);
  [v36[23] setFoundItemsHandler:v88];
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_2_64;
  v86[3] = &unk_1E826F878;
  objc_copyWeak(&v87, &location);
  [v36[23] setCompletionHandler:v86];
  if ([v36 live])
  {
    v48 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:-1 parent:v15->_progress pendingUnitCount:-1];
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_3_65;
    v84[3] = &unk_1E826C070;
    objc_copyWeak(&v85, &location);
    [v36[23] setGatherEndedHandler:v84];
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_4_66;
    v82[3] = &unk_1E826F850;
    objc_copyWeak(&v83, &location);
    [v36[23] setChangedItemsHandler:v82];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_5_67;
    v80[3] = &unk_1E826F8A0;
    objc_copyWeak(&v81, &location);
    [v36[23] setRemovedItemsHandler:v80];
    if ([v36 attribute])
    {
      v49 = +[EMSearchableIndexQuery log];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [EMSearchableIndexQuery initWithExpression:v49 builder:? queryContext:? querySetup:?];
      }
    }

    objc_destroyWeak(&v81);
    objc_destroyWeak(&v83);
    objc_destroyWeak(&v85);
    goto LABEL_28;
  }

  gatheredBlock = [v36 gatheredBlock];
  if (gatheredBlock || ([v36 removedItemsBlock], (gatheredBlock = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_27;
  }

  changedItemsBlock = [v36 changedItemsBlock];
  v52 = changedItemsBlock == 0;

  if (!v52)
  {
LABEL_27:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:v36 file:@"EMSearchableIndexQuery.m" lineNumber:269 description:@"Attempting to add live query related block(s) to a non-live query"];
  }

LABEL_28:
  if ([v36 counting])
  {
    v15->_count = 0;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_72;
    v78[3] = &unk_1E826F8C8;
    objc_copyWeak(&v79, &location);
    [v36[23] setCountChangedHandler:v78];
    objc_destroyWeak(&v79);
  }

  else
  {
    countChangedBlock = [v36 countChangedBlock];
    v55 = countChangedBlock == 0;

    if (!v55)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:v36 file:@"EMSearchableIndexQuery.m" lineNumber:279 description:@"Attempting to add count changed related block to a non-counting query"];
    }
  }

  if ([v36 attribute])
  {
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_2_77;
    v76[3] = &unk_1E826F8A0;
    objc_copyWeak(&v77, &location);
    [v36[23] setFoundAttributesHandler:v76];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_3_78;
    v74[3] = &unk_1E826F8A0;
    objc_copyWeak(&v75, &location);
    [v36[23] setChangedAttributesHandler:v74];
    objc_destroyWeak(&v75);
    objc_destroyWeak(&v77);
  }

  else
  {
    foundAttributeResultsBlock = [v36 foundAttributeResultsBlock];
    if (foundAttributeResultsBlock)
    {
      changedAttributeResultsBlock = [v36 changedAttributeResultsBlock];
      v58 = changedAttributeResultsBlock == 0;

      if (!v58)
      {
        currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler5 handleFailureInMethod:a2 object:v36 file:@"EMSearchableIndexQuery.m" lineNumber:294 description:@"Attempting to add attribute results block to a non-attribute query"];
      }
    }
  }

  v60 = +[EMSearchableIndexQuery log];
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = [v36 description];
    *buf = 138412290;
    v106 = v61;
    _os_log_impl(&dword_1C6655000, v60, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  objc_destroyWeak(&v87);
  objc_destroyWeak(&v89);
  objc_destroyWeak(&v91);
  objc_destroyWeak(&location);

LABEL_40:
  v62 = *MEMORY[0x1E69E9840];
  return v15;
}

void __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"This is a simulated failure" code:-1 userInfo:0];
  [v1 _searchQueryDidFailWithError:?];
}

void __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  v4 = objc_opt_self();
}

uint64_t __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _removeResultsBlock];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _removeResultsBlock];
  [*(a1 + 32) _removeAllLiveUpdatesBlocks];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_5(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[EMSearchableIndexQuery log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [WeakRetained logPrefixString];
    __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_5_cold_1(v3, v5, v2);
  }

  [WeakRetained _cancel];
  v4 = *MEMORY[0x1E69E9840];
}

void __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_63(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searchQueryDidFindItems:v3];
}

void __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_2_64(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = v3;
  v10 = v5;
  if (!v5)
  {
    v6 = [WeakRetained simulatedFailedQueryError];

    if (v6)
    {
      v5 = [WeakRetained simulatedFailedQueryError];
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = [WeakRetained live];
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v5;
  if (v8 == 1)
  {
    if ([WeakRetained liveQueryDidGather])
    {
      [MEMORY[0x1E696ABC0] ef_connectionInterruptedError];
    }

    else
    {
      [MEMORY[0x1E696ABC0] ef_temporarilyUnavailableError];
    }
    v9 = ;
  }

  if (v9)
  {
    [WeakRetained _searchQueryDidFailWithError:v9];
  }

  else
  {
    [WeakRetained _searchQueryDidComplete];
  }
}

void __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_3_65(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searchQueryGatherDidEnd];
}

void __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_4_66(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searchQueryDidChangeItems:v3];
}

void __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_5_67(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searchQueryDidRemoveIdentifiers:v4];
}

void __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_72(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searchQueryDidChangeCount:a2];
}

void __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_2_77(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searchQueryDidFindAttribute:v6 values:v5];
}

void __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_3_78(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searchQueryDidChangeAttribute:v6 values:v5];
}

- (void)dealloc
{
  [(EMSearchableIndexQuery *)self _cancelQuery];
  future = [(EFPromise *)self->_resultsPromise future];
  [future cancel];

  v4.receiver = self;
  v4.super_class = EMSearchableIndexQuery;
  [(EMSearchableIndexQuery *)&v4 dealloc];
}

- (NSString)ef_publicDescription
{
  [(NSLock *)self->_lock lock];
  queryStatus = [(EMSearchableIndexQuery *)self queryStatus];
  gatherEndedHandler = [(CSSearchQuery *)self->_query gatherEndedHandler];
  v5 = NSStringFromBOOL();

  countChangedHandler = [(CSSearchQuery *)self->_query countChangedHandler];
  v7 = NSStringFromBOOL();

  countChangedHandler2 = [(CSSearchQuery *)self->_query countChangedHandler];
  if (countChangedHandler2)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%ld)", self->_count];
  }

  else
  {
    v9 = &stru_1F45FD218;
  }

  [(NSLock *)self->_lock unlock];
  v10 = MEMORY[0x1E696AEC0];
  logPrefixString = [(EMSearchableIndexQuery *)self logPrefixString];
  ef_publicDescription = [(EMSearchableIndexQueryExpression *)self->_expression ef_publicDescription];
  v13 = [v10 stringWithFormat:@"%@ %@ - %@ live:%@ counting:%@%@", logPrefixString, queryStatus, ef_publicDescription, v5, v7, v9];

  return v13;
}

- (BOOL)_isFinishedQueryStatus:(id)status
{
  statusCopy = status;
  if (_isFinishedQueryStatus__onceToken != -1)
  {
    [EMSearchableIndexQuery _isFinishedQueryStatus:];
  }

  v4 = [_isFinishedQueryStatus__finishedQueryStatuses containsObject:statusCopy];

  return v4;
}

void __49__EMSearchableIndexQuery__isFinishedQueryStatus___block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = @"failed";
  v3[1] = @"gathered";
  v3[2] = @"completed";
  v3[3] = @"cancelled";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v1 = _isFinishedQueryStatus__finishedQueryStatuses;
  _isFinishedQueryStatus__finishedQueryStatuses = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (void)setQueryStatus:(id)status
{
  v13 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  if (self->_queryStatus != statusCopy)
  {
    v6 = +[EMSearchableIndexQuery log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      logPrefixString = [(EMSearchableIndexQuery *)self logPrefixString];
      v9 = 138543618;
      v10 = logPrefixString;
      v11 = 2114;
      v12 = statusCopy;
      _os_log_impl(&dword_1C6655000, v6, OS_LOG_TYPE_INFO, "%{public}@ status changed to '%{public}@'", &v9, 0x16u);
    }

    objc_storeStrong(&self->_queryStatus, status);
    if ([(EMSearchableIndexQuery *)self _isFinishedQueryStatus:statusCopy]&& ![(EMSearchableIndexQuery *)self queryDidMoveToFinishedState])
    {
      [(EMSearchableIndexQuery *)self setQueryDidMoveToFinishedState:1];
      if (![(NSString *)self->_queryStatus isEqualToString:@"gathered"])
      {
        [(NSProgress *)self->_internalProgress setCancellationHandler:0];
      }

      [(EMSearchableIndexQuery *)self _logSignpostForSearchQueryDidFinishWithStatus:statusCopy];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (int64_t)count
{
  [(NSLock *)self->_lock lock];
  count = self->_count;
  [(NSLock *)self->_lock unlock];
  return count;
}

- (BOOL)isFinished
{
  future = [(EFPromise *)self->_resultsPromise future];
  isFinished = [future isFinished];

  return isFinished;
}

- (void)_foundItems:(id)items
{
  itemsCopy = items;
  future = [(EFPromise *)self->_resultsPromise future];
  isFinished = [future isFinished];

  if ((isFinished & 1) == 0)
  {
    [(NSLock *)self->_lock lock];
    v6 = [self->_resultsBlock copy];
    queryStatus = [(EMSearchableIndexQuery *)self queryStatus];

    if (queryStatus != @"gathering")
    {
      [(EMSearchableIndexQuery *)self setQueryStatus:@"gathering"];
      -[EMSearchableIndexQuery _logSignpostForSearchQueryDidReceiveFirstResultsWithItemCount:](self, "_logSignpostForSearchQueryDidReceiveFirstResultsWithItemCount:", [itemsCopy count]);
    }

    [(NSLock *)self->_lock unlock];
    if (v6 && ![(EMSearchableIndexQuery *)self isCancelled])
    {
      (v6)[2](v6, itemsCopy);
    }
  }
}

- (void)_changedItems:(id)items
{
  itemsCopy = items;
  [(NSLock *)self->_lock lock];
  v4 = [self->_changedItemsBlock copy];
  [(NSLock *)self->_lock unlock];
  if (v4)
  {
    (v4)[2](v4, itemsCopy);
  }
}

- (void)_removedItems:(id)items
{
  itemsCopy = items;
  [(NSLock *)self->_lock lock];
  v4 = [self->_removedItemsBlock copy];
  [(NSLock *)self->_lock unlock];
  if (v4)
  {
    (v4)[2](v4, itemsCopy);
  }
}

- (void)_changeCount:(int64_t)count
{
  [(NSLock *)self->_lock lock];
  v6 = [self->_countChangedBlock copy];
  [(EMSearchableIndexQuery *)self setCount:count];
  [(NSLock *)self->_lock unlock];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))();
    v5 = v6;
  }
}

- (void)_foundAttribute:(id)attribute values:(id)values
{
  attributeCopy = attribute;
  valuesCopy = values;
  future = [(EFPromise *)self->_resultsPromise future];
  isFinished = [future isFinished];

  if ((isFinished & 1) == 0)
  {
    [(NSLock *)self->_lock lock];
    v9 = [self->_foundAttributeResultsBlock copy];
    queryStatus = [(EMSearchableIndexQuery *)self queryStatus];

    if (queryStatus != @"gathering")
    {
      [(EMSearchableIndexQuery *)self setQueryStatus:@"gathering"];
    }

    [(NSLock *)self->_lock unlock];
    if (v9)
    {
      (v9)[2](v9, attributeCopy, valuesCopy);
    }
  }
}

- (void)_changedAttribute:(id)attribute values:(id)values
{
  attributeCopy = attribute;
  valuesCopy = values;
  [(NSLock *)self->_lock lock];
  v7 = [self->_changedAttributeResultsBlock copy];
  [(NSLock *)self->_lock unlock];
  if (v7)
  {
    (v7)[2](v7, attributeCopy, valuesCopy);
  }
}

- (void)_completed
{
  [(NSLock *)self->_lock lock];
  [(EMSearchableIndexQuery *)self setQueryStatus:@"completed"];
  [(NSLock *)self->_lock unlock];
  [(NSProgress *)self->_internalProgress setTotalUnitCount:[(NSProgress *)self->_internalProgress completedUnitCount]];
  resultsPromise = self->_resultsPromise;
  v4 = MEMORY[0x1E695E118];

  [(EFPromise *)resultsPromise finishWithResult:v4];
}

- (void)_gathered
{
  [(NSLock *)self->_lock lock];
  v4 = [self->_gatheredBlock copy];
  gatheredBlock = self->_gatheredBlock;
  self->_gatheredBlock = 0;

  [(EMSearchableIndexQuery *)self setQueryStatus:@"gathered"];
  [(EMSearchableIndexQuery *)self setLiveQueryDidGather:1];
  [(NSLock *)self->_lock unlock];
  if (v4)
  {
    v4[2]();
  }
}

- (BOOL)_isCancellationError:(id)error
{
  errorCopy = error;
  ef_cancelledError = [MEMORY[0x1E696ABC0] ef_cancelledError];
  v5 = [errorCopy isEqual:ef_cancelledError];

  if (v5)
  {
    goto LABEL_2;
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x1E6963B80]])
  {

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  code = [errorCopy code];

  if (code != -2003)
  {
    goto LABEL_7;
  }

LABEL_2:
  v6 = 1;
LABEL_8:

  return v6;
}

- (void)_failedWithError:(id)error
{
  errorCopy = error;
  v4 = [(EMSearchableIndexQuery *)self _isCancellationError:?];
  [(NSLock *)self->_lock lock];
  if (v4)
  {
    v5 = @"cancelled";
  }

  else
  {
    v5 = @"failed";
  }

  [(EMSearchableIndexQuery *)self setQueryStatus:v5];
  [(NSLock *)self->_lock unlock];
  [(EFPromise *)self->_resultsPromise finishWithError:errorCopy];
}

- (void)_cancelQuery
{
  [(CSSearchQuery *)self->_query setCompletionHandler:0];
  [(CSSearchQuery *)self->_query setFoundItemHandler:0];
  [(CSSearchQuery *)self->_query setFoundItemsHandler:0];
  query = self->_query;

  [(CSSearchQuery *)query cancel];
}

- (void)_cancel
{
  [(NSLock *)self->_lock lock];
  [(EMSearchableIndexQuery *)self _cancelQuery];
  [(NSLock *)self->_lock unlock];
  ef_cancelledError = [MEMORY[0x1E696ABC0] ef_cancelledError];
  [(EMSearchableIndexQuery *)self _failedWithError:?];
}

- (BOOL)isCancelled
{
  [(NSLock *)self->_lock lock];
  queryStatus = [(EMSearchableIndexQuery *)self queryStatus];
  v4 = [queryStatus isEqualToString:@"cancelled"];

  [(NSLock *)self->_lock unlock];
  return v4;
}

- (void)start
{
  v3.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  v3.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(self->activity, &v3);
  [(NSLock *)self->_lock lock];
  [(CSSearchQuery *)self->_query start];
  [(EMSearchableIndexQuery *)self setQueryStatus:@"started"];
  [(EMSearchableIndexQuery *)self _logSignpostForSearchQueryStart];
  [(NSLock *)self->_lock unlock];
  os_activity_scope_leave(&v3);
}

- (void)simulateFailedQueryWithError:(id)error
{
  errorCopy = error;
  [(EMSearchableIndexQuery *)self setSimulatedFailedQueryError:?];
  [(CSSearchQuery *)self->_query cancel];
}

- (void)_removeResultsBlock
{
  [(NSLock *)self->_lock lock];
  [(EMSearchableIndexQuery *)self setResultsBlock:0];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)_removeAllLiveUpdatesBlocks
{
  [(NSLock *)self->_lock lock];
  [(EMSearchableIndexQuery *)self setGatheredBlock:0];
  [(EMSearchableIndexQuery *)self setChangedItemsBlock:0];
  [(EMSearchableIndexQuery *)self setCountChangedBlock:0];
  [(EMSearchableIndexQuery *)self setRemovedItemsBlock:0];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)_performClientWork:(id)work
{
  workCopy = work;
  workCopy[2]();
}

- (void)_searchQueryDidFindItems:(id)items
{
  v15 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = +[EMSearchableIndexQuery log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logPrefixString = [(EMSearchableIndexQuery *)self logPrefixString];
    *buf = 138543618;
    v12 = logPrefixString;
    v13 = 2048;
    v14 = [itemsCopy count];
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ found %lu items", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__EMSearchableIndexQuery__searchQueryDidFindItems___block_invoke;
  v9[3] = &unk_1E826C148;
  v9[4] = self;
  v7 = itemsCopy;
  v10 = v7;
  [(EMSearchableIndexQuery *)self _performClientWork:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __51__EMSearchableIndexQuery__searchQueryDidFindItems___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 208) becomeCurrentWithPendingUnitCount:1];
  [*(a1 + 32) _foundItems:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 208);

  return [v2 resignCurrent];
}

- (void)_searchQueryDidFailWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = +[EMSearchableIndexQuery log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    logPrefixString = [(EMSearchableIndexQuery *)self logPrefixString];
    ef_publicDescription = [errorCopy ef_publicDescription];
    [(EMSearchableIndexQuery *)logPrefixString _searchQueryDidFailWithError:ef_publicDescription, buf, v5];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__EMSearchableIndexQuery__searchQueryDidFailWithError___block_invoke;
  v10[3] = &unk_1E826C148;
  v10[4] = self;
  v8 = errorCopy;
  v11 = v8;
  [(EMSearchableIndexQuery *)self _performClientWork:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_searchQueryDidComplete
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[EMSearchableIndexQuery log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logPrefixString = [(EMSearchableIndexQuery *)self logPrefixString];
    *buf = 138543362;
    v8 = logPrefixString;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ completed", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__EMSearchableIndexQuery__searchQueryDidComplete__block_invoke;
  v6[3] = &unk_1E826C098;
  v6[4] = self;
  [(EMSearchableIndexQuery *)self _performClientWork:v6];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_searchQueryGatherDidEnd
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[EMSearchableIndexQuery log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logPrefixString = [(EMSearchableIndexQuery *)self logPrefixString];
    *buf = 138543362;
    v8 = logPrefixString;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ gathered", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__EMSearchableIndexQuery__searchQueryGatherDidEnd__block_invoke;
  v6[3] = &unk_1E826C098;
  v6[4] = self;
  [(EMSearchableIndexQuery *)self _performClientWork:v6];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_searchQueryDidChangeItems:(id)items
{
  v15 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = +[EMSearchableIndexQuery log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logPrefixString = [(EMSearchableIndexQuery *)self logPrefixString];
    *buf = 138543618;
    v12 = logPrefixString;
    v13 = 2048;
    v14 = [itemsCopy count];
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ changed %lu items", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__EMSearchableIndexQuery__searchQueryDidChangeItems___block_invoke;
  v9[3] = &unk_1E826C148;
  v9[4] = self;
  v7 = itemsCopy;
  v10 = v7;
  [(EMSearchableIndexQuery *)self _performClientWork:v9];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_searchQueryDidRemoveIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = +[EMSearchableIndexQuery log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logPrefixString = [(EMSearchableIndexQuery *)self logPrefixString];
    *buf = 138543618;
    v12 = logPrefixString;
    v13 = 2048;
    v14 = [identifiersCopy count];
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ removed %lu items", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__EMSearchableIndexQuery__searchQueryDidRemoveIdentifiers___block_invoke;
  v9[3] = &unk_1E826C148;
  v9[4] = self;
  v7 = identifiersCopy;
  v10 = v7;
  [(EMSearchableIndexQuery *)self _performClientWork:v9];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_searchQueryDidChangeCount:(int64_t)count
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = +[EMSearchableIndexQuery log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logPrefixString = [(EMSearchableIndexQuery *)self logPrefixString];
    *buf = 138543618;
    v10 = logPrefixString;
    v11 = 2048;
    countCopy = count;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ count changed %lu items", buf, 0x16u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__EMSearchableIndexQuery__searchQueryDidChangeCount___block_invoke;
  v8[3] = &unk_1E826C4F0;
  v8[4] = self;
  v8[5] = count;
  [(EMSearchableIndexQuery *)self _performClientWork:v8];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_searchQueryDidFindAttribute:(id)attribute values:(id)values
{
  v22 = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  valuesCopy = values;
  v8 = +[EMSearchableIndexQuery log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    logPrefixString = [(EMSearchableIndexQuery *)self logPrefixString];
    *buf = 138543874;
    v17 = logPrefixString;
    v18 = 2114;
    v19 = attributeCopy;
    v20 = 2048;
    v21 = [valuesCopy count];
    _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ found attribute %{public}@ with %lu values", buf, 0x20u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__EMSearchableIndexQuery__searchQueryDidFindAttribute_values___block_invoke;
  v13[3] = &unk_1E826C230;
  v13[4] = self;
  v10 = attributeCopy;
  v14 = v10;
  v11 = valuesCopy;
  v15 = v11;
  [(EMSearchableIndexQuery *)self _performClientWork:v13];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __62__EMSearchableIndexQuery__searchQueryDidFindAttribute_values___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 208) becomeCurrentWithPendingUnitCount:1];
  [*(a1 + 32) _foundAttribute:*(a1 + 40) values:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 208);

  return [v2 resignCurrent];
}

- (void)_searchQueryDidChangeAttribute:(id)attribute values:(id)values
{
  v22 = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  valuesCopy = values;
  v8 = +[EMSearchableIndexQuery log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    logPrefixString = [(EMSearchableIndexQuery *)self logPrefixString];
    *buf = 138543874;
    v17 = logPrefixString;
    v18 = 2114;
    v19 = attributeCopy;
    v20 = 2048;
    v21 = [valuesCopy count];
    _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ change attribute %{public}@ with %lu values", buf, 0x20u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__EMSearchableIndexQuery__searchQueryDidChangeAttribute_values___block_invoke;
  v13[3] = &unk_1E826C230;
  v13[4] = self;
  v10 = attributeCopy;
  v14 = v10;
  v11 = valuesCopy;
  v15 = v11;
  [(EMSearchableIndexQuery *)self _performClientWork:v13];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __64__EMSearchableIndexQuery__searchQueryDidChangeAttribute_values___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 208) becomeCurrentWithPendingUnitCount:1];
  [*(a1 + 32) _changedAttribute:*(a1 + 40) values:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 208);

  return [v2 resignCurrent];
}

- (void)_logSignpostForSearchQueryStart
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[EMSearchableIndexQuery signpostLog];
  signpostID = [(EMSearchableIndexQuery *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    expression = [(EMSearchableIndexQuery *)self expression];
    v7 = 138477827;
    v8 = expression;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v3, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EMSearchableIndexQuery", "QueryStartedWithExpression=%{signpost.description:attribute,private}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_logSignpostForSearchQueryDidReceiveFirstResultsWithItemCount:(unint64_t)count
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = +[EMSearchableIndexQuery signpostLog];
  signpostID = [(EMSearchableIndexQuery *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = 134349056;
    countCopy = count;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v5, OS_SIGNPOST_EVENT, signpostID, "EMSearchableIndexQuery", "ReceivedFirstResultsWithItemCount=%{signpost.description:attribute,public}lu", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_logSignpostForSearchQueryDidFinishWithStatus:(id)status
{
  v10 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v5 = +[EMSearchableIndexQuery signpostLog];
  signpostID = [(EMSearchableIndexQuery *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = 138543362;
    v9 = statusCopy;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v5, OS_SIGNPOST_INTERVAL_END, signpostID, "EMSearchableIndexQuery", "QueryFinishedWithStatus=%{signpost.description:attribute,public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)_operandStringForOperand:(int64_t)operand
{
  v3 = @"&&";
  if (operand == 2)
  {
    v3 = @"||";
  }

  if (operand)
  {
    return v3;
  }

  else
  {
    return @"!";
  }
}

+ (id)_modifierStringFromModifiers:(unint64_t)modifiers
{
  v3 = "c";
  v4 = "";
  if ((modifiers & 1) == 0)
  {
    v3 = "";
  }

  v5 = "d";
  if ((modifiers & 2) == 0)
  {
    v5 = "";
  }

  v6 = "w";
  if ((modifiers & 4) == 0)
  {
    v6 = "";
  }

  v7 = "t";
  if ((modifiers & 8) == 0)
  {
    v7 = "";
  }

  if ((modifiers & 0x10) != 0)
  {
    v4 = "f070";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%s%s%s%s", v3, v5, v6, v7, v4];
}

+ (id)queryStringByJoiningQueries:(id)queries withOperand:(int64_t)operand
{
  queriesCopy = queries;
  if ([queriesCopy count] > 1)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [self _operandStringForOperand:operand];
    v10 = [v8 stringWithFormat:@" %@ ", v9];

    v11 = MEMORY[0x1E696AEC0];
    v12 = [queriesCopy componentsJoinedByString:v10];
    firstObject = [v11 stringWithFormat:@"(%@)", v12];
  }

  else
  {
    firstObject = [queriesCopy firstObject];
  }

  return firstObject;
}

+ (id)_queryStringForPhrase:(id)phrase attributes:(id)attributes modifiers:(unint64_t)modifiers phraseMatchFormatString:(id)string
{
  v6 = [self _queryStringForPhrase:phrase attributes:attributes modifiers:modifiers phraseMatchFormatString:string comparisonOperator:0];

  return v6;
}

+ (id)_queryStringForPhrase:(id)phrase attributes:(id)attributes modifiers:(unint64_t)modifiers phraseMatchFormatString:(id)string comparisonOperator:(int64_t)operator
{
  phraseCopy = phrase;
  attributesCopy = attributes;
  stringCopy = string;
  v15 = [self _modifierStringFromModifiers:modifiers];
  v16 = [phraseCopy em_stringForQuotingWithCharacter:39];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:stringCopy, v16];
  v18 = @"!=";
  if (!operator)
  {
    v18 = @"=";
  }

  v19 = v18;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __152__EMSearchableIndexQuery_EMSearchableIndexQueryStringGeneration___queryStringForPhrase_attributes_modifiers_phraseMatchFormatString_comparisonOperator___block_invoke;
  v26[3] = &unk_1E826F8F0;
  v20 = v19;
  v27 = v20;
  v21 = v17;
  v28 = v21;
  v22 = v15;
  v29 = v22;
  v23 = [attributesCopy ef_map:v26];
  v24 = [self queryStringByJoiningQueries:v23 withOperand:2];

  return v24;
}

id __152__EMSearchableIndexQuery_EMSearchableIndexQueryStringGeneration___queryStringForPhrase_attributes_modifiers_phraseMatchFormatString_comparisonOperator___block_invoke(void *a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ '%@'%@", a2, a1[4], a1[5], a1[6]];

  return v2;
}

+ (id)queryStringForPhrase:(id)phrase attributes:(id)attributes modifiers:(unint64_t)modifiers languages:(id)languages phraseMatchFormatString:(id)string comparisonOperator:(int64_t)operator
{
  attributesCopy = attributes;
  stringCopy = string;
  v16 = [phrase ef_stringByRemovingQuotesForLanguages:languages];
  v17 = [self _queryStringForPhrase:v16 attributes:attributesCopy modifiers:modifiers phraseMatchFormatString:stringCopy comparisonOperator:operator];

  return v17;
}

+ (id)searchWordsForPhrase:(id)phrase languages:(id)languages
{
  v27 = *MEMORY[0x1E69E9840];
  phraseCopy = phrase;
  languagesCopy = languages;
  v20 = [phraseCopy ef_quotedWordComponentsForLanguages:?];
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v20, "count")}];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v20;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 length];
        if (((v12 > 3) & v8) == 1)
        {
          if ([v5 length])
          {
            [v21 addObject:v5];
          }

          v13 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v11];

          v5 = v13;
        }

        else
        {
          v14 = [v5 length];
          v15 = @" ";
          if (!v14)
          {
            v15 = &stru_1F45FD218;
          }

          [v5 appendFormat:@"%@%@", v15, v11];
        }

        v8 |= v12 > 3;
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  if ([v5 length])
  {
    [v21 addObject:v5];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v21;
}

void __77__EMSearchableIndexQuery_initWithExpression_builder_queryContext_querySetup___block_invoke_5_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1C6655000, log, OS_LOG_TYPE_DEBUG, "%{public}@ cancelled via NSProgress", buf, 0xCu);
}

- (void)_performClientWork:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_1C6655000, a2, OS_LOG_TYPE_FAULT, "#Warning %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_searchQueryDidFailWithError:(uint8_t *)buf .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "%{public}@ failed: %{public}@", buf, 0x16u);
}

@end