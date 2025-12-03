@interface BWAdaptiveBracketingFrameParameters
+ (id)frameParametersWithEVZeroRatio:(double)ratio integrationTimeInMicroseconds:(int)microseconds gain:(float)gain maxAGC:(int)c;
+ (id)frameParametersWithEVZeroRatio:(double)ratio integrationTimeInSeconds:(double)seconds gain:(float)gain maxAGC:(int)c;
- (BWAdaptiveBracketingFrameParameters)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWAdaptiveBracketingFrameParameters

- (BWAdaptiveBracketingFrameParameters)initWithCoder:(id)coder
{
  v4 = [(BWAdaptiveBracketingFrameParameters *)self init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"evZeroRatio"];
    v4->_evZeroRatio = v5;
    v4->_integrationTimeInMicroseconds = [coder decodeInt32ForKey:@"integrationTimeInMicroseconds"];
    [coder decodeFloatForKey:@"gain"];
    v4->_gain = v6;
    v4->_maxAGC = [coder decodeInt32ForKey:@"maxAGC"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeDouble:@"evZeroRatio" forKey:self->_evZeroRatio];
  [coder encodeInt32:self->_integrationTimeInMicroseconds forKey:@"integrationTimeInMicroseconds"];
  *&v5 = self->_gain;
  [coder encodeFloat:@"gain" forKey:v5];
  maxAGC = self->_maxAGC;

  [coder encodeInt32:maxAGC forKey:@"maxAGC"];
}

+ (id)frameParametersWithEVZeroRatio:(double)ratio integrationTimeInMicroseconds:(int)microseconds gain:(float)gain maxAGC:(int)c
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

+ (id)frameParametersWithEVZeroRatio:(double)ratio integrationTimeInSeconds:(double)seconds gain:(float)gain maxAGC:(int)c
{
  v10 = [BWAdaptiveBracketingFrameParameters alloc];
  if (v10)
  {
    v12.receiver = v10;
    v12.super_class = BWAdaptiveBracketingFrameParameters;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    if (v10)
    {
      v10->_evZeroRatio = ratio;
      v10->_integrationTimeInMicroseconds = (seconds * 1000000.0);
      v10->_gain = gain;
      v10->_maxAGC = c;
    }
  }

  return v10;
}

@end