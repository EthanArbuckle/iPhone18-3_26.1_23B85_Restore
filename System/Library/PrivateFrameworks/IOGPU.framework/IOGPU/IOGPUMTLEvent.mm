@interface IOGPUMTLEvent
- (IOGPUMTLEvent)initWithDeviceRef:(__IOGPUDevice *)ref options:(unint64_t)options;
- (unsigned)_encodeIOGPUKernelSignalEventCommandArgs:(IOGPUKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value;
- (unsigned)_encodeIOGPUKernelWaitEventCommandArgs:(IOGPUKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value timeout:(unsigned int)timeout;
- (void)dealloc;
@end

@implementation IOGPUMTLEvent

- (IOGPUMTLEvent)initWithDeviceRef:(__IOGPUDevice *)ref options:(unint64_t)options
{
  v13.receiver = self;
  v13.super_class = IOGPUMTLEvent;
  v6 = [(IOGPUMTLEvent *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_deviceRef = ref;
    CFRetain(ref);
    input = options;
    outputStruct = 0;
    v11 = 0uLL;
    v9 = 24;
    if (IOConnectCallMethod(v7->_deviceRef->var2, 0x13u, &input, 1u, 0, 0, 0, 0, &outputStruct, &v9))
    {

      return 0;
    }

    else
    {
      v7->_eventName = outputStruct;
      *&v7->_globalTraceObjectID = v11;
      v7->_enableBarrier = 1;
    }
  }

  return v7;
}

- (void)dealloc
{
  deviceRef = self->_deviceRef;
  if (deviceRef)
  {
    if (self->_eventName)
    {
      input = self->_eventName;
      IOConnectCallMethod(deviceRef->var2, 0x14u, &input, 1u, 0, 0, 0, 0, 0, 0);
      deviceRef = self->_deviceRef;
    }

    CFRelease(deviceRef);
  }

  v4.receiver = self;
  v4.super_class = IOGPUMTLEvent;
  [(IOGPUMTLEvent *)&v4 dealloc];
}

- (unsigned)_encodeIOGPUKernelSignalEventCommandArgs:(IOGPUKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value
{
  args->var0 = self->_eventName;
  args->var2 = value;
  return 5;
}

- (unsigned)_encodeIOGPUKernelWaitEventCommandArgs:(IOGPUKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value timeout:(unsigned int)timeout
{
  eventName = self->_eventName;
  args->var2 = value;
  args->var0 = eventName;
  args->var1 = timeout;
  if (self->_enableBarrier)
  {
    return 6;
  }

  else
  {
    return 10;
  }
}

@end