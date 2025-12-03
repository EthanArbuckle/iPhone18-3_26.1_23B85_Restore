@interface MOVStreamDefaultPreProcessor
- (opaqueCMFormatDescription)createTrackFormatDescriptionFromStreamData:(StreamRecordingData *)data;
@end

@implementation MOVStreamDefaultPreProcessor

- (opaqueCMFormatDescription)createTrackFormatDescriptionFromStreamData:(StreamRecordingData *)data
{
  var0 = data->var0;
  if (data->var0)
  {
    CFRetain(data->var0);
  }

  return var0;
}

@end