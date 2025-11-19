@interface BWStereoVideoCaptureAnalyticsPayload
- (BWStereoVideoCaptureAnalyticsPayload)init;
- (id)eventDictionary;
- (void)reset;
@end

@implementation BWStereoVideoCaptureAnalyticsPayload

- (BWStereoVideoCaptureAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWStereoVideoCaptureAnalyticsPayload;
  v2 = [(BWStereoVideoCaptureAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWStereoVideoCaptureAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_videoOrientation)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"videoOrientation"}];
  }

  if (self->_cameraPosture)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"cameraPosture"}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_stereoVideoCaptureEnabled), @"stereoVideoCaptureEnabled"}];
  if (self->_stereoVideoCaptureEnabled)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_stereoVideoCaptureStatus), @"stereoVideoCaptureStatus"}];
    *&v4 = self->_stereoVideoCaptureDuration;
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v4), @"stereoVideoCaptureDuration"}];
    *&v5 = self->_percentageOfFramesWithAggressiveLuxLevel;
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v5), @"percentageOfFramesWithAggressiveLuxLevel"}];
    *&v6 = self->_percentageOfFramesWithAggressiveFocusDistance;
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v6), @"percentageOfFramesWithAggressiveFocusDistance"}];
  }

  return v3;
}

- (void)reset
{
  self->_stereoVideoCaptureEnabled = 0;
  *&self->_videoOrientation = 0;
  self->_stereoVideoCaptureStatus = 1;
  *&self->_stereoVideoCaptureDuration = 0;
  self->_percentageOfFramesWithAggressiveFocusDistance = 0.0;
}

@end