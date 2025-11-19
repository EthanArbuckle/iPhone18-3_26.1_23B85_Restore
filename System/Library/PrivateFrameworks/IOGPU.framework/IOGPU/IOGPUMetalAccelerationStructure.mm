@interface IOGPUMetalAccelerationStructure
- (IOGPUMetalAccelerationStructure)initWithBuffer:(id)a3 offset:(unint64_t)a4;
- (IOGPUMetalAccelerationStructure)initWithBuffer:(id)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5;
- (void)copyPropertiesFromBuffer:(id)a3;
- (void)dealloc;
@end

@implementation IOGPUMetalAccelerationStructure

- (void)copyPropertiesFromBuffer:(id)a3
{
  v4 = a3 + 32;
  v5 = *(a3 + 27);
  v6 = *(v4 + 24);
  *&self->super._anon_50[136] = v5;
  *&self->super._anon_50[144] = v6;
  *&self->super._anon_50[152] = *(v4 + 200);
  self->super._anon_50[168] = v4[216];
  *&self->super._anon_50[24] = *(v4 + 9);
  *&self->super._anon_50[80] = *(v4 + 16);
}

- (IOGPUMetalAccelerationStructure)initWithBuffer:(id)a3 offset:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = IOGPUMetalAccelerationStructure;
  v6 = [(IOGPUMetalResource *)&v8 initWithResource:?];
  if (v6)
  {
    v6->_buffer = a3;
    v6->_bufferOffset = a4;
    [(IOGPUMetalAccelerationStructure *)v6 copyPropertiesFromBuffer:a3];
  }

  return v6;
}

- (IOGPUMetalAccelerationStructure)initWithBuffer:(id)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = IOGPUMetalAccelerationStructure;
  v8 = [(IOGPUMetalResource *)&v10 initWithResource:?];
  if (v8)
  {
    v8->_buffer = a3;
    v8->_bufferOffset = a4;
    v8->_resourceIndex = a5;
    [(IOGPUMetalAccelerationStructure *)v8 copyPropertiesFromBuffer:a3];
  }

  return v8;
}

- (void)dealloc
{
  *&self->super._anon_50[136] = 0;
  v3.receiver = self;
  v3.super_class = IOGPUMetalAccelerationStructure;
  [(IOGPUMetalResource *)&v3 dealloc];
}

@end