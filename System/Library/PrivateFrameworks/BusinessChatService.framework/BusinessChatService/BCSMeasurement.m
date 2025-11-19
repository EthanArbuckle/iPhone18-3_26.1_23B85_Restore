@interface BCSMeasurement
- (id)_init;
@end

@implementation BCSMeasurement

- (id)_init
{
  v3.receiver = self;
  v3.super_class = BCSMeasurement;
  return [(BCSMeasurement *)&v3 init];
}

@end