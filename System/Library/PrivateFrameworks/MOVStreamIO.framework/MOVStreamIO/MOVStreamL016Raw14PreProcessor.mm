@interface MOVStreamL016Raw14PreProcessor
- (opaqueCMFormatDescription)formatDescriptionForPixelBuffer:(__CVBuffer *)buffer streamData:(StreamRecordingData *)data;
@end

@implementation MOVStreamL016Raw14PreProcessor

- (opaqueCMFormatDescription)formatDescriptionForPixelBuffer:(__CVBuffer *)buffer streamData:(StreamRecordingData *)data
{
  result = data->var0;
  if (!data->var1)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = [MOVStreamIOUtility formatForPixelBuffer:buffer];
    data->var0 = result;
    data->var1 = 1;
  }

  return result;
}

@end