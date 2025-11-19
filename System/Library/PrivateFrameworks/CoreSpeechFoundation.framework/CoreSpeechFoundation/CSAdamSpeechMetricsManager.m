@interface CSAdamSpeechMetricsManager
- (CSAdamSpeechMetricsManager)init;
- (void)dealloc;
- (void)stopAndDispose;
- (void)updateWithNewReporterID;
@end

@implementation CSAdamSpeechMetricsManager

- (void)stopAndDispose
{
  v8 = *MEMORY[0x1E69E9840];
  adamClientSessionId = self->_adamClientSessionId;
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_11614);
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    AudioDataAnalysisManagerLibraryLoader(void)::libSym(adamClientSessionId);
  }

  self->_isDisposed = 1;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAdamSpeechMetricsManager stopAndDispose]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAdamSpeechMetricsManager stopAndDispose", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateWithNewReporterID
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6958468] sharedInstance];
  v4 = [v3 reporterID];

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[CSAdamSpeechMetricsManager updateWithNewReporterID]";
    *&buf[12] = 2048;
    *&buf[14] = v4;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s New reporterId is generated: %lld", buf, 0x16u);
  }

  memset(buf, 0, sizeof(buf));
  if (v4)
  {
    operator new();
  }

  adamClientSessionId = self->_adamClientSessionId;
  if (adamClientSessionId != 561211748)
  {
    if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_11614);
    }

    if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
    {
      v7 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(adamClientSessionId, buf);
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = 560033897;
    }

    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[CSAdamSpeechMetricsManager updateWithNewReporterID]";
      v12 = 1024;
      v13 = v7;
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s ADAMClientUpdateReportingSessions is failing with error: %d", &v10, 0x12u);
    }
  }

LABEL_14:
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (!self->_isDisposed)
  {
    adamClientSessionId = self->_adamClientSessionId;
    if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_11614);
    }

    if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
    {
      AudioDataAnalysisManagerLibraryLoader(void)::libSym(adamClientSessionId);
    }
  }

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSAdamSpeechMetricsManager dealloc]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAdamSpeechMetricsManager dealloc", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = CSAdamSpeechMetricsManager;
  [(CSAdamSpeechMetricsManager *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (CSAdamSpeechMetricsManager)init
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CSAdamSpeechMetricsManager;
  v2 = [(CSAdamSpeechMetricsManager *)&v11 init];
  if (!v2)
  {
    goto LABEL_14;
  }

  __p = 0;
  v9 = 0;
  v10 = 0;
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_11614);
  }

  if (!AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    v2->_adamClientSessionId = 560033897;
    v2->_isDisposed = 0;
LABEL_14:
    v5 = v2;
    goto LABEL_15;
  }

  v3 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(4, &__p);
  v2->_adamClientSessionId = v3;
  v2->_isDisposed = 0;
  if (v3 != 561211748)
  {
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    goto LABEL_14;
  }

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = "[CSAdamSpeechMetricsManager init]";
    _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Failed to create Adam client", buf, 0xCu);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v5 = 0;
LABEL_15:

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

@end