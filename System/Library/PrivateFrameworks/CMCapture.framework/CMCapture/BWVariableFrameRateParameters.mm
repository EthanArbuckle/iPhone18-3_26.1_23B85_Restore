@interface BWVariableFrameRateParameters
- (BWVariableFrameRateParameters)initWithPortType:(id)type sensorIDDictionary:(id)dictionary;
- (void)dealloc;
@end

@implementation BWVariableFrameRateParameters

- (BWVariableFrameRateParameters)initWithPortType:(id)type sensorIDDictionary:(id)dictionary
{
  if (type && (v6 = [dictionary objectForKeyedSubscript:@"VariableFrameRateVideoParameters"]) != 0)
  {
    v7 = v6;
    v10.receiver = self;
    v10.super_class = BWVariableFrameRateParameters;
    v8 = [(BWVariableFrameRateParameters *)&v10 init];
    if (v8)
    {
      v8->_portType = type;
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