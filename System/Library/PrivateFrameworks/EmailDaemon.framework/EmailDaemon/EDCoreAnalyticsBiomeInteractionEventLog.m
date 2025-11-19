@interface EDCoreAnalyticsBiomeInteractionEventLog
+ (OS_os_log)log;
- (EDCoreAnalyticsBiomeInteractionEventLog)initWithReadBiomeCollector:(id)a3;
- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 data:(id)a6;
@end

@implementation EDCoreAnalyticsBiomeInteractionEventLog

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EDCoreAnalyticsBiomeInteractionEventLog_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (EDCoreAnalyticsBiomeInteractionEventLog)initWithReadBiomeCollector:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EDCoreAnalyticsBiomeInteractionEventLog;
  v6 = [(EDCoreAnalyticsBiomeInteractionEventLog *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readBiomeCollector, a3);
  }

  return v7;
}

- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 data:(id)a6
{
  v24 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E695DF00] ef_dateHoursAgo:672];
  if ([v24 isEqual:*MEMORY[0x1E699AF70]])
  {
    if (([v11 conformsToProtocol:&unk_1F4629520] & 1) != 0 || (objc_msgSend(v11, "account"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "identifier"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
    {
      v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v11, "globalMessageID")}];
      v17 = [v12 objectForKeyedSubscript:*MEMORY[0x1E699AF80]];
      v18 = [v17 BOOLValue];

      v19 = [v11 dateReceived];
      v20 = [v19 ef_isLaterThanOrEqualDate:v13];

      if (v20)
      {
        v21 = [(EDCoreAnalyticsBiomeInteractionEventLog *)self readBiomeCollector];
        v22 = [v11 account];
        v23 = [v22 identifier];
        [v21 logReadEventForMessageID:v16 accountId:v23 readTimestamp:v10 categorizationEnabled:v18];
      }
    }
  }
}

@end