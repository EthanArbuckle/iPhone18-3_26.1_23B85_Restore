@interface IOGPUMetalRenderCommandEncoder
- (IOGPUMetalRenderCommandEncoder)initWithCommandBuffer:(id)buffer descriptor:(id)descriptor;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setMeshAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setMeshIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setObjectAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setObjectIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setObjectIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setVertexAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
@end

@implementation IOGPUMetalRenderCommandEncoder

- (IOGPUMetalRenderCommandEncoder)initWithCommandBuffer:(id)buffer descriptor:(id)descriptor
{
  v5.receiver = self;
  v5.super_class = IOGPUMetalRenderCommandEncoder;
  return [(IOGPUMetalCommandEncoder *)&v5 initWithCommandBuffer:buffer, descriptor];
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  if (count)
  {
    countCopy = count;
    v11 = 0;
    do
    {
      v12 = *resources++;
      if (objc_opt_respondsToSelector())
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      v11 |= v13;
      --countCopy;
    }

    while (countCopy);
  }

  else
  {
    v11 = 0;
  }

  [(IOGPUMetalRenderCommandEncoder *)self memoryBarrierWithScope:v11 afterStages:stages beforeStages:beforeStages];
}

- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    visibleFunctionTable = [table visibleFunctionTable];

    [(IOGPUMetalRenderCommandEncoder *)self setVertexVisibleFunctionTable:visibleFunctionTable atBufferIndex:index];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    if (length)
    {
      v9 = (v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = length;
      do
      {
        v11 = *tables++;
        *v9++ = [v11 visibleFunctionTable];
        --v10;
      }

      while (v10);
    }

    [(IOGPUMetalRenderCommandEncoder *)self setVertexVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    visibleFunctionTable = [table visibleFunctionTable];

    [(IOGPUMetalRenderCommandEncoder *)self setFragmentVisibleFunctionTable:visibleFunctionTable atBufferIndex:index];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    if (length)
    {
      v9 = (v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = length;
      do
      {
        v11 = *tables++;
        *v9++ = [v11 visibleFunctionTable];
        --v10;
      }

      while (v10);
    }

    [(IOGPUMetalRenderCommandEncoder *)self setFragmentVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    visibleFunctionTable = [table visibleFunctionTable];

    [(IOGPUMetalRenderCommandEncoder *)self setTileVisibleFunctionTable:visibleFunctionTable atBufferIndex:index];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    if (length)
    {
      v9 = (v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = length;
      do
      {
        v11 = *tables++;
        *v9++ = [v11 visibleFunctionTable];
        --v10;
      }

      while (v10);
    }

    [(IOGPUMetalRenderCommandEncoder *)self setTileVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setObjectIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    visibleFunctionTable = [table visibleFunctionTable];

    [(_MTLCommandEncoder *)self setObjectVisibleFunctionTable:visibleFunctionTable atBufferIndex:index];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setObjectIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    if (length)
    {
      v9 = (v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = length;
      do
      {
        v11 = *tables++;
        *v9++ = [v11 visibleFunctionTable];
        --v10;
      }

      while (v10);
    }

    [(_MTLCommandEncoder *)self setObjectVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    visibleFunctionTable = [table visibleFunctionTable];

    [(_MTLCommandEncoder *)self setMeshVisibleFunctionTable:visibleFunctionTable atBufferIndex:index];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setMeshIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    if (length)
    {
      v9 = (v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = length;
      do
      {
        v11 = *tables++;
        *v9++ = [v11 visibleFunctionTable];
        --v10;
      }

      while (v10);
    }

    [(_MTLCommandEncoder *)self setMeshVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setVertexAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];

    [(IOGPUMetalRenderCommandEncoder *)self setVertexBuffer:buffer offset:bufferOffset atIndex:index];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];

    [(IOGPUMetalRenderCommandEncoder *)self setFragmentBuffer:buffer offset:bufferOffset atIndex:index];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];

    [(IOGPUMetalRenderCommandEncoder *)self setTileBuffer:buffer offset:bufferOffset atIndex:index];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setObjectAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];

    [(_MTLCommandEncoder *)self setObjectBuffer:buffer offset:bufferOffset atIndex:index];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setMeshAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];

    [(_MTLCommandEncoder *)self setMeshBuffer:buffer offset:bufferOffset atIndex:index];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

@end