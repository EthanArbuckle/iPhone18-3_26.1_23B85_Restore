@interface MPCRecordingSession
- (MPCRecordingSession)initWithModelID:(id)a3 samplingTime:(double)a4 renderingLimit:(double)a5 shouldRecordSamples:(BOOL)a6;
- (void)dealloc;
- (void)environmentMonitorDidChangeThermalLevel:(id)a3;
- (void)flush;
- (void)recordSample:(id)a3;
- (void)samplesRecorderHasNewSamples:(id)a3;
- (void)save;
@end

@implementation MPCRecordingSession

- (void)environmentMonitorDidChangeThermalLevel:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentThermalLevel = self->_currentThermalLevel;
    v7 = 138543874;
    v8 = self;
    v9 = 1024;
    v10 = currentThermalLevel;
    v11 = 2048;
    v12 = [v4 currentThermalPressureLevel];
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Thermal pressure level changed: %d -> %ld", &v7, 0x1Cu);
  }

  self->_currentThermalLevel = [v4 currentThermalPressureLevel];
}

- (void)samplesRecorderHasNewSamples:(id)a3
{
  v4 = a3;
  v5 = [(MPCRecordingSession *)self statisticsReporter];
  [v5 reportRecordedResults:v4];
}

- (void)flush
{
  [(MPCRecordingSession *)self save];
  v3 = [(MPCRecordingSession *)self statisticsReporter];
  [v3 flush];
}

- (void)save
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(MPCSamplesRecorder *)self->_currentRecorder numberOfSamples]>= 1)
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      currentRecorder = self->_currentRecorder;
      v6 = 138543618;
      v7 = self;
      v8 = 2114;
      v9 = currentRecorder;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Current session statistics: %{public}@", &v6, 0x16u);
    }

    v5 = [(MPCRecordingSession *)self statisticsReporter];
    [v5 reportRecordedResults:self->_currentRecorder];
  }
}

- (void)recordSample:(id)a3
{
  currentThermalLevel = self->_currentThermalLevel;
  v5 = a3;
  [v5 setThermalLevel:currentThermalLevel];
  v6 = [(MPCRecordingSession *)self currentRecorder];
  [v6 recordSample:v5];
}

- (void)dealloc
{
  [(ICEnvironmentMonitor *)self->_thermalMonitor unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = MPCRecordingSession;
  [(MPCRecordingSession *)&v3 dealloc];
}

- (MPCRecordingSession)initWithModelID:(id)a3 samplingTime:(double)a4 renderingLimit:(double)a5 shouldRecordSamples:(BOOL)a6
{
  v11 = a3;
  v25.receiver = self;
  v25.super_class = MPCRecordingSession;
  v12 = [(MPCRecordingSession *)&v25 init];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];
    sessionID = v12->_sessionID;
    v12->_sessionID = v14;

    objc_storeStrong(&v12->_modelID, a3);
    v16 = objc_alloc_init(MPCStatisticsReporter);
    statisticsReporter = v12->_statisticsReporter;
    v12->_statisticsReporter = v16;

    v18 = [[MPCFirstFailureDetector alloc] initWithSamplingTime:a4 renderingLimit:a5];
    firstFailureDetector = v12->_firstFailureDetector;
    v12->_firstFailureDetector = v18;

    v20 = [MEMORY[0x1E69E4428] sharedMonitor];
    thermalMonitor = v12->_thermalMonitor;
    v12->_thermalMonitor = v20;

    [(ICEnvironmentMonitor *)v12->_thermalMonitor registerObserver:v12];
    v12->_currentThermalLevel = [(ICEnvironmentMonitor *)v12->_thermalMonitor currentThermalPressureLevel];
    v12->_shouldRecordSamples = a6;
    v22 = [[MPCSamplesRecorder alloc] initWithRecordID:v12->_sessionID modelID:v12->_modelID firstFailureDetector:v12->_firstFailureDetector shouldStoreSamples:v12->_shouldRecordSamples delegate:v12];
    currentRecorder = v12->_currentRecorder;
    v12->_currentRecorder = v22;
  }

  return v12;
}

@end