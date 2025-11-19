@interface BWStillImageErrorAnalyticsPayload
- (BWStillImageErrorAnalyticsPayload)init;
- (id)eventDictionary;
- (id)eventName;
- (void)reset;
@end

@implementation BWStillImageErrorAnalyticsPayload

- (BWStillImageErrorAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWStillImageErrorAnalyticsPayload;
  v2 = [(BWStillImageAnalyticsPayloadCommon *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWStillImageErrorAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = BWStillImageErrorAnalyticsPayload;
  [(BWStillImageAnalyticsPayloadCommon *)&v3 reset];
  self->_error = 0;
  self->_digitalZoomRatioFromSource = 3.4028e38;
}

- (id)eventName
{
  if ([(BWStillImageAnalyticsPayloadCommon *)self deferred])
  {
    return @"com.apple.coremedia.camera.DeferredPhotoCapture";
  }

  else
  {
    return @"com.apple.coremedia.camera.PhotoCapture";
  }
}

- (id)eventDictionary
{
  v5.receiver = self;
  v5.super_class = BWStillImageErrorAnalyticsPayload;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[BWStillImageAnalyticsPayloadCommon eventDictionary](&v5, sel_eventDictionary)}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_error), @"error"}];
  if (self->_digitalZoomRatioFromSource != 3.4028e38)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"digitalZoomRatioFromSource"}];
  }

  return v3;
}

@end