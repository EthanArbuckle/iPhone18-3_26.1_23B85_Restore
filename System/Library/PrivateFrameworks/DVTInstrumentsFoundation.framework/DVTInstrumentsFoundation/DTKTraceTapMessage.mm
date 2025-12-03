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
- (void)setCoreCount:(unint64_t)count;
- (void)setLocalFilePath:(id)path;
- (void)setLogicalProcessorCore:(unint64_t)core;
- (void)setRecordCount:(unint64_t)count;
- (void)setSessionMetadata:(id)metadata;
- (void)setTriggerCount:(unint64_t)count;
- (void)setTriggerIndex:(unint64_t)index;
- (void)setTriggerMetadata:(id)metadata;
@end

@implementation DTKTraceTapMessage

- (unsigned)tapVersion
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"tv"];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (NSDictionary)sessionMetadata
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"sm"];

  return v3;
}

- (void)setSessionMetadata:(id)metadata
{
  metadataCopy = metadata;
  plist = [(DTTapMessage *)self plist];
  v5 = [metadataCopy copy];

  [plist setObject:v5 forKey:@"sm"];
}

- (unint64_t)coreCount
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"cc"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setCoreCount:(unint64_t)count
{
  plist = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  [plist setObject:v4 forKey:@"cc"];
}

- (unint64_t)triggerCount
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"tc"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setTriggerCount:(unint64_t)count
{
  plist = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  [plist setObject:v4 forKey:@"tc"];
}

- (unint64_t)triggerIndex
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"ti"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setTriggerIndex:(unint64_t)index
{
  plist = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [plist setObject:v4 forKey:@"ti"];
}

- (unint64_t)logicalProcessorCore
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"lc"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setLogicalProcessorCore:(unint64_t)core
{
  plist = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:core];
  [plist setObject:v4 forKey:@"lc"];
}

- (unint64_t)recordCount
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"rc"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setRecordCount:(unint64_t)count
{
  plist = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  [plist setObject:v4 forKey:@"rc"];
}

- (NSDictionary)triggerMetadata
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"tm"];

  return v3;
}

- (void)setTriggerMetadata:(id)metadata
{
  metadataCopy = metadata;
  plist = [(DTTapMessage *)self plist];
  v5 = [metadataCopy copy];

  [plist setObject:v5 forKey:@"tm"];
}

- (NSString)localFilePath
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"lfp"];

  return v3;
}

- (void)setLocalFilePath:(id)path
{
  pathCopy = path;
  plist = [(DTTapMessage *)self plist];
  v5 = [pathCopy copy];

  [plist setObject:v5 forKey:@"lfp"];
}

@end