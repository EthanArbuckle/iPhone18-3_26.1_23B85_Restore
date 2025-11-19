@interface CSDetectionRule
- (CSDetectionRule)initWithWindowSize:(float)a3 slidingWindowStepSize:(float)a4 maxSlidingLookback:(float)a5 conditions:(id)a6 processesAllowList:(id)a7 processesDenyList:(id)a8 processesAllowRegex:(id)a9 processesDenyRegex:(id)a10 daemonOnly:(BOOL)a11 mainThresholdValue:(float)a12 ruleID:(int)a13;
@end

@implementation CSDetectionRule

- (CSDetectionRule)initWithWindowSize:(float)a3 slidingWindowStepSize:(float)a4 maxSlidingLookback:(float)a5 conditions:(id)a6 processesAllowList:(id)a7 processesDenyList:(id)a8 processesAllowRegex:(id)a9 processesDenyRegex:(id)a10 daemonOnly:(BOOL)a11 mainThresholdValue:(float)a12 ruleID:(int)a13
{
  v24 = a6;
  v25 = a7;
  v31 = a8;
  v30 = a9;
  v26 = a10;
  v32.receiver = self;
  v32.super_class = CSDetectionRule;
  v27 = [(CSDetectionRule *)&v32 init];
  v28 = v27;
  if (v27)
  {
    v27->_windowSize = a3;
    v27->_initWindowSize = a3;
    v27->_maxSlidingLookback = a5;
    v27->_initMaxSlidingLookback = a5;
    objc_storeStrong(&v27->_conditions, a6);
    objc_storeStrong(&v28->_processesAllowList, a7);
    objc_storeStrong(&v28->_processesDenyList, a8);
    objc_storeStrong(&v28->_processesAllowRegex, a9);
    objc_storeStrong(&v28->_processesDenyRegex, a10);
    v28->_daemonOnly = a11;
    v28->_initDaemonOnly = a11;
    v28->_ruleID = a13;
    v28->_initSlidingWindowStepSize = a4;
    v28->_mainThresholdValue = a12;
    v28->_useSlidingWindow = 1;
    v28->_slidingWindowStepSize = a4;
    v28->_detectAcrossBoots = 0;
  }

  return v28;
}

@end