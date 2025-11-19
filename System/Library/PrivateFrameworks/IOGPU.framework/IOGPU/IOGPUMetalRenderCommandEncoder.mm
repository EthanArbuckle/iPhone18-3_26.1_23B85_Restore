@interface IOGPUMetalRenderCommandEncoder
- (IOGPUMetalRenderCommandEncoder)initWithCommandBuffer:(id)a3 descriptor:(id)a4;
- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4 afterStages:(unint64_t)a5 beforeStages:(unint64_t)a6;
- (void)setFragmentAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setMeshAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setObjectAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setTileAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setVertexAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVertexIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVertexIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
@end

@implementation IOGPUMetalRenderCommandEncoder

- (IOGPUMetalRenderCommandEncoder)initWithCommandBuffer:(id)a3 descriptor:(id)a4
{
  v5.receiver = self;
  v5.super_class = IOGPUMetalRenderCommandEncoder;
  return [(IOGPUMetalCommandEncoder *)&v5 initWithCommandBuffer:a3, a4];
}

- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4 afterStages:(unint64_t)a5 beforeStages:(unint64_t)a6
{
  if (a4)
  {
    v9 = a4;
    v11 = 0;
    do
    {
      v12 = *a3++;
      if (objc_opt_respondsToSelector())
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      v11 |= v13;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = 0;
  }

  [(IOGPUMetalRenderCommandEncoder *)self memoryBarrierWithScope:v11 afterStages:a5 beforeStages:a6];
}

- (void)setVertexIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 visibleFunctionTable];

    [(IOGPUMetalRenderCommandEncoder *)self setVertexVisibleFunctionTable:v8 atBufferIndex:a4];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setVertexIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    if (length)
    {
      v9 = (v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = length;
      do
      {
        v11 = *a3++;
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

- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 visibleFunctionTable];

    [(IOGPUMetalRenderCommandEncoder *)self setFragmentVisibleFunctionTable:v8 atBufferIndex:a4];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setFragmentIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    if (length)
    {
      v9 = (v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = length;
      do
      {
        v11 = *a3++;
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

- (void)setTileIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 visibleFunctionTable];

    [(IOGPUMetalRenderCommandEncoder *)self setTileVisibleFunctionTable:v8 atBufferIndex:a4];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setTileIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    if (length)
    {
      v9 = (v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = length;
      do
      {
        v11 = *a3++;
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

- (void)setObjectIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 visibleFunctionTable];

    [(_MTLCommandEncoder *)self setObjectVisibleFunctionTable:v8 atBufferIndex:a4];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setObjectIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    if (length)
    {
      v9 = (v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = length;
      do
      {
        v11 = *a3++;
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

- (void)setMeshIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 visibleFunctionTable];

    [(_MTLCommandEncoder *)self setMeshVisibleFunctionTable:v8 atBufferIndex:a4];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setMeshIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    if (length)
    {
      v9 = (v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = length;
      do
      {
        v11 = *a3++;
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

- (void)setVertexAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 buffer];
    v9 = [a3 bufferOffset];

    [(IOGPUMetalRenderCommandEncoder *)self setVertexBuffer:v8 offset:v9 atIndex:a4];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setFragmentAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 buffer];
    v9 = [a3 bufferOffset];

    [(IOGPUMetalRenderCommandEncoder *)self setFragmentBuffer:v8 offset:v9 atIndex:a4];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setTileAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 buffer];
    v9 = [a3 bufferOffset];

    [(IOGPUMetalRenderCommandEncoder *)self setTileBuffer:v8 offset:v9 atIndex:a4];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setObjectAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 buffer];
    v9 = [a3 bufferOffset];

    [(_MTLCommandEncoder *)self setObjectBuffer:v8 offset:v9 atIndex:a4];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setMeshAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 buffer];
    v9 = [a3 bufferOffset];

    [(_MTLCommandEncoder *)self setMeshBuffer:v8 offset:v9 atIndex:a4];
  }

  else
  {

    [(IOGPUMetalRenderCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

@end