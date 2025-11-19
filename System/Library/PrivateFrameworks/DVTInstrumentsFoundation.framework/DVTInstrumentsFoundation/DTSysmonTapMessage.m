@interface DTSysmonTapMessage
- (id)sessionMetadata;
- (unsigned)tapVersion;
- (void)setSessionMetadata:(id)a3;
@end

@implementation DTSysmonTapMessage

- (unsigned)tapVersion
{
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"tv"];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (id)sessionMetadata
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

@end