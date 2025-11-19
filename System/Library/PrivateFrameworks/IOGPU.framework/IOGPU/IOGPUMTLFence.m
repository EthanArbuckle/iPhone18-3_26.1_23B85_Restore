@interface IOGPUMTLFence
- (IOGPUMTLFence)initWithDevice:(__IOGPUDevice *)a3;
- (void)dealloc;
@end

@implementation IOGPUMTLFence

- (IOGPUMTLFence)initWithDevice:(__IOGPUDevice *)a3
{
  v9.receiver = self;
  v9.super_class = IOGPUMTLFence;
  v4 = [(IOGPUMTLFence *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_deviceRef = a3;
    CFRetain(a3);
    outputStruct = 0;
    v7 = 4;
    if (IOConnectCallMethod(v5->_deviceRef->var2, 0x11u, 0, 0, 0, 0, 0, 0, &outputStruct, &v7))
    {

      return 0;
    }

    else
    {
      v5->_fenceName = outputStruct;
    }
  }

  return v5;
}

- (void)dealloc
{
  deviceRef = self->_deviceRef;
  if (deviceRef)
  {
    if (self->_fenceName)
    {
      input = self->_fenceName;
      IOConnectCallMethod(deviceRef->var2, 0x12u, &input, 1u, 0, 0, 0, 0, 0, 0);
      deviceRef = self->_deviceRef;
    }

    CFRelease(deviceRef);
  }

  v4.receiver = self;
  v4.super_class = IOGPUMTLFence;
  [(IOGPUMTLFence *)&v4 dealloc];
}

@end