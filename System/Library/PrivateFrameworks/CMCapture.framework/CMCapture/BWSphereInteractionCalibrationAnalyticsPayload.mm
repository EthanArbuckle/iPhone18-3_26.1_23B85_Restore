@interface BWSphereInteractionCalibrationAnalyticsPayload
- (BWSphereInteractionCalibrationAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWSphereInteractionCalibrationAnalyticsPayload

- (BWSphereInteractionCalibrationAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWSphereInteractionCalibrationAnalyticsPayload;
  v2 = [(BWSphereInteractionCalibrationAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWSphereInteractionCalibrationAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSphereInteractionCalibrationAnalyticsPayload;
  [(BWSphereInteractionCalibrationAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_magneticFieldMagnitude = -1;

  self->_sphereMacroPosition = -1;
  *&self->_calibrationStatus = -1;
  *&self->_sphereNeutralPosition = -1;
}

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_magneticFieldMagnitude), @"magneticFieldMagnitude"}];
  [v3 setObject:self->_portType forKeyedSubscript:@"portType"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_calibrationStatus), @"status"}];
  if (!self->_calibrationStatus)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereMacroPositionError), @"neutralPositionError"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereNeutralPosition), @"neutralPosition"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereMacroPositionError), @"macroPositionError"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sphereMacroPosition), @"macroPosition"}];
  }

  return v3;
}

@end