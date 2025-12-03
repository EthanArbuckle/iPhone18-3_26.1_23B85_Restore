@interface AVPlayerItemErrorLogEvent(HFAdditions)
- (id)hf_prettyDescription;
@end

@implementation AVPlayerItemErrorLogEvent(HFAdditions)

- (id)hf_prettyDescription
{
  v2 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  date = [self date];
  v4 = [v2 appendObject:date withName:@"date"];

  v5 = [self URI];
  v6 = [v2 appendObject:v5 withName:@"URI"];

  errorComment = [self errorComment];
  v8 = [v2 appendObject:errorComment withName:@"error"];

  build = [v2 build];

  return build;
}

@end