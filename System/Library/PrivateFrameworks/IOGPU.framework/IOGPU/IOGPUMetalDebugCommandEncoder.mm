@interface IOGPUMetalDebugCommandEncoder
- (IOGPUMetalDebugCommandEncoder)initWithCommandBuffer:(id)a3;
- (void)IOLogBytes:(const char *)a3 length:(unint64_t)a4;
- (void)addAPIResource:(id)a3;
- (void)dealloc;
- (void)debugBytes:(const char *)a3 length:(unint64_t)a4 output_type:(unsigned int)a5;
- (void)endEncoding;
- (void)kprintfBytes:(const char *)a3 length:(unint64_t)a4;
- (void)reserveKernelCommandBufferSpace:(unint64_t)a3;
- (void)restartDebugPass;
@end

@implementation IOGPUMetalDebugCommandEncoder

- (IOGPUMetalDebugCommandEncoder)initWithCommandBuffer:(id)a3
{
  v8.receiver = self;
  v8.super_class = IOGPUMetalDebugCommandEncoder;
  v4 = [(_MTLCommandEncoder *)&v8 initWithCommandBuffer:?];
  v5 = v4;
  if (v4)
  {
    v6 = *(&v4->super.super.super.super.isa + *MEMORY[0x1E69742C0]);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [IOGPUMetalDebugCommandEncoder initWithCommandBuffer:];
    }

    [a3 getCurrentKernelCommandBufferPointer:&v5->_kernelCommandBufferCurrent end:&v5->_kernelCommandBufferEnd];
    [a3 beginSegment:v5->_kernelCommandBufferCurrent];
    v5->_resourceList = [a3 ioGPUResourceList];
    v5->_api_resourceList = [a3 akResourceList];
    if (!v5->_resourceList)
    {
      [IOGPUMetalDebugCommandEncoder initWithCommandBuffer:];
    }
  }

  return v5;
}

- (void)dealloc
{
  self->_kernelCommandBufferEnd = 0;
  self->_kernelCommandBufferCurrent = 0;
  self->_resourceList = 0;
  self->_api_resourceList = 0;
  v2.receiver = self;
  v2.super_class = IOGPUMetalDebugCommandEncoder;
  [(_MTLCommandEncoder *)&v2 dealloc];
}

- (void)reserveKernelCommandBufferSpace:(unint64_t)a3
{
  kernelCommandBufferEnd = self->_kernelCommandBufferEnd;
  result = self->_kernelCommandBufferCurrent;
  if (kernelCommandBufferEnd - result < a3)
  {
    v7 = *(&self->super.super.super.super.isa + *MEMORY[0x1E69742C0]);
    [v7 growKernelCommandBuffer:a3];
    [v7 getCurrentKernelCommandBufferPointer:&self->_kernelCommandBufferCurrent end:&self->_kernelCommandBufferEnd];
    result = self->_kernelCommandBufferCurrent;
    if (self->_kernelCommandBufferEnd - result < a3)
    {
      [IOGPUMetalDebugCommandEncoder reserveKernelCommandBufferSpace:];
    }
  }

  self->_kernelCommandBufferCurrent = result + a3;
  return result;
}

- (void)restartDebugPass
{
  v3 = *(&self->super.super.super.super.isa + *MEMORY[0x1E69742C0]);
  [v3 setCurrentKernelCommandBufferPointer:self->_kernelCommandBufferCurrent];
  [v3 endCurrentSegment];
  kernelCommandBufferCurrent = self->_kernelCommandBufferCurrent;

  [v3 beginSegment:kernelCommandBufferCurrent];
}

- (void)endEncoding
{
  v3 = *(&self->super.super.super.super.isa + *MEMORY[0x1E69742C0]);
  [v3 setCurrentKernelCommandBufferPointer:self->_kernelCommandBufferCurrent];
  [v3 endCurrentSegment];
  self->_kernelCommandBufferEnd = 0;
  self->_kernelCommandBufferCurrent = 0;
  self->_resourceList = 0;
  self->_api_resourceList = 0;
  v4.receiver = self;
  v4.super_class = IOGPUMetalDebugCommandEncoder;
  [(_MTLCommandEncoder *)&v4 endEncoding];
}

- (void)debugBytes:(const char *)a3 length:(unint64_t)a4 output_type:(unsigned int)a5
{
  v8 = (a4 + 19) & 0xFFFFFFFC;
  v9 = [(IOGPUMetalDebugCommandEncoder *)self reserveKernelCommandBufferSpace:(a4 + 19) & 0xFFFFFFFFFFFFFFFCLL];
  *v9 = 0;
  v9[1] = v8;
  v9[2] = a5;
  v9[3] = a4;
  v10 = v9 + 4;

  memcpy(v10, a3, a4);
}

- (void)addAPIResource:(id)a3
{
  if (self->_api_resourceList)
  {
    MTLResourceListAddResource();
  }
}

- (void)kprintfBytes:(const char *)a3 length:(unint64_t)a4
{
  if (!*(&self->super.super.super.super.isa + *MEMORY[0x1E69742C0]))
  {
    [IOGPUMetalDebugCommandEncoder kprintfBytes:length:];
  }

  [(IOGPUMetalDebugCommandEncoder *)self debugBytes:a3 length:a4 output_type:0];
}

- (void)IOLogBytes:(const char *)a3 length:(unint64_t)a4
{
  if (!*(&self->super.super.super.super.isa + *MEMORY[0x1E69742C0]))
  {
    [IOGPUMetalDebugCommandEncoder IOLogBytes:length:];
  }

  [(IOGPUMetalDebugCommandEncoder *)self debugBytes:a3 length:a4 output_type:1];
}

@end