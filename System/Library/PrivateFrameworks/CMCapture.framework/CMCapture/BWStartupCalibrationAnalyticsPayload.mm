@interface BWStartupCalibrationAnalyticsPayload
- (BWStartupCalibrationAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWStartupCalibrationAnalyticsPayload

- (BWStartupCalibrationAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWStartupCalibrationAnalyticsPayload;
  v2 = [(BWStartupCalibrationAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWStartupCalibrationAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStartupCalibrationAnalyticsPayload;
  [(BWStartupCalibrationAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  *(&self->_maxAcceleration + 1) = 0u;
  *&self->_sessionOffset = 0u;
  *&self->_portType = 0u;
  *&self->_gravityX = 0;
  *&self->_gravityZ = 0;
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  portType = self->_portType;
  if (portType)
  {
    [dictionary setObject:portType forKeyedSubscript:@"portType"];
  }

  *&v4 = self->_accelStandardDeviation;
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v4), @"accelStd"}];
  *&v7 = self->_gyroStandardDeviation;
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v7), @"gyroStd"}];
  *&v8 = self->_sessionOffset;
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v8), @"sessionOffset"}];
  *&v9 = self->_deltaOffset;
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v9), @"deltaOffset"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_apsVoltage), @"apsVoltage"}];
  *&v10 = self->_maxAcceleration;
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v10), @"maxAccel"}];
  *&v11 = self->_deltaAcceleration;
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v11), @"deltaAccel"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_headroomErrorOccurred), @"headroomErrorOccurred"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_convergeErrorOccurred), @"convergeErrorOccurred"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_motionErrorOccurred), @"motionErrorOccurred"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_confidenceErrorOccurred), @"confidenceErrorOccurred"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_largeOffsetErrorOccurred), @"largeOffsetErrorOccurred"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_saturationErrorOccurred), @"saturationErrorOccurred"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_success), @"successOccurred"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_gcolEntry), @"gcolEntry"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_closedLoopEntry), @"closedLoopEntry"}];
  *&v12 = self->_gravityX;
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v12), @"gravityX"}];
  *&v13 = self->_gravityY;
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v13), @"gravityY"}];
  *&v14 = self->_gravityZ;
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v14), @"gravityZ"}];
  *&v15 = self->_completionTime;
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v15), @"completionTime"}];
  return v5;
}

@end