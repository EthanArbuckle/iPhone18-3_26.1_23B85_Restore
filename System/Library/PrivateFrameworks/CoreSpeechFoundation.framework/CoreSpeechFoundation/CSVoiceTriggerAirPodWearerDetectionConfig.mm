@interface CSVoiceTriggerAirPodWearerDetectionConfig
- (CSVoiceTriggerAirPodWearerDetectionConfig)initWithThreshold:(float)threshold minimumPhraseLength:(float)length shadowMicScoreThreshold:(float)scoreThreshold myriadThreshold:(float)myriadThreshold phrasesToSkipBoronDecisionMaking:(id)making;
@end

@implementation CSVoiceTriggerAirPodWearerDetectionConfig

- (CSVoiceTriggerAirPodWearerDetectionConfig)initWithThreshold:(float)threshold minimumPhraseLength:(float)length shadowMicScoreThreshold:(float)scoreThreshold myriadThreshold:(float)myriadThreshold phrasesToSkipBoronDecisionMaking:(id)making
{
  makingCopy = making;
  v17.receiver = self;
  v17.super_class = CSVoiceTriggerAirPodWearerDetectionConfig;
  v14 = [(CSVoiceTriggerAirPodWearerDetectionConfig *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_threshold = threshold;
    v14->_minimumPhraseLength = length;
    v14->_shadowMicScoreThreshold = scoreThreshold;
    v14->_myriadThreshold = myriadThreshold;
    objc_storeStrong(&v14->_phrasesToSkipBoronDecisionMaking, making);
  }

  return v15;
}

@end