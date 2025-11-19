@interface _BPSCombineLatest2Inner
- (id)convertValues:(id)a3;
@end

@implementation _BPSCombineLatest2Inner

- (id)convertValues:(id)a3
{
  v3 = a3;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];

  v6 = [[BPSTuple alloc] initWithFirst:v4 second:v5];

  return v6;
}

@end