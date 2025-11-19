@interface MIOYzipStreamOutputSettings
+ (id)outputSettingsWithConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 defaultFrameRate:(double)a5 preferEncoderConfig:(BOOL)a6 enableAVEHighPerformanceProfile:(BOOL)a7;
@end

@implementation MIOYzipStreamOutputSettings

+ (id)outputSettingsWithConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 defaultFrameRate:(double)a5 preferEncoderConfig:(BOOL)a6 enableAVEHighPerformanceProfile:(BOOL)a7
{
  v7 = a6;
  v21[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (v7)
  {
    v10 = [MOVStreamEncoderConfig alloc];
    v11 = [(MOVStreamEncoderConfig *)v10 initWithCodecType:2038065520 encoderSpecification:MEMORY[0x277CBEC10] sessionProperties:MEMORY[0x277CBEC10]];
    v12 = [[MOVStreamOutputSettings alloc] initWithConfig:v11];
  }

  else
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(a4);
    v14 = *MEMORY[0x277CE62C8];
    v21[0] = @"yzip";
    v15 = *MEMORY[0x277CE63C0];
    v20[0] = v14;
    v20[1] = v15;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
    v21[1] = v16;
    v20[2] = *MEMORY[0x277CE6360];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&Dimensions)];
    v21[2] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

    v12 = [[MOVStreamOutputSettings alloc] initWithSettings:v18];
  }

  return v12;
}

@end