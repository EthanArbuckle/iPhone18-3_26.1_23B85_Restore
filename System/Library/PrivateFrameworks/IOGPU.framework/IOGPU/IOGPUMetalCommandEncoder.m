@interface IOGPUMetalCommandEncoder
- (IOGPUMetalCommandEncoder)initWithCommandBuffer:(id)a3;
- (unint64_t)globalTraceObjectID;
- (void)endEncoding;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setLabel:(id)a3;
@end

@implementation IOGPUMetalCommandEncoder

- (void)endEncoding
{
  if (*__globalGPUCommPage)
  {
    [*(&self->super.super.super.isa + *MEMORY[0x1E69742C8]) deviceRef];
    [*(&self->super.super.super.isa + *MEMORY[0x1E69742C0]) globalTraceObjectID];
    [(IOGPUMetalCommandEncoder *)self globalTraceObjectID];
    [(_MTLCommandEncoder *)self getType];
    IOGPUDeviceTraceEvent();
  }

  v3.receiver = self;
  v3.super_class = IOGPUMetalCommandEncoder;
  [(_MTLCommandEncoder *)&v3 endEncoding];
}

- (unint64_t)globalTraceObjectID
{
  v3 = *MEMORY[0x1E69742D0];
  result = *(&self->super.super.super.isa + v3);
  if (!result)
  {
    result = IOGPUDeviceGetNextGlobalTraceID([*(&self->super.super.super.isa + *MEMORY[0x1E69742C8]) deviceRef]);
    *(&self->super.super.super.isa + v3) = result;
  }

  return result;
}

- (void)popDebugGroup
{
  if (*__globalGPUCommPage)
  {
    [*(&self->super.super.super.isa + *MEMORY[0x1E69742C8]) deviceRef];
    [(IOGPUMetalCommandEncoder *)self globalTraceObjectID];
    IOGPUDeviceTraceEvent();
  }

  v3.receiver = self;
  v3.super_class = IOGPUMetalCommandEncoder;
  [(_MTLCommandEncoder *)&v3 popDebugGroup];
}

- (IOGPUMetalCommandEncoder)initWithCommandBuffer:(id)a3
{
  v7.receiver = self;
  v7.super_class = IOGPUMetalCommandEncoder;
  v4 = [(_MTLCommandEncoder *)&v7 initWithCommandBuffer:?];
  v5 = v4;
  if (*__globalGPUCommPage)
  {
    [*(&v4->super.super.super.isa + *MEMORY[0x1E69742C8]) deviceRef];
    [a3 globalTraceObjectID];
    [(IOGPUMetalCommandEncoder *)v5 globalTraceObjectID];
    [(_MTLCommandEncoder *)v5 getType];
    IOGPUDeviceTraceEvent();
  }

  return v5;
}

- (void)setLabel:(id)a3
{
  v9.receiver = self;
  v9.super_class = IOGPUMetalCommandEncoder;
  [(_MTLObjectWithLabel *)&v9 setLabel:?];
  if (*__globalGPUCommPage)
  {
    v5 = [*(&self->super.super.super.isa + *MEMORY[0x1E69742C8]) deviceRef];
    v6 = [(IOGPUMetalCommandEncoder *)self globalTraceObjectID];
    v7 = *MEMORY[0x1E69742D8];
    v8 = *(&self->super.super.super.isa + v7);
    [a3 cStringUsingEncoding:1];
    *(&self->super.super.super.isa + v7) = IOGPUDeviceTraceObjectLabel(v5, 8, 0, v6, v8);
  }
}

- (void)pushDebugGroup:(id)a3
{
  if (*__globalGPUCommPage)
  {
    v5 = [*(&self->super.super.super.isa + *MEMORY[0x1E69742C8]) deviceRef];
    v6 = [(IOGPUMetalCommandEncoder *)self globalTraceObjectID];
    [a3 cStringUsingEncoding:1];
    IOGPUDeviceTraceObjectLabel(v5, 8, 12, v6, 0);
  }

  v7.receiver = self;
  v7.super_class = IOGPUMetalCommandEncoder;
  [(_MTLCommandEncoder *)&v7 pushDebugGroup:a3];
}

@end