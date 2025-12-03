@interface MUPlaceCardImpressionsLogger
- (MUPlaceCardImpressionsLogger)init;
- (void)logImpressionElementDidEnter:(id)enter onDate:(id)date;
- (void)logImpressionElementDidExit:(id)exit usingEnterDate:(id)date exitDate:(id)exitDate;
@end

@implementation MUPlaceCardImpressionsLogger

- (void)logImpressionElementDidExit:(id)exit usingEnterDate:(id)date exitDate:(id)exitDate
{
  exitCopy = exit;
  exitDateCopy = exitDate;
  [date timeIntervalSinceReferenceDate];
  v11 = v10;
  [exitDateCopy timeIntervalSinceReferenceDate];
  v13 = v12;

  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__MUPlaceCardImpressionsLogger_logImpressionElementDidExit_usingEnterDate_exitDate___block_invoke;
  block[3] = &unk_1E821A898;
  v17 = exitCopy;
  v18 = v11;
  v19 = v13;
  v15 = exitCopy;
  dispatch_async(isolationQueue, block);
}

void __84__MUPlaceCardImpressionsLogger_logImpressionElementDidExit_usingEnterDate_exitDate___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) customData];
  v3 = MUGetMUPlaceCardImpressionLoggingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) debugString];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *buf = 138412802;
    v17 = v4;
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_INFO, "Logging element did exit @%@ with start date %f, end date %f", buf, 0x20u);
  }

  v7 = MEMORY[0x1E69A1598];
  v8 = [*(a1 + 32) sessionIdentifier];
  v9 = [v2 query];
  v10 = [v2 businessId];
  v11 = [v2 localSearchProviderId];
  v12 = [v2 moduleIndex];
  v13 = [v2 moduleType];
  HIDWORD(v15) = 2;
  LOBYTE(v15) = [v2 isEnriched];
  [v7 capturePlaceCardImpressionEventWithImpressionObjectId:v8 query:v9 businessId:v10 localSearchProviderId:v11 elementIndex:v12 moduleType:v13 isEnriched:*(a1 + 40) impressionEvent:*(a1 + 48) impressionVisibleTimestamp:v15 impressionNonvisibleTimestamp:?];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)logImpressionElementDidEnter:(id)enter onDate:(id)date
{
  enterCopy = enter;
  dateCopy = date;
  isolationQueue = self->_isolationQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__MUPlaceCardImpressionsLogger_logImpressionElementDidEnter_onDate___block_invoke;
  v11[3] = &unk_1E821A870;
  v12 = enterCopy;
  v13 = dateCopy;
  v9 = dateCopy;
  v10 = enterCopy;
  dispatch_async(isolationQueue, v11);
}

void __68__MUPlaceCardImpressionsLogger_logImpressionElementDidEnter_onDate___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) customData];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = MUGetMUPlaceCardImpressionLoggingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) debugString];
    *buf = 138412546;
    v17 = v6;
    v18 = 2048;
    v19 = v4;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "Logging element did enter @%@ with start date %f", buf, 0x16u);
  }

  v7 = MEMORY[0x1E69A1598];
  v8 = [*(a1 + 32) sessionIdentifier];
  v9 = [v2 query];
  v10 = [v2 businessId];
  v11 = [v2 localSearchProviderId];
  v12 = [v2 moduleIndex];
  v13 = [v2 moduleType];
  HIDWORD(v15) = 1;
  LOBYTE(v15) = [v2 isEnriched];
  [v7 capturePlaceCardImpressionEventWithImpressionObjectId:v8 query:v9 businessId:v10 localSearchProviderId:v11 elementIndex:v12 moduleType:v13 isEnriched:v4 impressionEvent:0.0 impressionVisibleTimestamp:v15 impressionNonvisibleTimestamp:?];

  v14 = *MEMORY[0x1E69E9840];
}

- (MUPlaceCardImpressionsLogger)init
{
  v6.receiver = self;
  v6.super_class = MUPlaceCardImpressionsLogger;
  v2 = [(MUPlaceCardImpressionsLogger *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MapsUI.MUPlaceCardImpressionsLogger", 0);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v3;
  }

  return v2;
}

@end