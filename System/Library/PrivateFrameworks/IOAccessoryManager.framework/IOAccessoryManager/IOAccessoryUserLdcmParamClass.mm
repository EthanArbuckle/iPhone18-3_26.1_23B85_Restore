@interface IOAccessoryUserLdcmParamClass
- (IOAccessoryUserLdcmParamClass)init;
@end

@implementation IOAccessoryUserLdcmParamClass

- (IOAccessoryUserLdcmParamClass)init
{
  v3.receiver = self;
  v3.super_class = IOAccessoryUserLdcmParamClass;
  result = [(IOAccessoryUserLdcmParamClass *)&v3 init];
  if (result)
  {
    *&result->_minVhiDurationSec = xmmword_25491C180;
    result->_maxUpFluctuationMv = 750;
    *&result->_userBehaviorMask = 0x300000001;
    *&result->_numEisHalogenSamples = xmmword_25491C190;
    *&result->_dryPollingIntervalSec = xmmword_25491C1A0;
    *&result->_ldcmStartMeasurementsDelayMs = xmmword_25491C1B0;
    *&result->_minDryReadings = xmmword_25491C1C0;
    result->_enableHalogenMitigationsAndUI = 1;
    result->_wetTransitionCapacitanceThreshold = 3.5;
    result->_dryTransitionCapacitanceThreshold = 1.0;
  }

  return result;
}

@end