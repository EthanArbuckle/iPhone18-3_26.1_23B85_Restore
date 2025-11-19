@interface GTVMBuffer_capture
- (GTVMBuffer_capture)initWithCapacity:(unint64_t)a3;
- (GTVMBuffer_capture)initWithLength:(unint64_t)a3;
- (GTVMBuffer_capture)initWithVMBuffer:(VMBuffer *)a3;
- (id)subdataWithRange:(_NSRange)a3;
- (void)dealloc;
- (void)setLength:(unint64_t)a3;
@end

@implementation GTVMBuffer_capture

- (id)subdataWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location + a3.length > [(GTVMBuffer_capture *)self length])
  {
    return 0;
  }

  v7 = [[GTVMBufferSubRegion_capture alloc] initWithGTVMBuffer:self range:location, length];

  return v7;
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

- (void)dealloc
{
  if (self->_vmBuffer)
  {
    GPUTools::VMBuffer::_dealloc(&self->_vmBuffer->var0);
    operator delete();
  }

  v2.receiver = self;
  v2.super_class = GTVMBuffer_capture;
  [(GTVMBuffer_capture *)&v2 dealloc];
}

- (GTVMBuffer_capture)initWithLength:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = GTVMBuffer_capture;
  if ([(GTVMBuffer_capture *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (GTVMBuffer_capture)initWithCapacity:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = GTVMBuffer_capture;
  if ([(GTVMBuffer_capture *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (GTVMBuffer_capture)initWithVMBuffer:(VMBuffer *)a3
{
  if (!a3)
  {
    __assert_rtn("[GTVMBuffer initWithVMBuffer:]", ", 0, "vmBuffer"");
  }

  v5.receiver = self;
  v5.super_class = GTVMBuffer_capture;
  result = [(GTVMBuffer_capture *)&v5 init];
  if (result)
  {
    result->_vmBuffer = a3;
  }

  return result;
}

@end