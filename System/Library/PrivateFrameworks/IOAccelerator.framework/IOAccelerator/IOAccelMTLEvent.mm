@interface IOAccelMTLEvent
- (IOAccelMTLEvent)initWithShared:(__IOAccelShared *)a3 options:(unint64_t)a4;
- (unsigned)encodeKernelSignalEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4;
- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4;
- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4 timeout:(unsigned int)a5;
- (void)dealloc;
@end

@implementation IOAccelMTLEvent

- (IOAccelMTLEvent)initWithShared:(__IOAccelShared *)a3 options:(unint64_t)a4
{
  inputStruct[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = IOAccelMTLEvent;
  v6 = [(IOAccelMTLEvent *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_sharedRef = a3;
    CFRetain(a3);
    inputStruct[0] = a4;
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

- (unsigned)encodeKernelSignalEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4
{
  a3->var0 = self->_eventName;
  a3->var3 = a4;
  return 6;
}

- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4
{
  a3->var0 = self->_eventName;
  a3->var3 = a4;
  return 7;
}

- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4 timeout:(unsigned int)a5
{
  a3->var0 = self->_eventName;
  a3->var3 = a4;
  if (a5 >= 0xFFFF)
  {
    v5 = -1;
  }

  else
  {
    v5 = a5;
  }

  a3->var2 = v5;
  return 12;
}

@end