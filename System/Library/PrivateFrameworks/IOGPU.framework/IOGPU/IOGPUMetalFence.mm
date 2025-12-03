@interface IOGPUMetalFence
- (IOGPUMetalFence)initWithDevice:(id)device;
- (void)dealloc;
@end

@implementation IOGPUMetalFence

- (IOGPUMetalFence)initWithDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = IOGPUMetalFence;
  v4 = [(_MTLObjectWithLabel *)&v7 init];
  if (v4)
  {
    v4->_device = device;
    v5 = -[IOGPUMTLFence initWithDevice:]([IOGPUMTLFence alloc], "initWithDevice:", [device deviceRef]);
    v4->_fence = v5;
    if (v5)
    {
      v4->_fenceIndex = v5->_fenceName;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IOGPUMetalFence;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

@end