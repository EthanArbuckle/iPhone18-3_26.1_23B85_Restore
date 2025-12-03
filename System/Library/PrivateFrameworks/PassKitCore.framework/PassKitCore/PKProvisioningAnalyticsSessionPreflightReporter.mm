@interface PKProvisioningAnalyticsSessionPreflightReporter
+ (id)createUnaffiliatedReporter;
- (id)startPreflight;
- (void)_reportPreflightStepCompleteForContext:(id)context token:(id)token;
- (void)_sendPendingEvents;
- (void)affiliateReporter:(id)reporter;
- (void)finishPreflightForToken:(id)token;
- (void)reportAppExtensionPreflightComplete:(id)complete token:(id)token;
- (void)reportCredentialsPreflightComplete:(id)complete token:(id)token;
- (void)reportPreflightStepComplete:(id)complete itemCount:(unint64_t)count token:(id)token;
@end

@implementation PKProvisioningAnalyticsSessionPreflightReporter

+ (id)createUnaffiliatedReporter
{
  v2 = objc_alloc_init(PKProvisioningAnalyticsSessionPreflightReporter);
  v2->_isUnaffiliated = 1;

  return v2;
}

- (void)affiliateReporter:(id)reporter
{
  if (*(reporter + 24) == 1)
  {
    *(reporter + 24) = 0;
    reporterCopy = reporter;
    responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
    [reporterCopy setResponder:responder];

    sessionID = [(PKProvisioningAnalyticsSessionReporter *)self sessionID];
    [reporterCopy setSessionID:sessionID];

    [reporterCopy _sendPendingEvents];
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
        responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
        [responder reportPreflightEventForReporter:self context:v9];

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

- (void)finishPreflightForToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v14 = tokenCopy;
    stepProperties = [tokenCopy stepProperties];
    v6 = MEMORY[0x1E696AD98];
    Current = CFAbsoluteTimeGetCurrent();
    [v14 start];
    v9 = [v6 numberWithDouble:Current - v8];
    [stepProperties setObject:v9 forKeyedSubscript:@"duration"];

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

      [(NSMutableArray *)pendingEventsToReport addObject:stepProperties];
    }

    else
    {
      responder = [(PKProvisioningAnalyticsSessionReporter *)self responder];
      [responder reportPreflightEventForReporter:self context:stepProperties];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)reportPreflightStepComplete:(id)complete itemCount:(unint64_t)count token:(id)token
{
  completeCopy = complete;
  tokenCopy = token;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = MEMORY[0x1E696AD98];
  Current = CFAbsoluteTimeGetCurrent();
  [tokenCopy start];
  v13 = [v10 numberWithDouble:Current - v12];
  v14 = [completeCopy stringByAppendingString:@".duration"];
  [v9 setObject:v13 forKeyedSubscript:v14];

  if (count != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
    v16 = [completeCopy stringByAppendingString:@".count"];
    [v9 setObject:v15 forKeyedSubscript:v16];
  }

  [(PKProvisioningAnalyticsSessionPreflightReporter *)self _reportPreflightStepCompleteForContext:v9 token:tokenCopy];
}

- (void)reportCredentialsPreflightComplete:(id)complete token:(id)token
{
  v31 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  tokenCopy = token;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = MEMORY[0x1E696AD98];
  Current = CFAbsoluteTimeGetCurrent();
  [tokenCopy start];
  v11 = [v8 numberWithDouble:Current - v10];
  [v7 setObject:v11 forKeyedSubscript:@"credentials.duration"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(completeCopy, "count")}];
  [v7 setObject:v12 forKeyedSubscript:@"credentials.count"];

  v25 = completeCopy;
  v13 = [completeCopy pk_groupDictionaryByApplyingBlock:&__block_literal_global_120];
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
        lowercaseString = [v19 lowercaseString];

        v21 = MEMORY[0x1E696AD98];
        v22 = [v13 objectForKeyedSubscript:v18];
        v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
        [v7 setObject:v23 forKeyedSubscript:lowercaseString];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  [(PKProvisioningAnalyticsSessionPreflightReporter *)self _reportPreflightStepCompleteForContext:v7 token:tokenCopy];
}

__CFString *__92__PKProvisioningAnalyticsSessionPreflightReporter_reportCredentialsPreflightComplete_token___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 cardType];

  return PKPaymentCardTypeToString(v2);
}

- (void)reportAppExtensionPreflightComplete:(id)complete token:(id)token
{
  v6 = MEMORY[0x1E695DF90];
  tokenCopy = token;
  completeCopy = complete;
  v16 = objc_alloc_init(v6);
  v9 = MEMORY[0x1E696AD98];
  Current = CFAbsoluteTimeGetCurrent();
  [tokenCopy start];
  v12 = [v9 numberWithDouble:Current - v11];
  [v16 setObject:v12 forKeyedSubscript:@"appExtension.duration"];

  v13 = MEMORY[0x1E696AD98];
  v14 = [completeCopy count];

  v15 = [v13 numberWithUnsignedInteger:v14];
  [v16 setObject:v15 forKeyedSubscript:@"appExtension.count"];

  [(PKProvisioningAnalyticsSessionPreflightReporter *)self _reportPreflightStepCompleteForContext:v16 token:tokenCopy];
}

- (void)_reportPreflightStepCompleteForContext:(id)context token:(id)token
{
  contextCopy = context;
  tokenCopy = token;
  if (tokenCopy)
  {
    v6 = tokenCopy;
    stepProperties = [tokenCopy stepProperties];
    [stepProperties addEntriesFromDictionary:contextCopy];
  }

  else
  {
    __break(1u);
  }
}

@end