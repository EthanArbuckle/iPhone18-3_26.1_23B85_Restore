@interface _EARLanguageDetectorV2
+ (void)initialize;
- (_EARLanguageDetectorV2)initWithConfigFile:(id)file useNNVad:(BOOL)vad;
- (_EARLanguageDetectorV2Delegate)lidDelegate;
- (id)earLIDScores:(void *)scores;
- (id)languageDetectorV2Result:(id)result;
- (id)startRequestWithSamplingRate:(unint64_t)rate context:(id)context delegate:(id)delegate;
- (id)startRequestWithSamplingRate:(unint64_t)rate requestOptions:(id)options delegate:(id)delegate;
- (void)_startComputeTask;
- (void)dealloc;
@end

@implementation _EARLanguageDetectorV2

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARLanguageDetectorV2)initWithConfigFile:(id)file useNNVad:(BOOL)vad
{
  fileCopy = file;
  v23.receiver = self;
  v23.super_class = _EARLanguageDetectorV2;
  v6 = [(_EARLanguageDetectorV2 *)&v23 init];
  if (v6)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [defaultManager fileExistsAtPath:fileCopy];

    if (v8)
    {
      if (fileCopy)
      {
        [fileCopy ear_toString];
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v19 = 0;
      }

      memset(v22, 0, sizeof(v22));
      memset(v20, 0, sizeof(v20));
      v21 = 1065353216;
      JsonFile = quasar::SystemConfig::readJsonFile(&v6->_sysConfig, __p, v22, v20, 0, 0);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v20);
      v24 = v22;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      if (JsonFile != 2)
      {
        v14 = dispatch_queue_create("com.apple._EARLanguageDetectorV2", 0);
        lidQueue = v6->_lidQueue;
        v6->_lidQueue = v14;

        std::string::basic_string[abi:ne200100]<0>(__p, "ld-inference");
        quasar::SystemConfig::enforceMinVersion(&v6->_sysConfig, 207, 0, __p);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }

        quasar::LanguageDetectorV2::languageIdV2Configuration(&v6->_sysConfig, v16);
      }

      v10 = EARLogger::QuasarOSLogger(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_EARLanguageDetectorV2 initWithConfigFile:v10 useNNVad:?];
      }
    }

    else
    {
      v10 = EARLogger::QuasarOSLogger(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_EARLanguageDetectorV2 initWithConfigFile:fileCopy useNNVad:v10];
      }
    }

    v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)dealloc
{
  selfCopy = self;
  ptr = self->_audioProcessor.__ptr_;
  if (ptr)
  {
    self = (*(**ptr + 32))(*ptr, a2);
  }

  v4 = EARLogger::QuasarOSLogger(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B501D000, v4, OS_LOG_TYPE_INFO, "dealloc", buf, 2u);
  }

  v5.receiver = selfCopy;
  v5.super_class = _EARLanguageDetectorV2;
  [(_EARLanguageDetectorV2 *)&v5 dealloc];
}

- (id)startRequestWithSamplingRate:(unint64_t)rate requestOptions:(id)options delegate:(id)delegate
{
  rateCopy = rate;
  optionsCopy = options;
  delegateCopy = delegate;
  v9 = EARLogger::QuasarOSLogger(delegateCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_1B501D000, v9, OS_LOG_TYPE_INFO, "Start new request", __p, 2u);
  }

  ptr = self->_audioProcessor.__ptr_;
  if (ptr)
  {
    (*(**ptr + 32))();
  }

  objc_storeWeak(&self->_lidDelegate, delegateCopy);
  v15 = -1;
  v14 = 0;
  v13 = 0;
  _ZNSt3__115allocate_sharedB8ne200100IKN5kaldi5TimerENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

- (id)startRequestWithSamplingRate:(unint64_t)rate context:(id)context delegate:(id)delegate
{
  delegateCopy = delegate;
  v8 = objc_alloc_init(_EARLanguageDetectorV2RequestOptions);
  v9 = [(_EARLanguageDetectorV2 *)self startRequestWithSamplingRate:rate requestOptions:v8 delegate:delegateCopy];

  return v9;
}

- (id)earLIDScores:(void *)scores
{
  *&v6 = kaldi::VectorBase<float>::ApplySoftMax(scores, v3);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  for (i = 0; [(NSArray *)self->_supportedLocales count]> i; ++i)
  {
    LODWORD(v9) = *(*scores + 4 * i);
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    v11 = [(NSArray *)self->_supportedLocales objectAtIndexedSubscript:i];
    [dictionary setObject:v10 forKeyedSubscript:v11];
  }

  return dictionary;
}

- (id)languageDetectorV2Result:(id)result
{
  resultCopy = result;
  v5 = objc_alloc_init(_EARLanguageDetectorV2Result);
  [(_EARLanguageDetectorV2Result *)v5 setConfidences:resultCopy];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = &stru_1F2D44B60;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___EARLanguageDetectorV2_languageDetectorV2Result___block_invoke;
  v7[3] = &unk_1E7C1AAA0;
  v7[4] = &v15;
  v7[5] = v14;
  v7[6] = &v8;
  [resultCopy enumerateKeysAndObjectsUsingBlock:v7];
  [(_EARLanguageDetectorV2Result *)v5 setDetectedLanguage:v16[3] > self->_englishThreshold];
  [(_EARLanguageDetectorV2Result *)v5 setDominantLocale:v9[5]];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

- (void)_startComputeTask
{
  ptr = self->_audioProcessor.__ptr_;
  cntrl = self->_audioProcessor.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  objc_initWeak(&location, self);
  lidQueue = self->_lidQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __43___EARLanguageDetectorV2__startComputeTask__block_invoke;
  block[3] = &unk_1F2D0D070;
  v7[1] = ptr;
  v8 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  objc_copyWeak(v7, &location);
  block[4] = self;
  dispatch_async(lidQueue, block);
  objc_destroyWeak(v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  objc_destroyWeak(&location);
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (_EARLanguageDetectorV2Delegate)lidDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lidDelegate);

  return WeakRetained;
}

- (void)initWithConfigFile:(uint64_t)a1 useNNVad:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B501D000, a2, OS_LOG_TYPE_ERROR, "Config file does not exist at %@", &v2, 0xCu);
}

@end