@interface IDSNoteMessageReceivedMetric
- (IDSNoteMessageReceivedMetric)initWithService:(id)service accountType:(id)type fromStorage:(BOOL)storage serverTimestamp:(double)timestamp localTimeDelta:(double)delta;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSNoteMessageReceivedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  service = [(IDSNoteMessageReceivedMetric *)self service];
  if (service)
  {
    CFDictionarySetValue(v3, @"service", service);
  }

  accountType = [(IDSNoteMessageReceivedMetric *)self accountType];
  if (accountType)
  {
    CFDictionarySetValue(v3, @"accountType", accountType);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSNoteMessageReceivedMetric fromStorage](self, "fromStorage")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"fromStorage", v6);
  }

  v7 = MEMORY[0x1E696AD98];
  [(IDSNoteMessageReceivedMetric *)self serverTimestamp];
  v8 = [v7 numberWithDouble:?];
  if (v8)
  {
    CFDictionarySetValue(v3, @"serverTimestamp", v8);
  }

  v9 = MEMORY[0x1E696AD98];
  [(IDSNoteMessageReceivedMetric *)self localTimeDelta];
  v10 = [v9 numberWithDouble:?];
  if (v10)
  {
    CFDictionarySetValue(v3, @"localTimeDelta", v10);
  }

  return v3;
}

- (IDSNoteMessageReceivedMetric)initWithService:(id)service accountType:(id)type fromStorage:(BOOL)storage serverTimestamp:(double)timestamp localTimeDelta:(double)delta
{
  serviceCopy = service;
  typeCopy = type;
  v18.receiver = self;
  v18.super_class = IDSNoteMessageReceivedMetric;
  v15 = [(IDSNoteMessageReceivedMetric *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_service, service);
    objc_storeStrong(&v16->_accountType, type);
    v16->_fromStorage = storage;
    v16->_serverTimestamp = timestamp;
    v16->_localTimeDelta = delta;
  }

  return v16;
}

@end