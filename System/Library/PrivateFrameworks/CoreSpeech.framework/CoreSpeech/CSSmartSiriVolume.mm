@interface CSSmartSiriVolume
- (CSSmartSiriVolume)initWithSamplingRate:(float)rate;
- (float)_combineResultsWithOptimalFromNoise:(float)noise andOptimalFromLkfs:(float)lkfs withUserOffset:(float)offset;
- (float)_estimatedTTSVolume:(float)volume lowerLimit:(float)limit upperLimit:(float)upperLimit TTSmappingInputRangeLow:(float)low TTSmappingInputRangeHigh:(float)high TTSmappingOutputRangeLow:(float)rangeLow TTSmappingOutputRangeHigh:(float)rangeHigh;
- (float)_getDevicedBFSForInputLinearVolume:(float)volume;
- (float)_getFloatBufferData:(id)data;
- (float)_getUserOffsetFromMusicVolumeDB:(float)b;
- (float)estimateSoundLevelbySoundType:(int64_t)type;
- (float)estimatedTTSVolumeForNoiseLevelAndLKFS:(float)s LKFS:(float)fS;
- (id).cxx_construct;
- (id)getVolumeForTTSType:(unint64_t)type withOverrideMediaVolume:(id)volume WithRequestTime:(unint64_t)time;
- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart;
- (void)CSMediaPlayingMonitor:(id)monitor didReceiveMediaPlayingChanged:(int64_t)changed;
- (void)_pauseSSVProcessing;
- (void)_prepareSoundLevelBufferFromSamples:(unsigned int)samples soundType:(int64_t)type;
- (void)_processAudioChunk:(id)chunk soundType:(int64_t)type;
- (void)_reset;
- (void)_resetStartAnalyzeTime;
- (void)_resumeSSVProcessing;
- (void)_setAsset:(id)asset;
- (void)_setDefaultParameters;
- (void)_setStartAnalyzeTime:(unint64_t)time;
- (void)_startListenPolling;
- (void)_startListenPollingWithInterval:(double)interval completion:(id)completion;
- (void)_startListenWithCompletion:(id)completion;
- (void)_stopListening;
- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available;
- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly;
- (void)didDetectKeywordWithResult:(id)result;
- (void)didReceiveAlarmChanged:(int64_t)changed;
- (void)didReceiveAlarmVolumeChanged:(float)changed;
- (void)didReceiveMusicVolumeChanged:(float)changed;
- (void)didReceiveTimerChanged:(int64_t)changed;
- (void)fetchInitSystemVolumes;
- (void)initializeAlarmState;
- (void)initializeMediaPlayingState;
- (void)initializeTimerState;
- (void)prepareSoundLevelBufferFromSamples:(id)samples soundType:(int64_t)type firedVoiceTriggerEvent:(BOOL)event triggerStartTimeSampleOffset:(unint64_t)offset triggerEndTimeSampleOffset:(unint64_t)sampleOffset;
- (void)reset;
- (void)setAsset:(id)asset;
- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d;
- (void)startSmartSiriVolumeWithAudioProviderSelector:(id)selector;
@end

@implementation CSSmartSiriVolume

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  return self;
}

- (id)getVolumeForTTSType:(unint64_t)type withOverrideMediaVolume:(id)volume WithRequestTime:(unint64_t)time
{
  [(CSSmartSiriVolume *)self estimateSoundLevelbySoundType:0, volume, time];
  v7 = v6;
  [(CSSmartSiriVolume *)self estimateSoundLevelbySoundType:1];
  LODWORD(v9) = v8;
  LODWORD(v10) = v7;
  [(CSSmartSiriVolume *)self estimatedTTSVolumeForNoiseLevelAndLKFS:v10 LKFS:v9];
  v12 = v11;
  v13 = CSLogCategoryASV;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = +[CSVolumeMonitor sharedInstance];
    [v14 musicVolume];
    v20 = 136315650;
    v21 = "[CSSmartSiriVolume getVolumeForTTSType:withOverrideMediaVolume:WithRequestTime:]";
    v22 = 2050;
    v23 = v12;
    v24 = 2050;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume: final estimated TTS volume %{public}f with music volume %{public}f", &v20, 0x20u);
  }

  v16 = [CSSmartSiriVolumeEstimate alloc];
  *&v17 = v12;
  v18 = [(CSSmartSiriVolumeEstimate *)v16 initWithVolumeEstimate:0 debugLogFile:v17];

  return v18;
}

- (float)_getUserOffsetFromMusicVolumeDB:(float)b
{
  if (+[CSAsset getSSVDeviceType]!= 2)
  {
    return b;
  }

  *&v5 = b;
  [(CSSmartSiriVolume *)self _deviceSpecificDBToLinearVolumeMappingCSSSVDeviceSimple:v5];

  [(CSSmartSiriVolume *)self _getDeviceSimpledBFSForOutputLinearVolume:?];
  return result;
}

- (float)_getDevicedBFSForInputLinearVolume:(float)volume
{
  if (+[CSAsset getSSVDeviceType]== 2)
  {
    *&v5 = volume;

    [(CSSmartSiriVolume *)self _getMusicVolumeDBCSSSVDeviceSimple:v5];
  }

  else
  {
    *&v5 = volume;

    [(CSSmartSiriVolume *)self _getMusicVolumeDBCSSSVDeviceDefault:v5];
  }

  return result;
}

- (void)_setDefaultParameters
{
  *&self->_noiseLevelChannelBitset = xmmword_1001AA140;
  *&self->_energyBufferSize = xmmword_1001AA150;
  self->_LKFSUpperPercentile = 95;
  *&self->_noiseTimeConstant = xmmword_1001AA160;
  *&self->_LKFSMicSensitivityOffset = xmmword_1001AA170;
  *&self->_noiseTTSMappingOutputRangeHigh = xmmword_1001AA180;
  *&self->_LKFSTTSMappingOutputRangeHigh = xmmword_1001AA190;
  *&self->_userOffsetOutputRangeHigh = xmmword_1001AA1A0;
}

- (void)_setStartAnalyzeTime:(unint64_t)time
{
  if (!self->_isStartSampleCountMarked)
  {
    self->_isStartSampleCountMarked = 1;
    self->_startAnalyzeSampleCount = time;
    self->_samplesFed = 0;
    v4 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[CSSmartSiriVolume _setStartAnalyzeTime:]";
      v7 = 2050;
      timeCopy = time;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume: set StartAnalyzeSampleCount = %{public}lld", &v5, 0x16u);
    }
  }
}

- (void)_resetStartAnalyzeTime
{
  self->_isStartSampleCountMarked = 0;
  self->_startAnalyzeSampleCount = 0;
  self->_samplesFed = 0;
}

- (float)_getFloatBufferData:(id)data
{
  dataCopy = data;
  if (+[CSConfig inputRecordingIsFloat])
  {
    bytes = [dataCopy bytes];
  }

  else
  {
    v5 = [CSFLPCMTypeConverter convertToFloatLPCMBufFromShortLPCMBuf:dataCopy];
    bytes = [v5 bytes];
  }

  return bytes;
}

- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009E978;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart
{
  v4 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSSmartSiriVolume CSAudioServerCrashMonitorDidReceiveServerRestart:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s audiomxd/bridgeaudiod recovered from crash", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009EBA8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)didReceiveAlarmVolumeChanged:(float)changed
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009EC9C;
  v4[3] = &unk_1002534E8;
  v4[4] = self;
  changedCopy = changed;
  dispatch_async(queue, v4);
}

- (void)didReceiveMusicVolumeChanged:(float)changed
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009ED24;
  v4[3] = &unk_1002534E8;
  v4[4] = self;
  changedCopy = changed;
  dispatch_async(queue, v4);
}

- (void)didReceiveTimerChanged:(int64_t)changed
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009EDCC;
  v4[3] = &unk_100253C98;
  v4[4] = self;
  v4[5] = changed;
  dispatch_async(queue, v4);
}

- (void)didReceiveAlarmChanged:(int64_t)changed
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009EFD0;
  v4[3] = &unk_100253C98;
  v4[4] = self;
  v4[5] = changed;
  dispatch_async(queue, v4);
}

- (void)CSMediaPlayingMonitor:(id)monitor didReceiveMediaPlayingChanged:(int64_t)changed
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009F1D4;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = changed;
  dispatch_async(queue, v5);
}

- (float)_combineResultsWithOptimalFromNoise:(float)noise andOptimalFromLkfs:(float)lkfs withUserOffset:(float)offset
{
  v9 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315906;
    v15 = "[CSSmartSiriVolume _combineResultsWithOptimalFromNoise:andOptimalFromLkfs:withUserOffset:]";
    v16 = 2050;
    noiseCopy = noise;
    v18 = 2050;
    lkfsCopy = lkfs;
    v20 = 2050;
    offsetCopy = offset;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume: TTS volume in dB from noise %{public}f, from LKFS %{public}f, with user offset %{public}f", &v14, 0x2Au);
  }

  v10 = +[CSFPreferences sharedPreferences];
  if ([v10 smartSiriVolumeSoftVolumeEnabled])
  {
    shouldPauseLKFSProcess = self->_shouldPauseLKFSProcess;

    if (shouldPauseLKFSProcess)
    {
      v12 = CSLogCategoryASV;
      if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315138;
        v15 = "[CSSmartSiriVolume _combineResultsWithOptimalFromNoise:andOptimalFromLkfs:withUserOffset:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume: soft volume algorithm in use", &v14, 0xCu);
      }

      if ((lkfs + offset) >= noise)
      {
        return ((lkfs + offset) * (1.0 - self->_noiseWeight)) + (self->_noiseWeight * noise);
      }

      return noise;
    }
  }

  else
  {
  }

  if ((lkfs + offset) > noise)
  {
    return lkfs + offset;
  }

  return noise;
}

- (float)_estimatedTTSVolume:(float)volume lowerLimit:(float)limit upperLimit:(float)upperLimit TTSmappingInputRangeLow:(float)low TTSmappingInputRangeHigh:(float)high TTSmappingOutputRangeLow:(float)rangeLow TTSmappingOutputRangeHigh:(float)rangeHigh
{
  if (volume < limit)
  {
    return rangeLow;
  }

  if (volume > upperLimit)
  {
    return rangeHigh;
  }

  [CSSmartSiriVolume _scaleInputWithInRangeOutRange:"_scaleInputWithInRangeOutRange:minIn:maxIn:minOut:maxOut:" minIn:? maxIn:? minOut:? maxOut:?];
  *&v14 = 1.0 / (expf(-v13) + 1.0);
  LODWORD(v15) = 1.0;
  *&v16 = rangeLow;
  *&v17 = rangeHigh;

  [(CSSmartSiriVolume *)self _scaleInputWithInRangeOutRange:v14 minIn:0.0 maxIn:v15 minOut:v16 maxOut:v17];
  return result;
}

- (float)estimatedTTSVolumeForNoiseLevelAndLKFS:(float)s LKFS:(float)fS
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -998637568;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = -1041235968;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = -1041235968;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009F7BC;
  block[3] = &unk_1002503C0;
  sCopy = s;
  fSCopy = fS;
  block[4] = self;
  block[5] = v10;
  block[6] = v12;
  block[7] = &v14;
  dispatch_sync(queue, block);
  v5 = v15[6];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);
  return v5;
}

- (void)didDetectKeywordWithResult:(id)result
{
  resultCopy = result;
  v5 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CSSmartSiriVolume didDetectKeywordWithResult:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume received VT event!", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009FE20;
  v8[3] = &unk_100253C48;
  v9 = resultCopy;
  selfCopy = self;
  v7 = resultCopy;
  dispatch_async(queue, v8);
}

- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly
{
  providerCopy = provider;
  v7 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSSmartSiriVolume audioStreamProvider:didStopStreamUnexpectedly:]";
    v12 = 2050;
    unexpectedlyCopy = unexpectedly;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s stream stopped unexpectedly : %{public}ld", buf, 0x16u);
  }

  if (unexpectedly != -11785)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A04D4;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available
{
  availableCopy = available;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A05E8;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = availableCopy;
  v7 = availableCopy;
  dispatch_async(queue, v8);
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A0884;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_resumeSSVProcessing
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A09CC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_pauseSSVProcessing
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A0B10;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (float)estimateSoundLevelbySoundType:(int64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -998637568;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A0C98;
  block[3] = &unk_100252170;
  block[5] = &v7;
  block[6] = type;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_processAudioChunk:(id)chunk soundType:(int64_t)type
{
  chunkCopy = chunk;
  v7 = qword_10029E1F8;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * qword_10029E1F8, 2) <= 0x444444444444444uLL)
  {
    v8 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[CSSmartSiriVolume _processAudioChunk:soundType:]";
      *&buf[12] = 2050;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s SmartSiriVolume heartbeat = %{public}lld", buf, 0x16u);
      v7 = qword_10029E1F8;
    }
  }

  qword_10029E1F8 = v7 + 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v17 = 0;
  v9 = 128;
  if (!type)
  {
    v9 = 120;
  }

  v10 = *(&self->super.isa + v9);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A1158;
  v12[3] = &unk_100250398;
  v11 = chunkCopy;
  v13 = v11;
  selfCopy = self;
  v15 = buf;
  [CSUtils iterateBitset:v10 block:v12];
  [(CSSmartSiriVolume *)self _prepareSoundLevelBufferFromSamples:*(*&buf[8] + 24) soundType:type];

  _Block_object_dispose(buf, 8);
}

- (void)prepareSoundLevelBufferFromSamples:(id)samples soundType:(int64_t)type firedVoiceTriggerEvent:(BOOL)event triggerStartTimeSampleOffset:(unint64_t)offset triggerEndTimeSampleOffset:(unint64_t)sampleOffset
{
  samplesCopy = samples;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A12F4;
  v15[3] = &unk_100250370;
  v16 = samplesCopy;
  selfCopy = self;
  eventCopy = event;
  typeCopy = type;
  offsetCopy = offset;
  sampleOffsetCopy = sampleOffset;
  v14 = samplesCopy;
  dispatch_async(queue, v15);
}

- (void)_prepareSoundLevelBufferFromSamples:(unsigned int)samples soundType:(int64_t)type
{
  if (type)
  {
    *&v4 = self->_musicVolumeDB;
    [(CSSmartSiriVolume *)self _convertDB2Mag:v4];
    v7 = 24;
  }

  else
  {
    v7 = 16;
  }

  sub_1000A142C(*(&self->super.isa + v7), self->_floatBuffer.__begin_, samples);
  v8 = *(&self->super.isa + v7);
  sub_1000A1540(v8);

  sub_1000A16F4(v8, v9);
}

- (void)_reset
{
  v3 = [CSUtils getNumElementInBitset:self->_noiseLevelChannelBitset];
  v4 = [CSUtils getNumElementInBitset:self->_LKFSChannelBitset];
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  sub_1000A1CA4(&self->_floatBuffer, v5 << 10);
  *&self->_shouldPauseSSVProcess = 0;
  self->_mediaIsPlaying = 1;
  self->_processedSampleCount = 0;

  [(CSSmartSiriVolume *)self _resetStartAnalyzeTime];
}

- (void)_setAsset:(id)asset
{
  assetCopy = asset;
  if (assetCopy)
  {
    objc_storeStrong(&self->_currentAsset, asset);
    self->_noiseLevelChannelBitset = [(CSAsset *)self->_currentAsset SSVNoiseLevelChannelBitset];
    self->_LKFSChannelBitset = [(CSAsset *)self->_currentAsset SSVLKFSChannelBitset];
    self->_energyBufferSize = [(CSAsset *)self->_currentAsset SSVEnergyBufferSize];
    self->_noiseLowerPercentile = [(CSAsset *)self->_currentAsset SSVNoiseLowerPercentile];
    self->_noiseUpperPercentile = [(CSAsset *)self->_currentAsset SSVNoiseUpperPercentile];
    self->_LKFSLowerPercentile = [(CSAsset *)self->_currentAsset SSVLKFSLowerPercentile];
    self->_LKFSUpperPercentile = [(CSAsset *)self->_currentAsset SSVLKFSUpperPercentile];
    [(CSAsset *)self->_currentAsset SSVNoiseTimeConstant];
    self->_noiseTimeConstant = v6;
    [(CSAsset *)self->_currentAsset SSVNoiseMicSensitivityOffset];
    self->_noiseMicSensitivityOffset = v7;
    [(CSAsset *)self->_currentAsset SSVNoiseMicSensitivityOffsetDeviceSimple];
    self->_noiseMicSensitivityOffsetDeviceSimple = v8;
    [(CSAsset *)self->_currentAsset SSVLKFSTimeConstant];
    self->_LKFSTimeConstant = v9;
    [(CSAsset *)self->_currentAsset SSVLKFSMicSensitivityOffset];
    self->_LKFSMicSensitivityOffset = v10;
    [(CSAsset *)self->_currentAsset SSVNoiseTTSMappingInputRangeLow];
    self->_noiseTTSMappingInputRangeLow = v11;
    [(CSAsset *)self->_currentAsset SSVNoiseTTSMappingInputRangeHigh];
    self->_noiseTTSMappingInputRangeHigh = v12;
    [(CSAsset *)self->_currentAsset SSVNoiseTTSMappingOutputRangeLow];
    self->_noiseTTSMappingOutputRangeLow = v13;
    [(CSAsset *)self->_currentAsset SSVNoiseTTSMappingOutputRangeHigh];
    self->_noiseTTSMappingOutputRangeHigh = v14;
    [(CSAsset *)self->_currentAsset SSVLKFSTTSMappingInputRangeLow];
    self->_LKFSTTSMappingInputRangeLow = v15;
    [(CSAsset *)self->_currentAsset SSVLKFSTTSMappingInputRangeHigh];
    self->_LKFSTTSMappingInputRangeHigh = v16;
    [(CSAsset *)self->_currentAsset SSVLKFSTTSMappingOutputRangeLow];
    self->_LKFSTTSMappingOutputRangeLow = v17;
    [(CSAsset *)self->_currentAsset SSVLKFSTTSMappingOutputRangeHigh];
    self->_LKFSTTSMappingOutputRangeHigh = v18;
    [(CSAsset *)self->_currentAsset SSVUserOffsetInputRangeLow];
    self->_userOffsetInputRangeLow = v19;
    [(CSAsset *)self->_currentAsset SSVUserOffsetInputRangeHigh];
    self->_userOffsetInputRangeHigh = v20;
    [(CSAsset *)self->_currentAsset SSVUserOffsetOutputRangeLow];
    self->_userOffsetOutputRangeLow = v21;
    [(CSAsset *)self->_currentAsset SSVUserOffsetOutputRangeHigh];
    self->_userOffsetOutputRangeHigh = v22;
    [(CSAsset *)self->_currentAsset SSVTTSVolumeLowerLimitDB];
    self->_TTSVolumeLowerLimitDB = v23;
    [(CSAsset *)self->_currentAsset SSVTTSVolumeUpperLimitDB];
    self->_TTSVolumeUpperLimitDB = v24;
    [(CSAsset *)self->_currentAsset SSVNoiseWeight];
    self->_noiseWeight = v25;
    v26 = CSLogCategoryASV;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      sSVParameterDirectionary = [(CSAsset *)self->_currentAsset SSVParameterDirectionary];
      v29 = 136315394;
      v30 = "[CSSmartSiriVolume _setAsset:]";
      v31 = 2114;
      v32 = sSVParameterDirectionary;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume configure: %{public}@", &v29, 0x16u);
    }
  }

  else
  {
    v28 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315138;
      v30 = "[CSSmartSiriVolume _setAsset:]";
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s asset is nil, use default parameters(this should not happen).", &v29, 0xCu);
    }
  }
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A2144;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(queue, v7);
}

- (void)fetchInitSystemVolumes
{
  v3 = +[CSVolumeMonitor sharedInstance];
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A21F4;
  v6[3] = &unk_100253C48;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(queue, v6);
}

- (void)initializeTimerState
{
  v3 = +[CSTimerMonitor sharedInstance];
  [v3 initializeTimerState];
  timerState = [v3 timerState];
  if ((timerState - 1) <= 1)
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A2300;
    v6[3] = &unk_100253C98;
    v6[4] = self;
    v6[5] = timerState;
    dispatch_async(queue, v6);
  }
}

- (void)initializeAlarmState
{
  v3 = +[CSAlarmMonitor sharedInstance];
  [v3 initializeAlarmState];
  alarmState = [v3 alarmState];
  if ((alarmState - 1) <= 1)
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A24AC;
    v6[3] = &unk_100253C98;
    v6[4] = self;
    v6[5] = alarmState;
    dispatch_async(queue, v6);
  }
}

- (void)initializeMediaPlayingState
{
  v3 = +[CSMediaPlayingMonitor sharedInstance];
  [v3 addObserver:self];
  [v3 initializeMediaPlayingState];
  mediaPlayingState = [v3 mediaPlayingState];
  if ((mediaPlayingState - 1) > 1)
  {
    v6 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSSmartSiriVolume initializeMediaPlayingState]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume haven't got MediaRemote callback yet, let's assume media is playing.", buf, 0xCu);
    }
  }

  else
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A26F4;
    v7[3] = &unk_100253C98;
    v7[4] = self;
    v7[5] = mediaPlayingState;
    dispatch_async(queue, v7);
  }
}

- (void)_stopListening
{
  v3 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSSmartSiriVolume _stopListening]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  audioStream = [(CSSmartSiriVolume *)self audioStream];
  v5 = audioStream == 0;

  if (v5)
  {
    v7 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSSmartSiriVolume _stopListening]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s No audio stream to stop, we shouldn't hit this", &v8, 0xCu);
    }
  }

  else
  {
    audioStream2 = [(CSSmartSiriVolume *)self audioStream];
    [audioStream2 stopAudioStreamWithOption:0 completion:&stru_100250348];
  }
}

- (void)_startListenWithCompletion:(id)completion
{
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000A2E04;
  v23[3] = &unk_100253220;
  completionCopy = completion;
  v24 = completionCopy;
  v5 = objc_retainBlock(v23);
  v6 = +[CSAudioRecordContext contextForBuiltInVoiceTrigger];
  audioProviderSelector = self->_audioProviderSelector;
  v22 = 0;
  v8 = [(CSAudioProviderSelecting *)audioProviderSelector audioProviderWithContext:v6 error:&v22];
  v9 = v22;
  if (v8)
  {
    v18 = v8;
    v10 = [CSAudioStreamRequest defaultRequestWithContext:v6];
    [v10 setRequiresHistoricalBuffer:1];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v21 = 0;
    v13 = [v18 audioStreamWithRequest:v10 streamName:v12 error:&v21];
    v14 = v21;

    if (v13)
    {
      [(CSSmartSiriVolume *)self setAudioStream:v13];
      [v13 setDelegate:self];
      v15 = +[CSAudioStartStreamOption noAlertOption];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000A2E7C;
      v19[3] = &unk_100253270;
      v19[4] = self;
      v20 = v5;
      [v13 startAudioStreamWithOption:v15 completion:v19];
    }

    else
    {
      v16 = CSLogCategoryASV;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v14 description];
        *buf = 136315394;
        v26 = "[CSSmartSiriVolume _startListenWithCompletion:]";
        v27 = 2114;
        v28 = v17;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed in requesting audio stream : %{public}@", buf, 0x16u);
      }

      (v5[2])(v5, 0, v14);
    }
  }

  else
  {
    (v5[2])(v5, 0, v9);
  }
}

- (void)_startListenPollingWithInterval:(double)interval completion:(id)completion
{
  completionCopy = completion;
  v7 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSSmartSiriVolume _startListenPollingWithInterval:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  audioStream = [(CSSmartSiriVolume *)self audioStream];
  if ([audioStream isStreaming])
  {
  }

  else
  {
    enablePolicy = [(CSSmartSiriVolume *)self enablePolicy];
    isEnabled = [enablePolicy isEnabled];

    if (isEnabled)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000A332C;
      v12[3] = &unk_1002531F8;
      v12[4] = self;
      intervalCopy = interval;
      v13 = completionCopy;
      [(CSSmartSiriVolume *)self _startListenWithCompletion:v12];

      goto LABEL_11;
    }
  }

  v11 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSSmartSiriVolume _startListenPollingWithInterval:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Skip listen polling since audio is streaming / Siri disabled", buf, 0xCu);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_11:
}

- (void)_startListenPolling
{
  if (self->_isListenPollingStarting)
  {
    v2 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v5 = "[CSSmartSiriVolume _startListenPolling]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Already started listen polling, skip", buf, 0xCu);
    }
  }

  else
  {
    self->_isListenPollingStarting = 1;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000A36B0;
    v3[3] = &unk_100253300;
    v3[4] = self;
    [(CSSmartSiriVolume *)self _startListenPollingWithInterval:v3 completion:1.0];
  }
}

- (void)startSmartSiriVolumeWithAudioProviderSelector:(id)selector
{
  selectorCopy = selector;
  [(CSSmartSiriVolume *)self setAudioProviderSelector:selectorCopy];
  [(CSSmartSiriVolume *)self initializeMediaPlayingState];
  [(CSSmartSiriVolume *)self initializeAlarmState];
  [(CSSmartSiriVolume *)self initializeTimerState];
  [(CSSmartSiriVolume *)self fetchInitSystemVolumes];
  objc_initWeak(&location, self);
  v5 = +[CSSmartSiriVolumeEnablePolicyFactory smartSiriVolumeEnablePolicy];
  ssvEnablePolicy = self->_ssvEnablePolicy;
  self->_ssvEnablePolicy = v5;

  v7 = self->_ssvEnablePolicy;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A398C;
  v18[3] = &unk_100253000;
  objc_copyWeak(&v19, &location);
  [(CSPolicy *)v7 setCallback:v18];
  if (([(CSPolicy *)self->_ssvEnablePolicy isEnabled]& 1) == 0)
  {
    [(CSSmartSiriVolume *)self _pauseSSVProcessing];
  }

  v8 = +[CSSmartSiriVolumeRunPolicyFactory smartSiriVolumeRunPolicy];
  [(CSSmartSiriVolume *)self setEnablePolicy:v8];

  enablePolicy = [(CSSmartSiriVolume *)self enablePolicy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A3AAC;
  v16[3] = &unk_100253000;
  objc_copyWeak(&v17, &location);
  [enablePolicy setCallback:v16];

  enablePolicy2 = [(CSSmartSiriVolume *)self enablePolicy];
  isEnabled = [enablePolicy2 isEnabled];

  if (isEnabled)
  {
    queue = self->_queue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A3B1C;
    v15[3] = &unk_100253C20;
    v15[4] = self;
    dispatch_async(queue, v15);
  }

  v13 = +[CSAudioServerCrashMonitor sharedInstance];
  [v13 addObserver:self];

  v14 = +[CSSiriClientBehaviorMonitor sharedInstance];
  [v14 registerObserver:self];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (CSSmartSiriVolume)initWithSamplingRate:(float)rate
{
  v14.receiver = self;
  v14.super_class = CSSmartSiriVolume;
  v3 = [(CSSmartSiriVolume *)&v14 init];
  if (v3)
  {
    v4 = [objc_opt_class() description];
    v5 = v4;
    v6 = dispatch_queue_create([v4 UTF8String], 0);
    queue = v3->_queue;
    v3->_queue = v6;

    [(CSSmartSiriVolume *)v3 _setDefaultParameters];
    noiseMicSensitivityOffset = v3->_noiseMicSensitivityOffset;
    if (+[CSAsset getSSVDeviceType]== 2)
    {
      noiseMicSensitivityOffset = v3->_noiseMicSensitivityOffsetDeviceSimple;
    }

    *&v9 = ((v3->_noiseTTSMappingInputRangeLow + v3->_noiseTTSMappingInputRangeHigh) * 0.5) - noiseMicSensitivityOffset;
    [(CSSmartSiriVolume *)v3 _convertDB2Mag:v9];
    v11 = v10;
    v12 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[CSSmartSiriVolume initWithSamplingRate:]";
      v17 = 2050;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume init value for noise estimation %{public}f", buf, 0x16u);
    }

    operator new();
  }

  return 0;
}

@end