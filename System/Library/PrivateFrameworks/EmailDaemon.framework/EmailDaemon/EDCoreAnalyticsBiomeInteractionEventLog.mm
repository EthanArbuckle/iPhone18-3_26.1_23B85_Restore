@interface EDCoreAnalyticsBiomeInteractionEventLog
+ (OS_os_log)log;
- (EDCoreAnalyticsBiomeInteractionEventLog)initWithReadBiomeCollector:(id)collector;
- (void)persistEvent:(id)event date:(id)date message:(id)message data:(id)data;
@end

@implementation EDCoreAnalyticsBiomeInteractionEventLog

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EDCoreAnalyticsBiomeInteractionEventLog_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_35 != -1)
  {
    dispatch_once(&log_onceToken_35, block);
  }

  v2 = log_log_35;

  return v2;
}

void __46__EDCoreAnalyticsBiomeInteractionEventLog_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_35;
  log_log_35 = v1;
}

- (EDCoreAnalyticsBiomeInteractionEventLog)initWithReadBiomeCollector:(id)collector
{
  collectorCopy = collector;
  v9.receiver = self;
  v9.super_class = EDCoreAnalyticsBiomeInteractionEventLog;
  v6 = [(EDCoreAnalyticsBiomeInteractionEventLog *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readBiomeCollector, collector);
  }

  return v7;
}

- (void)persistEvent:(id)event date:(id)date message:(id)message data:(id)data
{
  eventCopy = event;
  dateCopy = date;
  messageCopy = message;
  dataCopy = data;
  v13 = [MEMORY[0x1E695DF00] ef_dateHoursAgo:672];
  if ([eventCopy isEqual:*MEMORY[0x1E699AF70]])
  {
    if (([messageCopy conformsToProtocol:&unk_1F4629520] & 1) != 0 || (objc_msgSend(messageCopy, "account"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "identifier"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
    {
      v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(messageCopy, "globalMessageID")}];
      v17 = [dataCopy objectForKeyedSubscript:*MEMORY[0x1E699AF80]];
      bOOLValue = [v17 BOOLValue];

      dateReceived = [messageCopy dateReceived];
      v20 = [dateReceived ef_isLaterThanOrEqualDate:v13];

      if (v20)
      {
        readBiomeCollector = [(EDCoreAnalyticsBiomeInteractionEventLog *)self readBiomeCollector];
        account = [messageCopy account];
        identifier = [account identifier];
        [readBiomeCollector logReadEventForMessageID:v16 accountId:identifier readTimestamp:dateCopy categorizationEnabled:bOOLValue];
      }
    }
  }
}

@end