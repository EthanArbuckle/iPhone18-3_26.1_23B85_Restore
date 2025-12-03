@interface IOAccelMTLEvent
- (IOAccelMTLEvent)initWithShared:(__IOAccelShared *)shared options:(unint64_t)options;
- (unsigned)encodeKernelSignalEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value;
- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value;
- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value timeout:(unsigned int)timeout;
- (void)dealloc;
@end

@implementation IOAccelMTLEvent

- (IOAccelMTLEvent)initWithShared:(__IOAccelShared *)shared options:(unint64_t)options
{
  inputStruct[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = IOAccelMTLEvent;
  v6 = [(IOAccelMTLEvent *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_sharedRef = shared;
    CFRetain(shared);
    inputStruct[0] = options;
    outputStruct = 0;
    v12 = 0uLL;
    v10 = 24;
    if (IOConnectCallMethod(v7->_sharedRef->var2, 9u, 0, 0, inputStruct, 8uLL, 0, 0, &outputStruct, &v10))
    {

      v7 = 0;
    }

    else
    {
      v7->_eventName = outputStruct;
      *&v7->_globalTraceObjectID = v12;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  sharedRef = self->_sharedRef;
  if (sharedRef)
  {
    if (self->_eventName)
    {
      input = self->_eventName;
      IOConnectCallMethod(sharedRef->var2, 0xAu, &input, 1u, 0, 0, 0, 0, 0, 0);
      sharedRef = self->_sharedRef;
    }

    CFRelease(sharedRef);
  }

  v4.receiver = self;
  v4.super_class = IOAccelMTLEvent;
  [(IOAccelMTLEvent *)&v4 dealloc];
}

- (unsigned)encodeKernelSignalEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value
{
  args->var0 = self->_eventName;
  args->var3 = value;
  return 6;
}

- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value
{
  args->var0 = self->_eventName;
  args->var3 = value;
  return 7;
}

- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value timeout:(unsigned int)timeout
{
  args->var0 = self->_eventName;
  args->var3 = value;
  if (timeout >= 0xFFFF)
  {
    timeoutCopy = -1;
  }

  else
  {
    timeoutCopy = timeout;
  }

  args->var2 = timeoutCopy;
  return 12;
}

@end