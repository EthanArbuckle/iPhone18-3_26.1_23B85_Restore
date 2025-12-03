@interface HMCharacteristicMetadata(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMCharacteristicMetadata(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:self context:a3];
  minimumValue = [self minimumValue];
  [v4 appendObject:minimumValue withName:@"min" options:1];

  maximumValue = [self maximumValue];
  [v4 appendObject:maximumValue withName:@"max" options:1];

  stepValue = [self stepValue];
  [v4 appendObject:stepValue withName:@"step" options:1];

  validValues = [self validValues];
  [v4 appendObject:validValues withName:@"validValues" options:1];

  format = [self format];
  [v4 appendObject:format withName:@"format" options:1];

  units = [self units];
  [v4 appendObject:units withName:@"units" options:1];

  return v4;
}

@end