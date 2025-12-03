@interface CKVAnalytics
+ (void)sendDonateEvent:(unsigned __int16)event itemCount:(unint64_t)count appId:(id)id reason:(unsigned __int16)reason result:(BOOL)result;
+ (void)sendDonateVerification:(unsigned __int16)verification isConsistent:(BOOL)consistent;
@end

@implementation CKVAnalytics

+ (void)sendDonateVerification:(unsigned __int16)verification isConsistent:(BOOL)consistent
{
  consistentCopy = consistent;
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"task";
  v5 = CKVTaskIdDescription(verification);
  v9[1] = @"isConsistent";
  v10[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:consistentCopy];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v8 = v7;
  AnalyticsSendEventLazy();
}

+ (void)sendDonateEvent:(unsigned __int16)event itemCount:(unint64_t)count appId:(id)id reason:(unsigned __int16)reason result:(BOOL)result
{
  resultCopy = result;
  reasonCopy = reason;
  eventCopy = event;
  v23 = *MEMORY[0x1E69E9840];
  idCopy = id;
  if (eventCopy)
  {
    v19[0] = @"type";
    v12 = CKVTaskIdDescription(eventCopy);
    v20[0] = v12;
    v19[1] = @"itemCount";
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
    v20[1] = v13;
    v20[2] = idCopy;
    v19[2] = @"appId";
    v19[3] = @"reason";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:reasonCopy];
    v20[3] = v14;
    v19[4] = @"result";
    v15 = [MEMORY[0x1E696AD98] numberWithBool:resultCopy];
    v20[4] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:5];

    v17 = v16;
    AnalyticsSendEventLazy();
  }

  else
  {
    v18 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "+[CKVAnalytics sendDonateEvent:itemCount:appId:reason:result:]";
      _os_log_error_impl(&dword_1C8683000, v18, OS_LOG_TYPE_ERROR, "%s Cannot send event with undefined donate type", buf, 0xCu);
    }
  }
}

@end