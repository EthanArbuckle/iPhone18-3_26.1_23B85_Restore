@interface HMMediaSession(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMMediaSession(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:a1 context:a3];
  v5 = [a1 uniqueIdentifier];
  [v4 appendObject:v5 withName:@"UUID" options:2];

  v6 = [a1 audioControl];
  [v4 setObject:v6 forKeyedSubscript:@"audioControl"];

  v7 = [a1 playbackStateDescription];
  [v4 setObject:v7 forKeyedSubscript:@"playbackState"];

  return v4;
}

@end