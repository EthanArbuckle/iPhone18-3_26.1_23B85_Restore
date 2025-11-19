@interface _BPSZip2Inner
- (id)convertValues:(id)a3;
@end

@implementation _BPSZip2Inner

- (id)convertValues:(id)a3
{
  v3 = a3;
  v4 = [BPSTuple alloc];
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v3 objectAtIndexedSubscript:1];

  v7 = [(BPSTuple *)v4 initWithFirst:v5 second:v6];

  return v7;
}

@end