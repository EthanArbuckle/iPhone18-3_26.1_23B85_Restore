@interface EARAudioResultsGenerator
+ (void)initialize;
- (EARAudioResultsGenerator)initWithConfigFile:(id)a3 configRoot:(id)a4 sampleRate:(unint64_t)a5 delegate:(id)a6 queue:(id)a7;
- (EARAudioResultsGeneratorDelegate)delegate;
- (id).cxx_construct;
- (id)audioResultLastVector;
- (id)audioResultMatrix;
- (void)addAudio:(id)a3;
- (void)endAudio;
- (void)resetForNewRequest;
@end

@implementation EARAudioResultsGenerator

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = os_log_create("com.apple.ear", "EARAudioResultsGenerator");
    v3 = earARGLog;
    earARGLog = v2;
  }
}

- (EARAudioResultsGenerator)initWithConfigFile:(id)a3 configRoot:(id)a4 sampleRate:(unint64_t)a5 delegate:(id)a6 queue:(id)a7
{
  v37 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v33.receiver = self;
  v33.super_class = EARAudioResultsGenerator;
  v16 = [(EARAudioResultsGenerator *)&v33 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_17;
  }

  v16->_sampleRate = a5;
  objc_storeStrong(&v16->_configRoot, a4);
  objc_storeWeak(&v17->_delegate, v14);
  objc_storeStrong(&v17->_queue, a7);
  v17->_isAudioSessionLive = 0;
  v18 = [MEMORY[0x1E695DF88] data];
  entireResultMatrix = v17->_entireResultMatrix;
  v17->_entireResultMatrix = v18;

  v17->_sessionFrameCount = 0;
  *&v17->_globalNumVectors = 0u;
  v20 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = [v20 fileExistsAtPath:v12];

  if (v21)
  {
    if (v12)
    {
      [v12 ear_toString];
    }

    else
    {
      __p = 0uLL;
      v36 = 0;
    }

    memset(v32, 0, sizeof(v32));
    memset(v30, 0, sizeof(v30));
    v31 = 1065353216;
    JsonFile = quasar::SystemConfig::readJsonFile(&v17->_sysConfig, &__p, v32, v30, 0, 0);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v30);
    v34 = v32;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v34);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p);
    }

    HIBYTE(v36) = 3;
    LODWORD(__p) = 7500656;
    quasar::SystemConfig::enforceMinVersion(&v17->_sysConfig, 62, 0, &__p);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p);
    }

    if (JsonFile == 2)
    {
      v27 = earARGLog;
      if (os_log_type_enabled(earARGLog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        v23 = "ARG: ERR: AudioProcessorPipeline created with incorrect version";
        v24 = v27;
        v25 = 2;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

LABEL_17:
    v28 = v17;
    goto LABEL_18;
  }

  v22 = earARGLog;
  if (os_log_type_enabled(earARGLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p) = 138543362;
    *(&__p + 4) = v12;
    v23 = "Config file does not exist at %{public}@";
    v24 = v22;
    v25 = 12;
LABEL_15:
    _os_log_impl(&dword_1B501D000, v24, OS_LOG_TYPE_DEFAULT, v23, &__p, v25);
  }

LABEL_16:
  v28 = 0;
LABEL_18:

  return v28;
}

- (void)resetForNewRequest
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EARAudioResultsGenerator_resetForNewRequest__block_invoke;
  block[3] = &unk_1E7C1A550;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__EARAudioResultsGenerator_resetForNewRequest__block_invoke(uint64_t a1)
{
  v2 = earARGLog;
  if (os_log_type_enabled(earARGLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_1B501D000, v2, OS_LOG_TYPE_DEFAULT, "Resetting audio result generator", __p, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  if (!v4)
  {
    v5 = *(v3 + 1640);
    if (v5)
    {
      [v5 ear_toString];
    }

    else
    {
      memset(__p, 0, 24);
    }

    std::allocate_shared[abi:ne200100]<quasar::SyncPSRAudioProcessor,std::allocator<quasar::SyncPSRAudioProcessor>,quasar::SystemConfig &,std::string,unsigned long &,0>();
  }

  quasar::SyncPSRAudioProcessor::reset(v4);
}

- (id)audioResultMatrix
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__13;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__EARAudioResultsGenerator_audioResultMatrix__block_invoke;
  v6[3] = &unk_1E7C1BC80;
  v6[4] = self;
  v6[5] = &v15;
  v6[6] = &v11;
  v6[7] = &v7;
  dispatch_sync(queue, v6);
  v3 = [EARAudioResult alloc];
  v4 = [(EARAudioResult *)v3 initWithAudioResultMat:v16[5] vectorSize:v8[3] numVectors:v12[3]];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v4;
}

void __45__EARAudioResultsGenerator_audioResultMatrix__block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  if (*(v1 + 1608) && (*(v1 + 1592) & 1) == 0)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), *(v1 + 1600));
    *(*(a1[6] + 8) + 24) = *(a1[4] + 1608);
    *(*(a1[7] + 8) + 24) = *(a1[4] + 1616);
    v3 = earARGLog;
    if (os_log_type_enabled(earARGLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1[6] + 8) + 24);
      v5 = *(*(a1[7] + 8) + 24);
      v6 = 134218240;
      v7 = v4;
      v8 = 2048;
      v9 = v5;
      _os_log_impl(&dword_1B501D000, v3, OS_LOG_TYPE_DEFAULT, "Got valid result mat in sync fashion with numRows:%lu and numCols:%lu", &v6, 0x16u);
    }
  }
}

- (id)audioResultLastVector
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__13;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__EARAudioResultsGenerator_audioResultLastVector__block_invoke;
  v6[3] = &unk_1E7C1BC80;
  v6[4] = self;
  v6[5] = &v15;
  v6[6] = &v11;
  v6[7] = &v7;
  dispatch_sync(queue, v6);
  v3 = [EARAudioResult alloc];
  v4 = [(EARAudioResult *)v3 initWithAudioResultMat:v16[5] vectorSize:v8[3] numVectors:v12[3]];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v4;
}

uint64_t __49__EARAudioResultsGenerator_audioResultLastVector__block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  quasar::SyncPSRAudioProcessor::getSpeakerRecogMatrix(*(a1[4] + 8), v8);
  if (kaldi::MatrixBase<float>::NumRows(v8))
  {
    if ((*(a1[4] + 1592) & 1) == 0)
    {
      v2 = _getNSDataForLastRowInMatrix(v8);
      v3 = *(a1[5] + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;

      *(*(a1[6] + 8) + 24) = 1;
      *(*(a1[7] + 8) + 24) = kaldi::MatrixBase<float>::NumCols(v8);
      v5 = earARGLog;
      if (os_log_type_enabled(earARGLog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1[7] + 8) + 24);
        *buf = 134217984;
        v10 = v6;
        _os_log_impl(&dword_1B501D000, v5, OS_LOG_TYPE_DEFAULT, "Got valid result row in sync fashion with numCols:%lu", buf, 0xCu);
      }
    }
  }

  return kaldi::Matrix<float>::~Matrix(v8);
}

- (void)addAudio:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__EARAudioResultsGenerator_addAudio___block_invoke;
  v7[3] = &unk_1E7C1A5C0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __37__EARAudioResultsGenerator_addAudio___block_invoke(uint64_t a1)
{
  quasar::SyncPSRAudioProcessor::addAudio(*(*(a1 + 40) + 8), [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length") >> 1, 0);
  *(*(a1 + 40) + 1592) = 1;
  v2 = quasar::SyncPSRAudioProcessor::processedAudioDurationMs(*(*(a1 + 40) + 8));
  quasar::SyncPSRAudioProcessor::getSpeakerRecogMatrix(*(*(a1 + 40) + 8), v16);
  if (kaldi::MatrixBase<float>::NumRows(v16))
  {
    v3 = v2 / 10;
    v4 = *(*(a1 + 40) + 1624);
    if (v3 > v4)
    {
      v5 = _getNSDataForLastNRowsInMatrix(v16, v3 - v4);
      [*(*(a1 + 40) + 1600) appendData:v5];
      *(*(a1 + 40) + 1608) = *(*(a1 + 40) + 1608) + v3 - *(*(a1 + 40) + 1624);
      *(*(a1 + 40) + 1616) = kaldi::MatrixBase<float>::NumCols(v16);
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1632));
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [[EARAudioResult alloc] initWithAudioResultMat:v5 vectorSize:kaldi::MatrixBase<float>::NumCols(v16) numVectors:v3 - *(*(a1 + 40) + 1624)];
        v9 = objc_loadWeakRetained((*(a1 + 40) + 1632));
        [v9 hasEARAudioResultMatrix:v8];
      }

      v10 = objc_loadWeakRetained((*(a1 + 40) + 1632));
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = _getNSDataForLastRowInMatrix(v16);
        v13 = [[EARAudioResult alloc] initWithAudioResultMat:v12 vectorSize:kaldi::MatrixBase<float>::NumCols(v16) numVectors:1];
        v14 = objc_loadWeakRetained((*(a1 + 40) + 1632));
        [v14 hasEARAudioResultLastVector:v13];
      }

      *(*(a1 + 40) + 1624) = v3;
    }
  }

  return kaldi::Matrix<float>::~Matrix(v16);
}

- (void)endAudio
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EARAudioResultsGenerator_endAudio__block_invoke;
  block[3] = &unk_1E7C1A550;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __36__EARAudioResultsGenerator_endAudio__block_invoke(uint64_t a1)
{
  v2 = earARGLog;
  if (os_log_type_enabled(earARGLog, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1B501D000, v2, OS_LOG_TYPE_DEFAULT, "Ending audio", v17, 2u);
  }

  quasar::SyncPSRAudioProcessor::endAudio(*(*(a1 + 32) + 8));
  *(*(a1 + 32) + 1592) = 0;
  v3 = quasar::SyncPSRAudioProcessor::processedAudioDurationMs(*(*(a1 + 32) + 8));
  quasar::SyncPSRAudioProcessor::getSpeakerRecogMatrix(*(*(a1 + 32) + 8), v17);
  if (kaldi::MatrixBase<float>::NumRows(v17))
  {
    v4 = v3 / 10;
    v5 = *(*(a1 + 32) + 1624);
    if (v4 > v5)
    {
      v6 = _getNSDataForLastNRowsInMatrix(v17, v4 - v5);
      [*(*(a1 + 32) + 1600) appendData:v6];
      *(*(a1 + 32) + 1608) = *(*(a1 + 32) + 1608) + v4 - *(*(a1 + 32) + 1624);
      *(*(a1 + 32) + 1616) = kaldi::MatrixBase<float>::NumCols(v17);
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1632));
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [[EARAudioResult alloc] initWithAudioResultMat:v6 vectorSize:kaldi::MatrixBase<float>::NumCols(v17) numVectors:v4 - *(*(a1 + 32) + 1624)];
        v10 = objc_loadWeakRetained((*(a1 + 32) + 1632));
        [v10 hasEARAudioResultMatrix:v9];
      }

      v11 = objc_loadWeakRetained((*(a1 + 32) + 1632));
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = _getNSDataForLastRowInMatrix(v17);
        v14 = [[EARAudioResult alloc] initWithAudioResultMat:v13 vectorSize:kaldi::MatrixBase<float>::NumCols(v17) numVectors:1];
        v15 = objc_loadWeakRetained((*(a1 + 32) + 1632));
        [v15 hasEARAudioResultLastVector:v14];
      }

      *(*(a1 + 32) + 1624) = v4;
    }
  }

  return kaldi::Matrix<float>::~Matrix(v17);
}

- (EARAudioResultsGeneratorDelegate)delegate
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