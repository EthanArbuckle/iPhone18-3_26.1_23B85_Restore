@interface IOGPUMetalDebugCommandEncoder
- (IOGPUMetalDebugCommandEncoder)initWithCommandBuffer:(id)buffer;
- (void)IOLogBytes:(const char *)bytes length:(unint64_t)length;
- (void)addAPIResource:(id)resource;
- (void)dealloc;
- (void)debugBytes:(const char *)bytes length:(unint64_t)length output_type:(unsigned int)output_type;
- (void)endEncoding;
- (void)kprintfBytes:(const char *)bytes length:(unint64_t)length;
- (void)reserveKernelCommandBufferSpace:(unint64_t)space;
- (void)restartDebugPass;
@end

@implementation IOGPUMetalDebugCommandEncoder

- (IOGPUMetalDebugCommandEncoder)initWithCommandBuffer:(id)buffer
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

    [buffer getCurrentKernelCommandBufferPointer:&v5->_kernelCommandBufferCurrent end:&v5->_kernelCommandBufferEnd];
    [buffer beginSegment:v5->_kernelCommandBufferCurrent];
    v5->_resourceList = [buffer ioGPUResourceList];
    v5->_api_resourceList = [buffer akResourceList];
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

- (void)reserveKernelCommandBufferSpace:(unint64_t)space
{
  kernelCommandBufferEnd = self->_kernelCommandBufferEnd;
  result = self->_kernelCommandBufferCurrent;
  if (kernelCommandBufferEnd - result < space)
  {
    v7 = *(&self->super.super.super.super.isa + *MEMORY[0x1E69742C0]);
    [v7 growKernelCommandBuffer:space];
    [v7 getCurrentKernelCommandBufferPointer:&self->_kernelCommandBufferCurrent end:&self->_kernelCommandBufferEnd];
    result = self->_kernelCommandBufferCurrent;
    if (self->_kernelCommandBufferEnd - result < space)
    {
      [IOGPUMetalDebugCommandEncoder reserveKernelCommandBufferSpace:];
    }
  }

  self->_kernelCommandBufferCurrent = result + space;
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

- (void)debugBytes:(const char *)bytes length:(unint64_t)length output_type:(unsigned int)output_type
{
  v8 = (length + 19) & 0xFFFFFFFC;
  0xFFFFFFFFFFFFFFFCLL = [(IOGPUMetalDebugCommandEncoder *)self reserveKernelCommandBufferSpace:(length + 19) & 0xFFFFFFFFFFFFFFFCLL];
  *0xFFFFFFFFFFFFFFFCLL = 0;
  0xFFFFFFFFFFFFFFFCLL[1] = v8;
  0xFFFFFFFFFFFFFFFCLL[2] = output_type;
  0xFFFFFFFFFFFFFFFCLL[3] = length;
  v10 = 0xFFFFFFFFFFFFFFFCLL + 4;

  memcpy(v10, bytes, length);
}

- (void)addAPIResource:(id)resource
{
  if (self->_api_resourceList)
  {
    MTLResourceListAddResource();
  }
}

- (void)kprintfBytes:(const char *)bytes length:(unint64_t)length
{
  if (!*(&self->super.super.super.super.isa + *MEMORY[0x1E69742C0]))
  {
    [IOGPUMetalDebugCommandEncoder kprintfBytes:length:];
  }

  [(IOGPUMetalDebugCommandEncoder *)self debugBytes:bytes length:length output_type:0];
}

- (void)IOLogBytes:(const char *)bytes length:(unint64_t)length
{
  if (!*(&self->super.super.super.super.isa + *MEMORY[0x1E69742C0]))
  {
    [IOGPUMetalDebugCommandEncoder IOLogBytes:length:];
  }

  [(IOGPUMetalDebugCommandEncoder *)self debugBytes:bytes length:length output_type:1];
}

@end