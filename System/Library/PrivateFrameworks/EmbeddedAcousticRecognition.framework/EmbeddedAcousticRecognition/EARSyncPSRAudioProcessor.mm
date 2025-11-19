@interface EARSyncPSRAudioProcessor
+ (void)initialize;
- (EARSyncPSRAudioProcessor)initWithConfigFile:(id)a3 configRoot:(id)a4 sampleRate:(unint64_t)a5 delegate:(id)a6;
- (EARSyncPSRAudioProcessor)initWithConfigFile:(id)a3 configRoot:(id)a4 sampleRate:(unint64_t)a5 delegate:(id)a6 queue:(id)a7 maxBufferSizeSeconds:(int64_t)a8 memoryLock:(BOOL)a9 outputLastRowOnly:(BOOL)a10;
- (EARSyncPSRAudioProcessor)initWithConfigFile:(id)a3 configRoot:(id)a4 sampleRate:(unint64_t)a5 delegate:(id)a6 queue:(id)a7 outputLastRowOnly:(BOOL)a8;
- (EARSyncPSRAudioProcessorDelegate)delegate;
- (id).cxx_construct;
- (id)getLatestSuperVector;
- (unint64_t)getAccmulatedProcessingTime;
- (unint64_t)getProcessedAudioDurationMs;
- (void)_addAudio:(id)a3;
- (void)_resetForNewRequest;
- (void)addAudio:(id)a3;
- (void)addAudioSync:(id)a3;
- (void)endAudio;
- (void)resetForNewRequest;
- (void)resetForNewRequestSync;
@end

@implementation EARSyncPSRAudioProcessor

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = os_log_create("com.apple.ear", "EARSyncPSRAudioProcessor");
    v3 = earPSRLog;
    earPSRLog = v2;
  }
}

- (EARSyncPSRAudioProcessor)initWithConfigFile:(id)a3 configRoot:(id)a4 sampleRate:(unint64_t)a5 delegate:(id)a6
{
  v11 = dispatch_get_global_queue(2, 0);
  v12 = [(EARSyncPSRAudioProcessor *)self initWithConfigFile:a3 configRoot:a4 sampleRate:a5 delegate:a6 queue:v11];

  return v12;
}

- (EARSyncPSRAudioProcessor)initWithConfigFile:(id)a3 configRoot:(id)a4 sampleRate:(unint64_t)a5 delegate:(id)a6 queue:(id)a7 outputLastRowOnly:(BOOL)a8
{
  BYTE1(v9) = a8;
  LOBYTE(v9) = 0;
  return [(EARSyncPSRAudioProcessor *)self initWithConfigFile:a3 configRoot:a4 sampleRate:a5 delegate:a6 queue:a7 maxBufferSizeSeconds:120 memoryLock:v9 outputLastRowOnly:?];
}

- (EARSyncPSRAudioProcessor)initWithConfigFile:(id)a3 configRoot:(id)a4 sampleRate:(unint64_t)a5 delegate:(id)a6 queue:(id)a7 maxBufferSizeSeconds:(int64_t)a8 memoryLock:(BOOL)a9 outputLastRowOnly:(BOOL)a10
{
  v40 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v36.receiver = self;
  v36.super_class = EARSyncPSRAudioProcessor;
  v20 = [(EARSyncPSRAudioProcessor *)&v36 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_18;
  }

  v20->_sampleRate = a5;
  objc_storeStrong(&v20->_configRoot, a4);
  objc_storeWeak(&v21->_delegate, v18);
  objc_storeStrong(&v21->_queue, a7);
  v21->_maxBufferSizeSeconds = a8;
  v21->_accumulatedProcessingTime = 0;
  v22 = [MEMORY[0x1E696AC08] defaultManager];
  v23 = [v22 fileExistsAtPath:v16];

  if (v23)
  {
    if (v16)
    {
      [v16 ear_toString];
    }

    else
    {
      __p = 0uLL;
      v39 = 0;
    }

    memset(v35, 0, sizeof(v35));
    memset(v33, 0, sizeof(v33));
    v34 = 1065353216;
    JsonFile = quasar::SystemConfig::readJsonFile(&v21->_sysConfig, &__p, v35, v33, 0, 0);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v33);
    v37 = v35;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p);
    }

    HIBYTE(v39) = 3;
    LODWORD(__p) = 7500656;
    quasar::SystemConfig::enforceMinVersion(&v21->_sysConfig, 62, 0, &__p);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p);
    }

    if (JsonFile == 2)
    {
      v29 = earPSRLog;
      if (os_log_type_enabled(earPSRLog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        v25 = "PSR: ERR: AudioProcessorPipeline created with incorrect version";
        v26 = v29;
        v27 = 2;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    v21->_lastRowOutputOnly = a10;
    ModelLoader = quasar::SystemConfig::getModelLoader(&v21->_sysConfig);
    quasar::ModelLoader::enableEmbeddedMlock(ModelLoader, a9);
LABEL_18:
    v30 = v21;
    goto LABEL_19;
  }

  v24 = earPSRLog;
  if (os_log_type_enabled(earPSRLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p) = 138412290;
    *(&__p + 4) = v16;
    v25 = "PSR: EARSyncAudioProcessor Config file does not exist at %@";
    v26 = v24;
    v27 = 12;
LABEL_15:
    _os_log_impl(&dword_1B501D000, v26, OS_LOG_TYPE_DEFAULT, v25, &__p, v27);
  }

LABEL_16:
  v30 = 0;
LABEL_19:

  return v30;
}

- (void)resetForNewRequest
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EARSyncPSRAudioProcessor_resetForNewRequest__block_invoke;
  block[3] = &unk_1E7C1A550;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resetForNewRequestSync
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3812000000;
  v9 = __Block_byref_object_copy__18;
  v10 = __Block_byref_object_dispose__18;
  v11 = &unk_1B5CADD23;
  v12.__ptr_ = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__EARSyncPSRAudioProcessor_resetForNewRequestSync__block_invoke;
  block[3] = &unk_1E7C1A240;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(queue, block);
  if (v7[6].__ptr_)
  {
    std::exception_ptr::exception_ptr(&v4, v7 + 6);
    v3.__ptr_ = &v4;
    std::rethrow_exception(v3);
    __break(1u);
  }

  else
  {
    _Block_object_dispose(&v6, 8);
    std::exception_ptr::~exception_ptr(&v12);
  }
}

- (void)_resetForNewRequest
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = earPSRLog;
  if (os_log_type_enabled(earPSRLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_1B501D000, v3, OS_LOG_TYPE_DEFAULT, "_resetForNewRequest", __p, 2u);
  }

  ptr = self->_audioProcessor.__ptr_;
  if (!ptr)
  {
    configRoot = self->_configRoot;
    if (configRoot)
    {
      [(NSString *)configRoot ear_toString];
    }

    else
    {
      memset(__p, 0, 24);
    }

    std::allocate_shared[abi:ne200100]<quasar::SyncPSRAudioProcessor,std::allocator<quasar::SyncPSRAudioProcessor>,quasar::SystemConfig &,std::string,unsigned long &,BOOL &,long &,0>();
  }

  quasar::SyncPSRAudioProcessor::reset(ptr);
}

- (void)addAudio:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__EARSyncPSRAudioProcessor_addAudio___block_invoke;
  v7[3] = &unk_1E7C1A5C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addAudioSync:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3812000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = &unk_1B5CADD23;
  v18.__ptr_ = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__EARSyncPSRAudioProcessor_addAudioSync___block_invoke;
  block[3] = &unk_1E7C1C068;
  block[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  dispatch_sync(queue, block);
  if (v13[6].__ptr_)
  {
    std::exception_ptr::exception_ptr(&v8, v13 + 6);
    v7.__ptr_ = &v8;
    std::rethrow_exception(v7);
    __break(1u);
  }

  else
  {

    _Block_object_dispose(&v12, 8);
    std::exception_ptr::~exception_ptr(&v18);
  }
}

- (void)_addAudio:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 bytes];
  v6 = [v4 length];
  v7 = mach_absolute_time();
  v8 = v6 >> 1;
  quasar::SyncPSRAudioProcessor::addAudio(self->_audioProcessor.__ptr_, v5, v8, 0);
  quasar::SyncPSRAudioProcessor::getSpeakerRecogMatrix(self->_audioProcessor.__ptr_, v20);
  if (kaldi::MatrixBase<float>::NumRows(v20))
  {
    v9 = quasar::SyncPSRAudioProcessor::processedAudioDurationMs(self->_audioProcessor.__ptr_);
    v10 = _getNSDataForLastRowInMatrix(v20);
    v11 = mach_absolute_time();
    v12 = [MEMORY[0x1E696AE30] processInfo];
    [v12 systemUptime];
    v14 = v13;

    self->_accumulatedProcessingTime += v11 - v7;
    if (v14 - self->_scoreReportTimestamp > 0.100000001)
    {
      self->_scoreReportTimestamp = v14;
      v15 = objc_initWeak(&v19, self);
      v16 = [(EARSyncPSRAudioProcessor *)self delegate];

      if (objc_opt_respondsToSelector())
      {
        v17 = objc_loadWeakRetained(&v19);
        [v16 psrAudioProcessor:v17 hasSpeakerVector:v10 speakerVectorSize:kaldi::MatrixBase<float>::NumCols(v20) processedAudioDurationMs:v9];
      }

      v18 = earPSRLog;
      if (os_log_type_enabled(earPSRLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v22 = v8;
        v23 = 1024;
        v24 = v9;
        _os_log_impl(&dword_1B501D000, v18, OS_LOG_TYPE_DEFAULT, "Added %d samples, processed %d ms of audio so far", buf, 0xEu);
      }

      objc_destroyWeak(&v19);
    }
  }

  else
  {
    self->_accumulatedProcessingTime += mach_absolute_time() - v7;
  }

  kaldi::Matrix<float>::~Matrix(v20);
}

- (void)endAudio
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EARSyncPSRAudioProcessor_endAudio__block_invoke;
  block[3] = &unk_1E7C1A550;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __36__EARSyncPSRAudioProcessor_endAudio__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  quasar::SyncPSRAudioProcessor::endAudio(*(*(a1 + 32) + 8));
  quasar::SyncPSRAudioProcessor::getSpeakerRecogMatrix(*(*(a1 + 32) + 8), v12);
  if (kaldi::MatrixBase<float>::NumRows(v12))
  {
    v3 = quasar::SyncPSRAudioProcessor::processedAudioDurationMs(*(*(a1 + 32) + 8));
    v4 = _getNSDataForLastRowInMatrix(v12);
    *(*(a1 + 32) + 1608) += mach_absolute_time() - v2;
    v5 = *(a1 + 32);
    v6 = objc_initWeak(&v11, v5);
    v7 = [v5 delegate];

    if (objc_opt_respondsToSelector())
    {
      v8 = objc_loadWeakRetained(&v11);
      [v7 psrAudioProcessor:v8 finishedWithFinalSpeakerVector:v4 speakerVectorSize:kaldi::MatrixBase<float>::NumCols(v12) processedAudioDurationMs:v3];
    }

    v9 = earPSRLog;
    if (os_log_type_enabled(earPSRLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v3;
      _os_log_impl(&dword_1B501D000, v9, OS_LOG_TYPE_DEFAULT, "End audio: Processed %d ms of audio so far", buf, 8u);
    }

    objc_destroyWeak(&v11);
  }

  else
  {
    *(*(a1 + 32) + 1608) += mach_absolute_time() - v2;
  }

  return kaldi::Matrix<float>::~Matrix(v12);
}

- (id)getLatestSuperVector
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11_0;
  v10 = __Block_byref_object_dispose__12_0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__EARSyncPSRAudioProcessor_getLatestSuperVector__block_invoke;
  v5[3] = &unk_1E7C1A240;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__EARSyncPSRAudioProcessor_getLatestSuperVector__block_invoke(uint64_t a1)
{
  quasar::SyncPSRAudioProcessor::getSpeakerRecogMatrix(*(*(a1 + 32) + 8), v6);
  if (kaldi::MatrixBase<float>::NumRows(v6))
  {
    v2 = _getNSDataForLastRowInMatrix(v6);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  return kaldi::Matrix<float>::~Matrix(v6);
}

- (unint64_t)getProcessedAudioDurationMs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__EARSyncPSRAudioProcessor_getProcessedAudioDurationMs__block_invoke;
  v5[3] = &unk_1E7C1A5E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __55__EARSyncPSRAudioProcessor_getProcessedAudioDurationMs__block_invoke(uint64_t a1)
{
  result = quasar::SyncPSRAudioProcessor::processedAudioDurationMs(*(*(a1 + 32) + 8));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)getAccmulatedProcessingTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__EARSyncPSRAudioProcessor_getAccmulatedProcessingTime__block_invoke;
  v5[3] = &unk_1E7C1A5E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (EARSyncPSRAudioProcessorDelegate)delegate
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