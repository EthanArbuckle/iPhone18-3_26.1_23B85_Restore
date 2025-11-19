@interface BWVideoDataOutputAnalyticsPayload
- (BWVideoDataOutputAnalyticsPayload)init;
- (id)eventDictionary;
- (id)eventName;
- (void)dealloc;
- (void)reset;
@end

@implementation BWVideoDataOutputAnalyticsPayload

- (BWVideoDataOutputAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWVideoDataOutputAnalyticsPayload;
  v2 = [(BWVideoDataOutputAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWVideoDataOutputAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  self->_duration = 0.0;
  *&self->_deviceMask = 0;
  self->_videoMirrored = 0;
  self->_nominalFramerate = 3.4028e38;
  *&self->_height = 0x8000000080000000;

  self->_clientApplicationID = 0;
  *&self->_hdrVideo = 0;
  self->_colorSpace = -1;
  self->_numberOfISPFramesDropped = 0;
  self->_numberOfFrames = 0;
  self->_numberOfFramesDropped = 0;
  self->_pixelFormat = 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVideoDataOutputAnalyticsPayload;
  [(BWVideoDataOutputAnalyticsPayload *)&v3 dealloc];
}

- (id)eventName
{
  if (self->_proresVideo)
  {
    return @"com.apple.coremedia.camera.ProResVideoDataOutput";
  }

  else
  {
    return @"com.apple.coremedia.camera.VideoDataOutput";
  }
}

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [v3 setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_videoMirrored), @"videoMirrored"}];
  if (self->_deviceMask)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"deviceMask"}];
  }

  if (self->_devicePosition)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"devicePosition"}];
  }

  if (self->_duration != 0.0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:"), @"duration"}];
  }

  if (self->_nominalFramerate != 3.4028e38)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"nominalFramerate"}];
  }

  if (self->_height != 0x7FFFFFFF)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"height"}];
  }

  if (self->_width != 0x7FFFFFFF)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"width"}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_hdrVideo), @"hdrVideo"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_numberOfFramesDropped), @"numberOfFramesDropped"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_numberOfISPFramesDropped), @"numberOfISPFramesDropped"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_numberOfFrames), @"numberOfFrames"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_proresVideo), @"proresVideo"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_colorSpace), @"colorSpace"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_pixelFormat), @"pixelFormat"}];
  return v3;
}

@end