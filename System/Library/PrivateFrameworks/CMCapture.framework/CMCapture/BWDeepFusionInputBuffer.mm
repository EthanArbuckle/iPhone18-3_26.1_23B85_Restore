@interface BWDeepFusionInputBuffer
- (BWDeepFusionInputBuffer)initWithBuffer:(__CVBuffer *)buffer type:(unint64_t)type captureFrameFlags:(unint64_t)flags metadata:(id)metadata lscGainMap:(__CVBuffer *)map lscGainMapParameters:(id)parameters;
- (void)dealloc;
- (void)releasePixelBuffers;
@end

@implementation BWDeepFusionInputBuffer

- (BWDeepFusionInputBuffer)initWithBuffer:(__CVBuffer *)buffer type:(unint64_t)type captureFrameFlags:(unint64_t)flags metadata:(id)metadata lscGainMap:(__CVBuffer *)map lscGainMapParameters:(id)parameters
{
  v14 = [(BWDeepFusionInputBuffer *)self init];
  if (v14)
  {
    v14->_buffer = CVPixelBufferRetain(buffer);
    v14->_type = type;
    v14->_captureFrameFlags = flags;
    v14->_metadata = metadata;
    v14->_lscGainMap = CVPixelBufferRetain(map);
    v14->_lscGainMapParameters = parameters;
  }

  return v14;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_buffer);

  CVPixelBufferRelease(self->_lscGainMap);
  v3.receiver = self;
  v3.super_class = BWDeepFusionInputBuffer;
  [(BWDeepFusionInputBuffer *)&v3 dealloc];
}

- (void)releasePixelBuffers
{
  buffer = self->_buffer;
  if (buffer)
  {
    CFRelease(buffer);
    self->_buffer = 0;
  }

  lscGainMap = self->_lscGainMap;
  if (lscGainMap)
  {
    CFRelease(lscGainMap);
    self->_lscGainMap = 0;
  }
}

@end