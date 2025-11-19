@interface NTKMutableComplicationMetrics
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation NTKMutableComplicationMetrics

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NTKComplicationMetrics alloc];

  return [(NTKComplicationMetrics *)v4 initWithComplicationMetrics:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NTKMutableComplicationMetrics alloc];

  return [(NTKComplicationMetrics *)v4 initWithComplicationMetrics:self];
}

@end