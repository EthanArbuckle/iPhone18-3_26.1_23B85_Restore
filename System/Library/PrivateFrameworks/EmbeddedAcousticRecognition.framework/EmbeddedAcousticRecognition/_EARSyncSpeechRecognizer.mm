@interface _EARSyncSpeechRecognizer
+ (void)initialize;
- (_EARSyncSpeechRecognizer)initWithConfiguration:(id)configuration memoryLock:(BOOL)lock;
- (id).cxx_construct;
- (id)getSpeechRecognitionResultFromTokens:()vector<std:(std:(id)std :allocator<std::vector<quasar::Token>>> *)a3 :vector<quasar::Token> taskName:;
- (id)resultsWithAddedAudio:(id)audio numberOfSamples:(unint64_t)samples taskName:(id)name;
- (id)resultsWithAddedFloatAudio:(id)audio numberOfSamples:(unint64_t)samples taskName:(id)name;
- (id)resultsWithEndedAudio;
- (void)resetWithSamplingRate:(unsigned int)rate language:(id)language taskType:(id)type userId:(id)id sessionId:(id)sessionId deviceId:(id)deviceId farField:(BOOL)field atypicalSpeech:(BOOL)self0 maxAudioBufferSizeSeconds:(unsigned int)self1;
- (void)resetWithSamplingRate:(unsigned int)rate language:(id)language taskType:(id)type userId:(id)id sessionId:(id)sessionId deviceId:(id)deviceId farField:(BOOL)field audioSource:(id)self0 maxAudioBufferSizeSeconds:(unsigned int)self1;
@end

@implementation _EARSyncSpeechRecognizer

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARSyncSpeechRecognizer)initWithConfiguration:(id)configuration memoryLock:(BOOL)lock
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = _EARSyncSpeechRecognizer;
  v6 = [(_EARSyncSpeechRecognizer *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple._EARSpeechRecognizer.formatter", 0);
    formatterQueue = v6->_formatterQueue;
    v6->_formatterQueue = v7;

    [configurationCopy fileSystemRepresentation];
    operator new();
  }

  v9 = 0;

  return v9;
}

- (void)resetWithSamplingRate:(unsigned int)rate language:(id)language taskType:(id)type userId:(id)id sessionId:(id)sessionId deviceId:(id)deviceId farField:(BOOL)field audioSource:(id)self0 maxAudioBufferSizeSeconds:(unsigned int)self1
{
  v15 = *&rate;
  languageCopy = language;
  typeCopy = type;
  idCopy = id;
  sessionIdCopy = sessionId;
  deviceIdCopy = deviceId;
  sourceCopy = source;
  ptr = self->_syncRecognizer.__ptr_;
  if (languageCopy)
  {
    [languageCopy ear_toString];
    if (typeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v32[0] = 0;
    v32[1] = 0;
    v33 = 0;
    if (typeCopy)
    {
LABEL_3:
      [typeCopy ear_toString];
      if (idCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  if (idCopy)
  {
LABEL_4:
    [idCopy ear_toString];
    if (sessionIdCopy)
    {
      goto LABEL_5;
    }

LABEL_10:
    v26[0] = 0;
    v26[1] = 0;
    v27 = 0;
    if (deviceIdCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  if (!sessionIdCopy)
  {
    goto LABEL_10;
  }

LABEL_5:
  [sessionIdCopy ear_toString];
  if (deviceIdCopy)
  {
LABEL_6:
    [deviceIdCopy ear_toString];
    goto LABEL_12;
  }

LABEL_11:
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
LABEL_12:
  (*(*ptr + 24))(ptr, v15, v32, v30, v28, v26, __p, field, 0);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }
}

- (void)resetWithSamplingRate:(unsigned int)rate language:(id)language taskType:(id)type userId:(id)id sessionId:(id)sessionId deviceId:(id)deviceId farField:(BOOL)field atypicalSpeech:(BOOL)self0 maxAudioBufferSizeSeconds:(unsigned int)self1
{
  v15 = *&rate;
  languageCopy = language;
  typeCopy = type;
  idCopy = id;
  sessionIdCopy = sessionId;
  deviceIdCopy = deviceId;
  ptr = self->_syncRecognizer.__ptr_;
  if (languageCopy)
  {
    [languageCopy ear_toString];
    if (typeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31[0] = 0;
    v31[1] = 0;
    v32 = 0;
    if (typeCopy)
    {
LABEL_3:
      [typeCopy ear_toString];
      if (idCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  if (idCopy)
  {
LABEL_4:
    [idCopy ear_toString];
    if (sessionIdCopy)
    {
      goto LABEL_5;
    }

LABEL_10:
    v25[0] = 0;
    v25[1] = 0;
    v26 = 0;
    if (deviceIdCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  if (!sessionIdCopy)
  {
    goto LABEL_10;
  }

LABEL_5:
  [sessionIdCopy ear_toString];
  if (deviceIdCopy)
  {
LABEL_6:
    [deviceIdCopy ear_toString];
    goto LABEL_12;
  }

LABEL_11:
  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
LABEL_12:
  (*(*ptr + 24))(ptr, v15, v31, v29, v27, v25, __p, field, speech);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }
}

- (id)getSpeechRecognitionResultFromTokens:()vector<std:(std:(id)std :allocator<std::vector<quasar::Token>>> *)a3 :vector<quasar::Token> taskName:
{
  stdCopy = std;
  v7 = self->_formatter;
  v33 = stdCopy;
  memset(v44, 0, sizeof(v44));
  memset(v43, 0, sizeof(v43));
  begin = a3->__begin_;
  end = a3->__end_;
  if (a3->__begin_ != end)
  {
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v38 = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(__p, *begin, begin[1], 0x6DB6DB6DB6DB6DB7 * ((begin[1] - *begin) >> 5));
      memset(v42, 0, sizeof(v42));
      if (v7)
      {
        [(_EARFormatter *)v7 formatWords:begin unrepairedWordsOut:v42 task:v33];
        std::vector<quasar::Token>::__vdeallocate(__p);
        *__p = v40;
        *&v38 = v41;
        v41 = 0;
        v40 = 0uLL;
        v45 = &v40;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v45);
      }

      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v44, __p);
      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v43, v42);
      *&v40 = v42;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v40);
      v42[0] = __p;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v42);
      begin += 3;
    }

    while (begin != end);
  }

  v10 = [_EARSpeechRecognition alloc];
  v11 = [MEMORY[0x1E695DFD8] set];
  v39 = 0;
  *__p = 0u;
  v38 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
  LOBYTE(v39) = 0;
  v12 = [(_EARSpeechRecognition *)v10 _initWithNBestList:a3 useHatText:1 endsOfSentencePunctuations:v11 formattingInfo:__p];
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[1]);
  }

  if (v7)
  {
    v13 = [_EARSpeechRecognition alloc];
    v14 = [MEMORY[0x1E695DFD8] set];
    v39 = 0;
    *__p = 0u;
    v38 = 0u;
    std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
    LOBYTE(v39) = 0;
    v15 = [(_EARSpeechRecognition *)v13 _initWithNBestList:v44 useHatText:0 endsOfSentencePunctuations:v14 formattingInfo:__p];
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[1]);
    }
  }

  else
  {
    v15 = v12;
  }

  v16 = [_EARSpeechRecognition alloc];
  v17 = [MEMORY[0x1E695DFD8] set];
  v39 = 0;
  *__p = 0u;
  v38 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
  LOBYTE(v39) = 0;
  v18 = [(_EARSpeechRecognition *)v16 _initWithNBestList:v43 useHatText:0 endsOfSentencePunctuations:v17 formattingInfo:__p];
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[1]);
  }

  v19 = [[_EARSpeechRecognitionResultPackage alloc] _initWithRecognition:v15 preITNRecognition:v12 unrepairedRecognition:v18 recognitionIsFormatted:v7 != 0 isFinal:1];
  __p[0] = v43;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v44;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](__p);

  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  recognition = [v19 recognition];
  nBest = [recognition nBest];

  preITNRecognition = [v19 preITNRecognition];
  nBest2 = [preITNRecognition nBest];

  v24 = [nBest count];
  if (v24 >= [nBest2 count])
  {
    v25 = nBest2;
  }

  else
  {
    v25 = nBest;
  }

  v26 = [v25 count];
  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      v28 = [_EARSpeechRecognitionResult alloc];
      v29 = [nBest objectAtIndex:i];
      EARHelpers::QuasarResultFromEARSpeechRecognitionTokens(v29, v36);
      v30 = [nBest2 objectAtIndex:i];
      EARHelpers::QuasarResultFromEARSpeechRecognitionTokens(v30, v35);
      v31 = [(_EARSpeechRecognitionResult *)v28 _initWithTokens:v36 preITNTokens:v35];
      __p[0] = v35;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);

      __p[0] = v36;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);

      [v34 addObject:v31];
    }
  }

  return v34;
}

- (id)resultsWithAddedAudio:(id)audio numberOfSamples:(unint64_t)samples taskName:(id)name
{
  audioCopy = audio;
  nameCopy = name;
  [audioCopy bytes];
  (*(*self->_syncRecognizer.__ptr_ + 32))(&v12);
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v14, *v12, v12[1], 0xAAAAAAAAAAAAAAABLL * ((v12[1] - *v12) >> 3));
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  memset(v11, 0, sizeof(v11));
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v11, v14, v15, 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3));
  v9 = [(_EARSyncSpeechRecognizer *)self getSpeechRecognitionResultFromTokens:v11 taskName:nameCopy];
  v12 = v11;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = &v14;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v12);

  return v9;
}

- (id)resultsWithAddedFloatAudio:(id)audio numberOfSamples:(unint64_t)samples taskName:(id)name
{
  audioCopy = audio;
  nameCopy = name;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if ([audioCopy length] >= 4 * samples)
  {
    [audioCopy bytes];
    (*(*self->_syncRecognizer.__ptr_ + 48))(&v15);
    if (&v17 != v15)
    {
      std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v17, *v15, v15[1], 0xAAAAAAAAAAAAAAABLL * (v15[1] - *v15));
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v11 = v17;
    v10 = v18;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  memset(v14, 0, sizeof(v14));
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v14, v11, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3));
  v12 = [(_EARSyncSpeechRecognizer *)self getSpeechRecognitionResultFromTokens:v14 taskName:nameCopy];
  v15 = v14;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v15);
  v15 = &v17;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v15);

  return v12;
}

- (id)resultsWithEndedAudio
{
  (*(*self->_syncRecognizer.__ptr_ + 56))(&v6);
  v9 = 0;
  v10 = 0;
  v8 = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v8, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  memset(v5, 0, sizeof(v5));
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v5, v8, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
  v3 = [(_EARSyncSpeechRecognizer *)self getSpeechRecognitionResultFromTokens:v5 taskName:@"Ending current audio stream."];
  v6 = v5;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = &v8;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);

  return v3;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (void)initWithConfiguration:(int)a1 memoryLock:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B501D000, a2, OS_LOG_TYPE_ERROR, "Could not build recognizer: %d", v2, 8u);
}

@end