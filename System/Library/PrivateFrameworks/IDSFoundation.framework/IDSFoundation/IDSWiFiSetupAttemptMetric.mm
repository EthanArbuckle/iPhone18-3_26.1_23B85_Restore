@interface IDSWiFiSetupAttemptMetric
- (IDSWiFiSetupAttemptMetric)initWithAttemptType:(unint64_t)type msDuration:(unint64_t)duration result:(unint64_t)result client:(id)client;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSWiFiSetupAttemptMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSWiFiSetupAttemptMetric attemptType](self, "attemptType")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"attemptType", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSWiFiSetupAttemptMetric msDuration](self, "msDuration")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"msDuration", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSWiFiSetupAttemptMetric result](self, "result")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"result", v6);
  }

  client = [(IDSWiFiSetupAttemptMetric *)self client];
  if (client)
  {
    CFDictionarySetValue(v3, @"client", client);
  }

  return v3;
}

- (IDSWiFiSetupAttemptMetric)initWithAttemptType:(unint64_t)type msDuration:(unint64_t)duration result:(unint64_t)result client:(id)client
{
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = IDSWiFiSetupAttemptMetric;
  v12 = [(IDSWiFiSetupAttemptMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_attemptType = type;
    v12->_msDuration = duration;
    v12->_result = result;
    objc_storeStrong(&v12->_client, client);
  }

  return v13;
}

@end