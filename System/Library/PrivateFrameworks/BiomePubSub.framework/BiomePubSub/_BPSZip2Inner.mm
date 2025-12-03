@interface _BPSZip2Inner
- (id)convertValues:(id)values;
@end

@implementation _BPSZip2Inner

- (id)convertValues:(id)values
{
  valuesCopy = values;
  v4 = [BPSTuple alloc];
  v5 = [valuesCopy objectAtIndexedSubscript:0];
  v6 = [valuesCopy objectAtIndexedSubscript:1];

  v7 = [(BPSTuple *)v4 initWithFirst:v5 second:v6];

  return v7;
}

@end