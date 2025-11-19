@interface MOVStreamRawBayerTo1stPlaneYUVPreProcessor
- (__CVBuffer)processedPixelBufferCopyOf:(__CVBuffer *)a3 streamData:(StreamRecordingData *)a4 error:(id *)a5;
- (opaqueCMFormatDescription)formatDescriptionForPixelBuffer:(__CVBuffer *)a3 streamData:(StreamRecordingData *)a4;
@end

@implementation MOVStreamRawBayerTo1stPlaneYUVPreProcessor

- (opaqueCMFormatDescription)formatDescriptionForPixelBuffer:(__CVBuffer *)a3 streamData:(StreamRecordingData *)a4
{
  result = a4->var0;
  if (!a4->var1)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = [MOVStreamIOUtility formatForPixelBuffer:a3];
    a4->var0 = result;
    a4->var1 = 1;
  }

  return result;
}

- (__CVBuffer)processedPixelBufferCopyOf:(__CVBuffer *)a3 streamData:(StreamRecordingData *)a4 error:(id *)a5
{
  p_var12 = &a4->var12;
  v9 = a4->var12;
  if (v9)
  {
    goto LABEL_4;
  }

  Width = CVPixelBufferGetWidth(a3);
  v11 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:Width height:CVPixelBufferGetHeight(a3) pixelFormat:2019963440 extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:a4->var22];
  if (v11)
  {
    v9 = v11;
    objc_storeStrong(p_var12, v11);
LABEL_4:
    v12 = [v9 getPixelBuffer];
    [MIOPixelBufferUtility splitBayerBuffer:a3 intoWarholPixelBuffer:v12 shiftBitsLeftBy:2];
    goto LABEL_5;
  }

  v14 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for RawBayer stream." code:19];
  if (a5)
  {
    v14 = v14;
    *a5 = v14;
  }

  v9 = 0;
  v12 = 0;
LABEL_5:

  return v12;
}

@end