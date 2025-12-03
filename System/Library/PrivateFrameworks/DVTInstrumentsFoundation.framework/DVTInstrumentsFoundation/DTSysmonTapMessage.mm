@interface DTSysmonTapMessage
- (id)sessionMetadata;
- (unsigned)tapVersion;
- (void)setSessionMetadata:(id)metadata;
@end

@implementation DTSysmonTapMessage

- (unsigned)tapVersion
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"tv"];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (id)sessionMetadata
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

@end