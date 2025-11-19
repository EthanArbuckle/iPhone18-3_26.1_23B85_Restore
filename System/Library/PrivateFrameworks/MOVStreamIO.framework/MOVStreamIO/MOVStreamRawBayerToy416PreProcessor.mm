@interface MOVStreamRawBayerToy416PreProcessor
- (__CVBuffer)processedPixelBufferCopyOf:(__CVBuffer *)a3 streamData:(StreamRecordingData *)a4 error:(id *)a5;
- (opaqueCMFormatDescription)createTrackFormatDescriptionFromStreamData:(StreamRecordingData *)a3;
- (opaqueCMFormatDescription)formatDescriptionForPixelBuffer:(__CVBuffer *)a3 streamData:(StreamRecordingData *)a4;
@end

@implementation MOVStreamRawBayerToy416PreProcessor

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
  if (v9)
  {
    goto LABEL_4;
  }

  v12 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:Width height:Height pixelFormat:2033463606 extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:a4->var22];
  if (v12)
  {
    objc_storeStrong(p_var12, v12);
    v9 = v12;
LABEL_4:
    v13 = [v9 getPixelBuffer];
    [MIOPixelBufferUtility copyMonochromeBuffer:a3 toAlphaChannelOfBuffer:v13];
    goto LABEL_5;
  }

  v15 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for RawBayer stream." code:19];
  if (a5)
  {
    v15 = v15;
    *a5 = v15;
  }

  v9 = 0;
  v13 = 0;
LABEL_5:

  return v13;
}

- (opaqueCMFormatDescription)createTrackFormatDescriptionFromStreamData:(StreamRecordingData *)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(a3->var0);
  texture = 0;
  v8 = *MEMORY[0x277CC4DE8];
  v9[0] = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], Dimensions.width, *&Dimensions >> 32, 0x79343136u, v4, &texture);
  v5 = [MOVStreamIOUtility formatForPixelBuffer:texture];
  CVPixelBufferRelease(texture);

  return v5;
}

@end