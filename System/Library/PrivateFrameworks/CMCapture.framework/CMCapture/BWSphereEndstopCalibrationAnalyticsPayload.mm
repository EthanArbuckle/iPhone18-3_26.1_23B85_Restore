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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_magneticFieldMagnitude), @"magneticFieldMagnitude"}];
  [dictionary setObject:self->_portType forKeyedSubscript:@"portType"];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_calibrationStatus), @"status"}];
  if (!self->_calibrationStatus)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereXPosEndstop), @"xPosEndstop"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereXNegEndstop), @"xNegEndstop"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereYPosEndstop), @"yPosEndstop"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereYNegEndstop), @"yNegEndstop"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaSphereXPosEndstop), @"deltaXPosEndstop"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaSphereXNegEndstop), @"deltaXNegEndstop"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaSphereYPosEndstop), @"deltaYPosEndstop"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deltaSphereYNegEndstop), @"deltaYNegEndstop"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereXStroke), @"xStroke"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereYStroke), @"yStroke"}];
  }

  return dictionary;
}

@end