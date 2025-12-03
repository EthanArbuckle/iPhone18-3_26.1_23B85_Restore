@interface MIOMastery
+ (id)masteryFromConfig:(id)config formatDescription:(opaqueCMFormatDescription *)description frameRate:(double)rate;
+ (id)masteryLossless;
+ (id)masteryWithBitrate:(double)bitrate;
+ (id)masteryWithQuality:(double)quality;
- (MIOMastery)initWithKey:(id)key value:(id)value;
@end

@implementation MIOMastery

- (MIOMastery)initWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = MIOMastery;
  v9 = [(MIOMastery *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_propertyKey, key);
    objc_storeStrong(&v10->_propertyValue, value);
  }

  return v10;
}

+ (id)masteryLossless
{
  v2 = [MIOMastery alloc];
  v3 = [(MIOMastery *)v2 initWithKey:*MEMORY[0x277CE25E0] value:&unk_2868E3B78];

  return v3;
}

+ (id)masteryWithQuality:(double)quality
{
  v4 = [MIOMastery alloc];
  v5 = *MEMORY[0x277CE25E0];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:quality];
  v7 = [(MIOMastery *)v4 initWithKey:v5 value:v6];

  return v7;
}

+ (id)masteryWithBitrate:(double)bitrate
{
  v4 = [MIOMastery alloc];
  v5 = *MEMORY[0x277CE2518];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:bitrate];
  v7 = [(MIOMastery *)v4 initWithKey:v5 value:v6];

  return v7;
}

+ (id)masteryFromConfig:(id)config formatDescription:(opaqueCMFormatDescription *)description frameRate:(double)rate
{
  configCopy = config;
  v8 = [configCopy objectForKey:@"ColorStreamBitrate"];
  v9 = v8;
  if (v8)
  {
    integerValue = [v8 integerValue];
  }

  else
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(description);
    v12 = [configCopy objectForKey:@"StreamEncoderType"];
    intValue = [v12 intValue];

    integerValue = [MOVStreamIOUtility getDefaultBitrateForVideoDimension:Dimensions atExpectedFramerate:intValue forEncoderType:rate];
  }

  v14 = integerValue;
  v15 = [configCopy objectForKey:@"EncodingQuality"];

  if (v15 && ([v15 doubleValue], +[MOVStreamIOUtility clampedQuality:](MOVStreamIOUtility, "clampedQuality:"), v16 >= 0.0))
  {
    v17 = [MIOMastery masteryWithQuality:?];
  }

  else
  {
    v17 = [MIOMastery masteryWithBitrate:v14];
  }

  v18 = v17;

  return v18;
}

@end