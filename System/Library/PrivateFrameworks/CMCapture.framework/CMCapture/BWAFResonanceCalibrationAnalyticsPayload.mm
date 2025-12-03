@interface BWAFResonanceCalibrationAnalyticsPayload
- (BWAFResonanceCalibrationAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWAFResonanceCalibrationAnalyticsPayload

- (BWAFResonanceCalibrationAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWAFResonanceCalibrationAnalyticsPayload;
  v2 = [(BWAFResonanceCalibrationAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWAFResonanceCalibrationAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWAFResonanceCalibrationAnalyticsPayload;
  [(BWAFResonanceCalibrationAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_magneticFieldMagnitude = -1;

  *&self->_afGelModelP1Coefficient = -1;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *&self->_deltaAFAxisDampingCoefficient = v3;
  *&self->_calibrationStatus = v3;
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_magneticFieldMagnitude), @"magneticFieldMagnitude"}];
  [dictionary setObject:self->_portType forKeyedSubscript:@"portType"];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_calibrationStatus), @"status"}];
  if (!self->_calibrationStatus)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afAxisResonantFreq), @"resonantFrequency"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaAFAxisResonantFreq), @"deltaResonantFrequency"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afAxisDampingCoefficient), @"dampingCoefficient"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaAFAxisDampingCoefficient), @"deltaDampingCoefficient"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afLoopGain), @"loopGain"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afGelModelD1Coefficient), @"gelModelD1Coefficient"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afGelModelD2Coefficient), @"gelModelD2Coefficient"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afGelModelP1Coefficient), @"gelModelP1Coefficient"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afGelModelP2Coefficient), @"gelModelP2Coefficient"}];
  }

  return dictionary;
}

@end