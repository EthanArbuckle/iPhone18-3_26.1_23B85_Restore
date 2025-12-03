@interface MOVStreamRawBayerPreProcessor
- (__CVBuffer)processedPixelBufferCopyOf:(__CVBuffer *)of streamData:(StreamRecordingData *)data error:(id *)error;
- (opaqueCMFormatDescription)formatDescriptionForPixelBuffer:(__CVBuffer *)buffer streamData:(StreamRecordingData *)data;
@end

@implementation MOVStreamRawBayerPreProcessor

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
  if (v9)
  {
    goto LABEL_4;
  }

  v10 = [MIOPixelBufferPool createNewL010MIOPixelBufferPoolWithReferencePixelBuffer:of minBufferCount:10 bufferCacheMode:data->var22];
  if (v10)
  {
    v9 = v10;
    objc_storeStrong(p_var12, v10);
LABEL_4:
    getPixelBuffer = [v9 getPixelBuffer];
    if ([MIOPixelBufferUtility bufferHasPadding:of])
    {
      v12 = [MIOPixelBufferUtility stripBufferPadding:of];
      [MIOPixelBufferUtility splitBayerBuffer:v12 intoWarholPixelBuffer:getPixelBuffer shiftBitsLeftBy:2];
      CVPixelBufferRelease(v12);
    }

    else
    {
      [MIOPixelBufferUtility splitBayerBuffer:of intoWarholPixelBuffer:getPixelBuffer shiftBitsLeftBy:2];
    }

    goto LABEL_10;
  }

  v13 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for RawBayer stream." code:19];
  if (error)
  {
    v13 = v13;
    *error = v13;
  }

  v9 = 0;
  getPixelBuffer = 0;
LABEL_10:

  return getPixelBuffer;
}

@end