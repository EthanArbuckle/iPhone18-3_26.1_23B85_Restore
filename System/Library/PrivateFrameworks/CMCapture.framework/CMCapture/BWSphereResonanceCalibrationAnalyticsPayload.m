@interface BWSphereResonanceCalibrationAnalyticsPayload
- (BWSphereResonanceCalibrationAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWSphereResonanceCalibrationAnalyticsPayload

- (BWSphereResonanceCalibrationAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWSphereResonanceCalibrationAnalyticsPayload;
  v2 = [(BWSphereResonanceCalibrationAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWSphereResonanceCalibrationAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSphereResonanceCalibrationAnalyticsPayload;
  [(BWSphereResonanceCalibrationAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_magneticFieldMagnitude = -1;

  *&v3 = -1;
  *(&v3 + 1) = -1;
  *&self->_deltaSphereXAxisDampingCoefficient = v3;
  *&self->_deltaSphereYAxisResonantFrequency = v3;
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
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereXAxisResonantFrequency), @"xAxisResonantFrequency"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereYAxisResonantFrequency), @"yAxisResonantFrequency"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaSphereXAxisResonantFrequency), @"deltaXAxisResonantFrequency"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaSphereYAxisResonantFrequency), @"deltaYAxisResonantFrequency"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereXAxisDampingCoefficient), @"xAxisDampingCoefficient"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereYAxisDampingCoefficient), @"yAxisDampingCoefficient"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaSphereXAxisDampingCoefficient), @"deltaXAxisDampingCoefficient"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaSphereYAxisDampingCoefficient), @"deltaYAxisDampingCoefficient"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereXAxisLoopGain), @"xAxisLoopGain"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereYAxisLoopGain), @"yAxisLoopGain"}];
  }

  return v3;
}

@end