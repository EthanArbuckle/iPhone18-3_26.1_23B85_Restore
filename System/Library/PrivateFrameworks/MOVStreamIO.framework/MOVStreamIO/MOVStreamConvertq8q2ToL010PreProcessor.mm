@interface MOVStreamConvertq8q2ToL010PreProcessor
- (__CVBuffer)processedPixelBufferCopyOf:(__CVBuffer *)of streamData:(StreamRecordingData *)data error:(id *)error;
- (opaqueCMFormatDescription)formatDescriptionForPixelBuffer:(__CVBuffer *)buffer streamData:(StreamRecordingData *)data;
@end

@implementation MOVStreamConvertq8q2ToL010PreProcessor

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
  v33[6] = *MEMORY[0x277D85DE8];
  p_var12 = &data->var12;
  v9 = data->var12;
  Width = CVPixelBufferGetWidth(of);
  Height = CVPixelBufferGetHeight(of);
  if (!v9)
  {
    v12 = Height;
    v32[0] = *MEMORY[0x277CC4DB8];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-(Width - ceil(vcvtd_n_f64_u64(Width, 6uLL)) * 64.0)}];
    v33[0] = v13;
    v32[1] = *MEMORY[0x277CC4DD8];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
    v33[1] = v14;
    v32[2] = *MEMORY[0x277CC4DE8];
    v30 = *MEMORY[0x277CD2970];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:data->var22];
    v31 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v17 = *MEMORY[0x277CC4E30];
    v33[2] = v16;
    v33[3] = &unk_2868E3AF8;
    v18 = *MEMORY[0x277CC4EC8];
    v32[3] = v17;
    v32[4] = v18;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Width];
    v33[4] = v19;
    v32[5] = *MEMORY[0x277CC4DA0];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-(v12 - ceil(vcvtd_n_f64_u64(v12, 6uLL)) * 64.0)}];
    v33[5] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:6];

    v28 = *MEMORY[0x277CC4E50];
    v29 = &unk_2868E3B10;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v9 = [[MIOPixelBufferPool alloc] initWithPixelBuffer:0 bufferAttributes:v21 poolAttributes:v22 error:0];
    if (!v9)
    {
      v26 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create L008 pixel buffer pool for Non-Planar stream." code:19];
      if (error)
      {
        v26 = v26;
        *error = v26;
      }

      v9 = 0;
      goto LABEL_10;
    }

    objc_storeStrong(p_var12, v9);
  }

  getPixelBuffer = [(MIOPixelBufferPool *)v9 getPixelBuffer];
  if (![MIOPixelBufferUtility transferq8q2PixelBuffer:of toL010PixelBuffer:getPixelBuffer])
  {
    CVPixelBufferRelease(getPixelBuffer);
    CVPixelBufferRelease(of);
    v24 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot convert q8q2 to L010 buffer." code:20];
    v21 = v24;
    if (error)
    {
      v25 = v24;
      *error = v21;
    }

LABEL_10:

    getPixelBuffer = 0;
  }

  return getPixelBuffer;
}

@end