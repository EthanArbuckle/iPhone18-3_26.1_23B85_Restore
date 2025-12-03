@interface CSVoiceTriggerFirstPassConfig
- (CSVoiceTriggerFirstPassConfig)initWithConfigPathNDAPI:(id)i threshold:(float)threshold delaySecondsForChannelSelection:(float)selection masterChannelScoreBoost:(float)boost voiceIsolationChannelScoreBoost:(float)scoreBoost processingChunkSeconds:(float)seconds processingChannelsBitset:(unint64_t)bitset masterChannel:(int)self0 voiceIsolationChannel:(int)self1;
@end

@implementation CSVoiceTriggerFirstPassConfig

- (CSVoiceTriggerFirstPassConfig)initWithConfigPathNDAPI:(id)i threshold:(float)threshold delaySecondsForChannelSelection:(float)selection masterChannelScoreBoost:(float)boost voiceIsolationChannelScoreBoost:(float)scoreBoost processingChunkSeconds:(float)seconds processingChannelsBitset:(unint64_t)bitset masterChannel:(int)self0 voiceIsolationChannel:(int)self1
{
  iCopy = i;
  v25.receiver = self;
  v25.super_class = CSVoiceTriggerFirstPassConfig;
  v22 = [(CSVoiceTriggerFirstPassConfig *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_configPathNDAPI, i);
    v23->_threshold = threshold;
    v23->_delaySecondsForChannelSelection = selection;
    v23->_masterChannelScoreBoost = boost;
    v23->_voiceIsolationChannelScoreBoost = scoreBoost;
    v23->_processingChunkSeconds = seconds;
    v23->_processingChannelsBitset = bitset;
    v23->_masterChannel = channel;
    v23->_voiceIsolationChannel = isolationChannel;
  }

  return v23;
}

@end