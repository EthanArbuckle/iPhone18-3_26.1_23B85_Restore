@interface DYVMBuffer
- (DYVMBuffer)initWithCapacity:(unint64_t)capacity;
- (DYVMBuffer)initWithLength:(unint64_t)length;
- (DYVMBuffer)initWithVMBuffer:(VMBuffer *)buffer;
- (id)subdataWithRange:(_NSRange)range;
- (void)dealloc;
- (void)setLength:(unint64_t)length;
@end

@implementation DYVMBuffer

- (DYVMBuffer)initWithVMBuffer:(VMBuffer *)buffer
{
  if (!buffer)
  {
    [DYVMBuffer initWithVMBuffer:];
  }

  v5.receiver = self;
  v5.super_class = DYVMBuffer;
  result = [(DYVMBuffer *)&v5 init];
  if (result)
  {
    result->_vmBuffer = buffer;
  }

  return result;
}

- (DYVMBuffer)initWithCapacity:(unint64_t)capacity
{
  v4.receiver = self;
  v4.super_class = DYVMBuffer;
  if ([(DYVMBuffer *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (DYVMBuffer)initWithLength:(unint64_t)length
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

- (void)setLength:(unint64_t)length
{
  vmBuffer = self->_vmBuffer;
  if (vmBuffer->var1 < length)
  {
    GPUTools::VMBuffer::resize(vmBuffer, length);
    vmBuffer = self->_vmBuffer;
  }

  var5 = vmBuffer->var5;
  v7 = var5 - 1;
  v8 = var5 - 1 + vmBuffer->var0;
  v9 = -var5;
  v10 = (v8 & v9) - vmBuffer->var0;
  vmBuffer->var3 = v10;
  vmBuffer->var4 = v10 + ((v7 + length) & v9);
}

- (id)subdataWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > [(DYVMBuffer *)self length])
  {
    return 0;
  }

  v7 = [[DYVMBufferSubRegion alloc] initWithDYVMBuffer:self range:location, length];

  return v7;
}

@end