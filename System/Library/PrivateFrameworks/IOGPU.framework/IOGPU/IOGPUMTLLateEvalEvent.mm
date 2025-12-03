@interface IOGPUMTLLateEvalEvent
- (IOGPUMTLLateEvalEvent)initWithDevice:(__IOGPUDevice *)device;
- (unint64_t)signaledValue;
- (void)dealloc;
- (void)setSignaledValue:(unint64_t)value;
@end

@implementation IOGPUMTLLateEvalEvent

- (IOGPUMTLLateEvalEvent)initWithDevice:(__IOGPUDevice *)device
{
  output[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = IOGPUMTLLateEvalEvent;
  v4 = [(IOGPUMTLLateEvalEvent *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_deviceRef = device;
    CFRetain(device);
    outputCnt = 2;
    if (IOConnectCallMethod(v5->_deviceRef->var2, 0x1Cu, 0, 0, 0, 0, output, &outputCnt, 0, 0))
    {

      v5 = 0;
    }

    else
    {
      v6 = output[1];
      v5->_eventName = output[0];
      v5->_globalTraceObjectID = v6;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)dealloc
{
  deviceRef = self->_deviceRef;
  if (deviceRef)
  {
    if (self->_eventName)
    {
      input = self->_eventName;
      IOConnectCallMethod(deviceRef->var2, 0x1Du, &input, 1u, 0, 0, 0, 0, 0, 0);
      deviceRef = self->_deviceRef;
    }

    CFRelease(deviceRef);
  }

  v4.receiver = self;
  v4.super_class = IOGPUMTLLateEvalEvent;
  [(IOGPUMTLLateEvalEvent *)&v4 dealloc];
}

- (void)setSignaledValue:(unint64_t)value
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = self->_eventName;
  input[1] = value;
  IOConnectCallMethod(self->_deviceRef->var2, 0x1Eu, input, 2u, 0, 0, 0, 0, 0, 0);
  v3 = *MEMORY[0x1E69E9840];
}

- (unint64_t)signaledValue
{
  output[2] = *MEMORY[0x1E69E9840];
  input = self->_eventName;
  output[0] = 0;
  output[1] = 0;
  outputCnt = 2;
  IOConnectCallMethod(self->_deviceRef->var2, 0x1Fu, &input, 1u, 0, 0, output, &outputCnt, 0, 0);
  result = output[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

@end