@interface MTLGPUDebugResidencySet
- (MTLGPUDebugResidencySet)initWithResidencySet:(id)set device:(id)device descriptor:(id)descriptor;
@end

@implementation MTLGPUDebugResidencySet

- (MTLGPUDebugResidencySet)initWithResidencySet:(id)set device:(id)device descriptor:(id)descriptor
{
  v6.receiver = self;
  v6.super_class = MTLGPUDebugResidencySet;
  return [(MTLToolsResidencySet *)&v6 initWithBaseObject:set parent:device, descriptor];
}

@end