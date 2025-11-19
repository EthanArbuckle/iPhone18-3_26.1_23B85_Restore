@interface MTLDebugResourceViewPool
- (MTLDebugResourceViewPool)initWithResourceViewPool:(id)a3 device:(id)a4;
@end

@implementation MTLDebugResourceViewPool

- (MTLDebugResourceViewPool)initWithResourceViewPool:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLDebugResourceViewPool;
  return [(MTLToolsResourceViewPool *)&v5 initWithBaseObject:a3 parent:a4];
}

@end