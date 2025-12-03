@interface MOVStreamNonPlanarToL008Processor
- (__CVBuffer)processedPixelBufferCopyOf:(__CVBuffer *)of streamData:(StreamRecordingData *)data error:(id *)error;
- (opaqueCMFormatDescription)formatDescriptionForPixelBuffer:(__CVBuffer *)buffer streamData:(StreamRecordingData *)data;
@end

@implementation MOVStreamNonPlanarToL008Processor

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

- (__CVBuffer)processedPixelBufferCopyOf:(__CVBuffer *)of streamData:(StreamRecordingData *)data error:(id *)error
{
  p_var12 = &data->var12;
  v9 = data->var12;
  Width = CVPixelBufferGetWidth(of);
  Height = CVPixelBufferGetHeight(of);
  BytesPerPixel = MIOCVPixelBufferGetBytesPerPixel(of);
  if (v9)
  {
    goto LABEL_4;
  }

  v13 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:(BytesPerPixel * Width) height:Height pixelFormat:1278226488 extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:data->var22];
  if (v13)
  {
    objc_storeStrong(p_var12, v13);
    v9 = v13;
LABEL_4:
    getPixelBuffer = [v9 getPixelBuffer];
    [MIOPixelBufferUtility copyPixelBuffer:of toPixelBuffer:getPixelBuffer];
    goto LABEL_5;
  }

  v16 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create L008 pixel buffer pool for Non-Planar stream." code:19];
  if (error)
  {
    v16 = v16;
    *error = v16;
  }

  v9 = 0;
  getPixelBuffer = 0;
LABEL_5:

  return getPixelBuffer;
}

@end