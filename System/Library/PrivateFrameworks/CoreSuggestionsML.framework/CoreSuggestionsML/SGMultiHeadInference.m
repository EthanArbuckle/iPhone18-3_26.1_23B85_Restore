@interface SGMultiHeadInference
+ (id)predictForMessage:(id)a3 conversationTurns:(id)a4 localeIdentifier:(id)a5 plistPath:(id)a6 espressoBinPath:(id)a7 vocabPath:(id)a8 heads:(id)a9;
+ (id)quickResponsesForMessage:(id)a3 conversationTurns:(id)a4 maxResponses:(unint64_t)a5 localeIdentifier:(id)a6 plistPath:(id)a7 espressoModelPath:(id)a8 vocabPath:(id)a9;
- (SGMultiHeadInference)initWithLanguage:(id)a3 inputName:(id)a4 plistPath:(id)a5 espressoModelPath:(id)a6 vocabPath:(id)a7;
- (id)_getMergedPromptForMessage:(id)a3 conversationTurns:(id)a4;
- (id)predictForMessage:(id)a3 conversationTurns:(id)a4 language:(id)a5 heads:(id)a6;
- (id)predictForMessage:(id)a3 heads:(id)a4;
- (id)predictForVector:(id)a3 heads:(id)a4;
- (id)quickResponsesForMessage:(id)a3 conversationTurns:(id)a4 maxResponses:(unint64_t)a5 language:(id)a6;
@end

@implementation SGMultiHeadInference

- (id)quickResponsesForMessage:(id)a3 conversationTurns:(id)a4 maxResponses:(unint64_t)a5 language:(id)a6
{
  v42[2] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v42[0] = @"outputLabels";
  v42[1] = @"PREDICTION_REPLIES";
  v11 = MEMORY[0x277CBEA60];
  v12 = a4;
  v13 = a3;
  v14 = [v11 arrayWithObjects:v42 count:2];
  v15 = [(SGMultiHeadInference *)self predictForMessage:v13 conversationTurns:v12 language:v10 heads:v14];

  if (v15)
  {
    v16 = [(SGQuickResponsesConfig *)self->_config modelHeads];
    v17 = [v16 objectForKeyedSubscript:@"outputLabels"];
    if (v17)
    {
      v18 = @"outputLabels";
    }

    else
    {
      v18 = @"PREDICTION_REPLIES";
    }

    v19 = v18;

    v20 = [(SGQuickResponsesConfig *)self->_config modelHeads];
    v21 = [v20 objectForKeyedSubscript:v19];
    v22 = [v21 labels];

    v23 = [v15 objectForKeyedSubscript:v19];
    v24 = [v23 count];
    v25 = [v22 count];

    if (v24 == v25)
    {
      v26 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"score" ascending:0];
      v27 = [v15 objectForKeyedSubscript:v19];
      v37 = v26;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      v29 = [v27 sortedArrayUsingDescriptors:v28];

      v30 = [v29 subarrayWithRange:{0, a5}];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __89__SGMultiHeadInference_quickResponsesForMessage_conversationTurns_maxResponses_language___block_invoke;
      v35[3] = &unk_278EB8160;
      v36 = v10;
      v31 = [v30 _pas_mappedArrayWithTransform:v35];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        v34 = [v15 objectForKeyedSubscript:v19];
        *buf = 134218240;
        v39 = [v34 count];
        v40 = 2048;
        v41 = [v22 count];
        _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Predicted output space does not match number of labels for output space %lu != %lu", buf, 0x16u);
      }

      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

SGQuickResponse *__89__SGMultiHeadInference_quickResponsesForMessage_conversationTurns_maxResponses_language___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SGQuickResponse alloc];
  v5 = [v3 label];

  BYTE2(v8) = 0;
  LOWORD(v8) = 0;
  v6 = [SGQuickResponse initWithText:v4 lang:"initWithText:lang:replyTextId:styleGroupId:semanticClassId:modelId:categoryId:isCustomResponse:isRobotResponse:isConfident:" replyTextId:v5 styleGroupId:*(a1 + 32) semanticClassId:0 modelId:0 categoryId:0 isCustomResponse:0 isRobotResponse:0 isConfident:v8];

  return v6;
}

- (id)predictForMessage:(id)a3 conversationTurns:(id)a4 language:(id)a5 heads:(id)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(SGQuickResponsesConfig *)self->_config predictionParams];
  v13 = [v12 maxPromptLength];

  if ([v9 length] <= v13)
  {
    v15 = [(SGMultiHeadInference *)self _getMergedPromptForMessage:v9 conversationTurns:v10];
    if ([v15 length] <= v13)
    {
      v14 = [(SGMultiHeadInference *)self predictForMessage:v15 heads:v11];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v18 = 134217984;
        v19 = v13;
        _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Returning nil because merged message length exceeds maximum length %ld", &v18, 0xCu);
      }

      v14 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = v13;
      _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Returning nil because message length exceeds maximum length %ld", &v18, 0xCu);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_getMergedPromptForMessage:(id)a3 conversationTurns:(id)a4
{
  config = self->_config;
  v6 = a4;
  v7 = a3;
  v8 = [(SGQuickResponsesConfig *)config predictionParams];
  v9 = [v8 maxPromptLength];
  [v8 maxPromptWindowSeconds];
  v11 = v10;
  v12 = [v8 promptJoiningString];
  v13 = [SGConversationTracker getMergedPromptForMessage:v7 conversationTurns:v6 maxPromptLength:v9 maxPromptWindowSeconds:v12 promptJoiningString:v11];

  return v13;
}

- (id)predictForMessage:(id)a3 heads:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sgLogHandle();
  v9 = os_signpost_id_generate(v8);

  v10 = sgLogHandle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24799E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "QuickResponsesForMessageFeaturization", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = [(SGQuickResponsesTransformerInstance *)self->_transformer featurizer];
  v13 = [(SGQuickResponsesTransformerInstance *)self->_transformer source];
  v14 = [SGQuickResponsesModel featuresOf:v7 withFeaturizer:v12 source:v13];

  v15 = sgLogHandle();
  v16 = v15;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_24799E000, v16, OS_SIGNPOST_INTERVAL_END, v9, "QuickResponsesForMessageFeaturization", &unk_2479DB655, v21, 2u);
  }

  if (v14)
  {
    v17 = [v14 vector];
    v18 = [(SGMultiHeadInference *)self predictForVector:v17 heads:v6];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Could not featurize", v20, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (id)predictForVector:(id)a3 heads:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sgLogHandle();
  v9 = os_signpost_id_generate(v8);

  v10 = sgLogHandle();
  v11 = v10;
  v36 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24799E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "QuickResponsesForMessagePrediction", " enableTelemetry=YES ", buf, 2u);
  }

  spid = v9;

  v39 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v37 = v7;
  v38 = v6;
  v12 = [(SGMultiHeadEspressoModel *)self->_model predict:v6 heads:v7];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v43;
    do
    {
      v16 = 0;
      do
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v42 + 1) + 8 * v16);
        v18 = [(SGQuickResponsesConfig *)self->_config modelHeads];
        v19 = [v18 objectForKeyedSubscript:v17];
        v20 = [v19 labels];

        if (v20 && (v21 = [v20 count], objc_msgSend(v12, "objectForKeyedSubscript:", v17), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), v22, v21 != v23))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            v26 = MEMORY[0x277CCABB0];
            v27 = [v12 objectForKeyedSubscript:v17];
            v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
            v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
            *buf = 138412802;
            v47 = v17;
            v48 = 2112;
            v49 = v28;
            v50 = 2112;
            v51 = v29;
            _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "MultiHead output head %@ has mismatching number of scores (%@) and labels (%@)", buf, 0x20u);
          }
        }

        else
        {
          v24 = [v12 objectForKeyedSubscript:v17];
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __47__SGMultiHeadInference_predictForVector_heads___block_invoke;
          v40[3] = &unk_278EB8138;
          v41 = v20;
          v25 = [v24 _pas_mappedArrayWithIndexedTransform:v40];
          [v39 setObject:v25 forKeyedSubscript:v17];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
  v30 = sgLogHandle();
  v31 = v30;
  if (v36 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24799E000, v31, OS_SIGNPOST_INTERVAL_END, spid, "QuickResponsesForMessagePrediction", &unk_2479DB655, buf, 2u);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v39;
}

SGMultiHeadPredictionItem *__47__SGMultiHeadInference_predictForVector_heads___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [SGMultiHeadPredictionItem alloc];
  v8 = v7;
  if (v5)
  {
    v9 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v10 = [(SGMultiHeadPredictionItem *)v8 initWithScore:v6 label:v9];

    v6 = v9;
  }

  else
  {
    v10 = [(SGMultiHeadPredictionItem *)v7 initWithScore:v6 label:0];
  }

  return v10;
}

- (SGMultiHeadInference)initWithLanguage:(id)a3 inputName:(id)a4 plistPath:(id)a5 espressoModelPath:(id)a6 vocabPath:(id)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [SGQuickResponsesConfig configWithLanguage:v12 mode:1 plistPath:v14 vocabPath:v16];
  if (v17)
  {
    v42 = v16;
    v43 = v15;
    v39 = self;
    v40 = v13;
    v41 = v12;
    v18 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v19 = [v17 modelHeads];
    v20 = [v19 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v46;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v46 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v45 + 1) + 8 * i);
          v25 = [v17 modelHeads];
          v26 = [v25 objectForKeyedSubscript:v24];

          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "numberOfDimensions")}];
          [v18 setObject:v27 forKeyedSubscript:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v21);
    }

    if ([v43 hasSuffix:@".net"])
    {
      v28 = v43;
    }

    else
    {
      v30 = objc_alloc(MEMORY[0x277CCACA8]);
      v31 = [v17 predictionParams];
      v32 = [v31 subModelKeyString];
      v28 = [v30 initWithFormat:@"%@:%@", v43, v32];
    }

    v13 = v40;
    v12 = v41;
    v16 = v42;
    v33 = [SGMultiHeadEspressoModelCached classifierWithEspressoModelFile:v28 inputName:v40 headDimensionality:v18];
    self = v39;
    if (v33)
    {
      v34 = [(SGQuickResponsesModel *)SGQuickResponsesClassificationModel transformerInstanceForLanguage:v41 mode:1 plistPath:v14 vocabPath:v42];
      if (v34)
      {
        v44.receiver = v39;
        v44.super_class = SGMultiHeadInference;
        v35 = [(SGMultiHeadInference *)&v44 init];
        p_isa = &v35->super.isa;
        if (v35)
        {
          objc_storeStrong(&v35->_config, v17);
          objc_storeStrong(p_isa + 4, v18);
          objc_storeStrong(p_isa + 2, v33);
          objc_storeStrong(p_isa + 3, v34);
        }

        self = p_isa;
        v29 = self;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v51 = v41;
          v52 = 2112;
          v53 = v14;
          _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to initialize transformer prerprocessor for language %@ and plist path %@", buf, 0x16u);
        }

        v29 = 0;
      }

      v16 = v42;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v51 = v41;
        v52 = 2112;
        v53 = v14;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to initialize multi head model for language %@ and plist path %@", buf, 0x16u);
      }

      v29 = 0;
    }

    v15 = v43;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v51 = v12;
      v52 = 2112;
      v53 = v14;
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Config not found for language %@ and plist path %@", buf, 0x16u);
    }

    v29 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v29;
}

+ (id)predictForMessage:(id)a3 conversationTurns:(id)a4 localeIdentifier:(id)a5 plistPath:(id)a6 espressoBinPath:(id)a7 vocabPath:(id)a8 heads:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (![v17 length])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v31 = 0;
    v25 = MEMORY[0x277D86220];
    v26 = "Plist path not specified";
    v27 = &v31;
LABEL_12:
    _os_log_error_impl(&dword_24799E000, v25, OS_LOG_TYPE_ERROR, v26, v27, 2u);
    goto LABEL_13;
  }

  if (![v18 length])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v30 = 0;
    v25 = MEMORY[0x277D86220];
    v26 = "Espresso model path not specified";
    v27 = &v30;
    goto LABEL_12;
  }

  if ([v14 length])
  {
    v21 = [SGLanguageDetection languageForLocaleIdentifier:v16];
    v22 = [[SGMultiHeadInference alloc] initWithLanguage:v21 inputName:@"inputSequence" plistPath:v17 espressoBinPath:v18 vocabPath:v19];
    v23 = v22;
    if (v22)
    {
      v24 = [(SGMultiHeadInference *)v22 predictForMessage:v14 conversationTurns:v15 language:v21 heads:v20];
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v29 = 0;
    v25 = MEMORY[0x277D86220];
    v26 = "Message has no content to predict on";
    v27 = &v29;
    goto LABEL_12;
  }

LABEL_13:
  v24 = 0;
LABEL_16:

  return v24;
}

+ (id)quickResponsesForMessage:(id)a3 conversationTurns:(id)a4 maxResponses:(unint64_t)a5 localeIdentifier:(id)a6 plistPath:(id)a7 espressoModelPath:(id)a8 vocabPath:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if (![v17 length])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v30 = 0;
    v24 = MEMORY[0x277D86220];
    v25 = "Plist path not specified";
    v26 = &v30;
LABEL_12:
    _os_log_error_impl(&dword_24799E000, v24, OS_LOG_TYPE_ERROR, v25, v26, 2u);
    goto LABEL_13;
  }

  if (![v18 length])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v29 = 0;
    v24 = MEMORY[0x277D86220];
    v25 = "Espresso model path not specified";
    v26 = &v29;
    goto LABEL_12;
  }

  if ([v14 length])
  {
    v20 = [SGLanguageDetection languageForLocaleIdentifier:v16];
    v21 = [[SGMultiHeadInference alloc] initWithLanguage:v20 inputName:@"inputSequence" plistPath:v17 espressoModelPath:v18 vocabPath:v19];
    v22 = v21;
    if (v21)
    {
      v23 = [(SGMultiHeadInference *)v21 quickResponsesForMessage:v14 conversationTurns:v15 maxResponses:a5 language:v20];
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v28 = 0;
    v24 = MEMORY[0x277D86220];
    v25 = "Message has no content to predict on";
    v26 = &v28;
    goto LABEL_12;
  }

LABEL_13:
  v23 = 0;
LABEL_16:

  return v23;
}

@end