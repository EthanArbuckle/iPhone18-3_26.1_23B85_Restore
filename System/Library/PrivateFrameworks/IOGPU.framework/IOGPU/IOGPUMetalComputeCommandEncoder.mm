@interface IOGPUMetalComputeCommandEncoder
- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4;
- (void)memoryBarrierWithScope:(unint64_t)a3;
- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
@end

@implementation IOGPUMetalComputeCommandEncoder

- (void)memoryBarrierWithScope:(unint64_t)a3
{
  if ([(_MTLCommandEncoder *)self dispatchType]== 1)
  {
    [(IOGPUMetalComputeCommandEncoder *)self doesNotRecognizeSelector:a2];
  }

  [(_MTLCommandEncoder *)self memoryBarrierNotificationWithScope:a3];
}

- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v5 = a4;
    v7 = 0;
    do
    {
      v8 = *a3++;
      if (objc_opt_respondsToSelector())
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      v7 |= v9;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = 0;
  }

  [(IOGPUMetalComputeCommandEncoder *)self memoryBarrierWithScope:v7];
}

- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 buffer];
    v9 = [a3 bufferOffset];

    [(IOGPUMetalComputeCommandEncoder *)self setBuffer:v8 offset:v9 atIndex:a4];
  }

  else
  {

    [(IOGPUMetalComputeCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 visibleFunctionTable];

    [(IOGPUMetalComputeCommandEncoder *)self setVisibleFunctionTable:v8 atBufferIndex:a4];
  }

  else
  {

    [(IOGPUMetalComputeCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
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

    [(IOGPUMetalComputeCommandEncoder *)self setVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(IOGPUMetalComputeCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

@end