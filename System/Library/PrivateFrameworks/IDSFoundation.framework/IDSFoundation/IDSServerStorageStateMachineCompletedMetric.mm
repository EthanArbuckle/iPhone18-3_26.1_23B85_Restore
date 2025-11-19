@interface IDSServerStorageStateMachineCompletedMetric
- (IDSServerStorageStateMachineCompletedMetric)initWithService:(id)a3 linkType:(int64_t)a4 wasPrimary:(BOOL)a5 timeTaken:(double)a6 messagesProcessed:(int64_t)a7 roundsProcessed:(int64_t)a8 serverTimeoutCount:(int64_t)a9 clientTimeoutCount:(int64_t)a10 terminationReason:(int64_t)a11 storageCheckVersion:(id)a12;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSServerStorageStateMachineCompletedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSServerStorageStateMachineCompletedMetric *)self service];
  if (v4)
  {
    CFDictionarySetValue(v3, @"service", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSServerStorageStateMachineCompletedMetric linkType](self, "linkType")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"linkType", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSServerStorageStateMachineCompletedMetric wasPrimary](self, "wasPrimary")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"wasPrimary", v6);
  }

  v7 = MEMORY[0x1E696AD98];
  [(IDSServerStorageStateMachineCompletedMetric *)self timeTaken];
  v8 = [v7 numberWithDouble:?];
  if (v8)
  {
    CFDictionarySetValue(v3, @"timeTaken", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSServerStorageStateMachineCompletedMetric messagesProcessed](self, "messagesProcessed")}];
  if (v9)
  {
    CFDictionarySetValue(v3, @"messagesProcessed", v9);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSServerStorageStateMachineCompletedMetric roundsProcessed](self, "roundsProcessed")}];
  if (v10)
  {
    CFDictionarySetValue(v3, @"roundsProcessed", v10);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSServerStorageStateMachineCompletedMetric serverTimeoutCount](self, "serverTimeoutCount")}];
  if (v11)
  {
    CFDictionarySetValue(v3, @"serverTimeoutCount", v11);
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSServerStorageStateMachineCompletedMetric clientTimeoutCount](self, "clientTimeoutCount")}];
  if (v12)
  {
    CFDictionarySetValue(v3, @"clientTimeoutCount", v12);
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSServerStorageStateMachineCompletedMetric terminationReason](self, "terminationReason")}];
  if (v13)
  {
    CFDictionarySetValue(v3, @"terminationReason", v13);
  }

  v14 = [(IDSServerStorageStateMachineCompletedMetric *)self storageCheckVersion];
  if (v14)
  {
    CFDictionarySetValue(v3, @"storageCheckVersion", v14);
  }

  return v3;
}

- (IDSServerStorageStateMachineCompletedMetric)initWithService:(id)a3 linkType:(int64_t)a4 wasPrimary:(BOOL)a5 timeTaken:(double)a6 messagesProcessed:(int64_t)a7 roundsProcessed:(int64_t)a8 serverTimeoutCount:(int64_t)a9 clientTimeoutCount:(int64_t)a10 terminationReason:(int64_t)a11 storageCheckVersion:(id)a12
{
  v20 = a3;
  v21 = a12;
  v25.receiver = self;
  v25.super_class = IDSServerStorageStateMachineCompletedMetric;
  v22 = [(IDSServerStorageStateMachineCompletedMetric *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_service, a3);
    v23->_linkType = a4;
    v23->_wasPrimary = a5;
    v23->_timeTaken = a6;
    v23->_messagesProcessed = a7;
    v23->_roundsProcessed = a8;
    v23->_serverTimeoutCount = a9;
    v23->_clientTimeoutCount = a10;
    v23->_terminationReason = a11;
    objc_storeStrong(&v23->_storageCheckVersion, a12);
  }

  return v23;
}

@end