@interface IDSCommandNiceGroupSessionRTCMetric
- (IDSCommandNiceGroupSessionRTCMetric)initWithCommand:(int64_t)a3 success:(BOOL)a4 errorDomain:(id)a5 errorCode:(int64_t)a6 retryCount:(int64_t)a7;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSCommandNiceGroupSessionRTCMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSCommandNiceGroupSessionRTCMetric command](self, "command")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"command", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSCommandNiceGroupSessionRTCMetric success](self, "success")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"success", v5);
  }

  v6 = [(IDSCommandNiceGroupSessionRTCMetric *)self errorDomain];
  if (v6)
  {
    CFDictionarySetValue(v3, @"errorDomain", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSCommandNiceGroupSessionRTCMetric errorCode](self, "errorCode")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"errorCode", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSCommandNiceGroupSessionRTCMetric retryCount](self, "retryCount")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"retryCount", v8);
  }

  return v3;
}

- (IDSCommandNiceGroupSessionRTCMetric)initWithCommand:(int64_t)a3 success:(BOOL)a4 errorDomain:(id)a5 errorCode:(int64_t)a6 retryCount:(int64_t)a7
{
  v13 = a5;
  v17.receiver = self;
  v17.super_class = IDSCommandNiceGroupSessionRTCMetric;
  v14 = [(IDSCommandNiceGroupSessionRTCMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_command = a3;
    v14->_success = a4;
    objc_storeStrong(&v14->_errorDomain, a5);
    v15->_errorCode = a6;
    v15->_retryCount = a7;
  }

  return v15;
}

@end