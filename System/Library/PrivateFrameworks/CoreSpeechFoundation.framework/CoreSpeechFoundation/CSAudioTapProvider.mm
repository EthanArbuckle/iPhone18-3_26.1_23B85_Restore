@interface CSAudioTapProvider
- (BOOL)_isRecording;
- (BOOL)_setupRecordingAudioQueueIfNeededWithOption:(id)a3;
- (BOOL)_shouldStopRecording;
- (BOOL)isRecording;
- (CSAudioTapProvider)initWithTappingType:(unint64_t)a3;
- (id)_streamStateName:(unint64_t)a3;
- (id)audioStreamWithRequest:(id)a3 streamName:(id)a4 error:(id *)a5;
- (unsigned)_calculateBufferSize:(OpaqueAudioQueue *)a3 audioStreamBasicDescription:(AudioStreamBasicDescription *)a4 frameSizeInSec:(float)a5;
- (void)CSAudioServerCrashMonitorDidReceiveServerCrash:(id)a3;
- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)a3;
- (void)_cancelAudioPacketWatchDog;
- (void)_clearDidStartRecordingDelegateWatchDog;
- (void)_clearDidStopRecordingDelegateWatchDog;
- (void)_destroyRecordingAudioQueue;
- (void)_handleAudioQueueDidStartWithResult:(BOOL)a3 error:(id)a4;
- (void)_handleAudioQueueDidStopWithError:(id)a3 reason:(int64_t)a4;
- (void)_holdTransactionForStartListening;
- (void)_onAudioPacketWatchdogFire;
- (void)_postEpilogueAudioStream;
- (void)_releaseTransactionForStopListeningIfNeeded;
- (void)_saveRecordingBufferFrom:(unint64_t)a3 to:(unint64_t)a4 toURL:(id)a5;
- (void)_schduleDidStartRecordingDelegateWatchDogWithToken:(id)a3;
- (void)_scheduleAudioPacketWatchDog;
- (void)_scheduleDidStartRecordingDelegateWatchDog;
- (void)_scheduleDidStopRecordingDelegateWatchDog;
- (void)_scheduleDidStopRecordingDelegateWatchDog:(id)a3;
- (void)_stopAndDestroyRecordingAudioQueueWithCompletion:(id)a3;
- (void)_stopRecordingAudioQueueIfNeeded:(id)a3 completion:(id)a4;
- (void)attachTandemStream:(id)a3 withConfig:(id)a4 toPrimaryStream:(id)a5 completion:(id)a6;
- (void)audioStreamWithRequest:(id)a3 streamName:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)prepareAudioStream:(id)a3 request:(id)a4 completion:(id)a5;
- (void)saveRecordingBufferFrom:(unint64_t)a3 to:(unint64_t)a4 toURL:(id)a5;
- (void)saveRecordingBufferToEndFrom:(unint64_t)a3 toURL:(id)a4;
- (void)setStreamState:(unint64_t)a3;
- (void)setup;
- (void)startAudioStream:(id)a3 option:(id)a4 completion:(id)a5;
- (void)stopAudioStream:(id)a3 option:(id)a4 completion:(id)a5;
@end

@implementation CSAudioTapProvider

- (void)_saveRecordingBufferFrom:(unint64_t)a3 to:(unint64_t)a4 toURL:(id)a5
{
  v8 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(CSAudioCircularBuffer *)self->_circularBuffer copySamplesFrom:a3 to:a4];
  v10 = v9;
  if (v9)
  {
    loggingQueue = self->_loggingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__CSAudioTapProvider__saveRecordingBufferFrom_to_toURL___block_invoke;
    block[3] = &unk_1E865C378;
    block[4] = self;
    v15 = a3;
    v16 = a4;
    v13 = v9;
    v14 = v8;
    dispatch_async(loggingQueue, block);
  }
}

uint64_t __56__CSAudioTapProvider__saveRecordingBufferFrom_to_toURL___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CSLogCategoryAudio;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UUID];
    v4 = [*(a1 + 32) tappingType];
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v9 = 136316162;
    v10 = "[CSAudioTapProvider _saveRecordingBufferFrom:to:toURL:]_block_invoke";
    v11 = 2114;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    v15 = 2050;
    v16 = v5;
    v17 = 2050;
    v18 = v6;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Saving circular buffer from %{public}lu to %{public}lu", &v9, 0x34u);
  }

  result = [CSPlainAudioFileWriter saveAudioChunck:*(a1 + 40) toURL:*(a1 + 48)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)saveRecordingBufferToEndFrom:(unint64_t)a3 toURL:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CSAudioTapProvider_saveRecordingBufferToEndFrom_toURL___block_invoke;
  block[3] = &unk_1E865C350;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

void *__57__CSAudioTapProvider_saveRecordingBufferToEndFrom_toURL___block_invoke(void *a1)
{
  v2 = a1[4];
  result = v2[9];
  if (result)
  {
    v4 = a1[6];
    v5 = [result sampleCount];
    v6 = a1[5];

    return [v2 _saveRecordingBufferFrom:v4 to:v5 toURL:v6];
  }

  return result;
}

- (void)saveRecordingBufferFrom:(unint64_t)a3 to:(unint64_t)a4 toURL:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CSAudioTapProvider_saveRecordingBufferFrom_to_toURL___block_invoke;
  v11[3] = &unk_1E865C328;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, v11);
}

- (void)prepareAudioStream:(id)a3 request:(id)a4 completion:(id)a5
{
  v5 = a5;
  if (v5)
  {
    v5[2](v5, 1, 0);
  }
}

- (void)attachTandemStream:(id)a3 withConfig:(id)a4 toPrimaryStream:(id)a5 completion:(id)a6
{
  v6 = a6;
  if (v6)
  {
    v8 = v6;
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2058 userInfo:0];
    v8[2](v8, 0, v7);

    v6 = v8;
  }
}

- (void)audioStreamWithRequest:(id)a3 streamName:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [[CSAudioStream alloc] initWithAudioStreamProvider:self streamName:v8 streamRequest:v11];
    v9[2](v9, v10, 0);
  }
}

- (id)audioStreamWithRequest:(id)a3 streamName:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 requiresHistoricalBuffer])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__CSAudioTapProvider_audioStreamWithRequest_streamName_error___block_invoke;
    block[3] = &unk_1E865CB68;
    block[4] = self;
    dispatch_async(queue, block);
  }

  v10 = [[CSAudioStream alloc] initWithAudioStreamProvider:self streamName:v8 streamRequest:v7];

  return v10;
}

void __62__CSAudioTapProvider_audioStreamWithRequest_streamName_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 72))
  {
    v2 = CSLogCategoryAudio;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) UUID];
      v4 = [*(a1 + 32) tappingType];
      v15 = 136315650;
      v16 = "[CSAudioTapProvider audioStreamWithRequest:streamName:error:]_block_invoke";
      v17 = 2114;
      v18 = v3;
      v19 = 2048;
      v20 = v4;
      _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Create circular buffer", &v15, 0x20u);
    }

    v5 = [CSAudioCircularBuffer alloc];
    +[CSConfig inputRecordingDurationInSecs];
    v7 = v6;
    +[CSConfig inputRecordingSampleRate];
    LODWORD(v9) = v8;
    LODWORD(v10) = v7;
    v11 = [(CSAudioCircularBuffer *)v5 initWithNumChannels:1 recordingDuration:0 samplingRate:v10 audioTimeConverter:v9];
    v12 = *(a1 + 32);
    v13 = *(v12 + 72);
    *(v12 + 72) = v11;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CSAudioTapProvider *)self UUID];
    v7 = 136315650;
    v8 = "[CSAudioTapProvider CSAudioServerCrashMonitorDidReceiveServerRestart:]";
    v9 = 2114;
    v10 = v5;
    v11 = 2048;
    v12 = [(CSAudioTapProvider *)self tappingType];
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:audiomxd/bridgeaudiod restarted", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)CSAudioServerCrashMonitorDidReceiveServerCrash:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CSAudioTapProvider *)self UUID];
    *buf = 136315650;
    v10 = "[CSAudioTapProvider CSAudioServerCrashMonitorDidReceiveServerCrash:]";
    v11 = 2114;
    v12 = v5;
    v13 = 2048;
    v14 = [(CSAudioTapProvider *)self tappingType];
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:audiomxd/bridgeaudiod crashed", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CSAudioTapProvider_CSAudioServerCrashMonitorDidReceiveServerCrash___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __69__CSAudioTapProvider_CSAudioServerCrashMonitorDidReceiveServerCrash___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _destroyRecordingAudioQueue];
  v2 = *(a1 + 32);

  return [v2 _handleAudioQueueDidStopWithError:0 reason:-11785];
}

- (void)_clearDidStopRecordingDelegateWatchDog
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CSAudioTapProvider *)self UUID];
    v5 = [(CSAudioTapProvider *)self tappingType];
    stopRecordingWatchDogToken = self->_stopRecordingWatchDogToken;
    v9 = 136315906;
    v10 = "[CSAudioTapProvider _clearDidStopRecordingDelegateWatchDog]";
    v11 = 2114;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    v15 = 2114;
    v16 = stopRecordingWatchDogToken;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Clearing didStopRecordingDelegate WatchDogTimer : %{public}@", &v9, 0x2Au);
  }

  v7 = self->_stopRecordingWatchDogToken;
  self->_stopRecordingWatchDogToken = 0;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleDidStopRecordingDelegateWatchDog:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSAudioTapProvider *)self UUID];
    v7 = [(CSAudioTapProvider *)self tappingType];
    stopRecordingWatchDogToken = self->_stopRecordingWatchDogToken;
    v13 = 136316162;
    v14 = "[CSAudioTapProvider _scheduleDidStopRecordingDelegateWatchDog:]";
    v15 = 2114;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2114;
    v20 = v4;
    v21 = 2114;
    v22 = stopRecordingWatchDogToken;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:stopRecordingWatchDogDidFire : %{public}@, currentToken : %{public}@", &v13, 0x34u);
  }

  if ([v4 isEqual:self->_stopRecordingWatchDogToken])
  {
    [(CSAudioTapProvider *)self _handleAudioQueueDidStopWithError:0 reason:5];
    [(CSAudioTapProvider *)self _handleAudioSystemFailure];
  }

  else
  {
    v9 = CSLogCategoryAudio;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CSAudioTapProvider *)self UUID];
      v11 = [(CSAudioTapProvider *)self tappingType];
      v13 = 136315650;
      v14 = "[CSAudioTapProvider _scheduleDidStopRecordingDelegateWatchDog:]";
      v15 = 2114;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:stopRecordingWatchDogToken doesn't match. Ignore this WDT fire", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleDidStopRecordingDelegateWatchDog
{
  v26 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  objc_storeStrong(&self->_stopRecordingWatchDogToken, v3);
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CSAudioTapProvider *)self UUID];
    v6 = [(CSAudioTapProvider *)self tappingType];
    stopRecordingWatchDogToken = self->_stopRecordingWatchDogToken;
    *buf = 136316162;
    v17 = "[CSAudioTapProvider _scheduleDidStopRecordingDelegateWatchDog]";
    v18 = 2114;
    v19 = v5;
    v20 = 2048;
    v21 = v6;
    v22 = 2114;
    v23 = stopRecordingWatchDogToken;
    v24 = 2050;
    v25 = 0x4020000000000000;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Schedule didStop WDT %{public}@ for %{public}lf seconds", buf, 0x34u);
  }

  v8 = dispatch_time(0, 8000000000);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CSAudioTapProvider__scheduleDidStopRecordingDelegateWatchDog__block_invoke;
  block[3] = &unk_1E865C300;
  objc_copyWeak(&v14, &location);
  v13 = v3;
  v10 = v3;
  dispatch_after(v8, queue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  v11 = *MEMORY[0x1E69E9840];
}

void __63__CSAudioTapProvider__scheduleDidStopRecordingDelegateWatchDog__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _scheduleDidStopRecordingDelegateWatchDog:*(a1 + 32)];
}

- (void)_clearDidStartRecordingDelegateWatchDog
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CSAudioTapProvider *)self UUID];
    v5 = [(CSAudioTapProvider *)self tappingType];
    startRecordingWatchDogToken = self->_startRecordingWatchDogToken;
    v9 = 136315906;
    v10 = "[CSAudioTapProvider _clearDidStartRecordingDelegateWatchDog]";
    v11 = 2114;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    v15 = 2114;
    v16 = startRecordingWatchDogToken;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Clearing didStartRecordingDelegate WatchDogTimer : %{public}@", &v9, 0x2Au);
  }

  v7 = self->_startRecordingWatchDogToken;
  self->_startRecordingWatchDogToken = 0;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_schduleDidStartRecordingDelegateWatchDogWithToken:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSAudioTapProvider *)self UUID];
    v7 = [(CSAudioTapProvider *)self tappingType];
    startRecordingWatchDogToken = self->_startRecordingWatchDogToken;
    v14 = 136316162;
    v15 = "[CSAudioTapProvider _schduleDidStartRecordingDelegateWatchDogWithToken:]";
    v16 = 2114;
    v17 = v6;
    v18 = 2048;
    v19 = v7;
    v20 = 2114;
    v21 = v4;
    v22 = 2114;
    v23 = startRecordingWatchDogToken;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:startRecordingWatchDogDidFire : %{public}@, currentToken : %{public}@", &v14, 0x34u);
  }

  if ([v4 isEqual:self->_startRecordingWatchDogToken])
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2068 userInfo:0];
    [(CSAudioTapProvider *)self _handleAudioQueueDidStartWithResult:0 error:v9];

    [(CSAudioTapProvider *)self _handleAudioSystemFailure];
  }

  else
  {
    v10 = CSLogCategoryAudio;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(CSAudioTapProvider *)self UUID];
      v12 = [(CSAudioTapProvider *)self tappingType];
      v14 = 136315650;
      v15 = "[CSAudioTapProvider _schduleDidStartRecordingDelegateWatchDogWithToken:]";
      v16 = 2114;
      v17 = v11;
      v18 = 2048;
      v19 = v12;
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:startRecordingWatchDogToken doesn't match. Ignore this WDT fire", &v14, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleDidStartRecordingDelegateWatchDog
{
  v26 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  objc_storeStrong(&self->_startRecordingWatchDogToken, v3);
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CSAudioTapProvider *)self UUID];
    v6 = [(CSAudioTapProvider *)self tappingType];
    startRecordingWatchDogToken = self->_startRecordingWatchDogToken;
    *buf = 136316162;
    v17 = "[CSAudioTapProvider _scheduleDidStartRecordingDelegateWatchDog]";
    v18 = 2114;
    v19 = v5;
    v20 = 2048;
    v21 = v6;
    v22 = 2114;
    v23 = startRecordingWatchDogToken;
    v24 = 2050;
    v25 = 0x4020000000000000;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Schedule didStart WDT %{public}@ for %{public}lf seconds", buf, 0x34u);
  }

  v8 = dispatch_time(0, 8000000000);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CSAudioTapProvider__scheduleDidStartRecordingDelegateWatchDog__block_invoke;
  block[3] = &unk_1E865C300;
  objc_copyWeak(&v14, &location);
  v13 = v3;
  v10 = v3;
  dispatch_after(v8, queue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  v11 = *MEMORY[0x1E69E9840];
}

void __64__CSAudioTapProvider__scheduleDidStartRecordingDelegateWatchDog__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _schduleDidStartRecordingDelegateWatchDogWithToken:*(a1 + 32)];
}

- (void)_onAudioPacketWatchdogFire
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_audioPacketDeliveryCount)
  {
    self->_audioPacketDeliveryCount = 0;
  }

  else
  {
    v3 = CSLogCategoryAudio;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v5 = [(CSAudioTapProvider *)self UUID];
      v6 = 136315650;
      v7 = "[CSAudioTapProvider _onAudioPacketWatchdogFire]";
      v8 = 2114;
      v9 = v5;
      v10 = 2048;
      v11 = [(CSAudioTapProvider *)self tappingType];
      _os_log_fault_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_FAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Audio Packet Delivery WatchDog fired, trying to recover", &v6, 0x20u);
    }

    [(CSAudioTapProvider *)self _cancelAudioPacketWatchDog];
    [(CSAudioTapProvider *)self _handleAudioQueueDidStopWithError:0 reason:6];
    [(CSAudioTapProvider *)self _handleAudioSystemFailure];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_cancelAudioPacketWatchDog
{
  audioPacketWatchdog = self->_audioPacketWatchdog;
  if (audioPacketWatchdog)
  {
    dispatch_source_cancel(audioPacketWatchdog);
    v4 = self->_audioPacketWatchdog;
    self->_audioPacketWatchdog = 0;
  }
}

- (void)_scheduleAudioPacketWatchDog
{
  [(CSAudioTapProvider *)self _cancelAudioPacketWatchDog];
  self->_audioPacketDeliveryCount = 0;
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  audioPacketWatchdog = self->_audioPacketWatchdog;
  self->_audioPacketWatchdog = v3;

  v5 = dispatch_time(0, 0x6FC23B000);
  dispatch_source_set_timer(self->_audioPacketWatchdog, v5, 0x6FC23B000uLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, self);
  v6 = self->_audioPacketWatchdog;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CSAudioTapProvider__scheduleAudioPacketWatchDog__block_invoke;
  v7[3] = &unk_1E865CA40;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_audioPacketWatchdog);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __50__CSAudioTapProvider__scheduleAudioPacketWatchDog__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onAudioPacketWatchdogFire];
}

- (id)_streamStateName:(unint64_t)a3
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12[0] = &unk_1F5916A18;
  v12[1] = &unk_1F5916A30;
  v13[0] = @"StreamInit";
  v13[1] = @"StreamStarting";
  v12[2] = &unk_1F5916A48;
  v12[3] = &unk_1F5916A60;
  v13[2] = @"StreamStreaming";
  v13[3] = @"StreamStopping";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6 == 0;

  if (v7)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%tu)", a3];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v9 = [v4 objectForKeyedSubscript:v8];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (unsigned)_calculateBufferSize:(OpaqueAudioQueue *)a3 audioStreamBasicDescription:(AudioStreamBasicDescription *)a4 frameSizeInSec:(float)a5
{
  mBytesPerPacket = a4->mBytesPerPacket;
  outData = mBytesPerPacket;
  if (!mBytesPerPacket)
  {
    ioDataSize = 4;
    AudioQueueGetProperty(a3, 0x786F7073u, &outData, &ioDataSize);
    mBytesPerPacket = outData;
  }

  return fmin(a4->mSampleRate * mBytesPerPacket * a5, 57344.0);
}

- (BOOL)_isRecording
{
  recordingAudioQueue = self->_recordingAudioQueue;
  if (recordingAudioQueue)
  {
    LOBYTE(recordingAudioQueue) = isAudioQueueRecording(recordingAudioQueue, 0);
  }

  return recordingAudioQueue;
}

- (BOOL)isRecording
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CSAudioTapProvider_isRecording__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __33__CSAudioTapProvider_isRecording__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isRecording];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_stopRecordingAudioQueueIfNeeded:(id)a3 completion:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __66__CSAudioTapProvider__stopRecordingAudioQueueIfNeeded_completion___block_invoke;
  v26[3] = &unk_1E865C2D8;
  v26[4] = self;
  v8 = MEMORY[0x1E12BA300](v26);
  v9 = [(CSAudioTapProvider *)self streams];
  [v9 removeAllObjects];

  if (v6)
  {
    v10 = [(CSAudioTapProvider *)self stopPendingStreams];
    [v10 addObject:v6];
  }

  if (v7)
  {
    v11 = [(CSAudioTapProvider *)self pendingStopCompletions];
    v12 = MEMORY[0x1E12BA300](v7);
    [v11 addObject:v12];
  }

  if (self->_recordingAudioQueue)
  {
    [(CSAudioTapProvider *)self _scheduleDidStopRecordingDelegateWatchDog];
    v13 = AudioQueueStop(self->_recordingAudioQueue, 1u);
    if (v13)
    {
      v14 = CSLogCategoryAudio;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v24 = [(CSAudioTapProvider *)self UUID];
        v25 = [(CSAudioTapProvider *)self tappingType];
        *buf = 136315650;
        v28 = "[CSAudioTapProvider _stopRecordingAudioQueueIfNeeded:completion:]";
        v29 = 2114;
        v30 = v24;
        v31 = 2048;
        v32 = v25;
        _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, "%s CSAudioTapProvider[%{public}@][%lu]:Failed to stop Audio Queue", buf, 0x20u);
      }

      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v13 userInfo:0];
      (v8)[2](v8, v15);
    }

    else
    {
      [(CSAudioTapProvider *)self setStreamState:4];
      v19 = CSLogCategoryAudio;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(CSAudioTapProvider *)self UUID];
        v21 = [(CSAudioTapProvider *)self tappingType];
        v22 = [(CSAudioTapProvider *)self _streamStateName:self->_streamState];
        *buf = 136315906;
        v28 = "[CSAudioTapProvider _stopRecordingAudioQueueIfNeeded:completion:]";
        v29 = 2114;
        v30 = v20;
        v31 = 2048;
        v32 = v21;
        v33 = 2114;
        v34 = v22;
        _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Stopped Audio Queue successfully, moving stream state to %{public}@", buf, 0x2Au);
      }

      v15 = 0;
    }
  }

  else
  {
    v16 = CSLogCategoryAudio;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(CSAudioTapProvider *)self UUID];
      v18 = [(CSAudioTapProvider *)self tappingType];
      *buf = 136315650;
      v28 = "[CSAudioTapProvider _stopRecordingAudioQueueIfNeeded:completion:]";
      v29 = 2114;
      v30 = v17;
      v31 = 2048;
      v32 = v18;
      _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Recording queue does not exist, return as stopped successfully", buf, 0x20u);
    }

    v8[2](v8, 0);
    v15 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __66__CSAudioTapProvider__stopRecordingAudioQueueIfNeeded_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) stopPendingStreams];
  [v4 removeAllObjects];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(a1 + 32) pendingStopCompletions];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [*(a1 + 32) pendingStopCompletions];
  [v9 removeAllObjects];

  [*(a1 + 32) setStreamState:0];
  [*(a1 + 32) _releaseTransactionForStopListeningIfNeeded];

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldStopRecording
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(CSAudioTapProvider *)self streams];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v13 objects:v25 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(*(&v13 + 1) + 8 * v7))
        {
          ++v4;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v25 count:16];
    }

    while (v5);
  }

  v8 = CSLogCategoryAudio;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CSAudioTapProvider *)self UUID];
    v10 = [(CSAudioTapProvider *)self tappingType];
    *buf = 136315906;
    v18 = "[CSAudioTapProvider _shouldStopRecording]";
    v19 = 2114;
    v20 = v9;
    v21 = 2048;
    v22 = v10;
    v23 = 2050;
    v24 = v4;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:There are %{public}tu streams", buf, 0x2Au);
  }

  result = v4 == 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)stopAudioStream:(id)a3 option:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__CSAudioTapProvider_stopAudioStream_option_completion___block_invoke;
  v19[3] = &unk_1E865CAB8;
  v9 = v8;
  v20 = v9;
  v10 = MEMORY[0x1E12BA300](v19);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CSAudioTapProvider_stopAudioStream_option_completion___block_invoke_2;
  block[3] = &unk_1E865C2B0;
  block[4] = self;
  v16 = v7;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v7;
  dispatch_async(queue, block);
}

void __56__CSAudioTapProvider_stopAudioStream_option_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void __56__CSAudioTapProvider_stopAudioStream_option_completion___block_invoke_2(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = CSLogCategoryAudio;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UUID];
    v4 = [*(a1 + 32) tappingType];
    v38 = 136315650;
    v39 = "[CSAudioTapProvider stopAudioStream:option:completion:]_block_invoke_2";
    v40 = 2114;
    v41 = v3;
    v42 = 2048;
    v43 = v4;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:", &v38, 0x20u);
  }

  v5 = *(a1 + 40);
  if (v5 && ([v5 isStreaming] & 1) == 0)
  {
    v18 = CSLogCategoryAudio;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 32) UUID];
      v20 = [*(a1 + 32) tappingType];
      v21 = [*(a1 + 40) name];
      v22 = [*(a1 + 32) _streamStateName:*(*(a1 + 32) + 104)];
      v38 = 136316162;
      v39 = "[CSAudioTapProvider stopAudioStream:option:completion:]_block_invoke";
      v40 = 2114;
      v41 = v19;
      v42 = 2048;
      v43 = v20;
      v44 = 2114;
      v45 = v21;
      v46 = 2114;
      v47 = v22;
      _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Stream %{public}@ is not streaming on stream state : %{public}@, ignore the stopAudioStream request", &v38, 0x34u);
    }

    v23 = *(a1 + 48);
    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2064 userInfo:0];
    (*(v23 + 16))(v23, 1, v24);
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = v6[13];
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v30 = [v6 streams];
        [v30 removeObject:*(a1 + 40)];

        if ([*(a1 + 32) _shouldStopRecording])
        {
          [*(a1 + 32) _stopRecordingAudioQueueIfNeeded:*(a1 + 40) completion:*(a1 + 56)];
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (v7 != 4)
      {
LABEL_21:
        v25 = *(a1 + 48);
        v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2067 userInfo:0];
        (*(v25 + 16))(v25, 0, v26);

        goto LABEL_28;
      }

      v11 = CSLogCategoryAudio;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) UUID];
        v13 = [*(a1 + 32) tappingType];
        v38 = 136315650;
        v39 = "[CSAudioTapProvider stopAudioStream:option:completion:]_block_invoke";
        v40 = 2114;
        v41 = v12;
        v42 = 2048;
        v43 = v13;
        _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:requested stop audio stream while stopping, adding audio stream into stop pending", &v38, 0x20u);
      }

      v14 = [*(a1 + 32) streams];
      [v14 removeObject:*(a1 + 40)];

      v15 = [*(a1 + 32) stopPendingStreams];
      [v15 addObject:*(a1 + 40)];

      if (*(a1 + 56))
      {
        v16 = [*(a1 + 32) pendingStopCompletions];
        v17 = MEMORY[0x1E12BA300](*(a1 + 56));
        [v16 addObject:v17];
      }
    }

    else
    {
      if (v7)
      {
        if (v7 == 2)
        {
          if (*(a1 + 40))
          {
            v8 = CSLogCategoryAudio;
            if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
            {
              v35 = [*(a1 + 32) UUID];
              v36 = [*(a1 + 32) tappingType];
              v37 = [*(a1 + 32) _streamStateName:*(*(a1 + 32) + 104)];
              v38 = 136315906;
              v39 = "[CSAudioTapProvider stopAudioStream:option:completion:]_block_invoke";
              v40 = 2114;
              v41 = v35;
              v42 = 2048;
              v43 = v36;
              v44 = 2114;
              v45 = v37;
              _os_log_fault_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_FAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Cannot handle stop audio stream on : %{public}@", &v38, 0x2Au);
            }

            v9 = *(a1 + 48);
            v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2066 userInfo:0];
            (*(v9 + 16))(v9, 0, v10);

            goto LABEL_28;
          }

LABEL_27:
          (*(*(a1 + 48) + 16))();
          goto LABEL_28;
        }

        goto LABEL_21;
      }

      v27 = CSLogCategoryAudio;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        v32 = [*(a1 + 32) UUID];
        v33 = [*(a1 + 32) tappingType];
        v34 = [*(a1 + 32) _streamStateName:*(*(a1 + 32) + 104)];
        v38 = 136315906;
        v39 = "[CSAudioTapProvider stopAudioStream:option:completion:]_block_invoke";
        v40 = 2114;
        v41 = v32;
        v42 = 2048;
        v43 = v33;
        v44 = 2114;
        v45 = v34;
        _os_log_fault_impl(&dword_1DDA4B000, v27, OS_LOG_TYPE_FAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Cannot handle stop audio stream on : %{public}@", &v38, 0x2Au);
      }

      v28 = *(a1 + 48);
      v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2065 userInfo:0];
      (*(v28 + 16))(v28, 0, v29);
    }
  }

LABEL_28:
  v31 = *MEMORY[0x1E69E9840];
}

- (void)startAudioStream:(id)a3 option:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __57__CSAudioTapProvider_startAudioStream_option_completion___block_invoke;
  v23[3] = &unk_1E865CAB8;
  v11 = v10;
  v24 = v11;
  v12 = MEMORY[0x1E12BA300](v23);
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__CSAudioTapProvider_startAudioStream_option_completion___block_invoke_2;
  v18[3] = &unk_1E865C288;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v12;
  v22 = v11;
  v14 = v11;
  v15 = v12;
  v16 = v9;
  v17 = v8;
  dispatch_async(queue, v18);
}

void __57__CSAudioTapProvider_startAudioStream_option_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void __57__CSAudioTapProvider_startAudioStream_option_completion___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = CSLogCategoryAudio;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UUID];
    v4 = [*(a1 + 32) tappingType];
    v5 = [*(a1 + 40) name];
    v6 = [*(a1 + 48) localizedDescription];
    v7 = [*(a1 + 32) _streamStateName:{objc_msgSend(*(a1 + 32), "streamState")}];
    LODWORD(buf.mSampleTime) = 136316418;
    *(&buf.mSampleTime + 4) = "[CSAudioTapProvider startAudioStream:option:completion:]_block_invoke_2";
    WORD2(buf.mHostTime) = 2114;
    *(&buf.mHostTime + 6) = v3;
    HIWORD(buf.mRateScalar) = 2048;
    buf.mWordClockTime = v4;
    buf.mSMPTETime.mSubframes = 2114;
    *&buf.mSMPTETime.mSubframeDivisor = v5;
    HIWORD(buf.mSMPTETime.mType) = 2114;
    *&buf.mSMPTETime.mFlags = v6;
    buf.mSMPTETime.mSeconds = 2114;
    *&buf.mSMPTETime.mFrames = v7;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:stream: %{public}@, option: %{public}@, streamState: %{public}@", &buf, 0x3Eu);
  }

  v8 = *(a1 + 32);
  v9 = v8[13];
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v23 = [v8 streams];
      [v23 addObject:*(a1 + 40)];

      (*(*(a1 + 56) + 16))();
      goto LABEL_26;
    }

    if (v9 == 4)
    {
      v13 = *(a1 + 56);
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2062 userInfo:0];
      (*(v13 + 16))(v13, 0, v14);

      goto LABEL_26;
    }

    goto LABEL_11;
  }

  if (v9)
  {
    if (v9 == 2)
    {
      v10 = [v8 startPendingStreams];
      [v10 addObject:*(a1 + 40)];

      if (*(a1 + 64))
      {
        v11 = [*(a1 + 32) pendingStartCompletions];
        v12 = MEMORY[0x1E12BA300](*(a1 + 64));
        [v11 addObject:v12];
      }

      goto LABEL_26;
    }

LABEL_11:
    v15 = *(a1 + 56);
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2063 userInfo:0];
    (*(v15 + 16))(v15, 0, v16);

    goto LABEL_26;
  }

  [v8 _holdTransactionForStartListening];
  if ([*(a1 + 32) _setupRecordingAudioQueueIfNeededWithOption:*(a1 + 48)])
  {
    for (i = 8; i != 40; i += 8)
    {
      AudioQueueEnqueueBuffer([*(a1 + 32) recordingAudioQueue], *(*(a1 + 32) + i), 0, 0);
    }

    v18 = mach_absolute_time();
    if ([*(a1 + 48) requestHistoricalAudioDataWithHostTime])
    {
      v18 = [*(a1 + 48) startRecordingHostTime];
    }

    buf.mSampleTime = 0.0;
    memset(&buf.mRateScalar, 0, 40);
    buf.mHostTime = v18;
    *&buf.mFlags = 2;
    v19 = AudioQueueStart([*(a1 + 32) recordingAudioQueue], &buf);
    if (v19)
    {
      v20 = CSLogCategoryAudio;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v29 = [*(a1 + 32) UUID];
        v30 = [*(a1 + 32) tappingType];
        v31 = 136315906;
        v32 = "[CSAudioTapProvider startAudioStream:option:completion:]_block_invoke";
        v33 = 2114;
        v34 = v29;
        v35 = 2048;
        v36 = v30;
        v37 = 1024;
        v38 = v19;
        _os_log_error_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_ERROR, "%s CSAudioTapProvider[%{public}@][%lu]:Failed to start Audio Queue! %d", &v31, 0x26u);
      }

      [*(a1 + 32) _releaseTransactionForStopListeningIfNeeded];
      v21 = *(a1 + 56);
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v19 userInfo:0];
      (*(v21 + 16))(v21, 0, v22);
    }

    else
    {
      [*(a1 + 32) _scheduleAudioPacketWatchDog];
      [*(a1 + 32) _scheduleDidStartRecordingDelegateWatchDog];
      [*(a1 + 32) setStreamState:2];
      v26 = [*(a1 + 32) startPendingStreams];
      [v26 addObject:*(a1 + 40)];

      if (!*(a1 + 64))
      {
        goto LABEL_26;
      }

      v22 = [*(a1 + 32) pendingStartCompletions];
      v27 = MEMORY[0x1E12BA300](*(a1 + 64));
      [v22 addObject:v27];
    }

    goto LABEL_26;
  }

  [*(a1 + 32) _releaseTransactionForStopListeningIfNeeded];
  v24 = *(a1 + 56);
  v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2051 userInfo:0];
  (*(v24 + 16))(v24, 0, v25);

LABEL_26:
  v28 = *MEMORY[0x1E69E9840];
}

- (void)_releaseTransactionForStopListeningIfNeeded
{
  if (self->_transaction)
  {
    self->_transaction = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)_holdTransactionForStartListening
{
  if (!self->_transaction)
  {
    v4 = [[CSOSTransaction alloc] initWithDescription:@"AudioTapProvider"];
    transaction = self->_transaction;
    self->_transaction = v4;

    MEMORY[0x1EEE66BB8](v4, transaction);
  }
}

- (void)_destroyRecordingAudioQueue
{
  v28 = *MEMORY[0x1E69E9840];
  recordingAudioQueue = self->_recordingAudioQueue;
  if (recordingAudioQueue)
  {
    AudioQueueRemovePropertyListener(recordingAudioQueue, 0x6171726Eu, isRunningListenerCallback, self);
    v4 = 8;
    *&v5 = 136315906;
    v19 = v5;
    do
    {
      v6 = *(&self->super.isa + v4);
      if (v6)
      {
        v7 = AudioQueueFreeBuffer(self->_recordingAudioQueue, v6);
        if (v7)
        {
          v8 = CSLogCategoryAudio;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = [(CSAudioTapProvider *)self UUID];
            v10 = [(CSAudioTapProvider *)self tappingType];
            *buf = v19;
            v21 = "[CSAudioTapProvider _destroyRecordingAudioQueue]";
            v22 = 2114;
            v23 = v9;
            v24 = 2048;
            v25 = v10;
            v26 = 1024;
            v27 = v7;
            _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s CSAudioTapProvider[%{public}@][%lu]:AudioQueueFreeBuffer error: %i", buf, 0x26u);
          }
        }
      }

      v4 += 8;
    }

    while (v4 != 40);
    v11 = AudioQueueDispose(self->_recordingAudioQueue, 1u);
    v12 = CSLogCategoryAudio;
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = [(CSAudioTapProvider *)self UUID];
        v15 = [(CSAudioTapProvider *)self tappingType];
        *buf = v19;
        v21 = "[CSAudioTapProvider _destroyRecordingAudioQueue]";
        v22 = 2114;
        v23 = v14;
        v24 = 2048;
        v25 = v15;
        v26 = 1024;
        v27 = v11;
        _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s CSAudioTapProvider[%{public}@][%lu]:Failed to dispose Audio Queue with error: %i", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(CSAudioTapProvider *)self UUID];
      v17 = [(CSAudioTapProvider *)self tappingType];
      *buf = 136315650;
      v21 = "[CSAudioTapProvider _destroyRecordingAudioQueue]";
      v22 = 2114;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Audio Queue has been disposed", buf, 0x20u);
    }

    self->_recordingAudioQueue = 0;
  }

  [(CSAudioTapProvider *)self setStreamState:0, v19];
  [(CSAudioTapProvider *)self _postEpilogueAudioStream];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)_stopAndDestroyRecordingAudioQueueWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CSAudioTapProvider *)self _isRecording];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CSAudioTapProvider__stopAndDestroyRecordingAudioQueueWithCompletion___block_invoke;
  block[3] = &unk_1E865C260;
  v10 = v5;
  block[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, block);
}

void __71__CSAudioTapProvider__stopAndDestroyRecordingAudioQueueWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v2 = CSLogCategoryAudio;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) UUID];
      v4 = [*(a1 + 32) tappingType];
      *buf = 136315650;
      v13 = "[CSAudioTapProvider _stopAndDestroyRecordingAudioQueueWithCompletion:]_block_invoke";
      v14 = 2114;
      v15 = v3;
      v16 = 2048;
      v17 = v4;
      _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Stopping current audio queue before destroying", buf, 0x20u);
    }

    v5 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__CSAudioTapProvider__stopAndDestroyRecordingAudioQueueWithCompletion___block_invoke_15;
    v10[3] = &unk_1E865C238;
    v10[4] = v5;
    v11 = *(a1 + 40);
    [v5 _hardStopRecordingAudioQueueWithCompletion:v10];

    goto LABEL_9;
  }

  [*(a1 + 32) _destroyRecordingAudioQueue];
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_9:
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  v7 = *(v6 + 16);
  v8 = *MEMORY[0x1E69E9840];

  v7();
}

uint64_t __71__CSAudioTapProvider__stopAndDestroyRecordingAudioQueueWithCompletion___block_invoke_15(uint64_t a1)
{
  [*(a1 + 32) _destroyRecordingAudioQueue];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)_setupRecordingAudioQueueIfNeededWithOption:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  if ([(CSAudioTapProvider *)self recordingAudioQueue])
  {
    v4 = CSLogCategoryAudio;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(CSAudioTapProvider *)self UUID];
      LODWORD(buf.mSampleRate) = 136315650;
      *(&buf.mSampleRate + 4) = "[CSAudioTapProvider _setupRecordingAudioQueueIfNeededWithOption:]";
      LOWORD(buf.mFormatFlags) = 2114;
      *(&buf.mFormatFlags + 2) = v5;
      HIWORD(buf.mFramesPerPacket) = 2048;
      *&buf.mBytesPerFrame = [(CSAudioTapProvider *)self tappingType];
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Audio Queue already exists, skip setup", &buf, 0x20u);
    }

    v6 = 1;
    goto LABEL_42;
  }

  memset(&buf, 0, sizeof(buf));
  +[CSFAudioStreamBasicDescriptionFactory lpcmMonoNonInterleavedASBD];
  outAQ = 0;
  if (!AudioQueueNewInput(&buf, handleInputBuffer, self, 0, 0, 0x800u, &outAQ))
  {
    v8 = [objc_alloc(MEMORY[0x1E6958420]) initWithStreamDescription:&buf];
    tappingType = self->_tappingType;
    v10 = CSLogCategoryAudio;
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (tappingType == 1)
    {
      if (v11)
      {
        v12 = [(CSAudioTapProvider *)self UUID];
        v13 = [(CSAudioTapProvider *)self tappingType];
        LODWORD(v51.mSampleRate) = 136315650;
        *(&v51.mSampleRate + 4) = "[CSAudioTapProvider _setupRecordingAudioQueueIfNeededWithOption:]";
        LOWORD(v51.mFormatFlags) = 2114;
        *(&v51.mFormatFlags + 2) = v12;
        HIWORD(v51.mFramesPerPacket) = 2048;
        *&v51.mBytesPerFrame = v13;
        _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Tapping telephony", &v51, 0x20u);
      }

      v14 = [objc_alloc(MEMORY[0x1E695A888]) initProcessTapWithFormat:v8 PID:4294967294];
    }

    else
    {
      if (v11)
      {
        v15 = [(CSAudioTapProvider *)self UUID];
        v16 = [(CSAudioTapProvider *)self tappingType];
        LODWORD(v51.mSampleRate) = 136315650;
        *(&v51.mSampleRate + 4) = "[CSAudioTapProvider _setupRecordingAudioQueueIfNeededWithOption:]";
        LOWORD(v51.mFormatFlags) = 2114;
        *(&v51.mFormatFlags + 2) = v15;
        HIWORD(v51.mFramesPerPacket) = 2048;
        *&v51.mBytesPerFrame = v16;
        _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Tapping system", &v51, 0x20u);
      }

      v14 = [objc_alloc(MEMORY[0x1E695A888]) initSystemTapWithFormat:v8];
    }

    v17 = v14;
    v18 = [objc_alloc(MEMORY[0x1E695A880]) initWithTapDescription:v14];
    if (!v18)
    {
      v21 = CSLogCategoryAudio;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v40 = [(CSAudioTapProvider *)self UUID];
        v41 = [(CSAudioTapProvider *)self tappingType];
        LODWORD(v51.mSampleRate) = 136315650;
        *(&v51.mSampleRate + 4) = "[CSAudioTapProvider _setupRecordingAudioQueueIfNeededWithOption:]";
        LOWORD(v51.mFormatFlags) = 2114;
        *(&v51.mFormatFlags + 2) = v40;
        HIWORD(v51.mFramesPerPacket) = 2048;
        *&v51.mBytesPerFrame = v41;
        _os_log_error_impl(&dword_1DDA4B000, v21, OS_LOG_TYPE_ERROR, "%s CSAudioTapProvider[%{public}@][%lu]:Failed to create ATAudioTap!", &v51, 0x20u);
      }

      goto LABEL_24;
    }

    v19 = AudioQueueSetProperty(outAQ, 0x71746F62u, v18, 8u);
    v20 = CSLogCategoryAudio;
    if (v19)
    {
      v21 = CSLogCategoryAudio;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [(CSAudioTapProvider *)self UUID];
        v23 = [(CSAudioTapProvider *)self tappingType];
        LODWORD(v51.mSampleRate) = 136315650;
        *(&v51.mSampleRate + 4) = "[CSAudioTapProvider _setupRecordingAudioQueueIfNeededWithOption:]";
        LOWORD(v51.mFormatFlags) = 2114;
        *(&v51.mFormatFlags + 2) = v22;
        HIWORD(v51.mFramesPerPacket) = 2048;
        *&v51.mBytesPerFrame = v23;
        _os_log_error_impl(&dword_1DDA4B000, v21, OS_LOG_TYPE_ERROR, "%s CSAudioTapProvider[%{public}@][%lu]:Failed to set Audio Queue Process Tap!", &v51, 0x20u);
      }

LABEL_24:

      if (outAQ)
      {
        AudioQueueDispose(outAQ, 1u);
      }

      v6 = 0;
      goto LABEL_41;
    }

    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v51.mSampleRate) = 136315138;
      *(&v51.mSampleRate + 4) = "[CSAudioTapProvider _setupRecordingAudioQueueIfNeededWithOption:]";
      _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEFAULT, "%s Creating auxiliary session and associate Audio Queue with it", &v51, 0xCu);
    }

    v24 = [MEMORY[0x1E6958468] auxiliarySession];
    inData = [v24 opaqueSessionID];
    if (AudioQueueSetProperty(outAQ, 0x72736573u, &inData, 4u))
    {
      v25 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v51.mSampleRate) = 136315138;
        *(&v51.mSampleRate + 4) = "[CSAudioTapProvider _setupRecordingAudioQueueIfNeededWithOption:]";
        _os_log_error_impl(&dword_1DDA4B000, v25, OS_LOG_TYPE_ERROR, "%s Failed to set Audio Queue property with sessionId!", &v51, 0xCu);
      }

      if (outAQ)
      {
        AudioQueueDispose(outAQ, 1u);
      }

LABEL_39:
      v6 = 0;
LABEL_40:

LABEL_41:
      goto LABEL_42;
    }

    v48 = 40;
    if (AudioQueueGetProperty(outAQ, 0x61716674u, &buf, &v48))
    {
      v28 = CSLogCategoryAudio;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v44 = [(CSAudioTapProvider *)self UUID];
        v45 = [(CSAudioTapProvider *)self tappingType];
        LODWORD(v51.mSampleRate) = 136315650;
        *(&v51.mSampleRate + 4) = "[CSAudioTapProvider _setupRecordingAudioQueueIfNeededWithOption:]";
        LOWORD(v51.mFormatFlags) = 2114;
        *(&v51.mFormatFlags + 2) = v44;
        HIWORD(v51.mFramesPerPacket) = 2048;
        *&v51.mBytesPerFrame = v45;
        _os_log_error_impl(&dword_1DDA4B000, v28, OS_LOG_TYPE_ERROR, "%s CSAudioTapProvider[%{public}@][%lu]:Failed to get data format size!", &v51, 0x20u);
      }

      if (outAQ)
      {
        AudioQueueDispose(outAQ, 1u);
      }

      goto LABEL_39;
    }

    if (outAQ)
    {
      [(CSAudioTapProvider *)self setRecordingAudioQueue:?];
      v31 = [(CSAudioTapProvider *)self recordingAudioQueue];
      v51 = buf;
      +[CSConfig inputRecordingBufferDuration];
      *&v32 = v32;
      v33 = [(CSAudioTapProvider *)self _calculateBufferSize:v31 audioStreamBasicDescription:&v51 frameSizeInSec:v32];
      for (i = 8; i != 40; i += 8)
      {
        AudioQueueAllocateBuffer([(CSAudioTapProvider *)self recordingAudioQueue], v33, (self + i));
      }

      v35 = AudioQueueAddPropertyListener([(CSAudioTapProvider *)self recordingAudioQueue], 0x6171726Eu, isRunningListenerCallback, self);
      v36 = CSLogCategoryAudio;
      v37 = v36;
      if (!v35)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [(CSAudioTapProvider *)self UUID];
          v43 = [(CSAudioTapProvider *)self tappingType];
          LODWORD(v51.mSampleRate) = 136315650;
          *(&v51.mSampleRate + 4) = "[CSAudioTapProvider _setupRecordingAudioQueueIfNeededWithOption:]";
          LOWORD(v51.mFormatFlags) = 2114;
          *(&v51.mFormatFlags + 2) = v42;
          HIWORD(v51.mFramesPerPacket) = 2048;
          *&v51.mBytesPerFrame = v43;
          _os_log_impl(&dword_1DDA4B000, v37, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:Successfully created audio Queue for tapping", &v51, 0x20u);
        }

        v6 = 1;
        goto LABEL_55;
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v38 = [(CSAudioTapProvider *)self UUID];
        v39 = [(CSAudioTapProvider *)self tappingType];
        LODWORD(v51.mSampleRate) = 136315650;
        *(&v51.mSampleRate + 4) = "[CSAudioTapProvider _setupRecordingAudioQueueIfNeededWithOption:]";
        LOWORD(v51.mFormatFlags) = 2114;
        *(&v51.mFormatFlags + 2) = v38;
        HIWORD(v51.mFramesPerPacket) = 2048;
        *&v51.mBytesPerFrame = v39;
        _os_log_error_impl(&dword_1DDA4B000, v37, OS_LOG_TYPE_ERROR, "%s CSAudioTapProvider[%{public}@][%lu]:Failed to add isRunning listener!", &v51, 0x20u);
      }
    }

    else
    {
      v37 = CSLogCategoryAudio;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v46 = [(CSAudioTapProvider *)self UUID];
        v47 = [(CSAudioTapProvider *)self tappingType];
        LODWORD(v51.mSampleRate) = 136315650;
        *(&v51.mSampleRate + 4) = "[CSAudioTapProvider _setupRecordingAudioQueueIfNeededWithOption:]";
        LOWORD(v51.mFormatFlags) = 2114;
        *(&v51.mFormatFlags + 2) = v46;
        HIWORD(v51.mFramesPerPacket) = 2048;
        *&v51.mBytesPerFrame = v47;
        _os_log_error_impl(&dword_1DDA4B000, v37, OS_LOG_TYPE_ERROR, "%s CSAudioTapProvider[%{public}@][%lu]:recordingAudioQueue is nil!", &v51, 0x20u);
      }
    }

    v6 = 0;
LABEL_55:

    goto LABEL_40;
  }

  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v26 = [(CSAudioTapProvider *)self UUID];
    v27 = [(CSAudioTapProvider *)self tappingType];
    LODWORD(v51.mSampleRate) = 136315650;
    *(&v51.mSampleRate + 4) = "[CSAudioTapProvider _setupRecordingAudioQueueIfNeededWithOption:]";
    LOWORD(v51.mFormatFlags) = 2114;
    *(&v51.mFormatFlags + 2) = v26;
    HIWORD(v51.mFramesPerPacket) = 2048;
    *&v51.mBytesPerFrame = v27;
    _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s CSAudioTapProvider[%{public}@][%lu]:Failed to create AudioQueue input!", &v51, 0x20u);
  }

  if (outAQ)
  {
    AudioQueueDispose(outAQ, 1u);
  }

  v6 = 0;
LABEL_42:
  v29 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_postEpilogueAudioStream
{
  self->_processedSampleCount = 0;
  circularBuffer = self->_circularBuffer;
  if (circularBuffer)
  {
    [(CSAudioCircularBuffer *)circularBuffer reset];
  }

  [(CSAudioTapProvider *)self _releaseTransactionForStopListeningIfNeeded];
}

- (void)setStreamState:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSAudioTapProvider *)self UUID];
    v7 = [(CSAudioTapProvider *)self tappingType];
    v8 = [(CSAudioTapProvider *)self _streamStateName:self->_streamState];
    v9 = [(CSAudioTapProvider *)self _streamStateName:a3];
    v11 = 136316162;
    v12 = "[CSAudioTapProvider setStreamState:]";
    v13 = 2114;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:StreamState changed from : %{public}@ to : %{public}@", &v11, 0x34u);
  }

  self->_streamState = a3;
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setup
{
  v3 = +[CSAudioServerCrashMonitor sharedInstance];
  [v3 addObserver:self];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSAudioTapProvider dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  [(CSAudioTapProvider *)self _destroyRecordingAudioQueue];
  v5.receiver = self;
  v5.super_class = CSAudioTapProvider;
  [(CSAudioTapProvider *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (CSAudioTapProvider)initWithTappingType:(unint64_t)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = CSAudioTapProvider;
  v4 = [(CSAudioTapProvider *)&v28 init];
  if (v4)
  {
    v5 = dispatch_queue_create("CSAudioTapProvider audioDispatchQueue", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -2);
    v8 = dispatch_queue_create("CSAudioTapProvider logging", v7);
    loggingQueue = v4->_loggingQueue;
    v4->_loggingQueue = v8;

    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    UUIDString = v4->_UUIDString;
    v4->_UUIDString = v11;

    v4->_processedSampleCount = 0;
    v13 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    startPendingStreams = v4->_startPendingStreams;
    v4->_startPendingStreams = v13;

    v15 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    stopPendingStreams = v4->_stopPendingStreams;
    v4->_stopPendingStreams = v15;

    v17 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    streams = v4->_streams;
    v4->_streams = v17;

    v19 = [MEMORY[0x1E695DF70] array];
    pendingStartCompletions = v4->_pendingStartCompletions;
    v4->_pendingStartCompletions = v19;

    v21 = [MEMORY[0x1E695DF70] array];
    pendingStopCompletions = v4->_pendingStopCompletions;
    v4->_pendingStopCompletions = v21;

    [(CSAudioTapProvider *)v4 setStreamState:0];
    v4->_tappingType = a3;
    v23 = CSLogCategoryAudio;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(CSAudioTapProvider *)v4 UUID];
      v25 = [(CSAudioTapProvider *)v4 tappingType];
      *buf = 136315650;
      v30 = "[CSAudioTapProvider initWithTappingType:]";
      v31 = 2114;
      v32 = v24;
      v33 = 2048;
      v34 = v25;
      _os_log_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_DEFAULT, "%s CSAudioTapProvider[%{public}@][%lu]:", buf, 0x20u);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)_handleAudioQueueDidStopWithError:(id)a3 reason:(int64_t)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(CSAudioTapProvider *)self _cancelAudioPacketWatchDog];
  [(CSAudioTapProvider *)self _clearDidStopRecordingDelegateWatchDog];
  if ([(CSAudioTapProvider *)self streamState]== 4)
  {
    v7 = [(CSAudioTapProvider *)self stopPendingStreams];
    [v7 removeAllObjects];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [(CSAudioTapProvider *)self pendingStopCompletions];
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v9)
    {
      v10 = *v34;
      do
      {
        v11 = 0;
        do
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v33 + 1) + 8 * v11++) + 16))();
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v9);
    }

    v12 = [(CSAudioTapProvider *)self pendingStopCompletions];
    [v12 removeAllObjects];
LABEL_28:

    goto LABEL_29;
  }

  if ([(CSAudioTapProvider *)self streamState]== 2)
  {
    [(CSAudioTapProvider *)self _clearDidStartRecordingDelegateWatchDog];
    v13 = [(CSAudioTapProvider *)self startPendingStreams];
    [v13 removeAllObjects];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [(CSAudioTapProvider *)self pendingStartCompletions];
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v15)
    {
      v16 = *v30;
      do
      {
        v17 = 0;
        do
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v29 + 1) + 8 * v17);
          v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:956 userInfo:0];
          (*(v18 + 16))(v18, 0, v19);

          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v15);
    }

    v12 = [(CSAudioTapProvider *)self pendingStartCompletions];
    [v12 removeAllObjects];
    goto LABEL_28;
  }

  if ([(CSAudioTapProvider *)self streamState]== 3)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = [(CSAudioTapProvider *)self streams];
    v21 = [v20 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v21)
    {
      v22 = *v26;
      do
      {
        v23 = 0;
        do
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v25 + 1) + 8 * v23++) audioStreamProvider:self didStopStreamUnexpectedly:a4];
        }

        while (v21 != v23);
        v21 = [v20 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v21);
    }

    v12 = [(CSAudioTapProvider *)self streams];
    [v12 removeAllObjects];
    goto LABEL_28;
  }

LABEL_29:
  [(CSAudioTapProvider *)self setStreamState:0];
  [(CSAudioTapProvider *)self _postEpilogueAudioStream];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_handleAudioQueueDidStartWithResult:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!v4)
  {
    [(CSAudioTapProvider *)self _cancelAudioPacketWatchDog];
  }

  [(CSAudioTapProvider *)self _clearDidStartRecordingDelegateWatchDog];
  if ([(CSAudioTapProvider *)self streamState]== 2)
  {
    if (v4)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = [(CSAudioTapProvider *)self startPendingStreams];
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v8)
      {
        v9 = *v25;
        do
        {
          v10 = 0;
          do
          {
            if (*v25 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v24 + 1) + 8 * v10);
            v12 = [(CSAudioTapProvider *)self streams];
            [v12 addObject:v11];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v8);
      }
    }

    v13 = [(CSAudioTapProvider *)self startPendingStreams];
    [v13 removeAllObjects];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [(CSAudioTapProvider *)self pendingStartCompletions];
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          (*(*(*(&v20 + 1) + 8 * v17++) + 16))();
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }

    v18 = [(CSAudioTapProvider *)self pendingStartCompletions];
    [v18 removeAllObjects];

    if (v4)
    {
      [(CSAudioTapProvider *)self setStreamState:3];
    }

    else
    {
      [(CSAudioTapProvider *)self setStreamState:0];
      [(CSAudioTapProvider *)self _releaseTransactionForStopListeningIfNeeded];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end