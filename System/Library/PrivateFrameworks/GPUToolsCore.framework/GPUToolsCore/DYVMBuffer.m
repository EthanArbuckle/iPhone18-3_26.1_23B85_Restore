@interface DYVMBuffer
- (DYVMBuffer)initWithCapacity:(unint64_t)a3;
- (DYVMBuffer)initWithLength:(unint64_t)a3;
- (DYVMBuffer)initWithVMBuffer:(VMBuffer *)a3;
- (id)subdataWithRange:(_NSRange)a3;
- (void)dealloc;
- (void)setLength:(unint64_t)a3;
@end

@implementation DYVMBuffer

- (DYVMBuffer)initWithVMBuffer:(VMBuffer *)a3
{
  if (!a3)
  {
    [DYVMBuffer initWithVMBuffer:];
  }

  v5.receiver = self;
  v5.super_class = DYVMBuffer;
  result = [(DYVMBuffer *)&v5 init];
  if (result)
  {
    result->_vmBuffer = a3;
  }

  return result;
}

- (DYVMBuffer)initWithCapacity:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = DYVMBuffer;
  if ([(DYVMBuffer *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (DYVMBuffer)initWithLength:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = DYVMBuffer;
  if ([(DYVMBuffer *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  vmBuffer = self->_vmBuffer;
  if (vmBuffer)
  {
    GPUTools::VMBuffer::~VMBuffer(vmBuffer);
    MEMORY[0x253030980]();
  }

  v4.receiver = self;
  v4.super_class = DYVMBuffer;
  [(DYVMBuffer *)&v4 dealloc];
}

- (void)setLength:(unint64_t)a3
{
  vmBuffer = self->_vmBuffer;
  if (vmBuffer->var1 < a3)
  {
    GPUTools::VMBuffer::resize(vmBuffer, a3);
    vmBuffer = self->_vmBuffer;
  }

  var5 = vmBuffer->var5;
  v7 = var5 - 1;
  v8 = var5 - 1 + vmBuffer->var0;
  v9 = -var5;
  v10 = (v8 & v9) - vmBuffer->var0;
  vmBuffer->var3 = v10;
  vmBuffer->var4 = v10 + ((v7 + a3) & v9);
}

- (id)subdataWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location + a3.length > [(DYVMBuffer *)self length])
  {
    return 0;
  }

  v7 = [[DYVMBufferSubRegion alloc] initWithDYVMBuffer:self range:location, length];

  return v7;
}

@end