@interface DTKTraceTapMessage
- (NSDictionary)sessionMetadata;
- (NSDictionary)triggerMetadata;
- (NSString)localFilePath;
- (unint64_t)coreCount;
- (unint64_t)logicalProcessorCore;
- (unint64_t)recordCount;
- (unint64_t)triggerCount;
- (unint64_t)triggerIndex;
- (unsigned)tapVersion;
- (void)setCoreCount:(unint64_t)a3;
- (void)setLocalFilePath:(id)a3;
- (void)setLogicalProcessorCore:(unint64_t)a3;
- (void)setRecordCount:(unint64_t)a3;
- (void)setSessionMetadata:(id)a3;
- (void)setTriggerCount:(unint64_t)a3;
- (void)setTriggerIndex:(unint64_t)a3;
- (void)setTriggerMetadata:(id)a3;
@end

@implementation DTKTraceTapMessage

- (unsigned)tapVersion
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"tv"];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (NSDictionary)sessionMetadata
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"sm"];

  return v3;
}

- (void)setSessionMetadata:(id)a3
{
  v4 = a3;
  v6 = [(DTTapMessage *)self plist];
  v5 = [v4 copy];

  [v6 setObject:v5 forKey:@"sm"];
}

- (unint64_t)coreCount
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"cc"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setCoreCount:(unint64_t)a3
{
  v5 = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forKey:@"cc"];
}

- (unint64_t)triggerCount
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"tc"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setTriggerCount:(unint64_t)a3
{
  v5 = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forKey:@"tc"];
}

- (unint64_t)triggerIndex
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"ti"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setTriggerIndex:(unint64_t)a3
{
  v5 = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forKey:@"ti"];
}

- (unint64_t)logicalProcessorCore
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"lc"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setLogicalProcessorCore:(unint64_t)a3
{
  v5 = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forKey:@"lc"];
}

- (unint64_t)recordCount
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"rc"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setRecordCount:(unint64_t)a3
{
  v5 = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forKey:@"rc"];
}

- (NSDictionary)triggerMetadata
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"tm"];

  return v3;
}

- (void)setTriggerMetadata:(id)a3
{
  v4 = a3;
  v6 = [(DTTapMessage *)self plist];
  v5 = [v4 copy];

  [v6 setObject:v5 forKey:@"tm"];
}

- (NSString)localFilePath
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"lfp"];

  return v3;
}

- (void)setLocalFilePath:(id)a3
{
  v4 = a3;
  v6 = [(DTTapMessage *)self plist];
  v5 = [v4 copy];

  [v6 setObject:v5 forKey:@"lfp"];
}

@end