@interface CSVoiceTriggerDarwinHandlerTestContext
- (CSVoiceTriggerDarwinHandlerTestContext)init;
@end

@implementation CSVoiceTriggerDarwinHandlerTestContext

- (CSVoiceTriggerDarwinHandlerTestContext)init
{
  v6.receiver = self;
  v6.super_class = CSVoiceTriggerDarwinHandlerTestContext;
  v2 = [(CSVoiceTriggerDarwinHandlerTestContext *)&v6 init];
  v3 = v2;
  if (v2)
  {
    preventSystemSleepManager = v2->_preventSystemSleepManager;
    v2->_preventSystemSleepManager = 0;

    *&v3->_forceAcquirePowerAssertion = 0;
    v3->_forcedPowerAssertionTimeout = 0.0;
  }

  return v3;
}

@end