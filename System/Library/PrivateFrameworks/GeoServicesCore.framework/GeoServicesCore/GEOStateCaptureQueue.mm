@interface GEOStateCaptureQueue
@end

@implementation GEOStateCaptureQueue

uint64_t ___GEOStateCaptureQueue_block_invoke()
{
  _GEOStateCaptureQueue_queue = geo_dispatch_queue_create_with_target("com.apple.GeoServices.StateCapture", 0);

  return MEMORY[0x1EEE66BB8]();
}

@end