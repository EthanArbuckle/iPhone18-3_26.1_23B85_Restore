@interface IOGPUMetalTextureLayout
- (IOGPUMetalTextureLayout)initWithDevice:(id)device descriptor:(id)descriptor;
@end

@implementation IOGPUMetalTextureLayout

- (IOGPUMetalTextureLayout)initWithDevice:(id)device descriptor:(id)descriptor
{
  v5.receiver = self;
  v5.super_class = IOGPUMetalTextureLayout;
  return [(IOGPUMetalTextureLayout *)&v5 init:device];
}

@end