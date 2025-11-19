@interface BWCoreImageIntermediateAllocator
- (BWCoreImageIntermediateAllocator)initWithBackend:(id)a3 allocatorBackend:(id)a4 memoryPool:(unint64_t)a5;
- (id)newBufferForContextIntermediate:(unint64_t)a3 usingHint:(BOOL)a4 identifier:(unint64_t)a5;
- (void)bufferForContextIntermediateCommitted:(id)a3;
- (void)dealloc;
@end

@implementation BWCoreImageIntermediateAllocator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWCoreImageIntermediateAllocator;
  [(BWCoreImageIntermediateAllocator *)&v3 dealloc];
}

- (id)newBufferForContextIntermediate:(unint64_t)a3 usingHint:(BOOL)a4 identifier:(unint64_t)a5
{
  v8 = objc_opt_new();
  [v8 setLength:a3];
  [v8 setOptions:{-[FigMetalAllocator resourceOptions](self->_metalAllocator, "resourceOptions")}];
  [v8 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%016llX", a5)}];
  v9 = [(FigMetalAllocator *)self->_metalAllocator newBufferWithDescriptor:v8];
  if (!v9)
  {
    v12[0] = *MEMORY[0x1E696CE30];
    v13[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
    v12[1] = *MEMORY[0x1E696CE38];
    v13[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_poolID];
    v10 = IOSurfaceCreate([MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2]);
    v9 = [(MTLDeviceSPI *)self->_device newBufferWithIOSurface:v10];
    CFRelease(v10);
  }

  return v9;
}

- (void)bufferForContextIntermediateCommitted:(id)a3
{
  if ([a3 iosurface])
  {
  }

  else
  {
    FigMetalDecRef();
  }
}

- (BWCoreImageIntermediateAllocator)initWithBackend:(id)a3 allocatorBackend:(id)a4 memoryPool:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = BWCoreImageIntermediateAllocator;
  v8 = [(BWCoreImageIntermediateAllocator *)&v12 init];
  v8->_poolID = a5;
  v8->_device = a3;
  v9 = objc_opt_new();
  v10 = v9;
  if (!v9 || ([v9 setWireMemory:1], objc_msgSend(v10, "setResourceOptions:", objc_msgSend(a4, "resourceOptions")), objc_msgSend(v10, "setLabel:", @"FigMetalAllocator_CoreImageFilterRenderer"), a4) && (v8->_metalAllocator = objc_msgSend(objc_alloc(MEMORY[0x1E6991750]), "initWithDevice:allocatorType:", a3, objc_msgSend(a4, "allocatorType")), objc_msgSend(v10, "setMemSize:", objc_msgSend(a4, "memSize")), -[FigMetalAllocator setupWithDescriptor:allocatorBackend:](v8->_metalAllocator, "setupWithDescriptor:allocatorBackend:", v10, a4)))
  {
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  return v8;
}

@end