@interface EARPSRAudioProcessor
+ (void)initialize;
- (EARPSRAudioProcessor)initWithConfigFile:(id)file configRoot:(id)root sampleRate:(unint64_t)rate delegate:(id)delegate;
- (EARPSRAudioProcessor)initWithConfigFile:(id)file configRoot:(id)root sampleRate:(unint64_t)rate delegate:(id)delegate queue:(id)queue;
- (EARPSRAudioProcessorDelegate)delegate;
- (id).cxx_construct;
- (void)_startComputeTask;
- (void)addAudio:(id)audio;
- (void)dealloc;
- (void)endAudio;
- (void)resetForNewRequest;
@end

@implementation EARPSRAudioProcessor

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = os_log_create("com.apple.ear", "EARPSRAudioProcessor");
    v3 = earPSRLog;
    earPSRLog = v2;
  }
}

- (EARPSRAudioProcessor)initWithConfigFile:(id)file configRoot:(id)root sampleRate:(unint64_t)rate delegate:(id)delegate
{
  v11 = dispatch_get_global_queue(2, 0);
  v12 = [(EARPSRAudioProcessor *)self initWithConfigFile:file configRoot:root sampleRate:rate delegate:delegate queue:v11];

  return v12;
}

- (EARPSRAudioProcessor)initWithConfigFile:(id)file configRoot:(id)root sampleRate:(unint64_t)rate delegate:(id)delegate queue:(id)queue
{
  v35 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  rootCopy = root;
  delegateCopy = delegate;
  queueCopy = queue;
  v31.receiver = self;
  v31.super_class = EARPSRAudioProcessor;
  v16 = [(EARPSRAudioProcessor *)&v31 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_17;
  }

  v16->_sampleRate = rate;
  objc_storeStrong(&v16->_configRoot, root);
  objc_storeWeak(&v17->_delegate, delegateCopy);
  objc_storeStrong(&v17->_queue, queue);
  v17->_batchSize = 1;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v19 = [defaultManager fileExistsAtPath:fileCopy];

  if (v19)
  {
    if (fileCopy)
    {
      [fileCopy ear_toString];
    }

    else
    {
      __p = 0uLL;
      v34 = 0;
    }

    memset(v30, 0, sizeof(v30));
    memset(v28, 0, sizeof(v28));
    v29 = 1065353216;
    JsonFile = quasar::SystemConfig::readJsonFile(&v17->_sysConfig, &__p, v30, v28, 0, 0);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v28);
    v32 = v30;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }

    HIBYTE(v34) = 3;
    LODWORD(__p) = 7500656;
    quasar::SystemConfig::enforceMinVersion(&v17->_sysConfig, 62, 0, &__p);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }

    if (JsonFile == 2)
    {
      v25 = earPSRLog;
      if (os_log_type_enabled(earPSRLog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        v21 = "PSR: ERR: AudioProcessorPipeline created with incorrect version";
        v22 = v25;
        v23 = 2;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

LABEL_17:
    v26 = v17;
    goto LABEL_18;
  }

  v20 = earPSRLog;
  if (os_log_type_enabled(earPSRLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p) = 138412290;
    *(&__p + 4) = fileCopy;
    v21 = "PSR: EARAudioProcessor Config file does not exist at %@";
    v22 = v20;
    v23 = 12;
LABEL_15:
    _os_log_impl(&dword_1B501D000, v22, OS_LOG_TYPE_DEFAULT, v21, &__p, v23);
  }

LABEL_16:
  v26 = 0;
LABEL_18:

  return v26;
}

- (void)addAudio:(id)audio
{
  audioCopy = audio;
  quasar::PSRAudioProcessor::addAudio(self->_audioProcessor.__ptr_, [audioCopy bytes], objc_msgSend(audioCopy, "length") >> 1);
}

- (void)endAudio
{
  v3 = earPSRLog;
  if (os_log_type_enabled(earPSRLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B501D000, v3, OS_LOG_TYPE_DEFAULT, "endAudio", v4, 2u);
  }

  (*(**self->_audioProcessor.__ptr_ + 32))(*self->_audioProcessor.__ptr_);
}

- (void)resetForNewRequest
{
  v3 = earPSRLog;
  if (os_log_type_enabled(earPSRLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_1B501D000, v3, OS_LOG_TYPE_DEFAULT, "resetForNewRequest", __p, 2u);
  }

  ptr = self->_audioProcessor.__ptr_;
  if (ptr)
  {
    (*(**ptr + 32))();
  }

  configRoot = self->_configRoot;
  if (configRoot)
  {
    [(NSString *)configRoot ear_toString];
  }

  else
  {
    memset(__p, 0, 24);
  }

  std::allocate_shared[abi:ne200100]<quasar::PSRAudioProcessor,std::allocator<quasar::PSRAudioProcessor>,quasar::SystemConfig &,std::string,unsigned long &,0>();
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
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __41__EARPSRAudioProcessor__startComputeTask__block_invoke;
  block[3] = &unk_1F2D0D070;
  v7[1] = ptr;
  v8 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  objc_copyWeak(v7, &location);
  block[4] = self;
  dispatch_async(queue, block);
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

void __41__EARPSRAudioProcessor__startComputeTask__block_invoke(uint64_t a1)
{
  v2 = (*(**(*(a1 + 48) + 16) + 8))(*(*(a1 + 48) + 16));
  v3 = quasar::PSRAudioProcessor::frameDurationMs(*(a1 + 48));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v26 = [WeakRetained delegate];

  v5 = [MEMORY[0x1E696AE30] processInfo];
  [v5 systemUptime];
  v7 = v6;

  v8 = 0;
  v9 = 0;
  do
  {
    kaldi::Matrix<float>::Matrix(buf, *(*(a1 + 32) + 1616), v2, 0, 0);
    v10 = quasar::PSRAudioProcessor::compute(*(a1 + 48), buf);
    if (kaldi::MatrixBase<float>::NumRows(buf) >= 1)
    {
      v11 = kaldi::MatrixBase<float>::NumRows(buf);
      v12 = kaldi::MatrixBase<float>::NumRows(buf);
      v13 = *buf;
      v14 = v28;
      kaldi::MatrixBase<float>::NumCols(buf);
      v15 = [MEMORY[0x1E695DEF0] dataWithBytes:v13 + 4 * v14 * (v12 - 1) length:4 * kaldi::MatrixBase<float>::NumCols(buf)];

      v16 = [MEMORY[0x1E696AE30] processInfo];
      [v16 systemUptime];
      v18 = v17;
      v8 += v11 * v3;

      if (v18 - v7 > 0.100000001)
      {
        v19 = v10;
      }

      else
      {
        v19 = 0;
      }

      if (v19 == 1)
      {
        v20 = [MEMORY[0x1E696AE30] processInfo];
        [v20 systemUptime];
        v7 = v21;

        if (objc_opt_respondsToSelector())
        {
          v22 = objc_loadWeakRetained((a1 + 40));
          [v26 psrAudioProcessor:v22 hasSpeakerVector:v15 speakerVectorSize:kaldi::MatrixBase<float>::NumCols(buf) processedAudioDurationMs:v8];
        }
      }

      v9 = v15;
    }

    kaldi::Matrix<float>::~Matrix(buf);
  }

  while ((v10 & 1) != 0);
  if (objc_opt_respondsToSelector())
  {
    v23 = objc_loadWeakRetained((a1 + 40));
    [v26 psrAudioProcessor:v23 hasResult:v9 numElements:v2];
  }

  if (objc_opt_respondsToSelector())
  {
    v24 = objc_loadWeakRetained((a1 + 40));
    [v26 psrAudioProcessor:v24 finishedWithFinalSpeakerVector:v9 speakerVectorSize:v2 processedAudioDurationMs:v8];
  }

  v25 = earPSRLog;
  if (os_log_type_enabled(earPSRLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B501D000, v25, OS_LOG_TYPE_DEFAULT, "ComputeTask done", buf, 2u);
  }
}

- (void)dealloc
{
  ptr = self->_audioProcessor.__ptr_;
  if (ptr)
  {
    (*(**ptr + 32))(*ptr, a2);
  }

  v4 = earPSRLog;
  if (os_log_type_enabled(earPSRLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B501D000, v4, OS_LOG_TYPE_DEFAULT, "dealloc", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = EARPSRAudioProcessor;
  [(EARPSRAudioProcessor *)&v5 dealloc];
}

- (EARPSRAudioProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  self->_audioProcessor.__ptr_ = 0;
  self->_audioProcessor.__cntrl_ = 0;
  quasar::SystemConfig::SystemConfig(&self->_sysConfig);
}

@end