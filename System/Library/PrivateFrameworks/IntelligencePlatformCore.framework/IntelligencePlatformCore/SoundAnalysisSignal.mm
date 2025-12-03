@interface SoundAnalysisSignal
- (id)featureValueForName:(id)name;
@end

@implementation SoundAnalysisSignal

- (id)featureValueForName:(id)name
{
  v3 = sub_1C4F01138();
  v5 = v4;

  v6 = sub_1C4B2F5C4(v3, v5);

  return v6;
}

@end