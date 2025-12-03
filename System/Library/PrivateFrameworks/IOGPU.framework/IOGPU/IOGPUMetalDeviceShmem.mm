@interface IOGPUMetalDeviceShmem
- (IOGPUMetalDeviceShmem)initWithDevice:(id)device shmemSize:(unsigned int)size shmemType:(int)type;
- (void)dealloc;
@end

@implementation IOGPUMetalDeviceShmem

- (void)dealloc
{
  if (self->_shmemID)
  {
    if (IOGPUDeviceDestroyDeviceShmem([(IOGPUMetalDevice *)self->_device deviceRef], self->_shmemID))
    {
      [IOGPUMetalDeviceShmem dealloc];
    }

    self->_shmemID = 0;
  }

  self->_device = 0;
  v3.receiver = self;
  v3.super_class = IOGPUMetalDeviceShmem;
  [(IOGPUMetalDeviceShmem *)&v3 dealloc];
}

- (IOGPUMetalDeviceShmem)initWithDevice:(id)device shmemSize:(unsigned int)size shmemType:(int)type
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalDeviceShmem initWithDevice:shmemSize:shmemType:];
  }

  v12.receiver = self;
  v12.super_class = IOGPUMetalDeviceShmem;
  v9 = [(IOGPUMetalDeviceShmem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    if (!size)
    {
      [IOGPUMetalDeviceShmem initWithDevice:shmemSize:shmemType:];
    }

    v9->_device = device;
    if (IOGPUDeviceCreateDeviceShmem([device deviceRef], size, type, &v9->_virtualAddress, &v9->_shmemSize, &v9->_shmemID))
    {
      [IOGPUMetalDeviceShmem initWithDevice:shmemSize:shmemType:];
    }

    v10->_priv.trim_level = 0;
    if (!v10->_virtualAddress)
    {
      [IOGPUMetalDeviceShmem initWithDevice:shmemSize:shmemType:];
    }

    if (![(IOGPUMetalDeviceShmem *)v10 shmemSize])
    {
      [IOGPUMetalDeviceShmem initWithDevice:shmemSize:shmemType:];
    }

    if (![(IOGPUMetalDeviceShmem *)v10 shmemID])
    {
      [IOGPUMetalDeviceShmem initWithDevice:shmemSize:shmemType:];
    }
  }

  return v10;
}

@end