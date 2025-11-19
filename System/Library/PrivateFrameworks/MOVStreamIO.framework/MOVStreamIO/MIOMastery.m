@interface MIOMastery
+ (id)masteryFromConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 frameRate:(double)a5;
+ (id)masteryLossless;
+ (id)masteryWithBitrate:(double)a3;
+ (id)masteryWithQuality:(double)a3;
- (MIOMastery)initWithKey:(id)a3 value:(id)a4;
@end

@implementation MIOMastery

- (MIOMastery)initWithKey:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MIOMastery;
  v9 = [(MIOMastery *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_propertyKey, a3);
    objc_storeStrong(&v10->_propertyValue, a4);
  }

  return v10;
}

+ (id)masteryLossless
{
  v2 = [MIOMastery alloc];
  v3 = [(MIOMastery *)v2 initWithKey:*MEMORY[0x277CE25E0] value:&unk_2868E3B78];

  return v3;
}

+ (id)masteryWithQuality:(double)a3
{
  v4 = [MIOMastery alloc];
  v5 = *MEMORY[0x277CE25E0];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v7 = [(MIOMastery *)v4 initWithKey:v5 value:v6];

  return v7;
}

+ (id)masteryWithBitrate:(double)a3
{
  v4 = [MIOMastery alloc];
  v5 = *MEMORY[0x277CE2518];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  v7 = [(MIOMastery *)v4 initWithKey:v5 value:v6];

  return v7;
}

+ (id)masteryFromConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 frameRate:(double)a5
{
  v7 = a3;
  v8 = [v7 objectForKey:@"ColorStreamBitrate"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 integerValue];
  }

  else
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(a4);
    v12 = [v7 objectForKey:@"StreamEncoderType"];
    v13 = [v12 intValue];

    v10 = [MOVStreamIOUtility getDefaultBitrateForVideoDimension:Dimensions atExpectedFramerate:v13 forEncoderType:a5];
  }

  v14 = v10;
  v15 = [v7 objectForKey:@"EncodingQuality"];

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