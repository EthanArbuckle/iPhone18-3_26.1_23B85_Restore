@interface UserEditSelfHelper
- (UserEditSelfHelper)initWithAsrId:(id)a3;
- (void)_wrapAndEmitTopLevelEvent:(id)a3;
- (void)logEditMetricEndedAndTier1WithMetric:(id)a3;
- (void)logEditMetricsStartedOrChanged;
- (void)logEditTextEndedAndTier1WithText:(id)a3;
@end

@implementation UserEditSelfHelper

- (void)_wrapAndEmitTopLevelEvent:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ASRSchemaASRClientEventMetadata);
  v6 = [[SISchemaUUID alloc] initWithNSUUID:self->_randomAsrId];
  [v5 setAsrId:v6];

  v7 = objc_alloc_init(ASRSchemaASRClientEvent);
  [v7 setEventMetadata:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setManualEditTextClassified:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setManualEditMetricClassified:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 setManualEditClassificationContext:v4];
      }
    }
  }

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v15 = 136315394;
    v16 = "[UserEditSelfHelper _wrapAndEmitTopLevelEvent:]";
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s SELF: Wrapping and logging an event of type %@", &v15, 0x16u);
  }

  v12 = +[AssistantSiriAnalytics sharedAnalytics];
  v13 = [v12 defaultMessageStream];
  v14 = +[NSUUID UUID];
  [v13 emitMessage:v7 isolatedStreamUUID:v14];
}

- (void)logEditTextEndedAndTier1WithText:(id)a3
{
  v4 = a3;
  if (DiagnosticLogSubmissionEnabled())
  {
    v21 = self;
    v22 = v4;
    v5 = [v4 objectForKeyedSubscript:@"confusionPairs"];
    v6 = objc_alloc_init(NSMutableArray);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"correctedTokens"];
          v13 = [v11 objectForKeyedSubscript:@"recognizedTokens"];
          if ([v13 count] || objc_msgSend(v12, "count"))
          {
            v14 = objc_alloc_init(ASRSchemaASRConfusionPairToken);
            [v14 setCorrectedTokens:v12];
            [v14 setRecognizedTokens:v13];
            v15 = [v11 objectForKeyedSubscript:@"index"];
            [v14 setRecognizedTokensStartIndex:{objc_msgSend(v15, "intValue")}];

            [v6 addObject:v14];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    v4 = v22;
    if ([v6 count])
    {
      v16 = objc_alloc_init(ASRSchemaASRManualEditTextClassified);
      [v16 setManualEdits:v6];
      v17 = [v22 objectForKeyedSubscript:@"correctedText"];
      [v16 setFullCorrectedText:v17];

      v18 = [SISchemaUUID alloc];
      v19 = [[NSUUID alloc] initWithUUIDString:v21->_asrId];
      v20 = [v18 initWithNSUUID:v19];
      [v16 setOriginalAsrId:v20];

      [(UserEditSelfHelper *)v21 _wrapAndEmitTopLevelEvent:v16];
    }
  }
}

- (void)logEditMetricEndedAndTier1WithMetric:(id)a3
{
  v18 = a3;
  v4 = [v18 objectForKeyedSubscript:@"confusionPairs"];
  v5 = [v18 objectForKeyedSubscript:@"errorCode"];
  v6 = objc_alloc_init(ASRSchemaASRManualEditClassificationContext);
  v7 = [SISchemaUUID alloc];
  v8 = [[NSUUID alloc] initWithUUIDString:self->_asrId];
  v9 = [v7 initWithNSUUID:v8];
  [v6 setOriginalAsrId:v9];

  if ([v4 count])
  {
    v10 = objc_alloc_init(ASRSchemaASRManualEditClassificationEnded);
    [v10 setExists:1];
    [v6 setEnded:v10];
    v11 = objc_alloc_init(ASRSchemaASRManualEditMetricClassified);
    v12 = [SISchemaUUID alloc];
    v13 = [[NSUUID alloc] initWithUUIDString:self->_asrId];
    v14 = [v12 initWithNSUUID:v13];
    [v11 setOriginalAsrId:v14];

    v15 = [v18 objectForKeyedSubscript:@"numDeletion"];
    [v11 setNumDeletions:{objc_msgSend(v15, "intValue")}];

    v16 = [v18 objectForKeyedSubscript:@"numInsertion"];
    [v11 setNumInsertions:{objc_msgSend(v16, "intValue")}];

    v17 = [v18 objectForKeyedSubscript:@"numSubstitution"];
    [v11 setNumSubstitutions:{objc_msgSend(v17, "intValue")}];

    [(UserEditSelfHelper *)self _wrapAndEmitTopLevelEvent:v11];
  }

  else
  {
    v10 = objc_alloc_init(ASRSchemaASRManualEditClassificationFailed);
    [v10 setExists:1];
    [v10 setErrorCode:{objc_msgSend(v5, "intValue")}];
    [v6 setFailed:v10];
  }

  [(UserEditSelfHelper *)self _wrapAndEmitTopLevelEvent:v6];
}

- (void)logEditMetricsStartedOrChanged
{
  v7 = objc_alloc_init(ASRSchemaASRManualEditClassificationStarted);
  [v7 setExists:1];
  v3 = objc_alloc_init(ASRSchemaASRManualEditClassificationContext);
  [v3 setStartedOrChanged:v7];
  v4 = [SISchemaUUID alloc];
  v5 = [[NSUUID alloc] initWithUUIDString:self->_asrId];
  v6 = [v4 initWithNSUUID:v5];
  [v3 setOriginalAsrId:v6];

  [(UserEditSelfHelper *)self _wrapAndEmitTopLevelEvent:v3];
}

- (UserEditSelfHelper)initWithAsrId:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = UserEditSelfHelper;
  v6 = [(UserEditSelfHelper *)&v11 init];
  if (v6)
  {
    if (![v5 length])
    {
      v9 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_asrId, a3);
    v7 = +[NSUUID UUID];
    randomAsrId = v6->_randomAsrId;
    v6->_randomAsrId = v7;
  }

  v9 = v6;
LABEL_6:

  return v9;
}

@end