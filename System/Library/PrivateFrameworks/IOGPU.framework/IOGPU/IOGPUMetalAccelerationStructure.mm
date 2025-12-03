@interface IOGPUMetalAccelerationStructure
- (IOGPUMetalAccelerationStructure)initWithBuffer:(id)buffer offset:(unint64_t)offset;
- (IOGPUMetalAccelerationStructure)initWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (void)copyPropertiesFromBuffer:(id)buffer;
- (void)dealloc;
@end

@implementation IOGPUMetalAccelerationStructure

- (void)copyPropertiesFromBuffer:(id)buffer
{
  v4 = buffer + 32;
  v5 = *(buffer + 27);
  v6 = *(v4 + 24);
  *&self->super._anon_50[136] = v5;
  *&self->super._anon_50[144] = v6;
  *&self->super._anon_50[152] = *(v4 + 200);
  self->super._anon_50[168] = v4[216];
  *&self->super._anon_50[24] = *(v4 + 9);
  *&self->super._anon_50[80] = *(v4 + 16);
}

- (IOGPUMetalAccelerationStructure)initWithBuffer:(id)buffer offset:(unint64_t)offset
{
  v8.receiver = self;
  v8.super_class = IOGPUMetalAccelerationStructure;
  v6 = [(IOGPUMetalResource *)&v8 initWithResource:?];
  if (v6)
  {
    v6->_buffer = buffer;
    v6->_bufferOffset = offset;
    [(IOGPUMetalAccelerationStructure *)v6 copyPropertiesFromBuffer:buffer];
  }

  return v6;
}

- (IOGPUMetalAccelerationStructure)initWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  v10.receiver = self;
  v10.super_class = IOGPUMetalAccelerationStructure;
  v8 = [(IOGPUMetalResource *)&v10 initWithResource:?];
  if (v8)
  {
    v8->_buffer = buffer;
    v8->_bufferOffset = offset;
    v8->_resourceIndex = index;
    [(IOGPUMetalAccelerationStructure *)v8 copyPropertiesFromBuffer:buffer];
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