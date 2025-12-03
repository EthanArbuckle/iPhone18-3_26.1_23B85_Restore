@interface MSParsecSearchSession
+ (OS_os_log)log;
+ (id)sharedSession;
- (MSParsecSearchSession)init;
- (id)_categoryOrder;
- (id)_sectionFeedbackForBundleIdentifier:(id)identifier results:(id)results;
- (void)reportDidGoToCommittedSearch;
- (void)reportFeedback:(id)feedback;
- (void)reportInstantAnswerButtonSelected:(id)selected cardSectionID:(id)d command:(id)command;
- (void)reportInstantAnswerCardSelected:(id)selected cardSectionID:(id)d;
- (void)reportLocalSearchCancelled;
- (void)reportLocalSearchEnded;
- (void)reportMessageListResultsFetched:(id)fetched topHitResults:(id)results instantAnswerResult:(id)result isFinished:(BOOL)finished;
- (void)reportMessageResultEngaged:(id)engaged engagementAction:(int64_t)action;
- (void)reportMessageResultsVisible:(id)visible latencyMs:(id)ms;
- (void)reportQueryClearedEvent:(int64_t)event;
- (void)reportRankingFeedbackForSuggestions:(id)suggestions;
- (void)reportSearchEndedEvent:(int64_t)event;
- (void)reportSuggestionSelected:(id)selected;
- (void)reportSuggestionsVisible:(id)visible latencyMs:(id)ms;
- (void)reportTopHitSelected:(id)selected;
- (void)sendLogsToSettings;
@end

@implementation MSParsecSearchSession

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__MSParsecSearchSession_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __28__MSParsecSearchSession_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

+ (id)sharedSession
{
  if (sharedSession_onceToken != -1)
  {
    +[MSParsecSearchSession sharedSession];
  }

  v3 = sharedSession_sharedSession;

  return v3;
}

void __38__MSParsecSearchSession_sharedSession__block_invoke()
{
  v0 = objc_alloc_init(MSParsecSearchSession);
  v1 = sharedSession_sharedSession;
  sharedSession_sharedSession = v0;
}

- (MSParsecSearchSession)init
{
  v13.receiver = self;
  v13.super_class = MSParsecSearchSession;
  v2 = [(MSParsecSearchSession *)&v13 init];
  if (v2)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v3 = getPARSessionConfigurationClass_softClass;
    v22 = getPARSessionConfigurationClass_softClass;
    if (!getPARSessionConfigurationClass_softClass)
    {
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __getPARSessionConfigurationClass_block_invoke;
      v17 = &unk_27985B7F0;
      v18 = &v19;
      __getPARSessionConfigurationClass_block_invoke(&v14);
      v3 = v20[3];
    }

    v4 = v3;
    _Block_object_dispose(&v19, 8);
    v5 = [[v3 alloc] initWithId:@"com.apple.mail" userAgent:@"Mail/1"];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v6 = getPARSessionClass_softClass;
    v22 = getPARSessionClass_softClass;
    if (!getPARSessionClass_softClass)
    {
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __getPARSessionClass_block_invoke;
      v17 = &unk_27985B7F0;
      v18 = &v19;
      __getPARSessionClass_block_invoke(&v14);
      v6 = v20[3];
    }

    v7 = v6;
    _Block_object_dispose(&v19, 8);
    v8 = [v6 sharedPARSessionWithConfiguration:v5];
    session = v2->_session;
    v2->_session = v8;

    v2->_currentQueryID = 0;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentFeedback = v2->_currentFeedback;
    v2->_currentFeedback = v10;
  }

  return v2;
}

- (void)sendLogsToSettings
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = +[MSParsecSearchSession log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentFeedback = [(MSParsecSearchSession *)self currentFeedback];
    v7 = 138412290;
    v8 = currentFeedback;
    _os_log_impl(&dword_257F8E000, v3, OS_LOG_TYPE_DEFAULT, "Reporting feedback to settings %@", &v7, 0xCu);
  }

  currentFeedback2 = [(MSParsecSearchSession *)self currentFeedback];
  [currentFeedback2 removeAllObjects];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)reportFeedback:(id)feedback
{
  v14 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  session = [(MSParsecSearchSession *)self session];
  [session reportFeedback:feedbackCopy queryId:self->_currentQueryID];

  currentFeedback = [(MSParsecSearchSession *)self currentFeedback];
  [currentFeedback addObject:feedbackCopy];

  v7 = +[MSParsecSearchSession log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    currentQueryID = self->_currentQueryID;
    v10 = 134218242;
    v11 = currentQueryID;
    v12 = 2112;
    v13 = feedbackCopy;
    _os_log_impl(&dword_257F8E000, v7, OS_LOG_TYPE_INFO, "Reporting queryID: %lld feedback: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)reportLocalSearchEnded
{
  v14 = *MEMORY[0x277D85DE8];
  currentLocalSearchFeedback = [(MSParsecSearchSession *)self currentLocalSearchFeedback];

  if (currentLocalSearchFeedback)
  {
    v4 = objc_alloc(MEMORY[0x277D4C348]);
    currentLocalSearchFeedback2 = [(MSParsecSearchSession *)self currentLocalSearchFeedback];
    v6 = [v4 initWithStartSearch:currentLocalSearchFeedback2];

    embeddingState = [(MSParsecSearchSession *)self embeddingState];
    if (embeddingState)
    {
      v8 = +[MSParsecSearchSession log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        embeddingState2 = [(MSParsecSearchSession *)self embeddingState];
        v12 = 138543362;
        v13 = embeddingState2;
        _os_log_impl(&dword_257F8E000, v8, OS_LOG_TYPE_INFO, "Sending Parsec embeddingState: %{public}@", &v12, 0xCu);
      }

      feedbackEmbedding = [embeddingState feedbackEmbedding];
      [v6 setEmbeddingState:feedbackEmbedding];

      [(MSParsecSearchSession *)self setEmbeddingState:0];
    }

    [(MSParsecSearchSession *)self setCurrentLocalSearchFeedback:0];
    [(MSParsecSearchSession *)self reportFeedback:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)reportLocalSearchCancelled
{
  embeddingState = [(MSParsecSearchSession *)self embeddingState];
  v3 = +[MSParsecSearchEmbeddingState embeddingStateWithQueryStatus:hasQueryEmbedding:hasKeywordResults:hasEmbeddingResults:](MSParsecSearchEmbeddingState, "embeddingStateWithQueryStatus:hasQueryEmbedding:hasKeywordResults:hasEmbeddingResults:", 2, [embeddingState hasQueryEmbedding], objc_msgSend(embeddingState, "hasKeywordResults"), objc_msgSend(embeddingState, "hasEmbeddingResults"));
  [(MSParsecSearchSession *)self setEmbeddingState:v3];

  [(MSParsecSearchSession *)self reportLocalSearchEnded];
}

- (id)_categoryOrder
{
  if (_categoryOrder_onceToken != -1)
  {
    [MSParsecSearchSession _categoryOrder];
  }

  v3 = _categoryOrder_order;

  return v3;
}

void __39__MSParsecSearchSession__categoryOrder__block_invoke()
{
  v3[19] = *MEMORY[0x277D85DE8];
  v3[0] = @"cr";
  v3[1] = @"tophit";
  v3[2] = @"instantanswer";
  v3[3] = @"suggestion";
  v3[4] = @"people";
  v3[5] = @"date";
  v3[6] = @"subject";
  v3[7] = @"tu";
  v3[8] = @"tf";
  v3[9] = @"tv";
  v3[10] = @"attachment";
  v3[11] = @"mailbox";
  v3[12] = @"free_text";
  v3[13] = @"user_typed";
  v3[14] = @"document";
  v3[15] = @"link";
  v3[16] = @"flag";
  v3[17] = @"sender_contains";
  v3[18] = @"subject_contains";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:19];
  v1 = _categoryOrder_order;
  _categoryOrder_order = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (void)reportRankingFeedbackForSuggestions:(id)suggestions
{
  v20 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (suggestionsCopy)
  {
    [(MSParsecSearchSession *)self _categoryOrder];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v6 = v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [suggestionsCopy objectForKeyedSubscript:{v10, v15}];
          if (v11)
          {
            v12 = [(MSParsecSearchSession *)self _sectionFeedbackForBundleIdentifier:v10 results:v11];
            [v5 addObject:v12];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v13 = [objc_alloc(MEMORY[0x277D4C568]) initWithSections:v5 blendingDuration:0.0];
  [(MSParsecSearchSession *)self reportFeedback:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)reportSuggestionsVisible:(id)visible latencyMs:(id)ms
{
  v27 = *MEMORY[0x277D85DE8];
  visibleCopy = visible;
  msCopy = ms;
  v20 = [visibleCopy ef_mapSelector:{sel_feedbackResult, visibleCopy}];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = visibleCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          inlineCard = [v13 inlineCard];
          cardSections = [inlineCard cardSections];
          firstObject = [cardSections firstObject];

          if (firstObject)
          {
            cardSectionId = [firstObject cardSectionId];
            [v7 addObject:cardSectionId];
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v18 = [objc_alloc(MEMORY[0x277D4C6F0]) initWithResults:v20 triggerEvent:0];
  [v18 setUniqueIdentifiersOfVisibleCardSections:v7];
  if (msCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v18 setInputToResultShownMs:msCopy];
  }

  [(MSParsecSearchSession *)self reportFeedback:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)reportTopHitSelected:(id)selected
{
  feedbackResult = [selected feedbackResult];
  v4 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:feedbackResult triggerEvent:2 destination:0];
  [(MSParsecSearchSession *)self reportFeedback:v4];
}

- (void)reportInstantAnswerCardSelected:(id)selected cardSectionID:(id)d
{
  dCopy = d;
  feedbackResult = [selected feedbackResult];
  v7 = objc_alloc_init(MEMORY[0x277D4C238]);
  [v7 setCardSectionId:dCopy];
  v8 = objc_alloc_init(MEMORY[0x277D4C6E8]);
  v9 = objc_alloc_init(MEMORY[0x277D4C200]);
  v10 = [objc_alloc(MEMORY[0x277D4C2B8]) initWithCommand:v8 cardSection:v7 result:feedbackResult button:v9];
  [v10 setTriggerEvent:2];
  [(MSParsecSearchSession *)self reportFeedback:v10];
}

- (void)reportInstantAnswerButtonSelected:(id)selected cardSectionID:(id)d command:(id)command
{
  dCopy = d;
  commandCopy = command;
  feedbackResult = [selected feedbackResult];
  v10 = objc_alloc_init(MEMORY[0x277D4C238]);
  [v10 setCardSectionId:dCopy];
  v11 = objc_alloc_init(MEMORY[0x277D4C200]);
  v12 = [objc_alloc(MEMORY[0x277D4C2B8]) initWithCommand:commandCopy cardSection:v10 result:feedbackResult button:v11];
  [v12 setTriggerEvent:2];
  [(MSParsecSearchSession *)self reportFeedback:v12];
}

- (void)reportSuggestionSelected:(id)selected
{
  feedbackResult = [selected feedbackResult];
  v4 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:feedbackResult triggerEvent:2 destination:0];
  [(MSParsecSearchSession *)self reportFeedback:v4];
}

- (void)reportDidGoToCommittedSearch
{
  v3 = [objc_alloc(MEMORY[0x277D4C330]) initWithInput:&stru_28692F9D8 endpoint:0];
  [(MSParsecSearchSession *)self reportFeedback:?];
}

- (void)reportMessageListResultsFetched:(id)fetched topHitResults:(id)results instantAnswerResult:(id)result isFinished:(BOOL)finished
{
  finishedCopy = finished;
  v20[1] = *MEMORY[0x277D85DE8];
  fetchedCopy = fetched;
  resultsCopy = results;
  resultCopy = result;
  if (finishedCopy)
  {
    [(MSParsecSearchSession *)self reportLocalSearchEnded];
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (resultCopy)
  {
    v20[0] = resultCopy;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v15 = [(MSParsecSearchSession *)self _sectionFeedbackForBundleIdentifier:@"instantanswer" results:v14];

    [v13 addObject:v15];
  }

  if ([resultsCopy count])
  {
    v16 = [(MSParsecSearchSession *)self _sectionFeedbackForBundleIdentifier:@"tophit" results:resultsCopy];
    [v13 addObject:v16];
  }

  if ([fetchedCopy count])
  {
    v17 = [(MSParsecSearchSession *)self _sectionFeedbackForBundleIdentifier:@"com.apple.mail.search.messagelist" results:fetchedCopy];
    [v13 addObject:v17];
  }

  v18 = [objc_alloc(MEMORY[0x277D4C568]) initWithSections:v13 blendingDuration:0.0];
  [(MSParsecSearchSession *)self reportFeedback:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_sectionFeedbackForBundleIdentifier:(id)identifier results:(id)results
{
  identifierCopy = identifier;
  v6 = [results ef_compactMap:&__block_literal_global_35];
  v7 = [objc_alloc(MEMORY[0x277D4C608]) initWithResults:v6 section:0 localSectionPosition:0 personalizationScore:0.0];
  v8 = objc_alloc_init(MEMORY[0x277D4C588]);
  [v8 setBundleIdentifier:identifierCopy];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v8 setIdentifier:uUIDString];

  [v7 setSection:v8];

  return v7;
}

id __69__MSParsecSearchSession__sectionFeedbackForBundleIdentifier_results___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277D4C580]);
  v4 = [v2 feedbackResult];
  v5 = [v3 initWithResult:v4 hiddenResults:0 duplicateResults:0 localResultPosition:0];

  return v5;
}

- (void)reportMessageResultsVisible:(id)visible latencyMs:(id)ms
{
  msCopy = ms;
  v6 = [visible ef_compactMapSelector:sel_feedbackResult];
  v7 = [objc_alloc(MEMORY[0x277D4C6F0]) initWithResults:v6 triggerEvent:0];
  if (msCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 setInputToResultShownMs:msCopy];
  }

  [(MSParsecSearchSession *)self reportFeedback:v7];
}

- (void)reportMessageResultEngaged:(id)engaged engagementAction:(int64_t)action
{
  feedbackResult = [engaged feedbackResult];
  if (action >= 5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSParsecSearchSession.m" lineNumber:352 description:{@"Using undefined MSParsecSearchSessionEngagementAction %ld to create SFResultEngagementFeedback", 0}];

    v7 = 0;
  }

  else
  {
    v7 = qword_257FB28E8[action];
  }

  v9 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:feedbackResult triggerEvent:v7 destination:0];
  [(MSParsecSearchSession *)self reportFeedback:v9];
}

- (void)reportQueryClearedEvent:(int64_t)event
{
  if (event >= 3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSParsecSearchSession.m" lineNumber:372 description:{@"Using undefined MSParsecSearchSessionClearedEvent %ld to create SFClearInputFeedback", event}];

    v5 = 0;
  }

  else
  {
    v5 = event + 1;
  }

  v8 = [objc_alloc(MEMORY[0x277D4C260]) initWithEvent:v5];
  [(MSParsecSearchSession *)self reportFeedback:?];
}

- (void)reportSearchEndedEvent:(int64_t)event
{
  if (event >= 3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSParsecSearchSession.m" lineNumber:392 description:{@"Using undefined MSParsecSearchSessionEndEvent %ld to create SFSearchViewDisappearFeedback", event}];

    v5 = 0;
  }

  else
  {
    v5 = qword_257FB2910[event];
  }

  v8 = [objc_alloc(MEMORY[0x277D4C5E8]) initWithEvent:v5];
  [(MSParsecSearchSession *)self reportFeedback:?];
  [(MSParsecSearchSession *)self sendLogsToSettings];
}

- (void)reportQueryWithRestrictedComponents:(os_log_t)log triggerEvent:searchType:hasCurrentMailboxScope:searchViewAppeared:languages:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_257F8E000, log, OS_LOG_TYPE_DEBUG, "Sending Parsec indexState: %@", buf, 0xCu);
}

@end