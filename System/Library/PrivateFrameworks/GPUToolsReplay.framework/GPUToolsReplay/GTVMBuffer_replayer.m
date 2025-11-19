@interface GTVMBuffer_replayer
- (GTVMBuffer_replayer)initWithCapacity:(unint64_t)a3;
- (GTVMBuffer_replayer)initWithLength:(unint64_t)a3;
- (GTVMBuffer_replayer)initWithVMBuffer:(VMBuffer *)a3;
- (id)subdataWithRange:(_NSRange)a3;
- (void)dealloc;
- (void)setLength:(unint64_t)a3;
@end

@implementation GTVMBuffer_replayer

- (id)subdataWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location + a3.length > [(GTVMBuffer_replayer *)self length])
  {
    return 0;
  }

  v7 = [[GTVMBufferSubRegion_replayer alloc] initWithGTVMBuffer:self range:location, length];

  return v7;
}

- (void)setLength:(unint64_t)a3
{
  vmBuffer = self->_vmBuffer;
  var1 = vmBuffer->var1;
  if (var1 < a3)
  {
    var0 = vmBuffer->var0;
    var2 = vmBuffer->var2;
    if (GPUTools::VMBuffer::_alloc(self->_vmBuffer, a3, var2))
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
  vmBuffer->var4 = v15 + ((v12 + a3) & v14);
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

- (GTVMBuffer_replayer)initWithLength:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = GTVMBuffer_replayer;
  if ([(GTVMBuffer_replayer *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (GTVMBuffer_replayer)initWithCapacity:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = GTVMBuffer_replayer;
  if ([(GTVMBuffer_replayer *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (GTVMBuffer_replayer)initWithVMBuffer:(VMBuffer *)a3
{
  if (!a3)
  {
    __assert_rtn("[GTVMBuffer initWithVMBuffer:]", ", 0, "vmBuffer"");
  }

  v5.receiver = self;
  v5.super_class = GTVMBuffer_replayer;
  result = [(GTVMBuffer_replayer *)&v5 init];
  if (result)
  {
    result->_vmBuffer = a3;
  }

  return result;
}

@end