@interface GTVMBuffer_replayer
- (GTVMBuffer_replayer)initWithCapacity:(unint64_t)capacity;
- (GTVMBuffer_replayer)initWithLength:(unint64_t)length;
- (GTVMBuffer_replayer)initWithVMBuffer:(VMBuffer *)buffer;
- (id)subdataWithRange:(_NSRange)range;
- (void)dealloc;
- (void)setLength:(unint64_t)length;
@end

@implementation GTVMBuffer_replayer

- (id)subdataWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > [(GTVMBuffer_replayer *)self length])
  {
    return 0;
  }

  v7 = [[GTVMBufferSubRegion_replayer alloc] initWithGTVMBuffer:self range:location, length];

  return v7;
}

- (void)setLength:(unint64_t)length
{
  vmBuffer = self->_vmBuffer;
  var1 = vmBuffer->var1;
  if (var1 < length)
  {
    var0 = vmBuffer->var0;
    var2 = vmBuffer->var2;
    if (GPUTools::VMBuffer::_alloc(self->_vmBuffer, length, var2))
    {
      if (var1 >= vmBuffer->var1)
      {
        v9 = vmBuffer->var1;
      }

      else
      {
        v9 = var1;
      }

      v10 = MEMORY[0x277D85F48];
      if (vm_copy(*MEMORY[0x277D85F48], var0, v9, vmBuffer->var0))
      {
        GPUTools::VMBuffer::_dealloc(vmBuffer);
      }

      else
      {
        MEMORY[0x253034350](*v10, var0, *MEMORY[0x277D85FA0] + var1 + var1 * var2);
      }
    }

    vmBuffer = self->_vmBuffer;
  }

  var5 = vmBuffer->var5;
  v12 = var5 - 1;
  v13 = var5 - 1 + vmBuffer->var0;
  v14 = -var5;
  v15 = (v13 & v14) - vmBuffer->var0;
  vmBuffer->var3 = v15;
  vmBuffer->var4 = v15 + ((v12 + length) & v14);
}

- (void)dealloc
{
  vmBuffer = self->_vmBuffer;
  if (vmBuffer)
  {
    GPUTools::VMBuffer::_dealloc(&self->_vmBuffer->var0);
    MEMORY[0x2530332C0](vmBuffer, 0x1000C40EED21634);
  }

  v4.receiver = self;
  v4.super_class = GTVMBuffer_replayer;
  [(GTVMBuffer_replayer *)&v4 dealloc];
}

- (GTVMBuffer_replayer)initWithLength:(unint64_t)length
{
  v4.receiver = self;
  v4.super_class = GTVMBuffer_replayer;
  if ([(GTVMBuffer_replayer *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (GTVMBuffer_replayer)initWithCapacity:(unint64_t)capacity
{
  v4.receiver = self;
  v4.super_class = GTVMBuffer_replayer;
  if ([(GTVMBuffer_replayer *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (GTVMBuffer_replayer)initWithVMBuffer:(VMBuffer *)buffer
{
  if (!buffer)
  {
    __assert_rtn("[GTVMBuffer initWithVMBuffer:]", ", 0, "vmBuffer"");
  }

  v5.receiver = self;
  v5.super_class = GTVMBuffer_replayer;
  result = [(GTVMBuffer_replayer *)&v5 init];
  if (result)
  {
    result->_vmBuffer = buffer;
  }

  return result;
}

@end