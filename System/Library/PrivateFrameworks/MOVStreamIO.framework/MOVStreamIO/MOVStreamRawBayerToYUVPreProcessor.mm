@interface MOVStreamRawBayerToYUVPreProcessor
- (__CVBuffer)processedPixelBufferCopyOf:(__CVBuffer *)of streamData:(StreamRecordingData *)data error:(id *)error;
- (opaqueCMFormatDescription)formatDescriptionForPixelBuffer:(__CVBuffer *)buffer streamData:(StreamRecordingData *)data;
@end

@implementation MOVStreamRawBayerToYUVPreProcessor

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
  if (v9)
  {
    goto LABEL_4;
  }

  v12 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:Width height:Height >> 1 pixelFormat:2019963442 extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:data->var22];
  if (v12)
  {
    objc_storeStrong(p_var12, v12);
    v9 = v12;
LABEL_4:
    getPixelBuffer = [v9 getPixelBuffer];
    [MIOPixelBufferUtility splitBayerBuffer:of intoYUVPixelBuffer:getPixelBuffer shiftBitsLeftBy:2];
    goto LABEL_5;
  }

  v15 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for RawBayer stream." code:19];
  if (error)
  {
    v15 = v15;
    *error = v15;
  }

  v9 = 0;
  getPixelBuffer = 0;
LABEL_5:

  return getPixelBuffer;
}

@end