@interface IOGPUMetal4MachineLearningCommandEncoder
- (IOGPUMetal4MachineLearningCommandEncoder)initWithCommandBuffer:(id)a3 allocator:(id)a4;
- (void)dealloc;
- (void)endEncoding;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setLabel:(id)a3;
@end

@implementation IOGPUMetal4MachineLearningCommandEncoder

- (IOGPUMetal4MachineLearningCommandEncoder)initWithCommandBuffer:(id)a3 allocator:(id)a4
{
  v11.receiver = self;
  v11.super_class = IOGPUMetal4MachineLearningCommandEncoder;
  v4 = [(_MTL4MachineLearningCommandEncoder *)&v11 initWithCommandBuffer:a3 allocator:a4];
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x1E6974228];
    NextGlobalTraceID = IOGPUDeviceGetNextGlobalTraceID([*(&v4->super.super.super.super.isa + v6) deviceRef]);
    v8 = *MEMORY[0x1E6974230];
    *(&v5->super.super.super.super.isa + v8) = NextGlobalTraceID;
    if (*__globalGPUCommPage)
    {
      [*(&v5->super.super.super.super.isa + v6) deviceRef];
      [*(&v5->super.super.super.super.isa + *MEMORY[0x1E6974220]) globalTraceObjectID];
      v9 = *(&v5->super.super.super.super.isa + v8);
      [(IOGPUMetal4MachineLearningCommandEncoder *)v5 getType];
      IOGPUDeviceTraceEvent();
    }
  }

  return v5;
}

- (void)endEncoding
{
  if (*__globalGPUCommPage)
  {
    [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974228]) deviceRef];
    [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974220]) globalTraceObjectID];
    v3 = *(&self->super.super.super.super.isa + *MEMORY[0x1E6974230]);
    [(IOGPUMetal4MachineLearningCommandEncoder *)self getType];
    IOGPUDeviceTraceEvent();
  }

  v4.receiver = self;
  v4.super_class = IOGPUMetal4MachineLearningCommandEncoder;
  [(_MTL4MachineLearningCommandEncoder *)&v4 endEncoding];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IOGPUMetal4MachineLearningCommandEncoder;
  [(_MTL4MachineLearningCommandEncoder *)&v2 dealloc];
}

- (void)setLabel:(id)a3
{
  v9.receiver = self;
  v9.super_class = IOGPUMetal4MachineLearningCommandEncoder;
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