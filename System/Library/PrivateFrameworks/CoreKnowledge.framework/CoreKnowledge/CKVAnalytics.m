@interface CKVAnalytics
+ (void)sendDonateEvent:(unsigned __int16)a3 itemCount:(unint64_t)a4 appId:(id)a5 reason:(unsigned __int16)a6 result:(BOOL)a7;
+ (void)sendDonateVerification:(unsigned __int16)a3 isConsistent:(BOOL)a4;
@end

@implementation CKVAnalytics

+ (void)sendDonateVerification:(unsigned __int16)a3 isConsistent:(BOOL)a4
{
  v4 = a4;
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"task";
  v5 = CKVTaskIdDescription(a3);
  v9[1] = @"isConsistent";
  v10[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v8 = v7;
  AnalyticsSendEventLazy();
}

+ (void)sendDonateEvent:(unsigned __int16)a3 itemCount:(unint64_t)a4 appId:(id)a5 reason:(unsigned __int16)a6 result:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v10 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v11 = a5;
  if (v10)
  {
    v19[0] = @"type";
    v12 = CKVTaskIdDescription(v10);
    v20[0] = v12;
    v19[1] = @"itemCount";
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v20[1] = v13;
    v20[2] = v11;
    v19[2] = @"appId";
    v19[3] = @"reason";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v8];
    v20[3] = v14;
    v19[4] = @"result";
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v7];
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