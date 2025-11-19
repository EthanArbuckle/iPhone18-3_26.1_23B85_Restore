@interface IDSNoteMessageReceivedMetric
- (IDSNoteMessageReceivedMetric)initWithService:(id)a3 accountType:(id)a4 fromStorage:(BOOL)a5 serverTimestamp:(double)a6 localTimeDelta:(double)a7;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSNoteMessageReceivedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSNoteMessageReceivedMetric *)self service];
  if (v4)
  {
    CFDictionarySetValue(v3, @"service", v4);
  }

  v5 = [(IDSNoteMessageReceivedMetric *)self accountType];
  if (v5)
  {
    CFDictionarySetValue(v3, @"accountType", v5);
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

- (IDSNoteMessageReceivedMetric)initWithService:(id)a3 accountType:(id)a4 fromStorage:(BOOL)a5 serverTimestamp:(double)a6 localTimeDelta:(double)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = IDSNoteMessageReceivedMetric;
  v15 = [(IDSNoteMessageReceivedMetric *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_service, a3);
    objc_storeStrong(&v16->_accountType, a4);
    v16->_fromStorage = a5;
    v16->_serverTimestamp = a6;
    v16->_localTimeDelta = a7;
  }

  return v16;
}

@end