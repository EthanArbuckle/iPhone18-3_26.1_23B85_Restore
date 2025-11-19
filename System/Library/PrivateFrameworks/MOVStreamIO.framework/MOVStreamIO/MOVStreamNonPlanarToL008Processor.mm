@interface MOVStreamNonPlanarToL008Processor
- (__CVBuffer)processedPixelBufferCopyOf:(__CVBuffer *)a3 streamData:(StreamRecordingData *)a4 error:(id *)a5;
- (opaqueCMFormatDescription)formatDescriptionForPixelBuffer:(__CVBuffer *)a3 streamData:(StreamRecordingData *)a4;
@end

@implementation MOVStreamNonPlanarToL008Processor

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
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerPixel = MIOCVPixelBufferGetBytesPerPixel(a3);
  if (v9)
  {
    goto LABEL_4;
  }

  v13 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:(BytesPerPixel * Width) height:Height pixelFormat:1278226488 extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:a4->var22];
  if (v13)
  {
    objc_storeStrong(p_var12, v13);
    v9 = v13;
LABEL_4:
    v14 = [v9 getPixelBuffer];
    [MIOPixelBufferUtility copyPixelBuffer:a3 toPixelBuffer:v14];
    goto LABEL_5;
  }

  v16 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create L008 pixel buffer pool for Non-Planar stream." code:19];
  if (a5)
  {
    v16 = v16;
    *a5 = v16;
  }

  v9 = 0;
  v14 = 0;
LABEL_5:

  return v14;
}

@end