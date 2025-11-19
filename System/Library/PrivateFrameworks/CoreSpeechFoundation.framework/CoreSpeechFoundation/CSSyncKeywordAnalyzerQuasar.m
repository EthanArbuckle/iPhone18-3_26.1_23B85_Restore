@interface CSSyncKeywordAnalyzerQuasar
+ (id)_phToPhIdMapFromTriggerTokensArray:(id)a3;
+ (void)dumpEARSpeechRecognitionResults:(id)a3;
- (id)_getAnalyzedResults:(id)a3;
- (id)getAnalyzedResultsFromAudioChunk:(id)a3;
- (id)getResultsFromFlushedAudio;
- (void)reset;
@end

@implementation CSSyncKeywordAnalyzerQuasar

- (id)_getAnalyzedResults:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  if (self->_numPhrases)
  {
    v5 = 0;
    do
    {
      v6 = [[CSSyncKeywordAnalyzerQuasarResult alloc] initWithDefaultConfidence];
      [v4 addObject:v6];

      ++v5;
    }

    while (v5 < self->_numPhrases);
  }

  v36 = self;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = v35;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v8)
  {
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v37 + 1) + 8 * i) tokens];
        v12 = [v11 lastObject];

        if (!v12 || ([v12 tokenName], v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 == 0, v13, v14))
        {
          v28 = CSLogContextFacilityCoreSpeech;
          if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = 136315394;
          v42 = "[CSSyncKeywordAnalyzerQuasar _getAnalyzedResults:]";
          v43 = 2114;
          v44 = v12;
          v29 = v28;
          v30 = "%s Invalid token : %{public}@";
          v31 = 22;
LABEL_22:
          _os_log_error_impl(&dword_1DDA4B000, v29, OS_LOG_TYPE_ERROR, v30, buf, v31);
          goto LABEL_23;
        }

        phToPhIdMap = v36->_phToPhIdMap;
        v16 = [v12 tokenName];
        v17 = [(NSDictionary *)phToPhIdMap objectForKeyedSubscript:v16];
        v18 = [v17 unsignedIntegerValue];

        v19 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v42 = "[CSSyncKeywordAnalyzerQuasar _getAnalyzedResults:]";
          v43 = 2048;
          v44 = v18;
          v45 = 2114;
          v46 = v12;
          _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s %tu, token = %{public}@", buf, 0x20u);
        }

        if (v18 >= [v4 count])
        {
          v32 = CSLogContextFacilityCoreSpeech;
          if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = 136315394;
          v42 = "[CSSyncKeywordAnalyzerQuasar _getAnalyzedResults:]";
          v43 = 1024;
          LODWORD(v44) = v18;
          v29 = v32;
          v30 = "%s Unable to handle: %d";
          v31 = 18;
          goto LABEL_22;
        }

        v20 = [v4 objectAtIndex:v18];
        [v20 triggerConfidence];
        v22 = v21;

        [v12 confidence];
        v24 = v23;
        v25 = [v4 objectAtIndexedSubscript:v18];
        v26 = v25;
        if (v24 >= v22)
        {
          v27 = v24;
        }

        else
        {
          v27 = v22;
        }

        [v25 setTriggerConfidence:v27];

LABEL_23:
      }

      v8 = [v7 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v8);
  }

  v33 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)getAnalyzedResultsFromAudioChunk:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_requireReset = 1;
  v5 = [v4 dataForChannel:self->_activeChannel];
  v6 = [v4 numSamples];
  v7 = [v4 isFloat];
  syncRecognizer = self->_syncRecognizer;
  if (v7)
  {
    [(_EARSyncSpeechRecognizer *)syncRecognizer resultsWithAddedFloatAudio:v5 numberOfSamples:v6 taskName:&stru_1F58FE330];
  }

  else
  {
    [(_EARSyncSpeechRecognizer *)syncRecognizer resultsWithAddedAudio:v5 numberOfSamples:v6 taskName:&stru_1F58FE330];
  }
  v9 = ;
  v10 = [(CSSyncKeywordAnalyzerQuasar *)self _getAnalyzedResults:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)getResultsFromFlushedAudio
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[CSSyncKeywordAnalyzerQuasar getResultsFromFlushedAudio]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v17, 0xCu);
  }

  kdebug_trace();
  v4 = mach_absolute_time();
  v5 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
  v6 = CSLogContextFacilityCoreSpeech;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v17 = 134349570;
    v18 = v4;
    v19 = 2080;
    v20 = COERCE_DOUBLE("SiriX");
    v21 = 2080;
    v22 = "enableTelemetry=YES";
    _os_signpost_emit_with_name_impl(&dword_1DDA4B000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SecondPassInferenceLatency", "%{public, signpost.description:begin_time}llu, %s %s", &v17, 0x20u);
  }

  v8 = [(_EARSyncSpeechRecognizer *)self->_syncRecognizer resultsWithEndedAudio];
  v9 = [(CSSyncKeywordAnalyzerQuasar *)self _getAnalyzedResults:v8];

  v10 = mach_absolute_time();
  v11 = CSLogContextFacilityCoreSpeech;
  v12 = v11;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v17 = 134349570;
    v18 = v10;
    v19 = 2080;
    v20 = COERCE_DOUBLE("SiriX");
    v21 = 2080;
    v22 = "enableTelemetry=YES";
    _os_signpost_emit_with_name_impl(&dword_1DDA4B000, v12, OS_SIGNPOST_INTERVAL_END, v5, "SecondPassInferenceLatency", "%{public, signpost.description:end_time}llu, %s %s", &v17, 0x20u);
  }

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    [CSFTimeUtils hostTimeToSeconds:v10 - v4];
    v17 = 136315394;
    v18 = "[CSSyncKeywordAnalyzerQuasar getResultsFromFlushedAudio]";
    v19 = 2048;
    v20 = v14;
    _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s Secondpass model inference took: %.3f seconds", &v17, 0x16u);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)reset
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSSyncKeywordAnalyzerQuasar reset]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (self->_requireReset)
  {
    syncRecognizer = self->_syncRecognizer;
    +[CSConfig inputRecordingSampleRate];
    LODWORD(v8) = 120;
    LOBYTE(v7) = 0;
    [(_EARSyncSpeechRecognizer *)syncRecognizer resetWithSamplingRate:v5 language:&stru_1F58FE330 taskType:@"Dictation" userId:&stru_1F58FE330 sessionId:&stru_1F58FE330 deviceId:&stru_1F58FE330 farField:v7 audioSource:&stru_1F58FE330 maxAudioBufferSizeSeconds:v8];
    if (self->_preventDuplicatedReset)
    {
      self->_requireReset = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)dumpEARSpeechRecognitionResults:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v3)
  {
    v15 = 0;
    v16 = *v24;
    do
    {
      v4 = 0;
      v17 = v3;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * v4);
        v6 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v29 = "+[CSSyncKeywordAnalyzerQuasar dumpEARSpeechRecognitionResults:]";
          v30 = 2048;
          v31 = v15;
          _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Res-%lu: ", buf, 0x16u);
          ++v15;
        }

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v7 = [v5 tokens];
        v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
        v18 = v4;
        if (v8)
        {
          v9 = *v20;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = CSLogContextFacilityCoreSpeech;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
              {
                v12 = *(*(&v19 + 1) + 8 * i);
                *buf = 136315394;
                v29 = "+[CSSyncKeywordAnalyzerQuasar dumpEARSpeechRecognitionResults:]";
                v30 = 2112;
                v31 = v12;
                _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s tok=%@", buf, 0x16u);
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v8);
        }

        v4 = v18 + 1;
      }

      while (v18 + 1 != v17);
      v3 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v3);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)_phToPhIdMapFromTriggerTokensArray:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  for (i = 0; i < [v3 count]; ++i)
  {
    v6 = [v3 objectAtIndexedSubscript:i];
    v7 = [v6 componentsSeparatedByString:@"_"];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * j);
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
          [v4 setObject:v13 forKey:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

@end