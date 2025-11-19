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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_magneticFieldMagnitude), @"magneticFieldMagnitude"}];
  [v3 setObject:self->_portType forKeyedSubscript:@"portType"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_calibrationStatus), @"status"}];
  if (!self->_calibrationStatus)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afAxisResonantFreq), @"resonantFrequency"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaAFAxisResonantFreq), @"deltaResonantFrequency"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afAxisDampingCoefficient), @"dampingCoefficient"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaAFAxisDampingCoefficient), @"deltaDampingCoefficient"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afLoopGain), @"loopGain"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afGelModelD1Coefficient), @"gelModelD1Coefficient"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afGelModelD2Coefficient), @"gelModelD2Coefficient"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afGelModelP1Coefficient), @"gelModelP1Coefficient"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_afGelModelP2Coefficient), @"gelModelP2Coefficient"}];
  }

  return v3;
}

@end