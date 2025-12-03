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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [dictionary setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_videoMirrored), @"videoMirrored"}];
  if (self->_deviceMask)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"deviceMask"}];
  }

  if (self->_devicePosition)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"devicePosition"}];
  }

  if (self->_duration != 0.0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:"), @"duration"}];
  }

  if (self->_nominalFramerate != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"nominalFramerate"}];
  }

  if (self->_height != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"height"}];
  }

  if (self->_width != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"width"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_hdrVideo), @"hdrVideo"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_numberOfFramesDropped), @"numberOfFramesDropped"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_numberOfISPFramesDropped), @"numberOfISPFramesDropped"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_numberOfFrames), @"numberOfFrames"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_proresVideo), @"proresVideo"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_colorSpace), @"colorSpace"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_pixelFormat), @"pixelFormat"}];
  return dictionary;
}

@end