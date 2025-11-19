@interface CSContinuousVoiceTriggerConfig
- (CSContinuousVoiceTriggerConfig)initWithConfigPathNDAPI:(id)a3 threshold:(float)a4 loggingThreshold:(float)a5 twoShotThreshold:(float)a6 twoShotDecisionWaitTime:(float)a7 voiceTriggerPhIds:(id)a8 silencePhIds:(id)a9;
@end

@implementation CSContinuousVoiceTriggerConfig

- (CSContinuousVoiceTriggerConfig)initWithConfigPathNDAPI:(id)a3 threshold:(float)a4 loggingThreshold:(float)a5 twoShotThreshold:(float)a6 twoShotDecisionWaitTime:(float)a7 voiceTriggerPhIds:(id)a8 silencePhIds:(id)a9
{
  v17 = a3;
  v18 = a8;
  v19 = a9;
  v23.receiver = self;
  v23.super_class = CSContinuousVoiceTriggerConfig;
  v20 = [(CSContinuousVoiceTriggerConfig *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_configPathNDAPI, a3);
    v21->_threshold = a4;
    v21->_loggingThreshold = a5;
    v21->_twoShotThreshold = a6;
    v21->_twoShotDecisionWaitTime = a7;
    objc_storeStrong(&v21->_voiceTriggerPhIds, a8);
    objc_storeStrong(&v21->_silencePhIds, a9);
  }

  return v21;
}

@end