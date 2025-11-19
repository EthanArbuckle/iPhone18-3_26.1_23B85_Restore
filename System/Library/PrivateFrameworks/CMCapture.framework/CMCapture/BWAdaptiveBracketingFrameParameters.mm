@interface BWAdaptiveBracketingFrameParameters
+ (id)frameParametersWithEVZeroRatio:(double)a3 integrationTimeInMicroseconds:(int)a4 gain:(float)a5 maxAGC:(int)a6;
+ (id)frameParametersWithEVZeroRatio:(double)a3 integrationTimeInSeconds:(double)a4 gain:(float)a5 maxAGC:(int)a6;
- (BWAdaptiveBracketingFrameParameters)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BWAdaptiveBracketingFrameParameters

- (BWAdaptiveBracketingFrameParameters)initWithCoder:(id)a3
{
  v4 = [(BWAdaptiveBracketingFrameParameters *)self init];
  if (v4)
  {
    [a3 decodeDoubleForKey:@"evZeroRatio"];
    v4->_evZeroRatio = v5;
    v4->_integrationTimeInMicroseconds = [a3 decodeInt32ForKey:@"integrationTimeInMicroseconds"];
    [a3 decodeFloatForKey:@"gain"];
    v4->_gain = v6;
    v4->_maxAGC = [a3 decodeInt32ForKey:@"maxAGC"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeDouble:@"evZeroRatio" forKey:self->_evZeroRatio];
  [a3 encodeInt32:self->_integrationTimeInMicroseconds forKey:@"integrationTimeInMicroseconds"];
  *&v5 = self->_gain;
  [a3 encodeFloat:@"gain" forKey:v5];
  maxAGC = self->_maxAGC;

  [a3 encodeInt32:maxAGC forKey:@"maxAGC"];
}

+ (id)frameParametersWithEVZeroRatio:(double)a3 integrationTimeInMicroseconds:(int)a4 gain:(float)a5 maxAGC:(int)a6
{
  v6 = [BWAdaptiveBracketingFrameParameters alloc];
  if (v6)
  {
    v8.receiver = v6;
    v8.super_class = BWAdaptiveBracketingFrameParameters;
    v6 = objc_msgSendSuper2(&v8, sel_init);
    if (v6)
    {
      v6 = OUTLINED_FUNCTION_0_27(v6);
    }
  }

  return v6;
}

+ (id)frameParametersWithEVZeroRatio:(double)a3 integrationTimeInSeconds:(double)a4 gain:(float)a5 maxAGC:(int)a6
{
  v10 = [BWAdaptiveBracketingFrameParameters alloc];
  if (v10)
  {
    v12.receiver = v10;
    v12.super_class = BWAdaptiveBracketingFrameParameters;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    if (v10)
    {
      v10->_evZeroRatio = a3;
      v10->_integrationTimeInMicroseconds = (a4 * 1000000.0);
      v10->_gain = a5;
      v10->_maxAGC = a6;
    }
  }

  return v10;
}

@end