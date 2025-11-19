@interface IOGPUMetal4RenderCommandEncoder
- (IOGPUMetal4RenderCommandEncoder)initWithCommandAllocator:(id)a3;
- (void)dealloc;
- (void)endEncoding;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setLabel:(id)a3;
@end

@implementation IOGPUMetal4RenderCommandEncoder

- (IOGPUMetal4RenderCommandEncoder)initWithCommandAllocator:(id)a3
{
  v11.receiver = self;
  v11.super_class = IOGPUMetal4RenderCommandEncoder;
  v3 = [(_MTL4RenderCommandEncoder *)&v11 initWithCommandAllocator:a3];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x1E6974228];
    NextGlobalTraceID = IOGPUDeviceGetNextGlobalTraceID([*(&v3->super.super.super.super.isa + v5) deviceRef]);
    v7 = *MEMORY[0x1E6974230];
    *(&v4->super.super.super.super.isa + v7) = NextGlobalTraceID;
    v8 = *MEMORY[0x1E6974220];
    [*(&v4->super.super.super.super.isa + v8) setCurrentCommandEncoder:v4];
    if (*__globalGPUCommPage)
    {
      [*(&v4->super.super.super.super.isa + v5) deviceRef];
      [*(&v4->super.super.super.super.isa + v8) globalTraceObjectID];
      v9 = *(&v4->super.super.super.super.isa + v7);
      [(IOGPUMetal4RenderCommandEncoder *)v4 getType];
      IOGPUDeviceTraceEvent();
    }
  }

  return v4;
}

- (void)endEncoding
{
  if (*__globalGPUCommPage)
  {
    [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974228]) deviceRef];
    [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974220]) globalTraceObjectID];
    v3 = *(&self->super.super.super.super.isa + *MEMORY[0x1E6974230]);
    [(IOGPUMetal4RenderCommandEncoder *)self getType];
    IOGPUDeviceTraceEvent();
  }

  v4.receiver = self;
  v4.super_class = IOGPUMetal4RenderCommandEncoder;
  [(_MTL4CommandEncoder *)&v4 endEncoding];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IOGPUMetal4RenderCommandEncoder;
  [(_MTL4CommandEncoder *)&v2 dealloc];
}

- (void)setLabel:(id)a3
{
  v9.receiver = self;
  v9.super_class = IOGPUMetal4RenderCommandEncoder;
  [(_MTLObjectWithLabel *)&v9 setLabel:?];
  if (*__globalGPUCommPage)
  {
    v5 = [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974228]) deviceRef];
    v6 = *(&self->super.super.super.super.isa + *MEMORY[0x1E6974230]);
    v7 = *MEMORY[0x1E6974238];
    v8 = *(&self->super.super.super.super.isa + v7);
    [a3 cStringUsingEncoding:1];
    *(&self->super.super.super.super.isa + v7) = IOGPUDeviceTraceObjectLabel(v5, 8, 0, v6, v8);
  }
}

- (void)pushDebugGroup:(id)a3
{
  if (*__globalGPUCommPage)
  {
    v5 = [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974228]) deviceRef];
    v6 = *(&self->super.super.super.super.isa + *MEMORY[0x1E6974230]);
    [a3 cStringUsingEncoding:1];

    IOGPUDeviceTraceObjectLabel(v5, 8, 12, v6, 0);
  }
}

- (void)popDebugGroup
{
  if (*__globalGPUCommPage)
  {
    [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974228]) deviceRef];
    v3 = *(&self->super.super.super.super.isa + *MEMORY[0x1E6974230]);

    IOGPUDeviceTraceEvent();
  }
}

@end