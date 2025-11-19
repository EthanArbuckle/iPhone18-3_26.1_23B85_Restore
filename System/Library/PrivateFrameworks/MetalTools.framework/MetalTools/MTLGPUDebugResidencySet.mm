@interface MTLGPUDebugResidencySet
- (MTLGPUDebugResidencySet)initWithResidencySet:(id)a3 device:(id)a4 descriptor:(id)a5;
@end

@implementation MTLGPUDebugResidencySet

- (MTLGPUDebugResidencySet)initWithResidencySet:(id)a3 device:(id)a4 descriptor:(id)a5
{
  v6.receiver = self;
  v6.super_class = MTLGPUDebugResidencySet;
  return [(MTLToolsResidencySet *)&v6 initWithBaseObject:a3 parent:a4, a5];
}

@end