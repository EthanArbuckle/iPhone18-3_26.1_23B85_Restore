@interface AVPlayerItemErrorLogEvent(HFAdditions)
- (id)hf_prettyDescription;
@end

@implementation AVPlayerItemErrorLogEvent(HFAdditions)

- (id)hf_prettyDescription
{
  v2 = [MEMORY[0x277D2C8F8] builderWithObject:a1];
  v3 = [a1 date];
  v4 = [v2 appendObject:v3 withName:@"date"];

  v5 = [a1 URI];
  v6 = [v2 appendObject:v5 withName:@"URI"];

  v7 = [a1 errorComment];
  v8 = [v2 appendObject:v7 withName:@"error"];

  v9 = [v2 build];

  return v9;
}

@end