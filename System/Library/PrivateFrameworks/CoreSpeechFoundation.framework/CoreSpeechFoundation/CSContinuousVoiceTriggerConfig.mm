@interface CSContinuousVoiceTriggerConfig
- (CSContinuousVoiceTriggerConfig)initWithConfigPathNDAPI:(id)i threshold:(float)threshold loggingThreshold:(float)loggingThreshold twoShotThreshold:(float)shotThreshold twoShotDecisionWaitTime:(float)time voiceTriggerPhIds:(id)ids silencePhIds:(id)phIds;
@end

@implementation CSContinuousVoiceTriggerConfig

- (CSContinuousVoiceTriggerConfig)initWithConfigPathNDAPI:(id)i threshold:(float)threshold loggingThreshold:(float)loggingThreshold twoShotThreshold:(float)shotThreshold twoShotDecisionWaitTime:(float)time voiceTriggerPhIds:(id)ids silencePhIds:(id)phIds
{
  iCopy = i;
  idsCopy = ids;
  phIdsCopy = phIds;
  v23.receiver = self;
  v23.super_class = CSContinuousVoiceTriggerConfig;
  v20 = [(CSContinuousVoiceTriggerConfig *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_configPathNDAPI, i);
    v21->_threshold = threshold;
    v21->_loggingThreshold = loggingThreshold;
    v21->_twoShotThreshold = shotThreshold;
    v21->_twoShotDecisionWaitTime = time;
    objc_storeStrong(&v21->_voiceTriggerPhIds, ids);
    objc_storeStrong(&v21->_silencePhIds, phIds);
  }

  return v21;
}

@end