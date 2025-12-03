@interface BWAutoFocusROIAnalyticsPayload
- (BWAutoFocusROIAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWAutoFocusROIAnalyticsPayload

- (BWAutoFocusROIAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWAutoFocusROIAnalyticsPayload;
  v2 = [(BWAutoFocusROIAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWAutoFocusROIAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWAutoFocusROIAnalyticsPayload;
  [(BWAutoFocusROIAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_portType = 0;

  self->_focusRegion = 0;
  self->_clientApplicationID = 0;
  *&self->_focusRegionType = -NAN;
  self->_subjectDistance = 3.4028e38;
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  portType = self->_portType;
  if (portType)
  {
    [dictionary setObject:portType forKeyedSubscript:@"portType"];
  }

  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_focusRegionType), @"focusRegionType"}];
  focusRegion = self->_focusRegion;
  if (focusRegion)
  {
    v7 = *(MEMORY[0x1E695F050] + 16);
    v15.origin = *MEMORY[0x1E695F050];
    v15.size = v7;
    if (CGRectMakeWithDictionaryRepresentation(focusRegion, &v15) && !CGRectIsNull(v15) && !CGRectIsEmpty(v15))
    {
      LODWORD(v8) = vcvtd_n_u64_f64(v15.origin.x, 4uLL);
      [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v8), @"focusRegionX"}];
      LODWORD(v9) = vcvtd_n_u64_f64(v15.origin.y, 4uLL);
      [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v9), @"focusRegionY"}];
      v10 = v15.size.width * 16.0;
      LODWORD(v11) = vcvtps_u32_f32(v10);
      [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v11), @"focusRegionWidth"}];
      v12 = v15.size.height * 16.0;
      LODWORD(v13) = vcvtps_u32_f32(v12);
      [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v13), @"focusRegionHeight"}];
    }
  }

  if (self->_luxLevel != 0x7FFFFFFF)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"luxLevel"}];
  }

  if (self->_subjectDistance != 3.4028e38)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"subjectDistance"}];
  }

  if (self->_clientApplicationID)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:")), @"clientIDType"}];
  }

  return v4;
}

@end