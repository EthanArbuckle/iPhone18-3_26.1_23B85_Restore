@interface MRUAudioAnalyzer
+ (id)audioAnalyzerForPID:(int)d;
- (MRUAudioAnalyzer)initWithPID:(int)d;
- (NSString)description;
- (id)binSamples:(float *)samples count:(int)count;
- (void)addObserver:(id)observer;
- (void)computeFFTWithSamples:(float *)samples;
- (void)dealloc;
- (void)processAudioTapDidReceiveAudioSamples:(void *)samples numberOfSamples:(unsigned int)ofSamples;
- (void)processAudioTapDidStop;
- (void)removeObserver:(id)observer;
- (void)start;
- (void)stop;
@end

@implementation MRUAudioAnalyzer

+ (id)audioAnalyzerForPID:(int)d
{
  v3 = *&d;
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (audioAnalyzerForPID__onceToken != -1)
  {
    +[MRUAudioAnalyzer audioAnalyzerForPID:];
  }

  v5 = __MRUAudioAnalyzerByPID;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v7 = [[MRUAudioAnalyzer alloc] initWithPID:v3];
    v8 = MCLogCategoryWaveform();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      selfCopy = self;
      v14 = 1024;
      v15 = v3;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "%@ Created audio analyzer for PID: %u - %@", &v12, 0x1Cu);
    }

    v9 = __MRUAudioAnalyzerByPID;
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [v9 setObject:v7 forKey:v10];
  }

  return v7;
}

uint64_t __40__MRUAudioAnalyzer_audioAnalyzerForPID___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = __MRUAudioAnalyzerByPID;
  __MRUAudioAnalyzerByPID = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MRUAudioAnalyzer)initWithPID:(int)d
{
  v22.receiver = self;
  v22.super_class = MRUAudioAnalyzer;
  v4 = [(MRUAudioAnalyzer *)&v22 init];
  v5 = v4;
  if (v4)
  {
    v4->_pid = d;
    v6 = +[MRUWaveformSettings currentSettings];
    settings = v5->_settings;
    v5->_settings = v6;

    v8 = +[MRUWaveformSettings currentSettings];
    [v8 samplingRefreshRate];
    v5->_refreshRate = v9;

    v5->_sampleRate = 48000.0;
    v10 = dispatch_queue_create("com.apple.MediaControls.MRUAudioAnalyzer-tapQueue", 0);
    tapQueue = v5->_tapQueue;
    v5->_tapQueue = v10;

    v5->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = weakObjectsHashTable;

    v14 = v5->_tapQueue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __32__MRUAudioAnalyzer_initWithPID___block_invoke;
    v19[3] = &unk_1E7664308;
    v15 = v5;
    v20 = v15;
    dCopy = d;
    dispatch_async(v14, v19);
    v16 = (ceilf(v5->_sampleRate / v5->_refreshRate) * 0.5);
    *(v15 + 2) = v16;
    v17 = vcvtad_u64_f64(log2(v16));
    *(v15 + 3) = v17;
    *(v15 + 4) = 1 << v17;
    *(v15 + 5) = (1 << v17) / 2;
    *(v15 + 6) = 2.0 / ((1 << v17) / 2);
    v15[4] = malloc_type_calloc(((1 << v17) + ((1 << v17) >> 31)) >> 1, 4uLL, 0x100004052888210uLL);
    v15[5] = malloc_type_calloc(*(v15 + 5), 4uLL, 0x100004052888210uLL);
    v15[7] = malloc_type_calloc(*(v15 + 5), 4uLL, 0x100004052888210uLL);
    v15[6] = malloc_type_calloc(*(v15 + 4), 4uLL, 0x100004052888210uLL);
    v15[8] = malloc_type_calloc(*(v15 + 4), 4uLL, 0x100004052888210uLL);
    v15[9] = malloc_type_calloc(*(v15 + 4), 4uLL, 0x100004052888210uLL);
    v15[10] = malloc_type_calloc(*(v15 + 4), 4uLL, 0x100004052888210uLL);
    v15[11] = malloc_type_calloc(*(v15 + 4), 4uLL, 0x100004052888210uLL);
    vDSP_hann_window(v15[8], *(v15 + 4), 2);
    v15[12] = vDSP_create_fftsetup(*(v15 + 3), 0);
  }

  return v5;
}

void __32__MRUAudioAnalyzer_initWithPID___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69B0868]);
  v3 = *(a1 + 40);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 112)];
  v4 = [v2 initWithPID:v3 refreshRate:v7 delegate:*(a1 + 32)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 144);
  *(v5 + 144) = v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_isRunning)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p - PID=%u running=%@ observers=%lu>", v4, self, self->_pid, v5, -[NSHashTable count](self->_observers, "count")];
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MCLogCategoryWaveform();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "%@ Dealloc", buf, 0xCu);
  }

  free(self->_realBuffer);
  free(self->_imagBuffer);
  free(self->_transferBuffer);
  free(self->_magnitudes);
  free(self->_hannWindow);
  free(self->_leftSamples);
  free(self->_rightSamples);
  free(self->_mixed);
  vDSP_destroy_fftsetup(self->_fftSetup);
  v4.receiver = self;
  v4.super_class = MRUAudioAnalyzer;
  [(MRUAudioAnalyzer *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  v10 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  if (![(NSHashTable *)self->_observers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_observers addObject:observerCopy];
    v5 = MCLogCategoryWaveform();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = observerCopy;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%@ Registered observer: %@", &v6, 0x16u);
    }

    [(MRUAudioAnalyzer *)self start];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  v10 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];
  v5 = MCLogCategoryWaveform();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = observerCopy;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%@ Unregistered observer: %@", &v6, 0x16u);
  }

  if (![(NSHashTable *)self->_observers count])
  {
    [(MRUAudioAnalyzer *)self stop];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)start
{
  v9 = *MEMORY[0x1E69E9840];
  if (!self->_isRunning)
  {
    self->_isRunning = 1;
    v3 = +[MRUFinishTaskAssertionManager sharedManager];
    [v3 releaseForTaskToken:self];

    v4 = MCLogCategoryWaveform();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%@ Starting audio analyzer", buf, 0xCu);
    }

    tapQueue = self->_tapQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __25__MRUAudioAnalyzer_start__block_invoke;
    block[3] = &unk_1E7663898;
    block[4] = self;
    dispatch_async(tapQueue, block);
  }
}

void __25__MRUAudioAnalyzer_start__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tap];
  [v1 start];
}

- (void)stop
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_isRunning)
  {
    self->_isRunning = 0;
    objc_initWeak(&location, self);
    v3 = +[MRUFinishTaskAssertionManager sharedManager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __24__MRUAudioAnalyzer_stop__block_invoke;
    v7[3] = &unk_1E7663AE8;
    objc_copyWeak(&v8, &location);
    [v3 acquireForTaskToken:self withReason:@"Stop audio tap" invalidationHandler:v7];

    v4 = MCLogCategoryWaveform();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%@ Stopping audio analyzer", buf, 0xCu);
    }

    tapQueue = self->_tapQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__MRUAudioAnalyzer_stop__block_invoke_21;
    block[3] = &unk_1E7663898;
    block[4] = self;
    dispatch_async(tapQueue, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __24__MRUAudioAnalyzer_stop__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = MCLogCategoryWaveform();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_1A20FC000, v2, OS_LOG_TYPE_ERROR, "%@ Task assertion invalidated before tap stopped.", &v4, 0xCu);
  }
}

void __24__MRUAudioAnalyzer_stop__block_invoke_21(uint64_t a1)
{
  v1 = [*(a1 + 32) tap];
  [v1 stop];
}

- (id)binSamples:(float *)samples count:(int)count
{
  v4 = *&count;
  v7 = [MRUWaveformData alloc];
  *&v8 = self->_sampleRate;
  v9 = [(MRUWaveformData *)v7 initWithFFTSamples:samples count:v4 sampleRate:self->_settings settings:v8];

  return v9;
}

- (void)processAudioTapDidReceiveAudioSamples:(void *)samples numberOfSamples:(unsigned int)ofSamples
{
  [(MRUAudioAnalyzer *)self computeFFTWithSamples:samples, *&ofSamples];
  v5 = [(MRUAudioAnalyzer *)self binSamples:self->_magnitudes count:self->_complexCount];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__MRUAudioAnalyzer_processAudioTapDidReceiveAudioSamples_numberOfSamples___block_invoke;
  v7[3] = &unk_1E76639D0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __74__MRUAudioAnalyzer_processAudioTapDidReceiveAudioSamples_numberOfSamples___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 128), *(a1 + 40));
  os_unfair_lock_lock((*(a1 + 32) + 120));
  v2 = [*(*(a1 + 32) + 152) allObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 120));
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) audioAnalyzer:*(a1 + 32) didUpdateWaveform:{*(a1 + 40), v8}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)processAudioTapDidStop
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MRUAudioAnalyzer_processAudioTapDidStop__block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __42__MRUAudioAnalyzer_processAudioTapDidStop__block_invoke(uint64_t a1)
{
  v2 = +[MRUFinishTaskAssertionManager sharedManager];
  [v2 releaseForTaskToken:*(a1 + 32)];
}

- (void)computeFFTWithSamples:(float *)samples
{
  selfCopy = self;
  v6 = *&self->_realBuffer;
  MEMORY[0x1A58DCEF0](samples, 1, self->_hannWindow, 1, self->_transferBuffer, 1, self->_bufferSizePowerOf2);
  transferBuffer = selfCopy->_transferBuffer;
  complexCount = selfCopy->_complexCount;
  selfCopy = (selfCopy + 20);
  vDSP_ctoz(transferBuffer, 2, &v6, 1, complexCount);
  vDSP_fft_zrip(*(&selfCopy->_leftSamples + 4), &v6, 1, LODWORD(selfCopy[-1]._tapQueue), 1);
  vDSP_zvmags(&v6, 1, *(&selfCopy->_realBuffer + 4), 1, SLODWORD(selfCopy->super.isa));
  vvsqrtf(*(&selfCopy->_realBuffer + 4), *(&selfCopy->_realBuffer + 4), selfCopy);
  MEMORY[0x1A58DCF00](*(&selfCopy->_realBuffer + 4), 1, &selfCopy->super.isa + 4, *(&selfCopy->_realBuffer + 4), 1, SLODWORD(selfCopy->super.isa));
}

@end