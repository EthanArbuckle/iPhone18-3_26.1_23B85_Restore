@interface DESFedStatsRecorder
+ (void)initialize;
- (BOOL)record:(id)a3 data:(id)a4 dataTypeContent:(id)a5 metadata:(id)a6 errorOut:(id *)a7;
- (BOOL)record:(id)a3 data:(id)a4 encodingSchema:(id)a5 metadata:(id)a6 errorOut:(id *)a7;
@end

@implementation DESFedStatsRecorder

- (BOOL)record:(id)a3 data:(id)a4 dataTypeContent:(id)a5 metadata:(id)a6 errorOut:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (PrivateFederatedLearningLibraryCore())
  {
    if ([v11 count])
    {
      v13 = [v11 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        getFedStatsDataEncoderClass();
        v15 = objc_opt_respondsToSelector();
        FedStatsDataEncoderClass = getFedStatsDataEncoderClass();
        v17 = FedStatsDataEncoderClass;
        if (v15)
        {
          v26 = 0;
          v18 = [FedStatsDataEncoderClass encodeDataArrayAndRecord:v11 dataTypeContent:v12 baseKey:v10 errorOut:&v26];
          v19 = v26;
          if (!a7)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v23 = [v11 objectAtIndexedSubscript:0];
          v25 = 0;
          v18 = [v17 encodeDataAndRecord:v23 dataTypeContent:v12 baseKey:v10 errorOut:&v25];
          v19 = v25;

          if (!a7)
          {
LABEL_15:

            goto LABEL_12;
          }
        }

        v24 = v19;
        *a7 = v19;
        goto LABEL_15;
      }
    }

    v20 = sLog_0;
    if (os_log_type_enabled(sLog_0, OS_LOG_TYPE_ERROR))
    {
      [DESFedStatsRecorder record:v20 data:? dataTypeContent:? metadata:? errorOut:?];
    }
  }

  else
  {
    v21 = sLog_0;
    if (os_log_type_enabled(sLog_0, OS_LOG_TYPE_ERROR))
    {
      [DESFedStatsRecorder record:v21 data:? dataTypeContent:? metadata:? errorOut:?];
    }
  }

  v18 = 0;
LABEL_12:

  return v18;
}

- (BOOL)record:(id)a3 data:(id)a4 encodingSchema:(id)a5 metadata:(id)a6 errorOut:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v14 objectForKeyedSubscript:@"dataContentTypes"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = MEMORY[0x277CBEAD8];
    v20 = *MEMORY[0x277CBE660];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@ has wrong type, value=%@", @"dataContentTypes", v16];
    v22 = [v19 exceptionWithName:v20 reason:v21 userInfo:0];
    v23 = v22;

    objc_exception_throw(v22);
  }

  v17 = [(DESFedStatsRecorder *)self record:v12 data:v13 dataTypeContent:v16 metadata:v15 errorOut:a7];

  return v17;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sLog_0 = os_log_create("com.apple.DistributedEvaluation", "DESFedStatsRecorder");

    MEMORY[0x2821F96F8]();
  }
}

@end