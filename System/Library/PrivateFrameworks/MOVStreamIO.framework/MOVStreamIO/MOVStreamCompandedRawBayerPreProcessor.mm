@interface MOVStreamCompandedRawBayerPreProcessor
- (__CVBuffer)processedPixelBufferCopyOf:(__CVBuffer *)of streamData:(StreamRecordingData *)data error:(id *)error;
- (opaqueCMFormatDescription)formatDescriptionForPixelBuffer:(__CVBuffer *)buffer streamData:(StreamRecordingData *)data;
@end

@implementation MOVStreamCompandedRawBayerPreProcessor

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
  if (!v9)
  {
    v9 = [MIOPixelBufferPool createNewL008MIOPixelBufferPoolWithReferencePixelBuffer:of minBufferCount:10 bufferCacheMode:data->var22];
    if (!v9)
    {
      [MEMORY[0x277CCA9B8] populateStreamError:error message:@"Cannot create pixel buffer pool for RawBayer stream." code:19];
      getPixelBuffer = 0;
      goto LABEL_8;
    }

    objc_storeStrong(p_var12, v9);
  }

  getPixelBuffer = [v9 getPixelBuffer];
  if ([MIOPixelBufferUtility bufferHasPadding:of])
  {
    v11 = [MIOPixelBufferUtility stripBufferPadding:of];
    [MIOPixelBufferUtility splitCompandedBayerBuffer:v11 intoCompandedWarholPixelBuffer:getPixelBuffer];
    CVPixelBufferRelease(v11);
  }

  else
  {
    [MIOPixelBufferUtility splitCompandedBayerBuffer:of intoCompandedWarholPixelBuffer:getPixelBuffer];
  }

LABEL_8:

  return getPixelBuffer;
}

@end