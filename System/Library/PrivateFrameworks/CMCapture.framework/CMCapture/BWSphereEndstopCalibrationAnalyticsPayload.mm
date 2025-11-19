@interface BWSphereEndstopCalibrationAnalyticsPayload
- (BWSphereEndstopCalibrationAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWSphereEndstopCalibrationAnalyticsPayload

- (BWSphereEndstopCalibrationAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWSphereEndstopCalibrationAnalyticsPayload;
  v2 = [(BWSphereEndstopCalibrationAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWSphereEndstopCalibrationAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSphereEndstopCalibrationAnalyticsPayload;
  [(BWSphereEndstopCalibrationAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_magneticFieldMagnitude = -1;

  *&v3 = -1;
  *(&v3 + 1) = -1;
  *&self->_deltaSphereYPosEndstop = v3;
  *&self->_sphereYNegEndstop = v3;
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
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereXPosEndstop), @"xPosEndstop"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereXNegEndstop), @"xNegEndstop"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereYPosEndstop), @"yPosEndstop"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereYNegEndstop), @"yNegEndstop"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaSphereXPosEndstop), @"deltaXPosEndstop"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaSphereXNegEndstop), @"deltaXNegEndstop"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaSphereYPosEndstop), @"deltaYPosEndstop"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaSphereYNegEndstop), @"deltaYNegEndstop"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereXStroke), @"xStroke"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereYStroke), @"yStroke"}];
  }

  return v3;
}

@end