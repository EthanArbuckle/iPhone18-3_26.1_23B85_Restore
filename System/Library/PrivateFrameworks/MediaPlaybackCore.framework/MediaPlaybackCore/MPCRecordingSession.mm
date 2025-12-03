@interface MPCRecordingSession
- (MPCRecordingSession)initWithModelID:(id)d samplingTime:(double)time renderingLimit:(double)limit shouldRecordSamples:(BOOL)samples;
- (void)dealloc;
- (void)environmentMonitorDidChangeThermalLevel:(id)level;
- (void)flush;
- (void)recordSample:(id)sample;
- (void)samplesRecorderHasNewSamples:(id)samples;
- (void)save;
@end

@implementation MPCRecordingSession

- (void)environmentMonitorDidChangeThermalLevel:(id)level
{
  v13 = *MEMORY[0x1E69E9840];
  levelCopy = level;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentThermalLevel = self->_currentThermalLevel;
    v7 = 138543874;
    selfCopy = self;
    v9 = 1024;
    v10 = currentThermalLevel;
    v11 = 2048;
    currentThermalPressureLevel = [levelCopy currentThermalPressureLevel];
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Thermal pressure level changed: %d -> %ld", &v7, 0x1Cu);
  }

  self->_currentThermalLevel = [levelCopy currentThermalPressureLevel];
}

- (void)samplesRecorderHasNewSamples:(id)samples
{
  samplesCopy = samples;
  statisticsReporter = [(MPCRecordingSession *)self statisticsReporter];
  [statisticsReporter reportRecordedResults:samplesCopy];
}

- (void)flush
{
  [(MPCRecordingSession *)self save];
  statisticsReporter = [(MPCRecordingSession *)self statisticsReporter];
  [statisticsReporter flush];
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
      selfCopy = self;
      v8 = 2114;
      v9 = currentRecorder;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Current session statistics: %{public}@", &v6, 0x16u);
    }

    statisticsReporter = [(MPCRecordingSession *)self statisticsReporter];
    [statisticsReporter reportRecordedResults:self->_currentRecorder];
  }
}

- (void)recordSample:(id)sample
{
  currentThermalLevel = self->_currentThermalLevel;
  sampleCopy = sample;
  [sampleCopy setThermalLevel:currentThermalLevel];
  currentRecorder = [(MPCRecordingSession *)self currentRecorder];
  [currentRecorder recordSample:sampleCopy];
}

- (void)dealloc
{
  [(ICEnvironmentMonitor *)self->_thermalMonitor unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = MPCRecordingSession;
  [(MPCRecordingSession *)&v3 dealloc];
}

- (MPCRecordingSession)initWithModelID:(id)d samplingTime:(double)time renderingLimit:(double)limit shouldRecordSamples:(BOOL)samples
{
  dCopy = d;
  v25.receiver = self;
  v25.super_class = MPCRecordingSession;
  v12 = [(MPCRecordingSession *)&v25 init];
  if (v12)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    sessionID = v12->_sessionID;
    v12->_sessionID = uUIDString;

    objc_storeStrong(&v12->_modelID, d);
    v16 = objc_alloc_init(MPCStatisticsReporter);
    statisticsReporter = v12->_statisticsReporter;
    v12->_statisticsReporter = v16;

    v18 = [[MPCFirstFailureDetector alloc] initWithSamplingTime:time renderingLimit:limit];
    firstFailureDetector = v12->_firstFailureDetector;
    v12->_firstFailureDetector = v18;

    mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
    thermalMonitor = v12->_thermalMonitor;
    v12->_thermalMonitor = mEMORY[0x1E69E4428];

    [(ICEnvironmentMonitor *)v12->_thermalMonitor registerObserver:v12];
    v12->_currentThermalLevel = [(ICEnvironmentMonitor *)v12->_thermalMonitor currentThermalPressureLevel];
    v12->_shouldRecordSamples = samples;
    v22 = [[MPCSamplesRecorder alloc] initWithRecordID:v12->_sessionID modelID:v12->_modelID firstFailureDetector:v12->_firstFailureDetector shouldStoreSamples:v12->_shouldRecordSamples delegate:v12];
    currentRecorder = v12->_currentRecorder;
    v12->_currentRecorder = v22;
  }

  return v12;
}

@end