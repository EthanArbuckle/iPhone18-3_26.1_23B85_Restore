@interface IOGPUMetalIndirectArgumentEncoder
- (void)setIndirectCommandBuffer:(id)a3 atIndex:(unint64_t)a4;
- (void)setIndirectCommandBuffers:(const void *)a3 withRange:(_NSRange)a4;
- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
@end

@implementation IOGPUMetalIndirectArgumentEncoder

- (void)setIndirectCommandBuffer:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [a3 privateICBuffer];

  [(IOGPUMetalIndirectArgumentEncoder *)self setBuffer:v6 offset:0 atIndex:a4];
}

- (void)setIndirectCommandBuffers:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      -[IOGPUMetalIndirectArgumentEncoder setBuffer:offset:atIndex:](self, "setBuffer:offset:atIndex:", [v8 privateICBuffer], 0, location++);
      --length;
    }

    while (length);
  }
}

- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLIndirectArgumentEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 visibleFunctionTable];

    [(IOGPUMetalIndirectArgumentEncoder *)self setVisibleFunctionTable:v8 atBufferIndex:a4];
  }

  else
  {

    [(IOGPUMetalIndirectArgumentEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLIndirectArgumentEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
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

    [(IOGPUMetalIndirectArgumentEncoder *)self setVisibleFunctionTables:v14 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    [(IOGPUMetalIndirectArgumentEncoder *)self doesNotRecognizeSelector:a2];
  }
}

@end