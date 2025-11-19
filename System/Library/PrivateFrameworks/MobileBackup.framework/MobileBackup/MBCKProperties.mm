@interface MBCKProperties
- (MBCKProperties)init;
@end

@implementation MBCKProperties

- (MBCKProperties)init
{
  v3.receiver = self;
  v3.super_class = MBCKProperties;
  return [(MBProperties *)&v3 initWithVersion:9.1 minVersion:7.4 maxVersion:11.0];
}

@end