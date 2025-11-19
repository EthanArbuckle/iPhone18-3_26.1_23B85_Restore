@interface MOVStreamDefaultPreProcessor
- (opaqueCMFormatDescription)createTrackFormatDescriptionFromStreamData:(StreamRecordingData *)a3;
@end

@implementation MOVStreamDefaultPreProcessor

- (opaqueCMFormatDescription)createTrackFormatDescriptionFromStreamData:(StreamRecordingData *)a3
{
  var0 = a3->var0;
  if (a3->var0)
  {
    CFRetain(a3->var0);
  }

  return var0;
}

@end