@interface NTKMutableComplicationMetrics
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation NTKMutableComplicationMetrics

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NTKComplicationMetrics alloc];

  return [(NTKComplicationMetrics *)v4 initWithComplicationMetrics:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NTKMutableComplicationMetrics alloc];

  return [(NTKComplicationMetrics *)v4 initWithComplicationMetrics:self];
}

@end