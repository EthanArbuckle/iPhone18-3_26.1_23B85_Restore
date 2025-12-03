@interface MOVStreamRawBayerTo1stPlaneYUVPreProcessor
- (__CVBuffer)processedPixelBufferCopyOf:(__CVBuffer *)of streamData:(StreamRecordingData *)data error:(id *)error;
- (opaqueCMFormatDescription)formatDescriptionForPixelBuffer:(__CVBuffer *)buffer streamData:(StreamRecordingData *)data;
@end

@implementation MOVStreamRawBayerTo1stPlaneYUVPreProcessor

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

  Width = CVPixelBufferGetWidth(of);
  v11 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:Width height:CVPixelBufferGetHeight(of) pixelFormat:2019963440 extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:data->var22];
  if (v11)
  {
    v9 = v11;
    objc_storeStrong(p_var12, v11);
LABEL_4:
    getPixelBuffer = [v9 getPixelBuffer];
    [MIOPixelBufferUtility splitBayerBuffer:of intoWarholPixelBuffer:getPixelBuffer shiftBitsLeftBy:2];
    goto LABEL_5;
  }

  v14 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for RawBayer stream." code:19];
  if (error)
  {
    v14 = v14;
    *error = v14;
  }

  v9 = 0;
  getPixelBuffer = 0;
LABEL_5:

  return getPixelBuffer;
}

@end