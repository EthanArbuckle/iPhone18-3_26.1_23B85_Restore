@interface MIOJPEGStreamOutputSettings
+ (id)outputSettingsWithConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 defaultFrameRate:(double)a5 preferEncoderConfig:(BOOL)a6 enableAVEHighPerformanceProfile:(BOOL)a7;
@end

@implementation MIOJPEGStreamOutputSettings

+ (id)outputSettingsWithConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 defaultFrameRate:(double)a5 preferEncoderConfig:(BOOL)a6 enableAVEHighPerformanceProfile:(BOOL)a7
{
  v7 = a6;
  v37[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [v9 objectForKey:@"EncodingQuality"];
  v11 = v10;
  if (v10)
  {
    [v10 doubleValue];
    [MOVStreamIOUtility clampedQuality:?];
    v13 = v12;
    if (v7)
    {
LABEL_3:
      v36 = *MEMORY[0x277CE2BA8];
      v14 = MEMORY[0x277CBEC38];
      v37[0] = MEMORY[0x277CBEC38];
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      v34 = *MEMORY[0x277CE25F0];
      v35 = v14;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v17 = [v16 mutableCopy];

      if (v13 >= 0.0)
      {
        v18 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        [v17 setObject:v18 forKey:*MEMORY[0x277CE25E0]];
      }

      v19 = [[MOVStreamEncoderConfig alloc] initWithCodecType:1785750887 encoderSpecification:v15 sessionProperties:v17];
      v20 = [[MOVStreamOutputSettings alloc] initWithConfig:v19];

      goto LABEL_10;
    }
  }

  else
  {
    v13 = -1.0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(a4);
  v22 = *MEMORY[0x277CE62C8];
  v33[0] = *MEMORY[0x277CE6310];
  v23 = *MEMORY[0x277CE63C0];
  v32[0] = v22;
  v32[1] = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v33[1] = v24;
  v32[2] = *MEMORY[0x277CE6360];
  v25 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&Dimensions)];
  v33[2] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v15 = [v26 mutableCopy];

  if (v13 >= 0.0)
  {
    v30 = *MEMORY[0x277CE6398];
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    v31 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];

    [v15 setObject:v28 forKey:*MEMORY[0x277CE6330]];
  }

  v20 = [[MOVStreamOutputSettings alloc] initWithSettings:v15];
LABEL_10:

  return v20;
}

@end