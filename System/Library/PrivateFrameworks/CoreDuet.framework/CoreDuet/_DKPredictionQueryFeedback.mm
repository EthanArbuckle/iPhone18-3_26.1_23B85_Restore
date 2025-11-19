@interface _DKPredictionQueryFeedback
- (void)logPredictionQueryFeedback:(id)a3 endHistogram:(id)a4 withStorage:(id)a5;
@end

@implementation _DKPredictionQueryFeedback

- (void)logPredictionQueryFeedback:(id)a3 endHistogram:(id)a4 withStorage:(id)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF00] date];
  v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  if (!v7)
  {
    v13 = &stru_1F05B9908;
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = [v7 countDictionary];
  [v11 setValue:v12 forKey:@"startCountDiction"];
  v13 = [&stru_1F05B9908 stringByAppendingString:@"_startHistogramExists"];

  if (v8)
  {
LABEL_3:
    v14 = [v8 countDictionary];
    [v11 setValue:v14 forKey:@"endCountDictionary"];
    v15 = [(__CFString *)v13 stringByAppendingString:@"_endHistogramExists"];

    v13 = v15;
  }

LABEL_4:
  if ([v11 count])
  {
    v16 = +[_DKDeviceActivityLevelFeedbackMetadataKey predictionQueryResults];
    v26 = v16;
    v27[0] = v11;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  v17 = 0;
  if (([(__CFString *)v13 isEqualToString:&stru_1F05B9908]& 1) == 0)
  {
LABEL_18:
    v18 = +[_DKSystemEventStreams deviceActivityLevelFeedbackStream];
    v19 = [_DKEvent eventWithStream:v18 source:0 startDate:v10 endDate:v10 identifierStringValue:v13 metadata:v17];

    if (v19)
    {
      v25 = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v24 = 0;
      [v9 saveObjects:v20 error:&v24];
      v21 = v24;

      if (v21)
      {
        v22 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [_DKPredictionQueryFeedback logPredictionQueryFeedback:v21 endHistogram:v22 withStorage:?];
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)logPredictionQueryFeedback:(uint64_t)a1 endHistogram:(NSObject *)a2 withStorage:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Encountered error while saving event to knowledgeStore for _DKPredictionQueryFeedback: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end