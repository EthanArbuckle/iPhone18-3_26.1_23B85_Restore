@interface CSAudioPowerProvider
+ (CSAudioPowerProvider)sharedInstance;
- (CSAudioPowerProvider)init;
- (void)getAudioPowerUpdateWithCompletion:(id)completion;
- (void)processAudioChunk:(id)chunk;
- (void)processAudioChunkForTV:(id)v;
@end

@implementation CSAudioPowerProvider

+ (CSAudioPowerProvider)sharedInstance
{
  if (qword_10029E530 != -1)
  {
    dispatch_once(&qword_10029E530, &stru_100252BF8);
  }

  v3 = qword_10029E528;

  return v3;
}

- (void)getAudioPowerUpdateWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, self->_cachedAvgPower, self->_cachedPeakPower);
  }
}

- (void)processAudioChunkForTV:(id)v
{
  vCopy = v;
  [vCopy avgPower];
  self->_cachedAvgPower = v5;
  [vCopy peakPower];
  v7 = v6;

  self->_cachedPeakPower = v7;
}

- (void)processAudioChunk:(id)chunk
{
  chunkCopy = chunk;
  v5 = +[CSConfig inputRecordingIsFloat];
  powerMeter = self->_powerMeter;
  data = [chunkCopy data];
  bytes = [data bytes];
  numSamples = [chunkCopy numSamples];

  if (v5)
  {
    [(CSAudioPowerMeter *)powerMeter processFloatBuffer:bytes stride:1 inFrameToProcess:numSamples];
  }

  else
  {
    [(CSAudioPowerMeter *)powerMeter processShortBuffer:bytes stride:1 inFrameToProcess:numSamples];
  }

  [(CSAudioPowerMeter *)self->_powerMeter getAveragePowerDB];
  *&v10 = v10;
  self->_cachedAvgPower = *&v10;
  [(CSAudioPowerMeter *)self->_powerMeter getPeakPowerDB];
  *&v11 = v11;
  self->_cachedPeakPower = *&v11;
}

- (CSAudioPowerProvider)init
{
  v9.receiver = self;
  v9.super_class = CSAudioPowerProvider;
  v2 = [(CSAudioPowerProvider *)&v9 init];
  if (v2)
  {
    v3 = [CSAudioPowerMeter alloc];
    +[CSConfig inputRecordingSampleRate];
    v4 = [v3 initWithSampleRate:?];
    powerMeter = v2->_powerMeter;
    v2->_powerMeter = v4;

    [(CSAudioPowerMeter *)v2->_powerMeter getAveragePowerDB];
    *&v6 = v6;
    v2->_cachedAvgPower = *&v6;
    [(CSAudioPowerMeter *)v2->_powerMeter getPeakPowerDB];
    *&v7 = v7;
    v2->_cachedPeakPower = *&v7;
  }

  return v2;
}

@end