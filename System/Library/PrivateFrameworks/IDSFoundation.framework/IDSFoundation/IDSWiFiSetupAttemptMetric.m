@interface IDSWiFiSetupAttemptMetric
- (IDSWiFiSetupAttemptMetric)initWithAttemptType:(unint64_t)a3 msDuration:(unint64_t)a4 result:(unint64_t)a5 client:(id)a6;
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

  v7 = [(IDSWiFiSetupAttemptMetric *)self client];
  if (v7)
  {
    CFDictionarySetValue(v3, @"client", v7);
  }

  return v3;
}

- (IDSWiFiSetupAttemptMetric)initWithAttemptType:(unint64_t)a3 msDuration:(unint64_t)a4 result:(unint64_t)a5 client:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = IDSWiFiSetupAttemptMetric;
  v12 = [(IDSWiFiSetupAttemptMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_attemptType = a3;
    v12->_msDuration = a4;
    v12->_result = a5;
    objc_storeStrong(&v12->_client, a6);
  }

  return v13;
}

@end