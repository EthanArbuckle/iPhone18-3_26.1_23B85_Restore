@interface BWCameraSwitchAnalyticsPayload
- (BWCameraSwitchAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWCameraSwitchAnalyticsPayload

- (BWCameraSwitchAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWCameraSwitchAnalyticsPayload;
  v2 = [(BWCameraSwitchAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWCameraSwitchAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWCameraSwitchAnalyticsPayload;
  [(BWCameraSwitchAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  *&self->_switchReason = 0;

  self->_switchFromPortType = 0;
  self->_switchToPortType = 0;

  self->_afRecommendedPortType = 0;
  self->_fallbackCameras = 0;
  *&self->_switchDelayReasons = 0u;
  *&self->_videoDimensions.width = 0u;
  *&self->_clientApplicationID = 0u;

  self->_apsSubjectDistance = 0;
  self->_logicalFocusLensPosition = 0;

  self->_focusingMethod = 0;
  self->_luxLevel = 0;

  self->_frameRate = 0;
}

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_switchReason), @"switchReason"}];
  *&v4 = self->_uiZoom;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v4), @"uiZoom"}];
  [v3 setObject:self->_switchFromPortType forKeyedSubscript:@"switchFromPortType"];
  [v3 setObject:self->_switchToPortType forKeyedSubscript:@"switchToPortType"];
  [v3 setObject:self->_afRecommendedPortType forKeyedSubscript:@"afRecommendedPortType"];
  [v3 setObject:self->_clientApplicationID forKeyedSubscript:@"clientApplicationID"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deviceType), @"deviceType"}];
  *&v5 = self->_gravityZ;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v5), @"gravityZ"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_videoDimensions.width), @"videoDimensionsWidth"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_videoDimensions.height), @"videoDimensionsHeight"}];
  if (self->_timeSinceLastAutoSwitch)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"timeSinceLastAutoSwitch"}];
  }

  if (self->_switchDelay)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"switchDelay"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:", self->_switchDelayReasons), @"switchDelayReasons"}];
  }

  if (self->_tofMeasuredDepth != 0.0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"tofMeasuredDepth"}];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_tofROIType), @"tofROIType"}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_fallbackCameras), @"fallbackCameras"}];
  v6 = *off_1E798A0C0;
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_apsSubjectDistance forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A0C0), @"apsSubjectDistanceWide"}];
  v7 = *off_1E798A0D8;
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_apsSubjectDistance forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A0D8), @"apsSubjectDistanceTele"}];
  v8 = *off_1E798A0D0;
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_apsSubjectDistance forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A0D0), @"apsSubjectDistanceSuperwide"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_logicalFocusLensPosition forKeyedSubscript:{"objectForKeyedSubscript:", v6), @"logicalFocusLensPositionWide"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_logicalFocusLensPosition forKeyedSubscript:{"objectForKeyedSubscript:", v7), @"logicalFocusLensPositionTele"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_logicalFocusLensPosition forKeyedSubscript:{"objectForKeyedSubscript:", v8), @"logicalFocusLensPositionSuperwide"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_focusingMethod forKeyedSubscript:{"objectForKeyedSubscript:", v6), @"focusMethodWide"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_focusingMethod forKeyedSubscript:{"objectForKeyedSubscript:", v7), @"focusMethodTele"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_focusingMethod forKeyedSubscript:{"objectForKeyedSubscript:", v8), @"focusMethodSuperWide"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_luxLevel forKeyedSubscript:{"objectForKeyedSubscript:", v6), @"luxLevelWide"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_luxLevel forKeyedSubscript:{"objectForKeyedSubscript:", v7), @"luxLevelTele"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_luxLevel forKeyedSubscript:{"objectForKeyedSubscript:", v8), @"luxLevelSuperWide"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_frameRate forKeyedSubscript:{"objectForKeyedSubscript:", v6), @"frameRateWide"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_frameRate forKeyedSubscript:{"objectForKeyedSubscript:", v7), @"frameRateTele"}];
  [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_frameRate forKeyedSubscript:{"objectForKeyedSubscript:", v8), @"frameRateSuperWide"}];
  return v3;
}

@end