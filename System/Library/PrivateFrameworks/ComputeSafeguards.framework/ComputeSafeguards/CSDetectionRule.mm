@interface CSDetectionRule
- (CSDetectionRule)initWithWindowSize:(float)size slidingWindowStepSize:(float)stepSize maxSlidingLookback:(float)lookback conditions:(id)conditions processesAllowList:(id)list processesDenyList:(id)denyList processesAllowRegex:(id)regex processesDenyRegex:(id)self0 daemonOnly:(BOOL)self1 mainThresholdValue:(float)self2 ruleID:(int)self3;
@end

@implementation CSDetectionRule

- (CSDetectionRule)initWithWindowSize:(float)size slidingWindowStepSize:(float)stepSize maxSlidingLookback:(float)lookback conditions:(id)conditions processesAllowList:(id)list processesDenyList:(id)denyList processesAllowRegex:(id)regex processesDenyRegex:(id)self0 daemonOnly:(BOOL)self1 mainThresholdValue:(float)self2 ruleID:(int)self3
{
  conditionsCopy = conditions;
  listCopy = list;
  denyListCopy = denyList;
  regexCopy = regex;
  denyRegexCopy = denyRegex;
  v32.receiver = self;
  v32.super_class = CSDetectionRule;
  v27 = [(CSDetectionRule *)&v32 init];
  v28 = v27;
  if (v27)
  {
    v27->_windowSize = size;
    v27->_initWindowSize = size;
    v27->_maxSlidingLookback = lookback;
    v27->_initMaxSlidingLookback = lookback;
    objc_storeStrong(&v27->_conditions, conditions);
    objc_storeStrong(&v28->_processesAllowList, list);
    objc_storeStrong(&v28->_processesDenyList, denyList);
    objc_storeStrong(&v28->_processesAllowRegex, regex);
    objc_storeStrong(&v28->_processesDenyRegex, denyRegex);
    v28->_daemonOnly = only;
    v28->_initDaemonOnly = only;
    v28->_ruleID = d;
    v28->_initSlidingWindowStepSize = stepSize;
    v28->_mainThresholdValue = value;
    v28->_useSlidingWindow = 1;
    v28->_slidingWindowStepSize = stepSize;
    v28->_detectAcrossBoots = 0;
  }

  return v28;
}

@end