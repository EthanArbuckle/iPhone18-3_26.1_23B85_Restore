@interface DESFedStatsRecorder
+ (void)initialize;
- (BOOL)record:(id)record data:(id)data dataTypeContent:(id)content metadata:(id)metadata errorOut:(id *)out;
- (BOOL)record:(id)record data:(id)data encodingSchema:(id)schema metadata:(id)metadata errorOut:(id *)out;
@end

@implementation DESFedStatsRecorder

- (BOOL)record:(id)record data:(id)data dataTypeContent:(id)content metadata:(id)metadata errorOut:(id *)out
{
  recordCopy = record;
  dataCopy = data;
  contentCopy = content;
  if (PrivateFederatedLearningLibraryCore())
  {
    if ([dataCopy count])
    {
      v13 = [dataCopy objectAtIndexedSubscript:0];
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
          v18 = [FedStatsDataEncoderClass encodeDataArrayAndRecord:dataCopy dataTypeContent:contentCopy baseKey:recordCopy errorOut:&v26];
          v19 = v26;
          if (!out)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v23 = [dataCopy objectAtIndexedSubscript:0];
          v25 = 0;
          v18 = [v17 encodeDataAndRecord:v23 dataTypeContent:contentCopy baseKey:recordCopy errorOut:&v25];
          v19 = v25;

          if (!out)
          {
LABEL_15:

            goto LABEL_12;
          }
        }

        v24 = v19;
        *out = v19;
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

- (BOOL)record:(id)record data:(id)data encodingSchema:(id)schema metadata:(id)metadata errorOut:(id *)out
{
  recordCopy = record;
  dataCopy = data;
  schemaCopy = schema;
  metadataCopy = metadata;
  v16 = [schemaCopy objectForKeyedSubscript:@"dataContentTypes"];
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

  v17 = [(DESFedStatsRecorder *)self record:recordCopy data:dataCopy dataTypeContent:v16 metadata:metadataCopy errorOut:out];

  return v17;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog_0 = os_log_create("com.apple.DistributedEvaluation", "DESFedStatsRecorder");

    MEMORY[0x2821F96F8]();
  }
}

@end