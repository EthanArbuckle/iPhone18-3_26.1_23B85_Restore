@interface _BPSCombineLatest2Inner
- (id)convertValues:(id)values;
@end

@implementation _BPSCombineLatest2Inner

- (id)convertValues:(id)values
{
  valuesCopy = values;
  v4 = [valuesCopy objectAtIndexedSubscript:0];
  v5 = [valuesCopy objectAtIndexedSubscript:1];

  v6 = [[BPSTuple alloc] initWithFirst:v4 second:v5];

  return v6;
}

@end