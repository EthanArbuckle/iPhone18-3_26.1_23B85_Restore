@interface BWStillImageCaptureConstantColorAnalyticsPayload
- (BWStillImageCaptureConstantColorAnalyticsPayload)init;
- (id)eventDictionary;
- (void)reset;
@end

@implementation BWStillImageCaptureConstantColorAnalyticsPayload

- (BWStillImageCaptureConstantColorAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWStillImageCaptureConstantColorAnalyticsPayload;
  v2 = [(BWStillImageCaptureAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWStillImageCaptureConstantColorAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = BWStillImageCaptureConstantColorAnalyticsPayload;
  [(BWStillImageCaptureAnalyticsPayload *)&v3 reset];
  self->_constantColorApplied = 0;
  self->_constantColorCenterWeightedMeanConfidenceLevel = 0.0;
  self->_constantColorAnalyticsVersion = 0;
  self->_constantColorStrobeWhitePointRGain = 0.0;
  self->_constantColorStrobeWhitePointGGain = 0.0;
  self->_constantColorStrobeWhitePointBGain = 0.0;
}

- (id)eventDictionary
{
  v9.receiver = self;
  v9.super_class = BWStillImageCaptureConstantColorAnalyticsPayload;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[BWStillImageCaptureAnalyticsPayload eventDictionary](&v9, sel_eventDictionary)}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_constantColorApplied), @"constantColorApplied"}];
  if (self->_constantColorApplied)
  {
    *&v4 = self->_constantColorCenterWeightedMeanConfidenceLevel;
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v4), @"constantColorCenterWeightedMeanConfidenceLevel"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_constantColorAnalyticsVersion), @"constantColorAnalyticsVersion"}];
    *&v5 = self->_constantColorStrobeWhitePointRGain;
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v5), @"constantColorStrobeWhitePointRGain"}];
    *&v6 = self->_constantColorStrobeWhitePointGGain;
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v6), @"constantColorStrobeWhitePointGGain"}];
    *&v7 = self->_constantColorStrobeWhitePointBGain;
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v7), @"constantColorStrobeWhitePointBGain"}];
  }

  return v3;
}

@end