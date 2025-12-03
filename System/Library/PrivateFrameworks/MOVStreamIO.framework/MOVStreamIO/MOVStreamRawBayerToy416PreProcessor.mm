@interface MOVStreamRawBayerToy416PreProcessor
- (__CVBuffer)processedPixelBufferCopyOf:(__CVBuffer *)of streamData:(StreamRecordingData *)data error:(id *)error;
- (opaqueCMFormatDescription)createTrackFormatDescriptionFromStreamData:(StreamRecordingData *)data;
- (opaqueCMFormatDescription)formatDescriptionForPixelBuffer:(__CVBuffer *)buffer streamData:(StreamRecordingData *)data;
@end

@implementation MOVStreamRawBayerToy416PreProcessor

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

  v12 = [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:Width height:Height pixelFormat:2033463606 extendedPixelsPerRow:0 minBufferCount:10 bufferCacheMode:data->var22];
  if (v12)
  {
    objc_storeStrong(p_var12, v12);
    v9 = v12;
LABEL_4:
    getPixelBuffer = [v9 getPixelBuffer];
    [MIOPixelBufferUtility copyMonochromeBuffer:of toAlphaChannelOfBuffer:getPixelBuffer];
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

- (opaqueCMFormatDescription)createTrackFormatDescriptionFromStreamData:(StreamRecordingData *)data
{
  v9[1] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(data->var0);
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