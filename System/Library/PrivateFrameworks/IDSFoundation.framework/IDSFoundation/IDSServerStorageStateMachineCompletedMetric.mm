@interface IDSServerStorageStateMachineCompletedMetric
- (IDSServerStorageStateMachineCompletedMetric)initWithService:(id)service linkType:(int64_t)type wasPrimary:(BOOL)primary timeTaken:(double)taken messagesProcessed:(int64_t)processed roundsProcessed:(int64_t)roundsProcessed serverTimeoutCount:(int64_t)count clientTimeoutCount:(int64_t)self0 terminationReason:(int64_t)self1 storageCheckVersion:(id)self2;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSServerStorageStateMachineCompletedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  service = [(IDSServerStorageStateMachineCompletedMetric *)self service];
  if (service)
  {
    CFDictionarySetValue(v3, @"service", service);
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

  storageCheckVersion = [(IDSServerStorageStateMachineCompletedMetric *)self storageCheckVersion];
  if (storageCheckVersion)
  {
    CFDictionarySetValue(v3, @"storageCheckVersion", storageCheckVersion);
  }

  return v3;
}

- (IDSServerStorageStateMachineCompletedMetric)initWithService:(id)service linkType:(int64_t)type wasPrimary:(BOOL)primary timeTaken:(double)taken messagesProcessed:(int64_t)processed roundsProcessed:(int64_t)roundsProcessed serverTimeoutCount:(int64_t)count clientTimeoutCount:(int64_t)self0 terminationReason:(int64_t)self1 storageCheckVersion:(id)self2
{
  serviceCopy = service;
  versionCopy = version;
  v25.receiver = self;
  v25.super_class = IDSServerStorageStateMachineCompletedMetric;
  v22 = [(IDSServerStorageStateMachineCompletedMetric *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_service, service);
    v23->_linkType = type;
    v23->_wasPrimary = primary;
    v23->_timeTaken = taken;
    v23->_messagesProcessed = processed;
    v23->_roundsProcessed = roundsProcessed;
    v23->_serverTimeoutCount = count;
    v23->_clientTimeoutCount = timeoutCount;
    v23->_terminationReason = reason;
    objc_storeStrong(&v23->_storageCheckVersion, version);
  }

  return v23;
}

@end