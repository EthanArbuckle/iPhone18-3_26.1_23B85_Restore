@interface MOVStreamPreProcessorFactory
+ (id)defaultFactory;
- (id)preProcessorForFormat:(opaqueCMFormatDescription *)format recordingConfiguration:(id)configuration;
@end

@implementation MOVStreamPreProcessorFactory

+ (id)defaultFactory
{
  if (+[MOVStreamPreProcessorFactory defaultFactory]::onceToken != -1)
  {
    +[MOVStreamPreProcessorFactory defaultFactory];
  }

  v3 = +[MOVStreamPreProcessorFactory defaultFactory]::factory;

  return v3;
}

uint64_t __46__MOVStreamPreProcessorFactory_defaultFactory__block_invoke()
{
  +[MOVStreamPreProcessorFactory defaultFactory]::factory = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)preProcessorForFormat:(opaqueCMFormatDescription *)format recordingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = [configurationCopy objectForKey:@"StreamEncoderType"];
  intValue = [v6 intValue];

  MediaSubType = CMFormatDescriptionGetMediaSubType(format);
  v9 = MediaSubType;
  v10 = (intValue & 0xFFFFFFFE) != 6 || MediaSubType == 1278226488;
  if (v10 || ([configurationCopy objectForKey:@"StreamConvertNonPlanarBuffersTo8bitMonochrome"], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, (v12 & 1) == 0))
  {
    if (v9 != 1919365992 || ([configurationCopy objectForKey:@"StreamConvertRGBPlanarHalfToRGBAHalf"], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "BOOLValue"), v13, !v14))
    {
      if ([MIOPixelBufferUtility isPixelFormatRawBayer:v9])
      {
        v15 = [configurationCopy objectForKey:@"RawBayerRearrangeTypeKey"];
        [v15 intValue];
      }

      else
      {
        [MIOPixelBufferUtility isPixelFormatCompandedRawBayer:v9];
      }
    }
  }

  v16 = objc_opt_new();

  return v16;
}

@end