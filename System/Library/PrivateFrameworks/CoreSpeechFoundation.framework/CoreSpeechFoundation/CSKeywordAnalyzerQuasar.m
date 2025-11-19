@interface CSKeywordAnalyzerQuasar
- (CSKeywordAnalyzerQuasar)initWithConfigPath:(id)a3 triggerTokens:(id)a4 useKeywordSpotting:(BOOL)a5;
- (CSKeywordAnalyzerQuasarScoreDelegate)delegate;
- (double)_getConfidence:(id)a3;
- (id)_phIdToCtcScoreMap;
- (void)_recognizeWavData:(const signed __int16 *)a3 length:(int)a4;
- (void)dealloc;
- (void)endAudio;
- (void)processAudioChunk:(id)a3;
- (void)reset;
- (void)runRecognition;
- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizeFinalResults:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4;
@end

@implementation CSKeywordAnalyzerQuasar

- (CSKeywordAnalyzerQuasarScoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_getConfidence:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0.0;
  if (v4 && self->_triggerTokenList)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0x3FF0000000000000;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__CSKeywordAnalyzerQuasar__getConfidence___block_invoke;
    v8[3] = &unk_1E865C6A0;
    v8[4] = self;
    v8[5] = &v9;
    [v4 enumerateObjectsUsingBlock:v8];
    v6 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

void __42__CSKeywordAnalyzerQuasar__getConfidence___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(*(a1 + 32) + 24) count] > a3)
  {
    v6 = [v5 tokenName];
    v7 = [*(*(a1 + 32) + 24) objectAtIndex:a3];
    v8 = [v6 caseInsensitiveCompare:v7];

    if (v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) * 0.0;
    }
  }

  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 tokenName];
    v11 = [v10 UTF8String];
    [v5 confidence];
    v14 = 136315906;
    v15 = "[CSKeywordAnalyzerQuasar _getConfidence:]_block_invoke";
    v16 = 2050;
    v17 = a3;
    v18 = 2080;
    v19 = v11;
    v20 = 2050;
    v21 = v12;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s EAR Token[%{public}lu]: %s (%{public}f)", &v14, 0x2Au);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CSKeywordAnalyzerQuasar_speechRecognizer_didFinishRecognitionWithError___block_invoke;
  v8[3] = &unk_1E865C970;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __74__CSKeywordAnalyzerQuasar_speechRecognizer_didFinishRecognitionWithError___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v24 = a1;
  if (*(a1 + 32))
  {
    v1 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v23 = [*(v24 + 32) description];
      *buf = 136315394;
      v30 = "[CSKeywordAnalyzerQuasar speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
      v31 = 2082;
      v32 = [v23 UTF8String];
      _os_log_error_impl(&dword_1DDA4B000, v1, OS_LOG_TYPE_ERROR, "%s ERROR: %{public}s\n", buf, 0x16u);
    }

    a1 = v24;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(*(a1 + 40) + 16);
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v3)
  {
    v4 = *v26;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v26 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v7 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 tokenName];
          [v6 confidence];
          *buf = 136315906;
          v30 = "[CSKeywordAnalyzerQuasar speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
          v31 = 2112;
          v32 = v8;
          v33 = 2048;
          v34 = v9;
          v35 = 2112;
          v36 = v6;
          _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s CTC: Final-tok: %@(%f):%@", buf, 0x2Au);
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v3);
  }

  v10 = v24;
  v11 = *(v24 + 40);
  if (*(v11 + 48) == 1)
  {
    if (*(v24 + 32))
    {
      *(v11 + 64) = 0xC08F400000000000;
      goto LABEL_22;
    }

    v14 = [*(v11 + 16) lastObject];
    [v14 confidence];
    *(*(v24 + 40) + 64) = v15;

    goto LABEL_21;
  }

  if (*(v11 + 24))
  {
    v12 = [*(v11 + 16) count];
    v10 = v24;
    if (v12 >= [*(*(v24 + 40) + 24) count])
    {
      [*(v24 + 40) _getConfidence:*(*(v24 + 40) + 16)];
      *(*(v24 + 40) + 64) = v13;
LABEL_21:
      v10 = v24;
    }
  }

LABEL_22:
  v16 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(v10 + 40) + 64);
    *buf = 136315394;
    v30 = "[CSKeywordAnalyzerQuasar speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v31 = 2050;
    v32 = v17;
    _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s Final result confidence: %{public}f", buf, 0x16u);
  }

  v18 = +[CSFPreferences sharedPreferences];
  v19 = [v18 isMphVTEnabled];

  if (v19)
  {
    v20 = [*(v24 + 40) _phIdToCtcScoreMap];
  }

  else
  {
    v20 = 0;
  }

  WeakRetained = objc_loadWeakRetained((*(v24 + 40) + 80));
  [WeakRetained keywordAnalyzerQuasar:*(v24 + 40) hasResultAvailable:v20 forChannel:*(*(v24 + 40) + 72)];

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_phIdToCtcScoreMap
{
  v46 = *MEMORY[0x1E69E9840];
  p_ctcKwdToPhIdMap = &self->_ctcKwdToPhIdMap;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSDictionary count](self->_ctcKwdToPhIdMap, "count")}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *p_ctcKwdToPhIdMap;
  v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v5)
  {
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSDictionary *)self->_ctcKwdToPhIdMap objectForKeyedSubscript:*(*(&v34 + 1) + 8 * i)];
        [v4 setObject:&unk_1F5916C80 forKey:v8];
      }

      v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v5);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obja = self->_previousUtteranceTokens;
  v9 = [(NSMutableArray *)obja countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v9)
  {
    v11 = *v31;
    *&v10 = 136315650;
    v27 = v10;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obja);
        }

        v13 = *(*(&v30 + 1) + 8 * j);
        ctcKwdToPhIdMap = self->_ctcKwdToPhIdMap;
        v15 = [v13 tokenName];
        v16 = [(NSDictionary *)ctcKwdToPhIdMap objectForKeyedSubscript:v15];

        v17 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v27;
          v39 = "[CSKeywordAnalyzerQuasar _phIdToCtcScoreMap]";
          v40 = 2114;
          v41 = v16;
          v42 = 2114;
          v43 = v13;
          _os_log_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_DEFAULT, "%s MpVT: phId=%{public}@, tok=%{public}@", buf, 0x20u);
        }

        v18 = [v4 objectForKey:v16];
        v19 = v18;
        if (!v18 || ([v18 floatValue], v21 = v20, objc_msgSend(v13, "confidence"), v22 > v21))
        {
          v23 = MEMORY[0x1E696AD98];
          [v13 confidence];
          v24 = [v23 numberWithDouble:?];
          [v4 setObject:v24 forKey:v16];
        }
      }

      v9 = [(NSMutableArray *)obja countByEnumeratingWithState:&v30 objects:v44 count:16];
    }

    while (v9);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)speechRecognizer:(id)a3 didRecognizeFinalResults:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__CSKeywordAnalyzerQuasar_speechRecognizer_didRecognizeFinalResults___block_invoke;
  v8[3] = &unk_1E865C970;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __69__CSKeywordAnalyzerQuasar_speechRecognizer_didRecognizeFinalResults___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = [*(a1 + 32) firstObject];
  v17 = [v18 tokens];
  v2 = +[CSFPreferences sharedPreferences];
  v3 = [v2 isMphVTEnabled];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v17;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = *(a1 + 40);
        if (!v3)
        {
          goto LABEL_11;
        }

        v10 = *(v9 + 24);
        v11 = [*(*(&v19 + 1) + 8 * i) tokenName];
        LODWORD(v10) = [v10 containsObject:v11];

        v12 = CSLogContextFacilityCoreSpeech;
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          if (v13)
          {
            v14 = [v8 tokenName];
            *buf = 136315394;
            v24 = "[CSKeywordAnalyzerQuasar speechRecognizer:didRecognizeFinalResults:]_block_invoke";
            v25 = 2114;
            v26 = v14;
            _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s CTC: Adding tok=%{public}@", buf, 0x16u);
          }

          v9 = *(a1 + 40);
LABEL_11:
          [*(v9 + 16) addObject:v8];
          continue;
        }

        if (v13)
        {
          v15 = [v8 tokenName];
          *buf = 136315394;
          v24 = "[CSKeywordAnalyzerQuasar speechRecognizer:didRecognizeFinalResults:]_block_invoke";
          v25 = 2114;
          v26 = v15;
          _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s CTC: Ignoring tok=%{public}@", buf, 0x16u);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__CSKeywordAnalyzerQuasar_speechRecognizer_didRecognizePartialResult___block_invoke;
  v8[3] = &unk_1E865C970;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __70__CSKeywordAnalyzerQuasar_speechRecognizer_didRecognizePartialResult___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 24))
  {
    v2 = [*(a1 + 40) tokens];
    v3 = [v2 count];
    v4 = [*(*(a1 + 32) + 24) count];

    if (v3 >= v4)
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) tokens];
      [v5 _getConfidence:v6];
      *(*(a1 + 32) + 64) = v7;

      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(a1 + 32) + 64);
        v12 = 136315394;
        v13 = "[CSKeywordAnalyzerQuasar speechRecognizer:didRecognizePartialResult:]_block_invoke";
        v14 = 2050;
        v15 = v9;
        _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Partial result confidence: %{public}f", &v12, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
      [WeakRetained keywordAnalyzerQuasar:*(a1 + 32) hasResultAvailable:0 forChannel:*(*(a1 + 32) + 72)];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_recognizeWavData:(const signed __int16 *)a3 length:(int)a4
{
  v5 = *MEMORY[0x1E69E9840];
  [(_EARSpeechRecognitionAudioBuffer *)self->_recognizerBuffer addAudioSamples:a3 count:a4];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)processAudioChunk:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13390;
  v18 = __Block_byref_object_dispose__13391;
  v19 = 0;
  if (+[CSConfig inputRecordingIsFloat])
  {
    v5 = [v4 dataForChannel:self->_activeChannel];
    v6 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:v5];
    v7 = v15[5];
    v15[5] = v6;
  }

  else
  {
    v8 = [v4 dataForChannel:self->_activeChannel];
    v5 = v15[5];
    v15[5] = v8;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CSKeywordAnalyzerQuasar_processAudioChunk___block_invoke;
  block[3] = &unk_1E865CC08;
  v12 = v4;
  v13 = &v14;
  block[4] = self;
  v10 = v4;
  dispatch_async(queue, block);

  _Block_object_dispose(&v14, 8);
}

uint64_t __45__CSKeywordAnalyzerQuasar_processAudioChunk___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(*(a1 + 48) + 8) + 40) bytes];
  v4 = [*(a1 + 40) numSamples];

  return [v2 _recognizeWavData:v3 length:v4];
}

- (void)endAudio
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSKeywordAnalyzerQuasar endAudio]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CSKeywordAnalyzerQuasar_endAudio__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __35__CSKeywordAnalyzerQuasar_endAudio__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  result = [*(*(a1 + 32) + 40) endAudio];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)runRecognition
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSKeywordAnalyzerQuasar runRecognition]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CSKeywordAnalyzerQuasar_runRecognition__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __41__CSKeywordAnalyzerQuasar_runRecognition__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 32) runRecognitionWithResultStream:?];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSKeywordAnalyzerQuasar dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CSKeywordAnalyzerQuasar;
  [(CSKeywordAnalyzerQuasar *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSKeywordAnalyzerQuasar reset]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CSKeywordAnalyzerQuasar_reset__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __32__CSKeywordAnalyzerQuasar_reset__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = -1000.0;
  if (!*(v1 + 48))
  {
    v2 = 0.0;
  }

  *(v1 + 64) = v2;
  return [*(*(a1 + 32) + 16) removeAllObjects];
}

- (CSKeywordAnalyzerQuasar)initWithConfigPath:(id)a3 triggerTokens:(id)a4 useKeywordSpotting:(BOOL)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v28.receiver = self;
  v28.super_class = CSKeywordAnalyzerQuasar;
  v10 = [(CSKeywordAnalyzerQuasar *)&v28 init];
  if (v10)
  {
    v11 = dispatch_queue_create("com.apple.transcribe.Transcriber", 0);
    v12 = *(v10 + 1);
    *(v10 + 1) = v11;

    v13 = *(v10 + 1);
    v14 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v13, v14);

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = *(v10 + 2);
    *(v10 + 2) = v15;

    *(v10 + 8) = 0;
    v17 = [v9 componentsSeparatedByString:@"_"];
    v18 = *(v10 + 3);
    *(v10 + 3) = v17;

    v19 = *(v10 + 3);
    if (v19)
    {
      v20 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v30 = "[CSKeywordAnalyzerQuasar initWithConfigPath:triggerTokens:useKeywordSpotting:]";
        v31 = 2114;
        v32 = v19;
        _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEFAULT, "%s Transcriber trigger token list: %{public}@", buf, 0x16u);
      }
    }

    v21 = *(v10 + 5);
    *(v10 + 5) = 0;

    *(v10 + 48) = a5;
    v22 = *(v10 + 1);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __79__CSKeywordAnalyzerQuasar_initWithConfigPath_triggerTokens_useKeywordSpotting___block_invoke;
    v25[3] = &unk_1E865C970;
    v26 = v8;
    v27 = v10;
    dispatch_async(v22, v25);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v10;
}

void __79__CSKeywordAnalyzerQuasar_initWithConfigPath_triggerTokens_useKeywordSpotting___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE30] processInfo];
  [v2 systemUptime];
  v4 = v3;

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v15 = 136315394;
    v16 = "[CSKeywordAnalyzerQuasar initWithConfigPath:triggerTokens:useKeywordSpotting:]_block_invoke";
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Initializing Quasar with config: %{public}@", &v15, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x1E699BA18]) initWithConfiguration:*(a1 + 32)];
  v8 = *(a1 + 40);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  v10 = [MEMORY[0x1E696AE30] processInfo];
  [v10 systemUptime];
  v12 = v11;

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[CSKeywordAnalyzerQuasar initWithConfigPath:triggerTokens:useKeywordSpotting:]_block_invoke";
    v17 = 2050;
    v18 = (v12 - v4) * 1000.0;
    _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s Speech model loading took %{public}.3fms", &v15, 0x16u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end