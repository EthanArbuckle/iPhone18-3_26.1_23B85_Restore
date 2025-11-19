@interface PKProvisioningAnalyticsSessionPreflightReporter
+ (id)createUnaffiliatedReporter;
- (id)startPreflight;
- (void)_reportPreflightStepCompleteForContext:(id)a3 token:(id)a4;
- (void)_sendPendingEvents;
- (void)affiliateReporter:(id)a3;
- (void)finishPreflightForToken:(id)a3;
- (void)reportAppExtensionPreflightComplete:(id)a3 token:(id)a4;
- (void)reportCredentialsPreflightComplete:(id)a3 token:(id)a4;
- (void)reportPreflightStepComplete:(id)a3 itemCount:(unint64_t)a4 token:(id)a5;
@end

@implementation PKProvisioningAnalyticsSessionPreflightReporter

+ (id)createUnaffiliatedReporter
{
  v2 = objc_alloc_init(PKProvisioningAnalyticsSessionPreflightReporter);
  v2->_isUnaffiliated = 1;

  return v2;
}

- (void)affiliateReporter:(id)a3
{
  if (*(a3 + 24) == 1)
  {
    *(a3 + 24) = 0;
    v7 = a3;
    v5 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
    [v7 setResponder:v5];

    v6 = [(PKProvisioningAnalyticsSessionReporter *)self sessionID];
    [v7 setSessionID:v6];

    [v7 _sendPendingEvents];
  }
}

- (void)_sendPendingEvents
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_pendingEventsToReport copy];
  [(NSMutableArray *)self->_pendingEventsToReport removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
        [v10 reportPreflightEventForReporter:self context:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)startPreflight
{
  v2 = objc_alloc_init(PKProvisioningAnalyticsSessionPreflightToken);

  return v2;
}

- (void)finishPreflightForToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14 = v4;
    v5 = [v4 stepProperties];
    v6 = MEMORY[0x1E696AD98];
    Current = CFAbsoluteTimeGetCurrent();
    [v14 start];
    v9 = [v6 numberWithDouble:Current - v8];
    [v5 setObject:v9 forKeyedSubscript:@"duration"];

    if (self->_isUnaffiliated)
    {
      pendingEventsToReport = self->_pendingEventsToReport;
      if (!pendingEventsToReport)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v12 = self->_pendingEventsToReport;
        self->_pendingEventsToReport = v11;

        pendingEventsToReport = self->_pendingEventsToReport;
      }

      [(NSMutableArray *)pendingEventsToReport addObject:v5];
    }

    else
    {
      v13 = [(PKProvisioningAnalyticsSessionReporter *)self responder];
      [v13 reportPreflightEventForReporter:self context:v5];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)reportPreflightStepComplete:(id)a3 itemCount:(unint64_t)a4 token:(id)a5
{
  v17 = a3;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = MEMORY[0x1E696AD98];
  Current = CFAbsoluteTimeGetCurrent();
  [v8 start];
  v13 = [v10 numberWithDouble:Current - v12];
  v14 = [v17 stringByAppendingString:@".duration"];
  [v9 setObject:v13 forKeyedSubscript:v14];

  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v16 = [v17 stringByAppendingString:@".count"];
    [v9 setObject:v15 forKeyedSubscript:v16];
  }

  [(PKProvisioningAnalyticsSessionPreflightReporter *)self _reportPreflightStepCompleteForContext:v9 token:v8];
}

- (void)reportCredentialsPreflightComplete:(id)a3 token:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = MEMORY[0x1E696AD98];
  Current = CFAbsoluteTimeGetCurrent();
  [v6 start];
  v11 = [v8 numberWithDouble:Current - v10];
  [v7 setObject:v11 forKeyedSubscript:@"credentials.duration"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  [v7 setObject:v12 forKeyedSubscript:@"credentials.count"];

  v25 = v5;
  v13 = [v5 pk_groupDictionaryByApplyingBlock:&__block_literal_global_120];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"credentials.%@.count", v18];
        v20 = [v19 lowercaseString];

        v21 = MEMORY[0x1E696AD98];
        v22 = [v13 objectForKeyedSubscript:v18];
        v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
        [v7 setObject:v23 forKeyedSubscript:v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  [(PKProvisioningAnalyticsSessionPreflightReporter *)self _reportPreflightStepCompleteForContext:v7 token:v6];
}

__CFString *__92__PKProvisioningAnalyticsSessionPreflightReporter_reportCredentialsPreflightComplete_token___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 cardType];

  return PKPaymentCardTypeToString(v2);
}

- (void)reportAppExtensionPreflightComplete:(id)a3 token:(id)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = a3;
  v16 = objc_alloc_init(v6);
  v9 = MEMORY[0x1E696AD98];
  Current = CFAbsoluteTimeGetCurrent();
  [v7 start];
  v12 = [v9 numberWithDouble:Current - v11];
  [v16 setObject:v12 forKeyedSubscript:@"appExtension.duration"];

  v13 = MEMORY[0x1E696AD98];
  v14 = [v8 count];

  v15 = [v13 numberWithUnsignedInteger:v14];
  [v16 setObject:v15 forKeyedSubscript:@"appExtension.count"];

  [(PKProvisioningAnalyticsSessionPreflightReporter *)self _reportPreflightStepCompleteForContext:v16 token:v7];
}

- (void)_reportPreflightStepCompleteForContext:(id)a3 token:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (v5)
  {
    v6 = v5;
    v7 = [v5 stepProperties];
    [v7 addEntriesFromDictionary:v8];
  }

  else
  {
    __break(1u);
  }
}

@end