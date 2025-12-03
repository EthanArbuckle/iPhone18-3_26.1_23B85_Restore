@interface MTLDebugResourceViewPool
- (MTLDebugResourceViewPool)initWithResourceViewPool:(id)pool device:(id)device;
@end

@implementation MTLDebugResourceViewPool

- (MTLDebugResourceViewPool)initWithResourceViewPool:(id)pool device:(id)device
{
  v5.receiver = self;
  v5.super_class = MTLDebugResourceViewPool;
  return [(MTLToolsResourceViewPool *)&v5 initWithBaseObject:pool parent:device];
}

@end