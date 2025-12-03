@interface IOGPUMetalParallelRenderCommandEncoder
- (IOGPUMetalParallelRenderCommandEncoder)initWithCommandBuffer:(id)buffer renderPassDescriptor:(id)descriptor;
- (id)_renderCommandEncoderCommon;
- (void)endEncoding;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
@end

@implementation IOGPUMetalParallelRenderCommandEncoder

- (IOGPUMetalParallelRenderCommandEncoder)initWithCommandBuffer:(id)buffer renderPassDescriptor:(id)descriptor
{
  v12.receiver = self;
  v12.super_class = IOGPUMetalParallelRenderCommandEncoder;
  v5 = [(_MTLParallelRenderCommandEncoder *)&v12 initWithCommandBuffer:buffer renderPassDescriptor:descriptor];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x1E69743B8];
    NextGlobalTraceID = IOGPUDeviceGetNextGlobalTraceID([*(&v5->super.super.super.isa + v7) deviceRef]);
    v9 = *MEMORY[0x1E69743C0];
    *(&v6->super.super.super.isa + v9) = NextGlobalTraceID;
    if (*__globalGPUCommPage)
    {
      [*(&v6->super.super.super.isa + v7) deviceRef];
      [buffer globalTraceObjectID];
      v10 = *(&v6->super.super.super.isa + v9);
      [(IOGPUMetalParallelRenderCommandEncoder *)v6 getType];
      IOGPUDeviceTraceEvent();
    }
  }

  return v6;
}

- (void)setLabel:(id)label
{
  v9.receiver = self;
  v9.super_class = IOGPUMetalParallelRenderCommandEncoder;
  [(_MTLObjectWithLabel *)&v9 setLabel:?];
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.isa + *MEMORY[0x1E69743B8]) deviceRef];
    v6 = *(&self->super.super.super.isa + *MEMORY[0x1E69743C0]);
    v7 = *MEMORY[0x1E69743C8];
    v8 = *(&self->super.super.super.isa + v7);
    [label cStringUsingEncoding:1];
    *(&self->super.super.super.isa + v7) = IOGPUDeviceTraceObjectLabel(deviceRef, 8, 0, v6, v8);
  }
}

- (void)endEncoding
{
  if (*__globalGPUCommPage)
  {
    [*(&self->super.super.super.isa + *MEMORY[0x1E69743B8]) deviceRef];
    [*(&self->super.super.super.isa + *MEMORY[0x1E69743B0]) globalTraceObjectID];
    v3 = *(&self->super.super.super.isa + *MEMORY[0x1E69743C0]);
    [(IOGPUMetalParallelRenderCommandEncoder *)self getType];
    IOGPUDeviceTraceEvent();
  }

  v4.receiver = self;
  v4.super_class = IOGPUMetalParallelRenderCommandEncoder;
  [(_MTLParallelRenderCommandEncoder *)&v4 endEncoding];
}

- (void)pushDebugGroup:(id)group
{
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.isa + *MEMORY[0x1E69743B8]) deviceRef];
    v6 = *(&self->super.super.super.isa + *MEMORY[0x1E69743C0]);
    [group cStringUsingEncoding:1];
    IOGPUDeviceTraceObjectLabel(deviceRef, 8, 12, v6, 0);
  }

  v7.receiver = self;
  v7.super_class = IOGPUMetalParallelRenderCommandEncoder;
  [(_MTLParallelRenderCommandEncoder *)&v7 pushDebugGroup:group];
}

- (void)popDebugGroup
{
  if (*__globalGPUCommPage)
  {
    [*(&self->super.super.super.isa + *MEMORY[0x1E69743B8]) deviceRef];
    v3 = *(&self->super.super.super.isa + *MEMORY[0x1E69743C0]);
    IOGPUDeviceTraceEvent();
  }

  v4.receiver = self;
  v4.super_class = IOGPUMetalParallelRenderCommandEncoder;
  [(_MTLParallelRenderCommandEncoder *)&v4 popDebugGroup];
}

- (id)_renderCommandEncoderCommon
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 288) = 11181;
  v4.receiver = self;
  v4.super_class = IOGPUMetalParallelRenderCommandEncoder;
  result = [(_MTLParallelRenderCommandEncoder *)&v4 _renderCommandEncoderCommon];
  *(StatusReg + 288) = 0;
  return result;
}

@end