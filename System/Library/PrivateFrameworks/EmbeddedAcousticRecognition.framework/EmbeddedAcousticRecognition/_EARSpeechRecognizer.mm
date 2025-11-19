@interface _EARSpeechRecognizer
+ (BOOL)compileRecognizerModels2WithConfiguration:(id)a3 error:(id *)a4;
+ (id)rawTokenResultsFromRecognitionResults:(id)a3;
+ (void)initialize;
+ (void)purgeCompiledRecognizerModelsWithConfiguration:(id)a3;
- (BOOL)canCloneIsFinalAsLastNonFinal;
- (BOOL)isContinuousListening;
- (BOOL)isSpeakerCodeTrainingSupported:(id)a3;
- (BOOL)isVadGatingSupported:(unint64_t)a3 task:(id)a4 device:(id)a5 farField:(BOOL)a6 atypicalSpeech:(BOOL)a7 aneContext:(id)a8 cpuContext:(id)a9 gpuContext:(id)a10;
- (_EARSpeechRecognizer)initWithConfig:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 language:(id)a6 activeConfiguration:(id)a7 modelLoadingOptions:(id)a8 enableSpeakerCodeTraining:(BOOL)a9 supportEmojiRecognition:(BOOL)a10 voiceCommandActiveSet:(id)a11 modelContextDelegate:(id)a12 enableItn:(BOOL)a13 error:(id *)a14;
- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5;
- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 generalVoc:(id)a6 lexiconEnh:(id)a7 itnEnh:(id)a8 language:(id)a9;
- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 generalVoc:(id)a6 lexiconEnh:(id)a7 itnEnh:(id)a8 language:(id)a9 activeConfiguration:(id)a10 modelLoadingOptions:(id)a11 enableSpeakerCodeTraining:(BOOL)a12 supportEmojiRecognition:(BOOL)a13 voiceCommandActiveSet:(id)a14 modelContextDelegate:(id)a15;
- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 language:(id)a6;
- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 language:(id)a6 activeConfiguration:(id)a7 modelLoadingOptions:(id)a8 enableSpeakerCodeTraining:(BOOL)a9 supportEmojiRecognition:(BOOL)a10 voiceCommandActiveSet:(id)a11 modelContextDelegate:(id)a12;
- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 language:(id)a6 activeConfiguration:(id)a7 modelLoadingOptions:(id)a8 enableSpeakerCodeTraining:(BOOL)a9 supportEmojiRecognition:(BOOL)a10 voiceCommandActiveSet:(id)a11 modelContextDelegate:(id)a12 enableItn:(BOOL)a13;
- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 useQuasarFormatter:(BOOL)a4;
- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 useQuasarFormatter:(BOOL)a4 activeConfiguration:(id)a5;
- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 withLanguage:(id)a4 withSdapiConfig:(id)a5;
- (id).cxx_construct;
- (id)_tokenizer;
- (id)_unmaskMuxPackages:(id)a3;
- (id)activeConfiguration;
- (id)recognitionResultsWithAudioData:(id)a3 userProfileData:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7;
- (id)recognitionResultsWithAudioData:(id)a3 userProfileData:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7 extraLanguageModel:(id)a8;
- (id)recognitionStatistics;
- (id)recognitionUtteranceInfos;
- (id)recognitionUtterenceStatistics;
- (id)runRecognitionWithResultStream:(id)a3;
- (id)runRecognitionWithResultStream:(id)a3 language:(id)a4 task:(id)a5 samplingRate:(unint64_t)a6;
- (id)runRecognitionWithResultStream:(id)a3 language:(id)a4 task:(id)a5 samplingRate:(unint64_t)a6 userProfileData:(id)a7 speakerCodeWriter:(id)a8;
- (id)runRecognitionWithResultStream:(id)a3 speakerCodeWriter:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7;
- (id)testFormattingWithOneBestResults:(id)a3 uttMillis:(id)a4;
- (id)tokenizeText:(id)a3 fromEnd:(BOOL)a4 withLimit:(unint64_t)a5 outTokensInVocab:(id *)a6;
- (shared_ptr<quasar::RecogAudioBufferBase>)_audioBufferWithLangauge:(id)a3 task:(id)a4 samplingRate:(unint64_t)a5 userProfileData:(id)a6 resultStream:(shared_ptr<quasar::RecogResultStreamBase>)a7;
- (shared_ptr<quasar::SpeechRecognizer>)getRecognizer;
- (shared_ptr<quasar::corrective_reranking::Parser>)getParser;
- (unsigned)itnEnablingFlags;
- (vector<std::string,)splitWithTokenizer:(_EARSpeechRecognizer *)self isLeftContext:(SEL)a3 shouldTruncate:(id)a4 outTokensInVocab:(BOOL)a5;
- (vector<std::string,)splitWithTokenizer:(_EARSpeechRecognizer *)self outTokensInVocab:(SEL)a3 isLeftContext:(id)a4;
- (void)_restartActiveRecognition;
- (void)_setProfileContainers:(id)a3 muxIds:(id)a4;
- (void)_testGetMuxIdMask:(id *)a3 muxIdReverseMask:(id *)a4 maskedMuxIds:(id *)a5;
- (void)_waitForAsyncRecogToFinish;
- (void)cancelRecognition;
- (void)getFormatterWithBlock:(id)a3;
- (void)interruptTraining;
- (void)loadParser;
- (void)requestEagerResult:(id)a3;
- (void)resumeRecognitionWithLeftContext:(id)a3 rightContext:(id)a4 selectedText:(id)a5;
- (void)setActiveConfiguration:(id)a3;
- (void)setAlternateRawRecognitionTokenSausage:(id)a3;
- (void)setEnableVoiceCommands:(BOOL)a3;
- (void)setHighPriority:(BOOL)a3;
- (void)setJitProfileData:(id)a3;
- (void)setLeftContext:(id)a3;
- (void)setLeftContextForItn:(id)a3;
- (void)setLeftContextText:(id)a3;
- (void)setRightContext:(id)a3;
- (void)setUserProfile:(id)a3;
- (void)setUserProfileData:(id)a3;
- (void)updateJitProfileData:(id)a3;
- (void)updateUserProfileData:(id)a3;
- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10;
- (void)writeRecordedStateAccesses;
@end

@implementation _EARSpeechRecognizer

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 27) = 0;
  return self;
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == a1)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
  v12 = [(_EARSpeechRecognizer *)self initWithConfiguration:v8 overrides:v9 overrideConfigFiles:v10 language:0 activeConfiguration:v11];

  return v12;
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 language:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
  v15 = [(_EARSpeechRecognizer *)self initWithConfiguration:v10 overrides:v11 overrideConfigFiles:v12 language:v13 activeConfiguration:v14];

  return v15;
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 language:(id)a6 activeConfiguration:(id)a7 modelLoadingOptions:(id)a8 enableSpeakerCodeTraining:(BOOL)a9 supportEmojiRecognition:(BOOL)a10 voiceCommandActiveSet:(id)a11 modelContextDelegate:(id)a12
{
  LOBYTE(v14) = 0;
  LOWORD(v13) = __PAIR16__(a10, a9);
  return [(_EARSpeechRecognizer *)self initWithConfiguration:a3 overrides:a4 overrideConfigFiles:a5 language:a6 activeConfiguration:a7 modelLoadingOptions:a8 enableSpeakerCodeTraining:v13 supportEmojiRecognition:a11 voiceCommandActiveSet:a12 modelContextDelegate:v14 enableItn:?];
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 language:(id)a6 activeConfiguration:(id)a7 modelLoadingOptions:(id)a8 enableSpeakerCodeTraining:(BOOL)a9 supportEmojiRecognition:(BOOL)a10 voiceCommandActiveSet:(id)a11 modelContextDelegate:(id)a12 enableItn:(BOOL)a13
{
  LOBYTE(v15) = a13;
  LOWORD(v14) = __PAIR16__(a10, a9);
  return [(_EARSpeechRecognizer *)self initWithConfig:a3 overrides:a4 overrideConfigFiles:a5 language:a6 activeConfiguration:a7 modelLoadingOptions:a8 enableSpeakerCodeTraining:v14 supportEmojiRecognition:a11 voiceCommandActiveSet:a12 modelContextDelegate:v15 enableItn:0 error:?];
}

- (_EARSpeechRecognizer)initWithConfig:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 language:(id)a6 activeConfiguration:(id)a7 modelLoadingOptions:(id)a8 enableSpeakerCodeTraining:(BOOL)a9 supportEmojiRecognition:(BOOL)a10 voiceCommandActiveSet:(id)a11 modelContextDelegate:(id)a12 enableItn:(BOOL)a13 error:(id *)a14
{
  v21 = a3;
  v79 = a4;
  v22 = a5;
  v23 = a6;
  v78 = a7;
  v24 = a8;
  v25 = a12;
  v108.receiver = self;
  v108.super_class = _EARSpeechRecognizer;
  v26 = [(_EARSpeechRecognizer *)&v108 init];
  if (!v26)
  {
    goto LABEL_37;
  }

  v27 = dispatch_queue_create("com.apple._EARSpeechRecognizer.recognition", 0);
  recognitionQueue = v26->_recognitionQueue;
  v26->_recognitionQueue = v27;

  v29 = dispatch_queue_create("com.apple._EARSpeechRecognizer.formatter", 0);
  formatterQueue = v26->_formatterQueue;
  v26->_formatterQueue = v29;

  v31 = dispatch_queue_create("com.apple._EARSpeechRecognizer.training", 0);
  trainingQueue = v26->_trainingQueue;
  v26->_trainingQueue = v31;

  v106[0] = 0;
  v106[1] = v106;
  v106[2] = 0x4812000000;
  v106[3] = __Block_byref_object_copy__531;
  v106[4] = __Block_byref_object_dispose__532;
  v106[5] = &unk_1B5CADD23;
  memset(v107, 0, sizeof(v107));
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __227___EARSpeechRecognizer_initWithConfig_overrides_overrideConfigFiles_language_activeConfiguration_modelLoadingOptions_enableSpeakerCodeTraining_supportEmojiRecognition_voiceCommandActiveSet_modelContextDelegate_enableItn_error___block_invoke;
  v105[3] = &unk_1E7C1A410;
  v105[4] = v106;
  v77 = v23;
  [v22 enumerateObjectsUsingBlock:v105];
  v33 = [v21 copy];
  configPath = v26->_configPath;
  v26->_configPath = v33;

  inputOrigin = v26->_inputOrigin;
  v26->_inputOrigin = &stru_1F2D44B60;

  deviceId = v26->_deviceId;
  v26->_deviceId = &stru_1F2D44B60;

  refTranscriptForErrorBlaming = v26->_refTranscriptForErrorBlaming;
  v26->_refTranscriptForErrorBlaming = &stru_1F2D44B60;

  bluetoothDeviceId = v26->_bluetoothDeviceId;
  v26->_bluetoothDeviceId = &stru_1F2D44B60;

  v26->_atypicalSpeech = 0;
  userId = v26->_userId;
  v26->_userId = &stru_1F2D44B60;

  sessionId = v26->_sessionId;
  v26->_sessionId = &stru_1F2D44B60;

  v26->_loadLmeForVoiceCommand = 0;
  v75 = vdupq_n_s64(0x4076800000000000uLL);
  v102 = v75;
  v26->_latitude = quasar::Location::getLatitude(&v102);
  v102 = v75;
  v26->_longitude = quasar::corrective_reranking::VoiceEditingWFST::Path::getWeight(&v102);
  v26->_enableSpeakerCodeTraining = a9;
  v26->_vadGatingLevel = 0;
  v26->_segmentationLatency = 2;
  taskBiasingSymbols = v26->_taskBiasingSymbols;
  v26->_taskBiasingSymbols = &stru_1F2D44B60;

  v102.i64[0] = 0;
  v102.i64[1] = &v102;
  v103 = 0x2020000000;
  v104 = 0;
  if (v25)
  {
    operator new();
  }

  if (!v21)
  {
    v70 = [MEMORY[0x1E696AAA8] currentHandler];
    [v70 handleFailureInMethod:a2 object:v26 file:@"EARSpeechRecognizer.mm" lineNumber:4031 description:&stru_1F2D44B60];
  }

  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __227___EARSpeechRecognizer_initWithConfig_overrides_overrideConfigFiles_language_activeConfiguration_modelLoadingOptions_enableSpeakerCodeTraining_supportEmojiRecognition_voiceCommandActiveSet_modelContextDelegate_enableItn_error___block_invoke_2;
  v93[3] = &unk_1E7C1A438;
  v42 = v26;
  v94 = v42;
  v43 = v21;
  v101 = 86400;
  v95 = v43;
  v99 = v106;
  v96 = v79;
  v100 = &v102;
  v97 = v78;
  v98 = v24;
  v44 = MEMORY[0x1B8C868A0](v93);
  v45 = v44;
  if (a14)
  {
    if ((ConvertCXXExceptionToNSError(v44) & 1) == 0)
    {
      v46 = 0;
      v23 = v77;
      goto LABEL_36;
    }
  }

  else
  {
    ConvertCXXExceptionToNSException(v44);
  }

  v47 = *(v102.i64[1] + 24);
  v76 = v47 == 0;
  if (!v47)
  {
    v51 = [_EARSpeechModelInfo alloc];
    SysConfig = quasar::SpeechRecognizer::getSysConfig(v42->_recognizer.__ptr_);
    v53 = [(_EARSpeechModelInfo *)v51 _initWithSpeechModelInfo:quasar::SystemConfig::getMainSpeechModelInfo(SysConfig)];
    modelInfo = v42->_modelInfo;
    v42->_modelInfo = v53;

    quasar::SpeechRecognizer::getTraining(v42->_recognizer.__ptr_, v91);
    v55 = *v91;
    v91[0] = 0;
    v91[1] = 0;
    cntrl = v42->_training.__cntrl_;
    v42->_training = v55;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      if (v91[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v91[1]);
      }

      if (!v42->_training.__ptr_)
      {
        goto LABEL_31;
      }
    }

    else if (!v55.__ptr_)
    {
      goto LABEL_31;
    }

    if (v26->_enableSpeakerCodeTraining)
    {
      v57 = [[_EARSpeakerCodeInfo alloc] initWithLanguage:v77];
      speakerCodeInfo = v42->_speakerCodeInfo;
      v42->_speakerCodeInfo = v57;

      v74 = [(_EARSpeakerCodeInfo *)v42->_speakerCodeInfo trainingSpeakerCode];
      if ([v74 length])
      {
        v73 = [(_EARSpeakerCodeInfo *)v42->_speakerCodeInfo inferenceSpeakerCode];
        if ([v73 length])
        {
          v59 = [(_EARSpeakerCodeInfo *)v42->_speakerCodeInfo accumulatedGradient];
          v71 = [v59 length];

          if (v71)
          {
            v60 = [(_EARSpeakerCodeInfo *)v42->_speakerCodeInfo trainingSpeakerCode];
            if (v60)
            {
              [v60 ear_toString];
            }

            else
            {
              v91[0] = 0;
              v91[1] = 0;
              v92 = 0;
            }

            std::allocate_shared[abi:ne200100]<std::istringstream,std::allocator<std::istringstream>,std::string,0>();
          }

LABEL_28:
          ptr = v42->_training.__ptr_;
          v91[0] = 0;
          v91[1] = 0;
          v89 = 0;
          v90 = 0;
          __p = 0;
          v88 = 0;
          [(_EARSpeakerCodeInfo *)v42->_speakerCodeInfo nnetVersion];
          [objc_claimAutoreleasedReturnValue() unsignedIntValue];
          [(_EARSpeakerCodeInfo *)v42->_speakerCodeInfo numFrames];
          [objc_claimAutoreleasedReturnValue() unsignedLongValue];
          [(_EARSpeakerCodeInfo *)v42->_speakerCodeInfo trainingOffset];
          [objc_claimAutoreleasedReturnValue() unsignedLongValue];
          [(_EARSpeakerCodeInfo *)v42->_speakerCodeInfo recognitionOffset];
          [objc_claimAutoreleasedReturnValue() unsignedLongValue];
          quasar::SpeakerCodeTraining::init(ptr);
        }
      }

      goto LABEL_28;
    }

LABEL_31:
    aneContext = v42->_aneContext;
    v42->_aneContext = &stru_1F2D44B60;

    cpuContext = v42->_cpuContext;
    v42->_cpuContext = &stru_1F2D44B60;

    gpuContext = v42->_gpuContext;
    v42->_gpuContext = &stru_1F2D44B60;

    if (a13)
    {
      v64 = v42->_recognizer.__ptr_;
      if (v64)
      {
        v65 = [_EARFormatter supportedByQuasarSystemConfig:quasar::SpeechRecognizer::getSysConfig(v64)];
        v66 = v26->_formatterQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __227___EARSpeechRecognizer_initWithConfig_overrides_overrideConfigFiles_language_activeConfiguration_modelLoadingOptions_enableSpeakerCodeTraining_supportEmojiRecognition_voiceCommandActiveSet_modelContextDelegate_enableItn_error___block_invoke_556;
        block[3] = &unk_1E7C1A460;
        v85 = v65;
        v81 = v42;
        v82 = v43;
        v83 = v22;
        v86 = a10;
        v84 = v77;
        dispatch_async(v66, block);
      }
    }

    v67 = objc_alloc_init(_EARRelevantTextContext);
    relevantTextContext = v42->_relevantTextContext;
    v42->_relevantTextContext = v67;
    goto LABEL_35;
  }

  relevantTextContext = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to initialize recognizer, result: %d", v47];
  v49 = EARLogger::QuasarOSLogger(relevantTextContext);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    [_EARSpeechRecognizer initWithConfig:overrides:overrideConfigFiles:language:activeConfiguration:modelLoadingOptions:enableSpeakerCodeTraining:supportEmojiRecognition:voiceCommandActiveSet:modelContextDelegate:enableItn:error:];
  }

  v50 = EARErrorWithCode(100, relevantTextContext);
  EARSetError(a14, v50);

LABEL_35:
  v23 = v77;
  v46 = v76;
LABEL_36:

  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(v106, 8);
  v102.i64[0] = v107;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v102);
  if (!v46)
  {
    v68 = 0;
    goto LABEL_39;
  }

LABEL_37:
  v68 = v26;
LABEL_39:

  return v68;
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 withLanguage:(id)a4 withSdapiConfig:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_EARSpeechRecognizer *)self initWithConfiguration:v8];
  v12 = v11;
  if (v11)
  {
    formatterQueue = v11->_formatterQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75___EARSpeechRecognizer_initWithConfiguration_withLanguage_withSdapiConfig___block_invoke;
    block[3] = &unk_1E7C1A488;
    v16 = v11;
    v17 = v9;
    v18 = v10;
    dispatch_async(formatterQueue, block);
  }

  return v12;
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 generalVoc:(id)a6 lexiconEnh:(id)a7 itnEnh:(id)a8 language:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
  v23 = [(_EARSpeechRecognizer *)self initWithConfiguration:v15 overrides:v16 overrideConfigFiles:v17 generalVoc:v18 lexiconEnh:v19 itnEnh:v20 language:v21 activeConfiguration:v22];

  return v23;
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 generalVoc:(id)a6 lexiconEnh:(id)a7 itnEnh:(id)a8 language:(id)a9 activeConfiguration:(id)a10 modelLoadingOptions:(id)a11 enableSpeakerCodeTraining:(BOOL)a12 supportEmojiRecognition:(BOOL)a13 voiceCommandActiveSet:(id)a14 modelContextDelegate:(id)a15
{
  v20 = a3;
  v21 = a4;
  v36 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a14;
  v29 = a15;
  v35 = v22;
  if (v22 && v23 && v24)
  {
    v30 = [_EARQuasarTokenizer extractModelRootFromNcsResourcePaths:v22 lexiconEnh:v23 tokenEnh:0 itnEnh:v24];
  }

  LOBYTE(v34) = 1;
  LOWORD(v33) = __PAIR16__(a13, a12);
  v31 = [(_EARSpeechRecognizer *)self initWithConfiguration:v20 overrides:v21 overrideConfigFiles:v36 language:v25 activeConfiguration:v26 modelLoadingOptions:v27 enableSpeakerCodeTraining:v33 supportEmojiRecognition:v28 voiceCommandActiveSet:v29 modelContextDelegate:v34 enableItn:?];

  return v31;
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 useQuasarFormatter:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
  v8 = [(_EARSpeechRecognizer *)self initWithConfiguration:v6 useQuasarFormatter:v4 activeConfiguration:v7];

  return v8;
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 useQuasarFormatter:(BOOL)a4 activeConfiguration:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(_EARSpeechRecognizer *)self initWithConfiguration:v8 overrides:0 overrideConfigFiles:0 language:0 activeConfiguration:v9];
  if (v10 && v6)
  {
    if (![objc_opt_class() supportedByQuasarConfig:v10->_configPath])
    {
      v12 = 0;
      goto LABEL_7;
    }

    objc_initWeak(&location, v10);
    formatterQueue = v10->_formatterQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85___EARSpeechRecognizer_initWithConfiguration_useQuasarFormatter_activeConfiguration___block_invoke;
    block[3] = &unk_1E7C1A4B0;
    v15 = v10;
    objc_copyWeak(&v16, &location);
    dispatch_async(formatterQueue, block);
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  v12 = v10;
LABEL_7:

  return v12;
}

- (void)loadParser
{
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6(&dword_1B501D000, v1, v2, "Parser initialization std::bad_alloc: %s", v3, v4, v5, v6, v7);
}

- (void)setEnableVoiceCommands:(BOOL)a3
{
  if (a3)
  {
    SysConfig = quasar::SpeechRecognizer::getSysConfig(self->_recognizer.__ptr_);
    quasar::configSupportsVoiceCommands(SysConfig, v4);
  }

  self->_supportVoiceCommands = 0;
  v5 = EARLogger::QuasarOSLogger(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B501D000, v5, OS_LOG_TYPE_INFO, "Voice commands disabled", v6, 2u);
  }
}

- (id)_tokenizer
{
  tokenizer = self->_tokenizer;
  if (!tokenizer)
  {
    v4 = objc_alloc_init(_EARNLTokenizer);
    v5 = self->_tokenizer;
    self->_tokenizer = &v4->super;

    tokenizer = self->_tokenizer;
  }

  return tokenizer;
}

- (void)setHighPriority:(BOOL)a3
{
  self->_highPriority = a3;
  if (a3)
  {
    object = dispatch_workloop_create_inactive("com.apple._EARSpeechRecognizer.recognition.workloop");
    dispatch_workloop_set_scheduler_priority();
    dispatch_set_qos_class_fallback();
    dispatch_activate(object);
    v4 = dispatch_queue_attr_make_initially_inactive(0);
    v5 = dispatch_queue_create("com.apple._EARSpeechRecognizer.recognition", v4);

    dispatch_set_target_queue(v5, object);
    dispatch_set_qos_class_floor(v5, QOS_CLASS_USER_INTERACTIVE, 0);
    dispatch_activate(v5);
    recognitionQueue = self->_recognitionQueue;
    self->_recognitionQueue = v5;

    v7 = object;
  }

  else
  {
    v8 = dispatch_queue_create("com.apple._EARSpeechRecognizer.recognition", 0);
    v7 = self->_recognitionQueue;
    self->_recognitionQueue = v8;
  }
}

- (void)setLeftContextText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 ear_toStringOrNothing];
    if (BYTE8(v19))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    *__p = 0u;
    v19 = 0u;
  }

  v7 = v6;
  if (BYTE8(v19) == 1 && SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v9 = [v7 componentsSeparatedByCharactersInSet:v8];
  if ([v9 count])
  {
    v10 = [v9 lastObject];
  }

  else
  {
    v10 = &stru_1F2D44B60;
  }

  v11 = [MEMORY[0x1E695DF70] array];
  v17 = v11;
  v12 = [(_EARSpeechRecognizer *)self tokenizeText:v10 fromEnd:1 withLimit:4 outTokensInVocab:&v17];
  v13 = v17;

  leftContextForItn = self->_leftContextForItn;
  self->_leftContextForItn = v12;

  [(_EARRelevantTextContext *)self->_relevantTextContext setLeftContext:v7 preItnLeftContext:self->_leftContextForItn];
  [(_EARRelevantTextContext *)self->_relevantTextContext setLeftContextEndsWithAppendedAutoPunctuation:0];
  if ([v13 count] < 5)
  {
    v16 = v13;
  }

  else
  {
    v15 = [v13 subarrayWithRange:{objc_msgSend(v13, "count") - 4, 4}];
    v16 = [v15 mutableCopy];
  }

  [(_EARSpeechRecognizer *)self setLeftContext:v16];
}

- (void)setLeftContext:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  leftContext = self->_leftContext;
  self->_leftContext = v4;

  [(_EARSpeechRecognizer *)self _restartActiveRecognition];
}

- (void)setLeftContextForItn:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_leftContextForItn, a3);
  [(_EARRelevantTextContext *)self->_relevantTextContext setLeftContext:0 preItnLeftContext:self->_leftContextForItn];
  [(_EARRelevantTextContext *)self->_relevantTextContext setLeftContextEndsWithAppendedAutoPunctuation:0];
  [(_EARSpeechRecognizer *)self _restartActiveRecognition];
}

- (void)setRightContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 ear_toStringOrNothing];
    if (BYTE8(v11))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    *__p = 0u;
    v11 = 0u;
  }

  v7 = v6;
  if (BYTE8(v11) == 1 && SBYTE7(v11) < 0)
  {
    operator delete(__p[0]);
  }

  [(_EARSpeechRecognizer *)self splitWithTokenizer:v7 isLeftContext:0 shouldTruncate:1 outTokensInVocab:0, __p[0]];
  std::vector<std::string>::__vdeallocate(&self->_rightContextTokens);
  *&self->_rightContextTokens.__begin_ = *__p;
  self->_rightContextTokens.__cap_ = v11;
  __p[1] = 0;
  *&v11 = 0;
  __p[0] = 0;
  v12 = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  relevantTextContext = self->_relevantTextContext;
  v9 = EARHelpers::VectorToArray<std::string>(&self->_rightContextTokens);
  [(_EARRelevantTextContext *)relevantTextContext setRightContext:v7 preItnRightContext:v9];

  [(_EARSpeechRecognizer *)self _restartActiveRecognition];
}

- (void)setUserProfileData:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  userProfileData = self->_userProfileData;
  self->_userProfileData = v4;

  [(_EARSpeechRecognizer *)self _restartActiveRecognition];
}

- (void)setJitProfileData:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  jitProfileData = self->_jitProfileData;
  self->_jitProfileData = v4;

  [(_EARSpeechRecognizer *)self _restartActiveRecognition];
}

- (void)_setProfileContainers:(id)a3 muxIds:(id)a4
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v56 = a4;
  muxIdMask = self->_muxIdMask;
  self->_muxIdMask = 0;

  muxIdReverseMask = self->_muxIdReverseMask;
  self->_muxIdReverseMask = 0;

  muxIds = self->_muxIds;
  self->_muxIds = 0;

  userProfiles = self->_userProfiles;
  v57 = self;
  self->_userProfiles = 0;

  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v6;
  v11 = [obj countByEnumeratingWithState:&v71 objects:v77 count:{16, v6}];
  if (v11)
  {
    v12 = *v72;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v72 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v71 + 1) + 8 * i);
        if (v14)
        {
          v15 = [*(*(&v71 + 1) + 8 * i) userId];
          v16 = [v15 length] == 0;

          if (v16)
          {
            v17 = v62;
          }

          else
          {
            v17 = v61;
          }

          [(EARHelpers *)v17 addObject:v14];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
    }

    while (v11);
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v20 = v56;
  v21 = [v20 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v21)
  {
    v22 = *v68;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v68 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v67 + 1) + 8 * j);
        if ([v24 length])
        {
          [v19 addObject:v24];
          [v18 addObject:v24];
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v21);
  }

  v25 = [v18 allObjects];
  v59 = EARHelpers::shuffledArray(v25, v26);

  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
  for (k = 0; [v59 count] > k; ++k)
  {
    v29 = [v59 objectAtIndexedSubscript:k];
    v30 = [MEMORY[0x1E696AD98] numberWithInt:k];
    v31 = [v30 stringValue];

    [v27 setObject:v31 forKeyedSubscript:v29];
    [v58 setObject:v29 forKeyedSubscript:v31];
  }

  v32 = [v27 copy];
  v33 = v57->_muxIdMask;
  v57->_muxIdMask = v32;

  v34 = [v58 copy];
  v35 = v57->_muxIdReverseMask;
  v57->_muxIdReverseMask = v34;

  v36 = [(NSDictionary *)v57->_muxIdMask count];
  if (v36 != [(NSDictionary *)v57->_muxIdReverseMask count])
  {
    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    [v51 handleFailureInMethod:a2 object:v57 file:@"EARSpeechRecognizer.mm" lineNumber:4667 description:@"Size mismatch"];
  }

  v55 = EARHelpers::shuffledArray(v61, v37);
  v38 = [v55 arrayByAddingObjectsFromArray:v62];
  v39 = v57->_userProfiles;
  v57->_userProfiles = v38;

  v40 = [(NSArray *)v57->_userProfiles count];
  v41 = [(EARHelpers *)v61 count];
  if (v40 != [(EARHelpers *)v62 count]+ v41)
  {
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    [v52 handleFailureInMethod:a2 object:v57 file:@"EARSpeechRecognizer.mm" lineNumber:4673 description:@"Size mismatch"];
  }

  v42 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v43 = v19;
  v44 = [v43 countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v44)
  {
    v45 = *v64;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v64 != v45)
        {
          objc_enumerationMutation(v43);
        }

        v47 = [v27 objectForKeyedSubscript:*(*(&v63 + 1) + 8 * m)];
        [v42 addObject:v47];
      }

      v44 = [v43 countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v44);
  }

  v48 = [v42 copy];
  v49 = v57->_muxIds;
  v57->_muxIds = v48;

  v50 = [(NSSet *)v57->_muxIds count];
  if (v50 != [v43 count])
  {
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    [v53 handleFailureInMethod:a2 object:v57 file:@"EARSpeechRecognizer.mm" lineNumber:4681 description:@"Size mismatch"];
  }

  [(_EARSpeechRecognizer *)v57 _restartActiveRecognition];
}

- (void)setUserProfile:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v6 = 0;
  }

  [(_EARSpeechRecognizer *)self _setProfileContainers:v6 muxIds:0];
  if (v5)
  {
  }
}

- (void)_testGetMuxIdMask:(id *)a3 muxIdReverseMask:(id *)a4 maskedMuxIds:(id *)a5
{
  if (a3)
  {
    *a3 = [(NSDictionary *)self->_muxIdMask copy];
  }

  if (a4)
  {
    *a4 = [(NSDictionary *)self->_muxIdReverseMask copy];
  }

  if (a5)
  {
    *a5 = [(NSSet *)self->_muxIds copy];
  }
}

- (id)_unmaskMuxPackages:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v6 objectForKeyedSubscript:{v10, v15}];
        v12 = [(NSDictionary *)self->_muxIdReverseMask objectForKeyedSubscript:v10];
        [v5 setObject:v11 forKeyedSubscript:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v5 copy];

  return v13;
}

- (id)runRecognitionWithResultStream:(id)a3
{
  v3 = [(_EARSpeechRecognizer *)self runRecognitionWithResultStream:a3 language:@"en_US" task:@"Dictation" samplingRate:16000];

  return v3;
}

- (void)updateUserProfileData:(id)a3
{
  v4 = a3;
  quasar::LmeDataStreams::LmeDataStreams(&v13);
  if (v4)
  {
    EARHelpers::createNSDataInputStream(v4, v5);
  }

  addAotLmeStreams(&v13, self->_userProfiles, self->_muxIdMask);
  jitProfileData = self->_jitProfileData;
  if (jitProfileData)
  {
    EARHelpers::createNSDataInputStream(jitProfileData, v6);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __46___EARSpeechRecognizer_updateUserProfileData___block_invoke;
  v8[3] = &unk_1F2D040A8;
  v8[4] = self;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<quasar::LmeDataFactoryBase::LmeType>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::LmeType*,quasar::LmeDataFactoryBase::LmeType*>(&v9, v13, v14, (v14 - v13) >> 2);
  std::map<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>::map[abi:ne200100](v12, v15);
  ConvertCXXExceptionToNSException(v8);
  std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy(v12, v12[1]);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy(v15, v15[1]);
  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

- (void)updateJitProfileData:(id)a3
{
  v4 = a3;
  quasar::LmeDataStreams::LmeDataStreams(&v13);
  userProfileData = self->_userProfileData;
  if (userProfileData)
  {
    EARHelpers::createNSDataInputStream(userProfileData, v5);
  }

  addAotLmeStreams(&v13, self->_userProfiles, self->_muxIdMask);
  if (v4)
  {
    EARHelpers::createNSDataInputStream(v4, v7);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __45___EARSpeechRecognizer_updateJitProfileData___block_invoke;
  v8[3] = &unk_1F2D040A8;
  v8[4] = self;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<quasar::LmeDataFactoryBase::LmeType>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::LmeType*,quasar::LmeDataFactoryBase::LmeType*>(&v9, v13, v14, (v14 - v13) >> 2);
  std::map<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>::map[abi:ne200100](v12, v15);
  ConvertCXXExceptionToNSException(v8);
  std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy(v12, v12[1]);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy(v15, v15[1]);
  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

- (id)runRecognitionWithResultStream:(id)a3 language:(id)a4 task:(id)a5 samplingRate:(unint64_t)a6
{
  v6 = [(_EARSpeechRecognizer *)self runRecognitionWithResultStream:a3 language:a4 task:a5 samplingRate:a6 userProfileData:self->_userProfileData speakerCodeWriter:0];

  return v6;
}

- (id)runRecognitionWithResultStream:(id)a3 speakerCodeWriter:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7
{
  v7 = [(_EARSpeechRecognizer *)self runRecognitionWithResultStream:a3 language:a5 task:a6 samplingRate:a7 userProfileData:self->_userProfileData speakerCodeWriter:a4];

  return v7;
}

- (id)runRecognitionWithResultStream:(id)a3 language:(id)a4 task:(id)a5 samplingRate:(unint64_t)a6 userProfileData:(id)a7 speakerCodeWriter:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  WeakRetained = objc_loadWeakRetained(&self->_currentAudioBuffer);
  [WeakRetained _detachFromRecognizer];

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__2;
  v40 = __Block_byref_object_dispose__2;
  v41 = 0;
  v20 = [v15 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __116___EARSpeechRecognizer_runRecognitionWithResultStream_language_task_samplingRate_userProfileData_speakerCodeWriter___block_invoke;
  v28[3] = &unk_1E7C1A4D8;
  v28[4] = self;
  v21 = v20;
  v29 = v21;
  v22 = v14;
  v30 = v22;
  v23 = v16;
  v31 = v23;
  v24 = v18;
  v32 = v24;
  v35 = a6;
  v25 = v17;
  v33 = v25;
  v34 = &v36;
  ConvertCXXExceptionToNSException(v28);
  v26 = v37[5];

  _Block_object_dispose(&v36, 8);

  return v26;
}

- (BOOL)canCloneIsFinalAsLastNonFinal
{
  v3 = [(_EARSpeechRecognizer *)self hasUtteranceDetection];
  result = self->_concatenateUtterances;
  if (!v3)
  {
    return !self->_concatenateUtterances && self->_recognizeEagerCandidates;
  }

  return result;
}

- (void)writeRecordedStateAccesses
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::SpeechRecognizer::writeRecordedStateAccesses(self->_recognizer.__ptr_, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

- (shared_ptr<quasar::RecogAudioBufferBase>)_audioBufferWithLangauge:(id)a3 task:(id)a4 samplingRate:(unint64_t)a5 userProfileData:(id)a6 resultStream:(shared_ptr<quasar::RecogResultStreamBase>)a7
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  a4;
  v18 = a6;
  v11 = [_EARRecognitionMetrics alloc];
  cntrl = self->_recognizer.__cntrl_;
  ptr = self->_recognizer.__ptr_;
  v21 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v13 = [(_EARRecognitionMetrics *)v11 initWithRecognizer:&ptr];
  recognitionMetrics = self->_recognitionMetrics;
  self->_recognitionMetrics = v13;

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  quasar::LmeDataStreams::LmeDataStreams(&v19);
  if (v18)
  {
    EARHelpers::createNSDataInputStream(v18, v15);
  }

  addAotLmeStreams(&v19, self->_userProfiles, self->_muxIdMask);
  jitProfileData = self->_jitProfileData;
  if (jitProfileData)
  {
    EARHelpers::createNSDataInputStream(jitProfileData, v16);
  }

  operator new();
}

- (void)_restartActiveRecognition
{
  WeakRetained = objc_loadWeakRetained(&self->_currentAudioBuffer);
  if (WeakRetained)
  {
    cntrl = self->_currentResultStreamWrapper.__cntrl_;
    if (cntrl)
    {
      cntrl = std::__shared_weak_count::lock(cntrl);
      v5 = cntrl;
      if (cntrl && self->_currentResultStreamWrapper.__ptr_)
      {
        currentLanguage = self->_currentLanguage;
        currentTask = self->_currentTask;
        currentSamplingRate = self->_currentSamplingRate;
        userProfileData = self->_userProfileData;
        ptr = self->_currentResultStreamWrapper.__ptr_;
        v15 = cntrl;
        atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
        [(_EARSpeechRecognizer *)self _audioBufferWithLangauge:currentLanguage task:currentTask samplingRate:currentSamplingRate userProfileData:userProfileData resultStream:&ptr];
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        v12 = *buf;
        v13 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        [WeakRetained _setUnderlyingBuffer:&v12];
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

LABEL_20:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        goto LABEL_21;
      }
    }

    else
    {
      v5 = 0;
    }

    v11 = EARLogger::QuasarOSLogger(cntrl);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v11, OS_LOG_TYPE_INFO, "Result stream wrapper has been deallocated; not restarting recognition", buf, 2u);
    }

    if (v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v10 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v10, OS_LOG_TYPE_INFO, "Audio buffer has been deallocated; not restarting recognition", buf, 2u);
    }
  }

LABEL_21:
}

- (id)recognitionResultsWithAudioData:(id)a3 userProfileData:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_alloc_init(_EARSyncResultStreamHelper);
  v17 = [(_EARSpeechRecognizer *)self runRecognitionWithResultStream:v16 language:v14 task:v15 samplingRate:a7 userProfileData:v13 speakerCodeWriter:0];
  [v17 addAudioSampleData:v12];
  [v17 endAudio];
  [(_EARSyncResultStreamHelper *)v16 waitForCompletion];
  (*(*self->_recognizer.__ptr_ + 32))(self->_recognizer.__ptr_);
  v18 = [(_EARSyncResultStreamHelper *)v16 error];
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = [(_EARSyncResultStreamHelper *)v16 results];
  }

  return v19;
}

- (id)recognitionResultsWithAudioData:(id)a3 userProfileData:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7 extraLanguageModel:(id)a8
{
  v8 = [(_EARSpeechRecognizer *)self recognitionResultsWithAudioData:a3 userProfileData:a4 language:a5 task:a6 samplingRate:a7, a8];

  return v8;
}

- (id)testFormattingWithOneBestResults:(id)a3 uttMillis:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24 = a4;
  v7 = [v6 count];
  if (v7 != [v24 count])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"EARSpeechRecognizer.mm" lineNumber:5134 description:@"Array sizes are not the same"];
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  quasar::RecogResult::RecogResult(v39);
  v8 = [[_EARSyncResultStreamHelper alloc] initWithTagResults:1];
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x4012000000;
  v37[3] = __Block_byref_object_copy__593;
  v37[4] = __Block_byref_object_dispose__594;
  v37[5] = &unk_1B5CADD23;
  v37[6] = 0;
  v38 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __67___EARSpeechRecognizer_testFormattingWithOneBestResults_uttMillis___block_invoke;
  v34[3] = &unk_1E7C1A500;
  v36 = v37;
  v34[4] = self;
  v21 = v8;
  v35 = v21;
  ConvertCXXExceptionToNSException(v34);
  for (i = 0; [v6 count] > i; ++i)
  {
    v10 = [v6 objectAtIndex:i];
    v11 = [v10 count] == 0;

    if (!v11)
    {
      std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
      memset(v32, 0, sizeof(v32));
      v12 = [v6 objectAtIndex:i];
      v13 = [v12 subarrayWithRange:{0, 1}];
      EARHelpers::QuasarResultFromEARSpeechRecognitionTokens(v13, buf);
      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v32, buf);
      v31 = buf;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v31);

      *buf = 0;
      std::allocate_shared[abi:ne200100]<quasar::RunAsyncParams,std::allocator<quasar::RunAsyncParams>,decltype(nullptr),0>();
    }
  }

  [(_EARSyncResultStreamHelper *)v21 waitForCompletion];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [(_EARSyncResultStreamHelper *)v21 taggedResults];
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v15)
  {
    v16 = *v27;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [*(*(&v26 + 1) + 8 * j) tokens];
        [v25 addObject:v18];
      }

      v15 = [v14 countByEnumeratingWithState:&v26 objects:v40 count:16];
    }

    while (v15);
  }

  v22 = v25;
  _Block_object_dispose(v37, 8);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  quasar::RecogResult::~RecogResult(v39);

  return v22;
}

- (BOOL)isContinuousListening
{
  v3 = [(_EARSpeechRecognizer *)self hasUtteranceDetection];
  concatenateUtterances = self->_concatenateUtterances;
  allowUtteranceDelay = self->_allowUtteranceDelay;
  formatAcrossUtterances = self->_formatAcrossUtterances;

  return quasar::isContinuousListening(v3, concatenateUtterances, allowUtteranceDelay, formatAcrossUtterances);
}

- (unsigned)itnEnablingFlags
{
  if (self->_disableAutoPunctuation)
  {
    return -2;
  }

  else
  {
    return -1;
  }
}

+ (id)rawTokenResultsFromRecognitionResults:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v15;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:{16, v15}];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [v7 tokens];
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = *v18;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = [*(*(&v17 + 1) + 8 * j) tokenName];
              [v8 addObject:v13];
            }

            v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v10);
        }

        [v3 addObject:v8];
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  return v3;
}

+ (BOOL)compileRecognizerModels2WithConfiguration:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 1;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v8 = v4;
    std::string::basic_string[abi:ne200100]<0>(buf, [v4 fileSystemRepresentation]);
    std::string::basic_string[abi:ne200100]<0>(&__p, ".mlmodelc");
    getModelFilesWithSuffix();
  }

  v9 = EARLogger::QuasarOSLogger(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B501D000, v9, OS_LOG_TYPE_DEFAULT, "Error file sent for compilation does not exist. Not compiling.", buf, 2u);
  }

  v10 = EARErrorWithCode(100, @"Error file sent for compilation does not exist. Not compiling.");
  EARSetError(a4, v10);

  _Block_object_dispose(v14, 8);
  return 0;
}

+ (void)purgeCompiledRecognizerModelsWithConfiguration:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    std::string::basic_string[abi:ne200100]<0>(buf, [v3 fileSystemRepresentation]);
    std::string::basic_string[abi:ne200100]<0>(&__p, ".mlmodelc");
    getModelFilesWithSuffix();
  }

  v7 = EARLogger::QuasarOSLogger(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B501D000, v7, OS_LOG_TYPE_DEFAULT, "Error file sent for purge does not exist. Not purging.", buf, 2u);
  }
}

- (void)cancelRecognition
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41___EARSpeechRecognizer_cancelRecognition__block_invoke;
  v2[3] = &unk_1E7C1A550;
  v2[4] = self;
  ConvertCXXExceptionToNSException(v2);
}

- (void)_waitForAsyncRecogToFinish
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50___EARSpeechRecognizer__waitForAsyncRecogToFinish__block_invoke;
  v2[3] = &unk_1E7C1A550;
  v2[4] = self;
  ConvertCXXExceptionToNSException(v2);
}

- (void)interruptTraining
{
  v3 = EARLogger::QuasarOSLogger(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B501D000, v3, OS_LOG_TYPE_INFO, "Got interrupt signal, going to interrupt training if training is enabled and still running.", buf, 2u);
  }

  if (self->_training.__ptr_)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __41___EARSpeechRecognizer_interruptTraining__block_invoke;
    v4[3] = &unk_1E7C1A550;
    v4[4] = self;
    ConvertCXXExceptionToNSException(v4);
  }
}

- (id)recognitionStatistics
{
  v18[0] = 0;
  v18[1] = 0;
  v16[1] = 0;
  v17 = v18;
  v15 = v16;
  v16[0] = 0;
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  (*(*self->_recognizer.__ptr_ + 48))(self->_recognizer.__ptr_, &v17, &v15, &v13, &v11);
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = v17;
  if (v17 != v18)
  {
    do
    {
      v4 = [MEMORY[0x1E696AD98] numberWithDouble:*(v3 + 7)];
      v5 = v3 + 4;
      if (*(v3 + 55) < 0)
      {
        v5 = *v5;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
      [v2 setObject:v4 forKeyedSubscript:v6];

      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v18);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v15, v16[0]);
  std::__tree<std::string>::destroy(&v17, v18[0]);

  return v2;
}

- (id)recognitionUtterenceStatistics
{
  v19[0] = 0;
  v19[1] = 0;
  v17[1] = 0;
  v18 = v19;
  v16 = v17;
  v17[0] = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  (*(*self->_recognizer.__ptr_ + 48))(self->_recognizer.__ptr_, &v18, &v16, &v14, &v12);
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = v16;
  if (v16 != v17)
  {
    do
    {
      v4 = v3 + 7;
      if (*(v3 + 79) < 0)
      {
        v4 = *v4;
      }

      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
      v6 = v3 + 4;
      if (*(v3 + 55) < 0)
      {
        v6 = *v6;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
      [v2 setObject:v5 forKeyedSubscript:v7];

      v8 = v3[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v3[2];
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v17);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v16, v17[0]);
  std::__tree<std::string>::destroy(&v18, v19[0]);

  return v2;
}

- (id)recognitionUtteranceInfos
{
  quasar::SpeechRecognizer::getUttInfos(self->_recognizer.__ptr_, v5);
  if (v5[0] == v5[1])
  {
    v2 = 0;
  }

  else
  {
    quasar::UttInfo::ptreeBatch(v5, v4);
    v2 = EARHelpers::arrayFromPTree(v4, 1);
    quasar::PTree::~PTree(v4);
  }

  v4[0] = v5;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](v4);

  return v2;
}

- (void)getFormatterWithBlock:(id)a3
{
  v4 = a3;
  formatterQueue = self->_formatterQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46___EARSpeechRecognizer_getFormatterWithBlock___block_invoke;
  v7[3] = &unk_1E7C1A578;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(formatterQueue, v7);
}

- (void)setActiveConfiguration:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47___EARSpeechRecognizer_setActiveConfiguration___block_invoke;
  v6[3] = &unk_1E7C1A5C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  ConvertCXXExceptionToNSException(v6);
}

- (BOOL)isSpeakerCodeTrainingSupported:(id)a3
{
  v4 = a3;
  v5 = v4;
  ptr = self->_training.__ptr_;
  if (ptr)
  {
    if (v4)
    {
      [v4 ear_toString];
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v9 = 0;
    }

    LOBYTE(ptr) = quasar::SpeakerCodeTraining::isTaskSupported(ptr, __p);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return ptr;
}

- (BOOL)isVadGatingSupported:(unint64_t)a3 task:(id)a4 device:(id)a5 farField:(BOOL)a6 atypicalSpeech:(BOOL)a7 aneContext:(id)a8 cpuContext:(id)a9 gpuContext:(id)a10
{
  v11 = a7;
  v12 = a6;
  v14 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  ptr = self->_recognizer.__ptr_;
  if (v16)
  {
    [v16 ear_toString];
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28[0] = 0;
    v28[1] = 0;
    v29 = 0;
    if (v17)
    {
LABEL_3:
      [v17 ear_toString];
      if (v18)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  memset(&v27, 0, sizeof(v27));
  if (v18)
  {
LABEL_4:
    [v18 ear_toString];
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_10:
    memset(&v25, 0, sizeof(v25));
    if (v20)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  memset(&v26, 0, sizeof(v26));
  if (!v19)
  {
    goto LABEL_10;
  }

LABEL_5:
  [v19 ear_toString];
  if (v20)
  {
LABEL_6:
    [v20 ear_toString];
    goto LABEL_12;
  }

LABEL_11:
  memset(&__p, 0, sizeof(__p));
LABEL_12:
  isVadGatingSupported = quasar::SpeechRecognizer::isVadGatingSupported(ptr, v14, v28, &v27, v12, v11, &v26, &v25, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  return isVadGatingSupported;
}

- (id)activeConfiguration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43___EARSpeechRecognizer_activeConfiguration__block_invoke;
  v4[3] = &unk_1E7C1A5E8;
  v4[4] = self;
  v4[5] = &v5;
  ConvertCXXExceptionToNSException(v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setAlternateRawRecognitionTokenSausage:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
  v15 = [obj countByEnumeratingWithState:&v22 objects:v48 count:16];
  if (v15)
  {
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v22 + 1) + 8 * i);
        memset(v21, 0, sizeof(v21));
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v19 = v3;
        v4 = [v19 countByEnumeratingWithState:&v27 objects:v49 count:16];
        if (v4)
        {
          v5 = *v28;
          do
          {
            for (j = 0; j != v4; ++j)
            {
              if (*v28 != v5)
              {
                objc_enumerationMutation(v19);
              }

              v7 = *(*(&v27 + 1) + 8 * j);
              memset(v26, 0, sizeof(v26));
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v8 = v7;
              v9 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
              if (v9)
              {
                v10 = *v44;
                do
                {
                  for (k = 0; k != v9; ++k)
                  {
                    if (*v44 != v10)
                    {
                      objc_enumerationMutation(v8);
                    }

                    v12 = *(*(&v43 + 1) + 8 * k);
                    v13 = v12;
                    if (v12)
                    {
                      [v12 quasarToken];
                    }

                    else
                    {
                      v41 = 0u;
                      v42 = 0u;
                      v39 = 0u;
                      *__p = 0u;
                      *v38 = 0u;
                      *v36 = 0u;
                      memset(v37, 0, sizeof(v37));
                      memset(v35, 0, sizeof(v35));
                      v33 = 0u;
                      *v34 = 0u;
                      *v31 = 0u;
                      v32 = 0u;
                    }

                    std::vector<quasar::Token>::push_back[abi:ne200100](v26, v31);
                    if (SBYTE7(v41) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (SBYTE7(v39) < 0)
                    {
                      operator delete(v38[0]);
                    }

                    v47 = v37 + 1;
                    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v47);
                    if (SBYTE7(v37[0]) < 0)
                    {
                      operator delete(v36[0]);
                    }

                    v47 = v35 + 1;
                    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v47);
                    if (SBYTE7(v35[0]) < 0)
                    {
                      operator delete(v34[0]);
                    }

                    if (SBYTE7(v32) < 0)
                    {
                      operator delete(v31[0]);
                    }
                  }

                  v9 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
                }

                while (v9);
              }

              std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v21, v26);
              v31[0] = v26;
              std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v31);
            }

            v4 = [v19 countByEnumeratingWithState:&v27 objects:v49 count:16];
          }

          while (v4);
        }

        std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](v20, v21);
        v31[0] = v21;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v31);
      }

      v15 = [obj countByEnumeratingWithState:&v22 objects:v48 count:16];
    }

    while (v15);
  }

  (*(*self->_recognizer.__ptr_ + 56))(self->_recognizer.__ptr_, v20, 3);
  v31[0] = v20;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](v31);
}

- (shared_ptr<quasar::SpeechRecognizer>)getRecognizer
{
  cntrl = self->_recognizer.__cntrl_;
  *v2 = self->_recognizer.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<quasar::corrective_reranking::Parser>)getParser
{
  cntrl = self->_parser.__cntrl_;
  *v2 = self->_parser.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)requestEagerResult:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        ptr = self->_recognizer.__ptr_;
        [*(*(&v10 + 1) + 8 * v7) doubleValue];
        quasar::SpeechRecognizer::requestEagerResult(ptr, (v9 * 1000.0));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)resumeRecognitionWithLeftContext:(id)a3 rightContext:(id)a4 selectedText:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 || ([v8 ear_toStringOrNothing], (v39 & 1) == 0))
  {
    [(_EARSpeechRecognizer *)self resumeRecognitionWithLeftContext:&stru_1F2D44B60 rightContext:v9 selectedText:v10];
    goto LABEL_25;
  }

  if (v38 < 0)
  {
    operator delete(__p[0]);
    if (!v9)
    {
LABEL_24:
      [(_EARSpeechRecognizer *)self resumeRecognitionWithLeftContext:v8 rightContext:&stru_1F2D44B60 selectedText:v10];
      goto LABEL_25;
    }
  }

  else if (!v9)
  {
    goto LABEL_24;
  }

  [v9 ear_toStringOrNothing];
  if ((v39 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  objc_initWeak(&location, self);
  formatterQueue = self->_formatterQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83___EARSpeechRecognizer_resumeRecognitionWithLeftContext_rightContext_selectedText___block_invoke;
  block[3] = &unk_1E7C1A610;
  objc_copyWeak(&v29, &location);
  dispatch_async(formatterQueue, block);
  v12 = [MEMORY[0x1E695DF70] array];
  v26 = v12;
  [(_EARSpeechRecognizer *)self splitWithTokenizer:v8 isLeftContext:1 shouldTruncate:1 outTokensInVocab:&v26];
  v23 = v26;

  [(_EARSpeechRecognizer *)self splitWithTokenizer:v9 isLeftContext:0 shouldTruncate:1 outTokensInVocab:0];
  v13 = v23;
  memset(v24, 0, sizeof(v24));
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v33 objects:__p count:16];
  if (v15)
  {
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        v19 = v18;
        if (v18)
        {
          [v18 ear_toString];
        }

        else
        {
          v31 = 0uLL;
          v32 = 0;
        }

        std::vector<std::string>::push_back[abi:ne200100](v24, &v31);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(v31);
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v33 objects:__p count:16];
    }

    while (v15);
  }

  relevantTextContext = self->_relevantTextContext;
  v21 = EARHelpers::VectorToArray<std::string>(v27);
  v22 = EARHelpers::VectorToArray<std::string>(v25);
  [(_EARRelevantTextContext *)relevantTextContext setLeftContext:v8 rightContext:v9 preItnLeftContext:v21 preItnRightContext:v22];

  [(_EARRelevantTextContext *)self->_relevantTextContext setLeftContextEndsWithAppendedAutoPunctuation:0];
  [(_EARRelevantTextContext *)self->_relevantTextContext setFavorCommandSuppression:0];
  [(_EARRelevantTextContext *)self->_relevantTextContext setAbortCommandSuppression:0];
  -[_EARRelevantTextContext setUtteranceStartedWithSelectedText:](self->_relevantTextContext, "setUtteranceStartedWithSelectedText:", [v10 length] != 0);
  quasar::SpeechRecognizer::resumeRecognition(self->_recognizer.__ptr_, v24, v27, v25, 0);
  __p[0] = v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
LABEL_25:
}

- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10
{
  v23 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (v18)
  {
    -[_EARRelevantTextContext setDisambiguationActive:](self->_relevantTextContext, "setDisambiguationActive:", [v18 BOOLValue]);
  }

  if (v19)
  {
    -[_EARRelevantTextContext setCursorInVisibleText:](self->_relevantTextContext, "setCursorInVisibleText:", [v19 BOOLValue]);
  }

  if (v20)
  {
    -[_EARRelevantTextContext setFavorCommandSuppression:](self->_relevantTextContext, "setFavorCommandSuppression:", [v20 BOOLValue]);
  }

  if (v21)
  {
    -[_EARRelevantTextContext setAbortCommandSuppression:](self->_relevantTextContext, "setAbortCommandSuppression:", [v21 BOOLValue]);
    if ([v21 BOOLValue])
    {
      [(_EARRelevantTextContext *)self->_relevantTextContext setFavorCommandSuppression:0];
    }
  }

  if (v22 && [v22 BOOLValue])
  {
    [(_EARRelevantTextContext *)self->_relevantTextContext notifyUndoEventFromClient];
  }
}

- (id)tokenizeText:(id)a3 fromEnd:(BOOL)a4 withLimit:(unint64_t)a5 outTokensInVocab:(id *)a6
{
  v8 = a4;
  v77 = *MEMORY[0x1E69E9840];
  v48 = a3;
  context = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x1E696AE30] processInfo];
  [v10 systemUptime];
  v12 = v11;

  if ([v48 length])
  {
    v13 = [(_EARSpeechRecognizer *)self _tokenizer];
    v47 = [v13 tokenize:v48 limit:a5 fromEnd:v8];

    if (!a6)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v47 = 0;
    if (!a6)
    {
      goto LABEL_27;
    }
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v14 = [v47 reverseObjectEnumerator];
  v15 = [v14 countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v15)
  {
    v16 = *v73;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v73 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v72 + 1) + 8 * i);
        v19 = v18;
        ptr = self->_recognizer.__ptr_;
        if (v18)
        {
          [v18 ear_toString];
        }

        else
        {
          __p = 0;
          v70 = 0;
          v71 = 0;
        }

        quasar::SpeechRecognizer::findWord(ptr, &__p, v52);
        if (SHIBYTE(v71) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v53) < 0)
        {
          v21 = v52[0];
          if (!v52[1])
          {
            operator delete(v52[0]);
LABEL_25:

            goto LABEL_26;
          }
        }

        else
        {
          if (!BYTE7(v53))
          {
            goto LABEL_25;
          }

          v21 = v52;
        }

        v22 = *a6;
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
        [v22 insertObject:v23 atIndex:0];

        if (SBYTE7(v53) < 0)
        {
          operator delete(v52[0]);
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v72 objects:v76 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

LABEL_27:
  v24 = [MEMORY[0x1E696AE30] processInfo];
  [v24 systemUptime];
  v26 = v25;

  v27 = quasar::gLogLevel;
  if (quasar::gLogLevel >= 6)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    *v52 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "Tokenized text: ", 17);
    if (v48)
    {
      [v48 ear_toString];
      v29 = HIBYTE(v71);
      v31 = __p;
      v30 = v70;
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v29 = 0;
      __p = 0;
      v70 = 0;
      v71 = 0;
    }

    if ((v29 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = v31;
    }

    if ((v29 & 0x80u) == 0)
    {
      v33 = v29;
    }

    else
    {
      v33 = v30;
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, p_p, v33);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " to ", 6);
    v36 = [v47 componentsJoinedByString:{@", "}];
    v37 = v36;
    if (v36)
    {
      [v36 ear_toString];
      v38 = HIBYTE(v51);
      v40 = v49;
      v39 = v50;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v38 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
    }

    if ((v38 & 0x80u) == 0)
    {
      v41 = &v49;
    }

    else
    {
      v41 = v40;
    }

    if ((v38 & 0x80u) == 0)
    {
      v42 = v38;
    }

    else
    {
      v42 = v39;
    }

    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v41, v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "", 1);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v49);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(__p);
    }

    quasar::QuasarTraceMessage::~QuasarTraceMessage(v52);
    v27 = quasar::gLogLevel;
  }

  if (v27 >= 4)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    *v52 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "Tokenization duration:", 22);
    MEMORY[0x1B8C84BE0](v44, v26 - v12);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v52);
  }

  objc_autoreleasePoolPop(context);

  return v47;
}

- (vector<std::string,)splitWithTokenizer:(_EARSpeechRecognizer *)self outTokensInVocab:(SEL)a3 isLeftContext:(id)a4
{
  v6 = a6;
  v26[16] = *MEMORY[0x1E69E9840];
  v10 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  if ([v10 length])
  {
    [(_EARSpeechRecognizer *)self tokenizeText:v10 fromEnd:v6 withLimit:4 outTokensInVocab:a5];
    v19 = 0;
    v18 = 0uLL;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v25 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = v15;
          if (v15)
          {
            [v15 ear_toString];
          }

          else
          {
            __p = 0uLL;
            v21 = 0;
          }

          std::vector<std::string>::push_back[abi:ne200100](&v18, &__p);
          if (SHIBYTE(v21) < 0)
          {
            operator delete(__p);
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    std::vector<std::string>::__vdeallocate(retstr);
    *&retstr->__begin_ = v18;
    retstr->__cap_ = v19;
    v19 = 0;
    v18 = 0uLL;
    v26[0] = &v18;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v26);
  }

  return result;
}

- (vector<std::string,)splitWithTokenizer:(_EARSpeechRecognizer *)self isLeftContext:(SEL)a3 shouldTruncate:(id)a4 outTokensInVocab:(BOOL)a5
{
  v8 = a6;
  v9 = a5;
  v11 = a4;
  v16 = v11;
  if (v8)
  {
    v12 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v13 = [v16 componentsSeparatedByCharactersInSet:v12];
    v14 = &stru_1F2D44B60;
    if ([v13 count])
    {
      if (v9)
      {
        [v13 lastObject];
      }

      else
      {
        [v13 firstObject];
      }
      v14 = ;
    }

    [(_EARSpeechRecognizer *)self splitWithTokenizer:v14 outTokensInVocab:a7 isLeftContext:v9];
  }

  else
  {
    [(_EARSpeechRecognizer *)self splitWithTokenizer:v11 outTokensInVocab:a7 isLeftContext:v9];
  }

  return result;
}

- (void)_audioBufferWithLangauge:(int)a1 task:(std::__shared_weak_count *)a2 samplingRate:userProfileData:resultStream:.cold.3(int a1, std::__shared_weak_count **a2)
{
  _Block_object_dispose(a2, 8);
  v3 = a2[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

+ (void)compileRecognizerModels2WithConfiguration:error:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1B501D000, v1, v2, "Exception (...): %s", v3, v4, v5, v6, v7);
}

+ (void)compileRecognizerModels2WithConfiguration:(uint64_t *)a3 error:.cold.4(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v3 = *a1;
  *a3 = a1;
  (*(v3 + 16))();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1B501D000, v4, v5, "Exception (...): %s", v6, v7, v8, v9, v10);
}

@end