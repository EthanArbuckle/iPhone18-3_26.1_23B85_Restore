@interface HMMediaSession(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMMediaSession(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:self context:a3];
  uniqueIdentifier = [self uniqueIdentifier];
  [v4 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  audioControl = [self audioControl];
  [v4 setObject:audioControl forKeyedSubscript:@"audioControl"];

  playbackStateDescription = [self playbackStateDescription];
  [v4 setObject:playbackStateDescription forKeyedSubscript:@"playbackState"];

  return v4;
}

@end