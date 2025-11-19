@interface BWVariableFrameRateParameters
- (BWVariableFrameRateParameters)initWithPortType:(id)a3 sensorIDDictionary:(id)a4;
- (void)dealloc;
@end

@implementation BWVariableFrameRateParameters

- (BWVariableFrameRateParameters)initWithPortType:(id)a3 sensorIDDictionary:(id)a4
{
  if (a3 && (v6 = [a4 objectForKeyedSubscript:@"VariableFrameRateVideoParameters"]) != 0)
  {
    v7 = v6;
    v10.receiver = self;
    v10.super_class = BWVariableFrameRateParameters;
    v8 = [(BWVariableFrameRateParameters *)&v10 init];
    if (v8)
    {
      v8->_portType = a3;
      v8->_motionThreshold = [objc_msgSend(v7 objectForKeyedSubscript:{@"MotionThreshold", "intValue"}];
      v8->_aeMaxGain = [objc_msgSend(v7 objectForKeyedSubscript:{@"AEMaxGainForFrameRate", "copy"}];
    }
  }

  else
  {

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVariableFrameRateParameters;
  [(BWVariableFrameRateParameters *)&v3 dealloc];
}

@end