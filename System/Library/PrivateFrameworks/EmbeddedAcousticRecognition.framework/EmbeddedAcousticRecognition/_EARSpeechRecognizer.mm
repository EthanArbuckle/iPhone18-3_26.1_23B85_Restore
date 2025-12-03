@interface _EARSpeechRecognizer
+ (BOOL)compileRecognizerModels2WithConfiguration:(id)configuration error:(id *)error;
+ (id)rawTokenResultsFromRecognitionResults:(id)results;
+ (void)initialize;
+ (void)purgeCompiledRecognizerModelsWithConfiguration:(id)configuration;
- (BOOL)canCloneIsFinalAsLastNonFinal;
- (BOOL)isContinuousListening;
- (BOOL)isSpeakerCodeTrainingSupported:(id)supported;
- (BOOL)isVadGatingSupported:(unint64_t)supported task:(id)task device:(id)device farField:(BOOL)field atypicalSpeech:(BOOL)speech aneContext:(id)context cpuContext:(id)cpuContext gpuContext:(id)self0;
- (_EARSpeechRecognizer)initWithConfig:(id)config overrides:(id)overrides overrideConfigFiles:(id)files language:(id)language activeConfiguration:(id)configuration modelLoadingOptions:(id)options enableSpeakerCodeTraining:(BOOL)training supportEmojiRecognition:(BOOL)self0 voiceCommandActiveSet:(id)self1 modelContextDelegate:(id)self2 enableItn:(BOOL)self3 error:(id *)self4;
- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files;
- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files generalVoc:(id)voc lexiconEnh:(id)enh itnEnh:(id)itnEnh language:(id)language;
- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files generalVoc:(id)voc lexiconEnh:(id)enh itnEnh:(id)itnEnh language:(id)language activeConfiguration:(id)self0 modelLoadingOptions:(id)self1 enableSpeakerCodeTraining:(BOOL)self2 supportEmojiRecognition:(BOOL)self3 voiceCommandActiveSet:(id)self4 modelContextDelegate:(id)self5;
- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files language:(id)language;
- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files language:(id)language activeConfiguration:(id)activeConfiguration modelLoadingOptions:(id)options enableSpeakerCodeTraining:(BOOL)training supportEmojiRecognition:(BOOL)self0 voiceCommandActiveSet:(id)self1 modelContextDelegate:(id)self2;
- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files language:(id)language activeConfiguration:(id)activeConfiguration modelLoadingOptions:(id)options enableSpeakerCodeTraining:(BOOL)training supportEmojiRecognition:(BOOL)self0 voiceCommandActiveSet:(id)self1 modelContextDelegate:(id)self2 enableItn:(BOOL)self3;
- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration useQuasarFormatter:(BOOL)formatter;
- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration useQuasarFormatter:(BOOL)formatter activeConfiguration:(id)activeConfiguration;
- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration withLanguage:(id)language withSdapiConfig:(id)config;
- (id).cxx_construct;
- (id)_tokenizer;
- (id)_unmaskMuxPackages:(id)packages;
- (id)activeConfiguration;
- (id)recognitionResultsWithAudioData:(id)data userProfileData:(id)profileData language:(id)language task:(id)task samplingRate:(unint64_t)rate;
- (id)recognitionResultsWithAudioData:(id)data userProfileData:(id)profileData language:(id)language task:(id)task samplingRate:(unint64_t)rate extraLanguageModel:(id)model;
- (id)recognitionStatistics;
- (id)recognitionUtteranceInfos;
- (id)recognitionUtterenceStatistics;
- (id)runRecognitionWithResultStream:(id)stream;
- (id)runRecognitionWithResultStream:(id)stream language:(id)language task:(id)task samplingRate:(unint64_t)rate;
- (id)runRecognitionWithResultStream:(id)stream language:(id)language task:(id)task samplingRate:(unint64_t)rate userProfileData:(id)data speakerCodeWriter:(id)writer;
- (id)runRecognitionWithResultStream:(id)stream speakerCodeWriter:(id)writer language:(id)language task:(id)task samplingRate:(unint64_t)rate;
- (id)testFormattingWithOneBestResults:(id)results uttMillis:(id)millis;
- (id)tokenizeText:(id)text fromEnd:(BOOL)end withLimit:(unint64_t)limit outTokensInVocab:(id *)vocab;
- (shared_ptr<quasar::RecogAudioBufferBase>)_audioBufferWithLangauge:(id)langauge task:(id)task samplingRate:(unint64_t)rate userProfileData:(id)data resultStream:(shared_ptr<quasar::RecogResultStreamBase>)stream;
- (shared_ptr<quasar::SpeechRecognizer>)getRecognizer;
- (shared_ptr<quasar::corrective_reranking::Parser>)getParser;
- (unsigned)itnEnablingFlags;
- (vector<std::string,)splitWithTokenizer:(_EARSpeechRecognizer *)self isLeftContext:(SEL)context shouldTruncate:(id)truncate outTokensInVocab:(BOOL)vocab;
- (vector<std::string,)splitWithTokenizer:(_EARSpeechRecognizer *)self outTokensInVocab:(SEL)vocab isLeftContext:(id)context;
- (void)_restartActiveRecognition;
- (void)_setProfileContainers:(id)containers muxIds:(id)ids;
- (void)_testGetMuxIdMask:(id *)mask muxIdReverseMask:(id *)reverseMask maskedMuxIds:(id *)ids;
- (void)_waitForAsyncRecogToFinish;
- (void)cancelRecognition;
- (void)getFormatterWithBlock:(id)block;
- (void)interruptTraining;
- (void)loadParser;
- (void)requestEagerResult:(id)result;
- (void)resumeRecognitionWithLeftContext:(id)context rightContext:(id)rightContext selectedText:(id)text;
- (void)setActiveConfiguration:(id)configuration;
- (void)setAlternateRawRecognitionTokenSausage:(id)sausage;
- (void)setEnableVoiceCommands:(BOOL)commands;
- (void)setHighPriority:(BOOL)priority;
- (void)setJitProfileData:(id)data;
- (void)setLeftContext:(id)context;
- (void)setLeftContextForItn:(id)itn;
- (void)setLeftContextText:(id)text;
- (void)setRightContext:(id)context;
- (void)setUserProfile:(id)profile;
- (void)setUserProfileData:(id)data;
- (void)updateJitProfileData:(id)data;
- (void)updateUserProfileData:(id)data;
- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0;
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
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files
{
  configurationCopy = configuration;
  overridesCopy = overrides;
  filesCopy = files;
  v11 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
  v12 = [(_EARSpeechRecognizer *)self initWithConfiguration:configurationCopy overrides:overridesCopy overrideConfigFiles:filesCopy language:0 activeConfiguration:v11];

  return v12;
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files language:(id)language
{
  configurationCopy = configuration;
  overridesCopy = overrides;
  filesCopy = files;
  languageCopy = language;
  v14 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
  v15 = [(_EARSpeechRecognizer *)self initWithConfiguration:configurationCopy overrides:overridesCopy overrideConfigFiles:filesCopy language:languageCopy activeConfiguration:v14];

  return v15;
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files language:(id)language activeConfiguration:(id)activeConfiguration modelLoadingOptions:(id)options enableSpeakerCodeTraining:(BOOL)training supportEmojiRecognition:(BOOL)self0 voiceCommandActiveSet:(id)self1 modelContextDelegate:(id)self2
{
  LOBYTE(v14) = 0;
  LOWORD(v13) = __PAIR16__(recognition, training);
  return [(_EARSpeechRecognizer *)self initWithConfiguration:configuration overrides:overrides overrideConfigFiles:files language:language activeConfiguration:activeConfiguration modelLoadingOptions:options enableSpeakerCodeTraining:v13 supportEmojiRecognition:set voiceCommandActiveSet:delegate modelContextDelegate:v14 enableItn:?];
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files language:(id)language activeConfiguration:(id)activeConfiguration modelLoadingOptions:(id)options enableSpeakerCodeTraining:(BOOL)training supportEmojiRecognition:(BOOL)self0 voiceCommandActiveSet:(id)self1 modelContextDelegate:(id)self2 enableItn:(BOOL)self3
{
  LOBYTE(v15) = itn;
  LOWORD(v14) = __PAIR16__(recognition, training);
  return [(_EARSpeechRecognizer *)self initWithConfig:configuration overrides:overrides overrideConfigFiles:files language:language activeConfiguration:activeConfiguration modelLoadingOptions:options enableSpeakerCodeTraining:v14 supportEmojiRecognition:set voiceCommandActiveSet:delegate modelContextDelegate:v15 enableItn:0 error:?];
}

- (_EARSpeechRecognizer)initWithConfig:(id)config overrides:(id)overrides overrideConfigFiles:(id)files language:(id)language activeConfiguration:(id)configuration modelLoadingOptions:(id)options enableSpeakerCodeTraining:(BOOL)training supportEmojiRecognition:(BOOL)self0 voiceCommandActiveSet:(id)self1 modelContextDelegate:(id)self2 enableItn:(BOOL)self3 error:(id *)self4
{
  configCopy = config;
  overridesCopy = overrides;
  filesCopy = files;
  languageCopy = language;
  configurationCopy = configuration;
  optionsCopy = options;
  delegateCopy = delegate;
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
  v77 = languageCopy;
  [filesCopy enumerateObjectsUsingBlock:v105];
  v33 = [configCopy copy];
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
  v26->_enableSpeakerCodeTraining = training;
  v26->_vadGatingLevel = 0;
  v26->_segmentationLatency = 2;
  taskBiasingSymbols = v26->_taskBiasingSymbols;
  v26->_taskBiasingSymbols = &stru_1F2D44B60;

  v102.i64[0] = 0;
  v102.i64[1] = &v102;
  v103 = 0x2020000000;
  v104 = 0;
  if (delegateCopy)
  {
    operator new();
  }

  if (!configCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v26 file:@"EARSpeechRecognizer.mm" lineNumber:4031 description:&stru_1F2D44B60];
  }

  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __227___EARSpeechRecognizer_initWithConfig_overrides_overrideConfigFiles_language_activeConfiguration_modelLoadingOptions_enableSpeakerCodeTraining_supportEmojiRecognition_voiceCommandActiveSet_modelContextDelegate_enableItn_error___block_invoke_2;
  v93[3] = &unk_1E7C1A438;
  v42 = v26;
  v94 = v42;
  v43 = configCopy;
  v101 = 86400;
  v95 = v43;
  v99 = v106;
  v96 = overridesCopy;
  v100 = &v102;
  v97 = configurationCopy;
  v98 = optionsCopy;
  v44 = MEMORY[0x1B8C868A0](v93);
  v45 = v44;
  if (error)
  {
    if ((ConvertCXXExceptionToNSError(v44) & 1) == 0)
    {
      v46 = 0;
      languageCopy = v77;
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

      trainingSpeakerCode = [(_EARSpeakerCodeInfo *)v42->_speakerCodeInfo trainingSpeakerCode];
      if ([trainingSpeakerCode length])
      {
        inferenceSpeakerCode = [(_EARSpeakerCodeInfo *)v42->_speakerCodeInfo inferenceSpeakerCode];
        if ([inferenceSpeakerCode length])
        {
          accumulatedGradient = [(_EARSpeakerCodeInfo *)v42->_speakerCodeInfo accumulatedGradient];
          v71 = [accumulatedGradient length];

          if (v71)
          {
            trainingSpeakerCode2 = [(_EARSpeakerCodeInfo *)v42->_speakerCodeInfo trainingSpeakerCode];
            if (trainingSpeakerCode2)
            {
              [trainingSpeakerCode2 ear_toString];
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

    if (itn)
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
        v83 = filesCopy;
        recognitionCopy = recognition;
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
  EARSetError(error, v50);

LABEL_35:
  languageCopy = v77;
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

- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration withLanguage:(id)language withSdapiConfig:(id)config
{
  configurationCopy = configuration;
  languageCopy = language;
  configCopy = config;
  v11 = [(_EARSpeechRecognizer *)self initWithConfiguration:configurationCopy];
  v12 = v11;
  if (v11)
  {
    formatterQueue = v11->_formatterQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75___EARSpeechRecognizer_initWithConfiguration_withLanguage_withSdapiConfig___block_invoke;
    block[3] = &unk_1E7C1A488;
    v16 = v11;
    v17 = languageCopy;
    v18 = configCopy;
    dispatch_async(formatterQueue, block);
  }

  return v12;
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files generalVoc:(id)voc lexiconEnh:(id)enh itnEnh:(id)itnEnh language:(id)language
{
  configurationCopy = configuration;
  overridesCopy = overrides;
  filesCopy = files;
  vocCopy = voc;
  enhCopy = enh;
  itnEnhCopy = itnEnh;
  languageCopy = language;
  v22 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
  v23 = [(_EARSpeechRecognizer *)self initWithConfiguration:configurationCopy overrides:overridesCopy overrideConfigFiles:filesCopy generalVoc:vocCopy lexiconEnh:enhCopy itnEnh:itnEnhCopy language:languageCopy activeConfiguration:v22];

  return v23;
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files generalVoc:(id)voc lexiconEnh:(id)enh itnEnh:(id)itnEnh language:(id)language activeConfiguration:(id)self0 modelLoadingOptions:(id)self1 enableSpeakerCodeTraining:(BOOL)self2 supportEmojiRecognition:(BOOL)self3 voiceCommandActiveSet:(id)self4 modelContextDelegate:(id)self5
{
  configurationCopy = configuration;
  overridesCopy = overrides;
  filesCopy = files;
  vocCopy = voc;
  enhCopy = enh;
  itnEnhCopy = itnEnh;
  languageCopy = language;
  activeConfigurationCopy = activeConfiguration;
  optionsCopy = options;
  setCopy = set;
  delegateCopy = delegate;
  v35 = vocCopy;
  if (vocCopy && enhCopy && itnEnhCopy)
  {
    v30 = [_EARQuasarTokenizer extractModelRootFromNcsResourcePaths:vocCopy lexiconEnh:enhCopy tokenEnh:0 itnEnh:itnEnhCopy];
  }

  LOBYTE(v34) = 1;
  LOWORD(v33) = __PAIR16__(recognition, training);
  v31 = [(_EARSpeechRecognizer *)self initWithConfiguration:configurationCopy overrides:overridesCopy overrideConfigFiles:filesCopy language:languageCopy activeConfiguration:activeConfigurationCopy modelLoadingOptions:optionsCopy enableSpeakerCodeTraining:v33 supportEmojiRecognition:setCopy voiceCommandActiveSet:delegateCopy modelContextDelegate:v34 enableItn:?];

  return v31;
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration useQuasarFormatter:(BOOL)formatter
{
  formatterCopy = formatter;
  configurationCopy = configuration;
  v7 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
  v8 = [(_EARSpeechRecognizer *)self initWithConfiguration:configurationCopy useQuasarFormatter:formatterCopy activeConfiguration:v7];

  return v8;
}

- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration useQuasarFormatter:(BOOL)formatter activeConfiguration:(id)activeConfiguration
{
  formatterCopy = formatter;
  configurationCopy = configuration;
  activeConfigurationCopy = activeConfiguration;
  v10 = [(_EARSpeechRecognizer *)self initWithConfiguration:configurationCopy overrides:0 overrideConfigFiles:0 language:0 activeConfiguration:activeConfigurationCopy];
  if (v10 && formatterCopy)
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

- (void)setEnableVoiceCommands:(BOOL)commands
{
  if (commands)
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

- (void)setHighPriority:(BOOL)priority
{
  self->_highPriority = priority;
  if (priority)
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

- (void)setLeftContextText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (textCopy)
  {
    [textCopy ear_toStringOrNothing];
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

  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v9 = [v7 componentsSeparatedByCharactersInSet:newlineCharacterSet];
  if ([v9 count])
  {
    lastObject = [v9 lastObject];
  }

  else
  {
    lastObject = &stru_1F2D44B60;
  }

  array = [MEMORY[0x1E695DF70] array];
  v17 = array;
  v12 = [(_EARSpeechRecognizer *)self tokenizeText:lastObject fromEnd:1 withLimit:4 outTokensInVocab:&v17];
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

- (void)setLeftContext:(id)context
{
  contextCopy = context;
  v4 = [contextCopy copy];
  leftContext = self->_leftContext;
  self->_leftContext = v4;

  [(_EARSpeechRecognizer *)self _restartActiveRecognition];
}

- (void)setLeftContextForItn:(id)itn
{
  itnCopy = itn;
  objc_storeStrong(&self->_leftContextForItn, itn);
  [(_EARRelevantTextContext *)self->_relevantTextContext setLeftContext:0 preItnLeftContext:self->_leftContextForItn];
  [(_EARRelevantTextContext *)self->_relevantTextContext setLeftContextEndsWithAppendedAutoPunctuation:0];
  [(_EARSpeechRecognizer *)self _restartActiveRecognition];
}

- (void)setRightContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    [contextCopy ear_toStringOrNothing];
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

- (void)setUserProfileData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy copy];
  userProfileData = self->_userProfileData;
  self->_userProfileData = v4;

  [(_EARSpeechRecognizer *)self _restartActiveRecognition];
}

- (void)setJitProfileData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy copy];
  jitProfileData = self->_jitProfileData;
  self->_jitProfileData = v4;

  [(_EARSpeechRecognizer *)self _restartActiveRecognition];
}

- (void)_setProfileContainers:(id)containers muxIds:(id)ids
{
  v78 = *MEMORY[0x1E69E9840];
  containersCopy = containers;
  idsCopy = ids;
  muxIdMask = self->_muxIdMask;
  self->_muxIdMask = 0;

  muxIdReverseMask = self->_muxIdReverseMask;
  self->_muxIdReverseMask = 0;

  muxIds = self->_muxIds;
  self->_muxIds = 0;

  userProfiles = self->_userProfiles;
  selfCopy = self;
  self->_userProfiles = 0;

  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = containersCopy;
  v11 = [obj countByEnumeratingWithState:&v71 objects:v77 count:{16, containersCopy}];
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
          userId = [*(*(&v71 + 1) + 8 * i) userId];
          v16 = [userId length] == 0;

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
  v20 = idsCopy;
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

  allObjects = [v18 allObjects];
  v59 = EARHelpers::shuffledArray(allObjects, v26);

  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
  for (k = 0; [v59 count] > k; ++k)
  {
    v29 = [v59 objectAtIndexedSubscript:k];
    v30 = [MEMORY[0x1E696AD98] numberWithInt:k];
    stringValue = [v30 stringValue];

    [v27 setObject:stringValue forKeyedSubscript:v29];
    [v58 setObject:v29 forKeyedSubscript:stringValue];
  }

  v32 = [v27 copy];
  v33 = selfCopy->_muxIdMask;
  selfCopy->_muxIdMask = v32;

  v34 = [v58 copy];
  v35 = selfCopy->_muxIdReverseMask;
  selfCopy->_muxIdReverseMask = v34;

  v36 = [(NSDictionary *)selfCopy->_muxIdMask count];
  if (v36 != [(NSDictionary *)selfCopy->_muxIdReverseMask count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"EARSpeechRecognizer.mm" lineNumber:4667 description:@"Size mismatch"];
  }

  v55 = EARHelpers::shuffledArray(v61, v37);
  v38 = [v55 arrayByAddingObjectsFromArray:v62];
  v39 = selfCopy->_userProfiles;
  selfCopy->_userProfiles = v38;

  v40 = [(NSArray *)selfCopy->_userProfiles count];
  v41 = [(EARHelpers *)v61 count];
  if (v40 != [(EARHelpers *)v62 count]+ v41)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"EARSpeechRecognizer.mm" lineNumber:4673 description:@"Size mismatch"];
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
  v49 = selfCopy->_muxIds;
  selfCopy->_muxIds = v48;

  v50 = [(NSSet *)selfCopy->_muxIds count];
  if (v50 != [v43 count])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"EARSpeechRecognizer.mm" lineNumber:4681 description:@"Size mismatch"];
  }

  [(_EARSpeechRecognizer *)selfCopy _restartActiveRecognition];
}

- (void)setUserProfile:(id)profile
{
  v7[1] = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  v5 = profileCopy;
  if (profileCopy)
  {
    v7[0] = profileCopy;
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

- (void)_testGetMuxIdMask:(id *)mask muxIdReverseMask:(id *)reverseMask maskedMuxIds:(id *)ids
{
  if (mask)
  {
    *mask = [(NSDictionary *)self->_muxIdMask copy];
  }

  if (reverseMask)
  {
    *reverseMask = [(NSDictionary *)self->_muxIdReverseMask copy];
  }

  if (ids)
  {
    *ids = [(NSSet *)self->_muxIds copy];
  }
}

- (id)_unmaskMuxPackages:(id)packages
{
  v20 = *MEMORY[0x1E69E9840];
  packagesCopy = packages;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = packagesCopy;
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

- (id)runRecognitionWithResultStream:(id)stream
{
  v3 = [(_EARSpeechRecognizer *)self runRecognitionWithResultStream:stream language:@"en_US" task:@"Dictation" samplingRate:16000];

  return v3;
}

- (void)updateUserProfileData:(id)data
{
  dataCopy = data;
  quasar::LmeDataStreams::LmeDataStreams(&v13);
  if (dataCopy)
  {
    EARHelpers::createNSDataInputStream(dataCopy, v5);
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

- (void)updateJitProfileData:(id)data
{
  dataCopy = data;
  quasar::LmeDataStreams::LmeDataStreams(&v13);
  userProfileData = self->_userProfileData;
  if (userProfileData)
  {
    EARHelpers::createNSDataInputStream(userProfileData, v5);
  }

  addAotLmeStreams(&v13, self->_userProfiles, self->_muxIdMask);
  if (dataCopy)
  {
    EARHelpers::createNSDataInputStream(dataCopy, v7);
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

- (id)runRecognitionWithResultStream:(id)stream language:(id)language task:(id)task samplingRate:(unint64_t)rate
{
  v6 = [(_EARSpeechRecognizer *)self runRecognitionWithResultStream:stream language:language task:task samplingRate:rate userProfileData:self->_userProfileData speakerCodeWriter:0];

  return v6;
}

- (id)runRecognitionWithResultStream:(id)stream speakerCodeWriter:(id)writer language:(id)language task:(id)task samplingRate:(unint64_t)rate
{
  v7 = [(_EARSpeechRecognizer *)self runRecognitionWithResultStream:stream language:language task:task samplingRate:rate userProfileData:self->_userProfileData speakerCodeWriter:writer];

  return v7;
}

- (id)runRecognitionWithResultStream:(id)stream language:(id)language task:(id)task samplingRate:(unint64_t)rate userProfileData:(id)data speakerCodeWriter:(id)writer
{
  streamCopy = stream;
  languageCopy = language;
  taskCopy = task;
  dataCopy = data;
  writerCopy = writer;
  WeakRetained = objc_loadWeakRetained(&self->_currentAudioBuffer);
  [WeakRetained _detachFromRecognizer];

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__2;
  v40 = __Block_byref_object_dispose__2;
  v41 = 0;
  v20 = [languageCopy stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __116___EARSpeechRecognizer_runRecognitionWithResultStream_language_task_samplingRate_userProfileData_speakerCodeWriter___block_invoke;
  v28[3] = &unk_1E7C1A4D8;
  v28[4] = self;
  v21 = v20;
  v29 = v21;
  v22 = streamCopy;
  v30 = v22;
  v23 = taskCopy;
  v31 = v23;
  v24 = writerCopy;
  v32 = v24;
  rateCopy = rate;
  v25 = dataCopy;
  v33 = v25;
  v34 = &v36;
  ConvertCXXExceptionToNSException(v28);
  v26 = v37[5];

  _Block_object_dispose(&v36, 8);

  return v26;
}

- (BOOL)canCloneIsFinalAsLastNonFinal
{
  hasUtteranceDetection = [(_EARSpeechRecognizer *)self hasUtteranceDetection];
  result = self->_concatenateUtterances;
  if (!hasUtteranceDetection)
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

- (shared_ptr<quasar::RecogAudioBufferBase>)_audioBufferWithLangauge:(id)langauge task:(id)task samplingRate:(unint64_t)rate userProfileData:(id)data resultStream:(shared_ptr<quasar::RecogResultStreamBase>)stream
{
  v22 = *MEMORY[0x1E69E9840];
  langaugeCopy = langauge;
  task;
  dataCopy = data;
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
  if (dataCopy)
  {
    EARHelpers::createNSDataInputStream(dataCopy, v15);
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

- (id)recognitionResultsWithAudioData:(id)data userProfileData:(id)profileData language:(id)language task:(id)task samplingRate:(unint64_t)rate
{
  dataCopy = data;
  profileDataCopy = profileData;
  languageCopy = language;
  taskCopy = task;
  v16 = objc_alloc_init(_EARSyncResultStreamHelper);
  v17 = [(_EARSpeechRecognizer *)self runRecognitionWithResultStream:v16 language:languageCopy task:taskCopy samplingRate:rate userProfileData:profileDataCopy speakerCodeWriter:0];
  [v17 addAudioSampleData:dataCopy];
  [v17 endAudio];
  [(_EARSyncResultStreamHelper *)v16 waitForCompletion];
  (*(*self->_recognizer.__ptr_ + 32))(self->_recognizer.__ptr_);
  error = [(_EARSyncResultStreamHelper *)v16 error];
  if (error)
  {
    results = 0;
  }

  else
  {
    results = [(_EARSyncResultStreamHelper *)v16 results];
  }

  return results;
}

- (id)recognitionResultsWithAudioData:(id)data userProfileData:(id)profileData language:(id)language task:(id)task samplingRate:(unint64_t)rate extraLanguageModel:(id)model
{
  model = [(_EARSpeechRecognizer *)self recognitionResultsWithAudioData:data userProfileData:profileData language:language task:task samplingRate:rate, model];

  return model;
}

- (id)testFormattingWithOneBestResults:(id)results uttMillis:(id)millis
{
  v41 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  millisCopy = millis;
  v7 = [resultsCopy count];
  if (v7 != [millisCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EARSpeechRecognizer.mm" lineNumber:5134 description:@"Array sizes are not the same"];
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
  for (i = 0; [resultsCopy count] > i; ++i)
  {
    v10 = [resultsCopy objectAtIndex:i];
    v11 = [v10 count] == 0;

    if (!v11)
    {
      std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
      memset(v32, 0, sizeof(v32));
      v12 = [resultsCopy objectAtIndex:i];
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
  taggedResults = [(_EARSyncResultStreamHelper *)v21 taggedResults];
  v15 = [taggedResults countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v15)
  {
    v16 = *v27;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(taggedResults);
        }

        tokens = [*(*(&v26 + 1) + 8 * j) tokens];
        [v25 addObject:tokens];
      }

      v15 = [taggedResults countByEnumeratingWithState:&v26 objects:v40 count:16];
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
  hasUtteranceDetection = [(_EARSpeechRecognizer *)self hasUtteranceDetection];
  concatenateUtterances = self->_concatenateUtterances;
  allowUtteranceDelay = self->_allowUtteranceDelay;
  formatAcrossUtterances = self->_formatAcrossUtterances;

  return quasar::isContinuousListening(hasUtteranceDetection, concatenateUtterances, allowUtteranceDelay, formatAcrossUtterances);
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

+ (id)rawTokenResultsFromRecognitionResults:(id)results
{
  v27 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = resultsCopy;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:{16, resultsCopy}];
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
        tokens = [v7 tokens];
        v10 = [tokens countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = *v18;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(tokens);
              }

              tokenName = [*(*(&v17 + 1) + 8 * j) tokenName];
              [v8 addObject:tokenName];
            }

            v10 = [tokens countByEnumeratingWithState:&v17 objects:v25 count:16];
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

+ (BOOL)compileRecognizerModels2WithConfiguration:(id)configuration error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 1;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:configurationCopy];

  if (v6)
  {
    v8 = configurationCopy;
    std::string::basic_string[abi:ne200100]<0>(buf, [configurationCopy fileSystemRepresentation]);
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
  EARSetError(error, v10);

  _Block_object_dispose(v14, 8);
  return 0;
}

+ (void)purgeCompiledRecognizerModelsWithConfiguration:(id)configuration
{
  v10 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:configurationCopy];

  if (v5)
  {
    std::string::basic_string[abi:ne200100]<0>(buf, [configurationCopy fileSystemRepresentation]);
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

- (void)getFormatterWithBlock:(id)block
{
  blockCopy = block;
  formatterQueue = self->_formatterQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46___EARSpeechRecognizer_getFormatterWithBlock___block_invoke;
  v7[3] = &unk_1E7C1A578;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(formatterQueue, v7);
}

- (void)setActiveConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47___EARSpeechRecognizer_setActiveConfiguration___block_invoke;
  v6[3] = &unk_1E7C1A5C0;
  v6[4] = self;
  v7 = configurationCopy;
  v5 = configurationCopy;
  ConvertCXXExceptionToNSException(v6);
}

- (BOOL)isSpeakerCodeTrainingSupported:(id)supported
{
  supportedCopy = supported;
  v5 = supportedCopy;
  ptr = self->_training.__ptr_;
  if (ptr)
  {
    if (supportedCopy)
    {
      [supportedCopy ear_toString];
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

- (BOOL)isVadGatingSupported:(unint64_t)supported task:(id)task device:(id)device farField:(BOOL)field atypicalSpeech:(BOOL)speech aneContext:(id)context cpuContext:(id)cpuContext gpuContext:(id)self0
{
  speechCopy = speech;
  fieldCopy = field;
  supportedCopy = supported;
  taskCopy = task;
  deviceCopy = device;
  contextCopy = context;
  cpuContextCopy = cpuContext;
  gpuContextCopy = gpuContext;
  ptr = self->_recognizer.__ptr_;
  if (taskCopy)
  {
    [taskCopy ear_toString];
    if (deviceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28[0] = 0;
    v28[1] = 0;
    v29 = 0;
    if (deviceCopy)
    {
LABEL_3:
      [deviceCopy ear_toString];
      if (contextCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  memset(&v27, 0, sizeof(v27));
  if (contextCopy)
  {
LABEL_4:
    [contextCopy ear_toString];
    if (cpuContextCopy)
    {
      goto LABEL_5;
    }

LABEL_10:
    memset(&v25, 0, sizeof(v25));
    if (gpuContextCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  memset(&v26, 0, sizeof(v26));
  if (!cpuContextCopy)
  {
    goto LABEL_10;
  }

LABEL_5:
  [cpuContextCopy ear_toString];
  if (gpuContextCopy)
  {
LABEL_6:
    [gpuContextCopy ear_toString];
    goto LABEL_12;
  }

LABEL_11:
  memset(&__p, 0, sizeof(__p));
LABEL_12:
  isVadGatingSupported = quasar::SpeechRecognizer::isVadGatingSupported(ptr, supportedCopy, v28, &v27, fieldCopy, speechCopy, &v26, &v25, &__p);
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

- (void)setAlternateRawRecognitionTokenSausage:(id)sausage
{
  v51 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = sausage;
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

- (void)requestEagerResult:(id)result
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  resultCopy = result;
  v5 = [resultCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(resultCopy);
        }

        ptr = self->_recognizer.__ptr_;
        [*(*(&v10 + 1) + 8 * v7) doubleValue];
        quasar::SpeechRecognizer::requestEagerResult(ptr, (v9 * 1000.0));
        ++v7;
      }

      while (v5 != v7);
      v5 = [resultCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)resumeRecognitionWithLeftContext:(id)context rightContext:(id)rightContext selectedText:(id)text
{
  v40 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  rightContextCopy = rightContext;
  textCopy = text;
  if (!contextCopy || ([contextCopy ear_toStringOrNothing], (v39 & 1) == 0))
  {
    [(_EARSpeechRecognizer *)self resumeRecognitionWithLeftContext:&stru_1F2D44B60 rightContext:rightContextCopy selectedText:textCopy];
    goto LABEL_25;
  }

  if (v38 < 0)
  {
    operator delete(__p[0]);
    if (!rightContextCopy)
    {
LABEL_24:
      [(_EARSpeechRecognizer *)self resumeRecognitionWithLeftContext:contextCopy rightContext:&stru_1F2D44B60 selectedText:textCopy];
      goto LABEL_25;
    }
  }

  else if (!rightContextCopy)
  {
    goto LABEL_24;
  }

  [rightContextCopy ear_toStringOrNothing];
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
  array = [MEMORY[0x1E695DF70] array];
  v26 = array;
  [(_EARSpeechRecognizer *)self splitWithTokenizer:contextCopy isLeftContext:1 shouldTruncate:1 outTokensInVocab:&v26];
  v23 = v26;

  [(_EARSpeechRecognizer *)self splitWithTokenizer:rightContextCopy isLeftContext:0 shouldTruncate:1 outTokensInVocab:0];
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
  [(_EARRelevantTextContext *)relevantTextContext setLeftContext:contextCopy rightContext:rightContextCopy preItnLeftContext:v21 preItnRightContext:v22];

  [(_EARRelevantTextContext *)self->_relevantTextContext setLeftContextEndsWithAppendedAutoPunctuation:0];
  [(_EARRelevantTextContext *)self->_relevantTextContext setFavorCommandSuppression:0];
  [(_EARRelevantTextContext *)self->_relevantTextContext setAbortCommandSuppression:0];
  -[_EARRelevantTextContext setUtteranceStartedWithSelectedText:](self->_relevantTextContext, "setUtteranceStartedWithSelectedText:", [textCopy length] != 0);
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

- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0
{
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  if (activeCopy)
  {
    -[_EARRelevantTextContext setDisambiguationActive:](self->_relevantTextContext, "setDisambiguationActive:", [activeCopy BOOLValue]);
  }

  if (visibleTextCopy)
  {
    -[_EARRelevantTextContext setCursorInVisibleText:](self->_relevantTextContext, "setCursorInVisibleText:", [visibleTextCopy BOOLValue]);
  }

  if (suppressionCopy)
  {
    -[_EARRelevantTextContext setFavorCommandSuppression:](self->_relevantTextContext, "setFavorCommandSuppression:", [suppressionCopy BOOLValue]);
  }

  if (commandSuppressionCopy)
  {
    -[_EARRelevantTextContext setAbortCommandSuppression:](self->_relevantTextContext, "setAbortCommandSuppression:", [commandSuppressionCopy BOOLValue]);
    if ([commandSuppressionCopy BOOLValue])
    {
      [(_EARRelevantTextContext *)self->_relevantTextContext setFavorCommandSuppression:0];
    }
  }

  if (eventCopy && [eventCopy BOOLValue])
  {
    [(_EARRelevantTextContext *)self->_relevantTextContext notifyUndoEventFromClient];
  }
}

- (id)tokenizeText:(id)text fromEnd:(BOOL)end withLimit:(unint64_t)limit outTokensInVocab:(id *)vocab
{
  endCopy = end;
  v77 = *MEMORY[0x1E69E9840];
  textCopy = text;
  context = objc_autoreleasePoolPush();
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v12 = v11;

  if ([textCopy length])
  {
    _tokenizer = [(_EARSpeechRecognizer *)self _tokenizer];
    v47 = [_tokenizer tokenize:textCopy limit:limit fromEnd:endCopy];

    if (!vocab)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v47 = 0;
    if (!vocab)
    {
      goto LABEL_27;
    }
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  reverseObjectEnumerator = [v47 reverseObjectEnumerator];
  v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v15)
  {
    v16 = *v73;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v73 != v16)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
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

        v22 = *vocab;
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
        [v22 insertObject:v23 atIndex:0];

        if (SBYTE7(v53) < 0)
        {
          operator delete(v52[0]);
        }
      }

      v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v72 objects:v76 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

LABEL_27:
  processInfo2 = [MEMORY[0x1E696AE30] processInfo];
  [processInfo2 systemUptime];
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
    if (textCopy)
    {
      [textCopy ear_toString];
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

- (vector<std::string,)splitWithTokenizer:(_EARSpeechRecognizer *)self outTokensInVocab:(SEL)vocab isLeftContext:(id)context
{
  v6 = a6;
  v26[16] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  if ([contextCopy length])
  {
    [(_EARSpeechRecognizer *)self tokenizeText:contextCopy fromEnd:v6 withLimit:4 outTokensInVocab:a5];
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

- (vector<std::string,)splitWithTokenizer:(_EARSpeechRecognizer *)self isLeftContext:(SEL)context shouldTruncate:(id)truncate outTokensInVocab:(BOOL)vocab
{
  v8 = a6;
  vocabCopy = vocab;
  truncateCopy = truncate;
  v16 = truncateCopy;
  if (v8)
  {
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v13 = [v16 componentsSeparatedByCharactersInSet:newlineCharacterSet];
    v14 = &stru_1F2D44B60;
    if ([v13 count])
    {
      if (vocabCopy)
      {
        [v13 lastObject];
      }

      else
      {
        [v13 firstObject];
      }
      v14 = ;
    }

    [(_EARSpeechRecognizer *)self splitWithTokenizer:v14 outTokensInVocab:a7 isLeftContext:vocabCopy];
  }

  else
  {
    [(_EARSpeechRecognizer *)self splitWithTokenizer:truncateCopy outTokensInVocab:a7 isLeftContext:vocabCopy];
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