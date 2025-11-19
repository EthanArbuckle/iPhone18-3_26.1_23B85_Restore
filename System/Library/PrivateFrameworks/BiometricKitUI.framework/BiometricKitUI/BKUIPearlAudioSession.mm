@interface BKUIPearlAudioSession
+ (id)_loadSound:(id)a3;
- (BKUIPearlAudioSession)init;
- (id)_setupMediaStack;
- (void)_mediaServicesConnectionWasLost:(id)a3;
- (void)_mediaServicesReconnect:(id)a3;
- (void)dealloc;
- (void)init;
- (void)play;
- (void)scheduleBuffer:(id)a3 atTime:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)scheduleBuffer:(id)a3 completionHandler:(id)a4;
- (void)stop;
@end

@implementation BKUIPearlAudioSession

+ (id)_loadSound:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:v4 withExtension:@"caf"];

  if (v6)
  {
    v19 = 0;
    v7 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:v6 error:&v19];
    v8 = v19;
    if (v7)
    {
      v9 = objc_alloc(MEMORY[0x277CB83C8]);
      v10 = [v7 processingFormat];
      v11 = [v9 initWithPCMFormat:v10 frameCapacity:objc_msgSend(v7, "length")];

      v18 = v8;
      v12 = [v7 readIntoBuffer:v11 error:&v18];
      v13 = v18;

      if (v12)
      {
        v11 = v11;
        v14 = v11;
      }

      else
      {
        v15 = _BKUILoggingFacility();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = v13;
          _os_log_impl(&dword_241B0A000, v15, OS_LOG_TYPE_DEFAULT, "Failed to read audio file into buffer: %@", buf, 0xCu);
        }

        v14 = 0;
      }
    }

    else
    {
      v11 = _BKUILoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&dword_241B0A000, v11, OS_LOG_TYPE_DEFAULT, "Failed to create audio file: %@", buf, 0xCu);
      }

      v14 = 0;
      v13 = v8;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BKUIPearlAudioSession)init
{
  v21.receiver = self;
  v21.super_class = BKUIPearlAudioSession;
  v2 = [(BKUIPearlAudioSession *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.biometrickitui.avPlayerNodeOperationQueue", 0);
    avPlayerNodeOperationQueue = v2->_avPlayerNodeOperationQueue;
    v2->_avPlayerNodeOperationQueue = v3;

    v5 = [BKUIPearlAudioSession _loadSound:@"PearlEnrollment_Lock-D22"];
    lockSoundBuffer = v2->_lockSoundBuffer;
    v2->_lockSoundBuffer = v5;

    v7 = [BKUIPearlAudioSession _loadSound:@"PearlEnrollment_Scan-D22"];
    scanSoundBuffer = v2->_scanSoundBuffer;
    v2->_scanSoundBuffer = v7;

    v9 = [BKUIPearlAudioSession _loadSound:@"PearlEnrollment_Complete-D22"];
    completeSoundBuffer = v2->_completeSoundBuffer;
    v2->_completeSoundBuffer = v9;

    v11 = [BKUIPearlAudioSession _loadSound:@"PearlEnrollment_End-D22"];
    endSoundBuffer = v2->_endSoundBuffer;
    v2->_endSoundBuffer = v11;

    v13 = [BKUIPearlAudioSession _loadSound:@"PearlEnrollment_Fail-D22"];
    failSoundBuffer = v2->_failSoundBuffer;
    v2->_failSoundBuffer = v13;

    v15 = [(BKUIPearlAudioSession *)v2 _setupMediaStack];
    if (v15)
    {
      v16 = _BKUILoggingFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(BKUIPearlAudioSession *)v15 init];
      }

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    v2->_mediaServicesConnected = v17;
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v2 selector:sel__mediaServicesReconnect_ name:*MEMORY[0x277CB80A0] object:0];

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v2 selector:sel__mediaServicesConnectionWasLost_ name:*MEMORY[0x277CB8098] object:0];
  }

  return v2;
}

- (void)scheduleBuffer:(id)a3 atTime:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  avPlayerNodeOperationQueue = self->_avPlayerNodeOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__BKUIPearlAudioSession_scheduleBuffer_atTime_options_completionHandler___block_invoke;
  block[3] = &unk_278D0A960;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(avPlayerNodeOperationQueue, block);
}

void *__73__BKUIPearlAudioSession_scheduleBuffer_atTime_options_completionHandler___block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 72) == 1)
  {
    return [*(v1 + 16) scheduleBuffer:result[5] atTime:result[6] options:result[8] completionHandler:result[7]];
  }

  return result;
}

- (void)scheduleBuffer:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  avPlayerNodeOperationQueue = self->_avPlayerNodeOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__BKUIPearlAudioSession_scheduleBuffer_completionHandler___block_invoke;
  block[3] = &unk_278D09B48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(avPlayerNodeOperationQueue, block);
}

void *__58__BKUIPearlAudioSession_scheduleBuffer_completionHandler___block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 72) == 1)
  {
    return [*(v1 + 16) scheduleBuffer:result[5] completionHandler:result[6]];
  }

  return result;
}

- (void)play
{
  avPlayerNodeOperationQueue = self->_avPlayerNodeOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__BKUIPearlAudioSession_play__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(avPlayerNodeOperationQueue, block);
}

uint64_t __29__BKUIPearlAudioSession_play__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 72) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = _BKUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Audio node play called.", v5, 2u);
    }

    return [*(*(v3 + 32) + 16) play];
  }

  return result;
}

- (void)stop
{
  avPlayerNodeOperationQueue = self->_avPlayerNodeOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__BKUIPearlAudioSession_stop__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(avPlayerNodeOperationQueue, block);
}

uint64_t __29__BKUIPearlAudioSession_stop__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 72) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = _BKUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Audio node stop called.", v5, 2u);
    }

    return [*(*(v3 + 32) + 16) stop];
  }

  return result;
}

- (void)_mediaServicesReconnect:(id)a3
{
  avPlayerNodeOperationQueue = self->_avPlayerNodeOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BKUIPearlAudioSession__mediaServicesReconnect___block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(avPlayerNodeOperationQueue, block);
}

void __49__BKUIPearlAudioSession__mediaServicesReconnect___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 72) & 1) == 0)
  {
    v2 = _BKUILoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "_mediaServicesReconnect called", v5, 2u);
    }

    v3 = [*(a1 + 32) _setupMediaStack];
    if (v3)
    {
      v4 = _BKUILoggingFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __49__BKUIPearlAudioSession__mediaServicesReconnect___block_invoke_cold_1(v3, v4);
      }
    }

    else
    {
      *(*(a1 + 32) + 72) = 1;
    }
  }
}

- (void)_mediaServicesConnectionWasLost:(id)a3
{
  v4 = _BKUILoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "_mediaServicesConnectionWasLost called, niling cleaning up media stack", buf, 2u);
  }

  self->_mediaServicesConnected = 0;
  avPlayerNodeOperationQueue = self->_avPlayerNodeOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__BKUIPearlAudioSession__mediaServicesConnectionWasLost___block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(avPlayerNodeOperationQueue, block);
}

void __57__BKUIPearlAudioSession__mediaServicesConnectionWasLost___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) stop];
  [*(*(a1 + 32) + 8) detachNode:*(*(a1 + 32) + 16)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

- (id)_setupMediaStack
{
  v3 = objc_alloc_init(MEMORY[0x277CB83E0]);
  audioNode = self->_audioNode;
  self->_audioNode = v3;

  v5 = objc_alloc_init(MEMORY[0x277CB8388]);
  audioEngine = self->_audioEngine;
  self->_audioEngine = v5;

  [(AVAudioEngine *)self->_audioEngine attachNode:self->_audioNode];
  v7 = self->_audioEngine;
  v8 = self->_audioNode;
  v9 = [(AVAudioEngine *)v7 mainMixerNode];
  v10 = [(AVAudioPCMBuffer *)self->_lockSoundBuffer format];
  [(AVAudioEngine *)v7 connect:v8 to:v9 format:v10];

  v11 = self->_audioEngine;
  v14 = 0;
  [(AVAudioEngine *)v11 startAndReturnError:&v14];
  v12 = v14;

  return v12;
}

- (void)dealloc
{
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "BKUIPearlAudioSession dealloc.", buf, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  self->_mediaServicesConnected = 0;
  [(AVAudioEngine *)self->_audioEngine stop];
  [(AVAudioEngine *)self->_audioEngine detachNode:self->_audioNode];
  v5.receiver = self;
  v5.super_class = BKUIPearlAudioSession;
  [(BKUIPearlAudioSession *)&v5 dealloc];
}

- (void)init
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "Failed to start audio engine: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __49__BKUIPearlAudioSession__mediaServicesReconnect___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "Failed to start audio engine for _mediaServicesReconnect: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end