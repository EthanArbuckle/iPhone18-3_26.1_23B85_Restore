@interface IOGPUMetalIOHandleRaw
- (IOGPUMetalIOHandleRaw)initWithDevice:(id)device path:(const char *)path error:(id *)error uncached:(BOOL)uncached;
- (void)dealloc;
- (void)setLabel:(id)label;
@end

@implementation IOGPUMetalIOHandleRaw

- (IOGPUMetalIOHandleRaw)initWithDevice:(id)device path:(const char *)path error:(id *)error uncached:(BOOL)uncached
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = IOGPUMetalIOHandleRaw;
  v8 = [_MTLIOHandleRaw initWithDevice:sel_initWithDevice_path_error_uncached_ path:? error:? uncached:?];
  if (v8)
  {
    deviceCopy = device;
    v8->_dev = deviceCopy;
    deviceRef = [(MTLDevice *)deviceCopy deviceRef];
    if (IOGPUDeviceCreateVNIODesc(deviceRef, *(&v8->super.super.super.isa + *MEMORY[0x1E69743A0]), &v8->_vnioID, &v8->_globalTraceObjectID))
    {
      if (error)
      {
        v11 = objc_alloc(MEMORY[0x1E696ABC0]);
        v12 = *MEMORY[0x1E6973F90];
        v16 = *MEMORY[0x1E696A578];
        v17[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Internal Error"];
        *error = [v11 initWithDomain:v12 code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v17, &v16, 1)}];
      }

      v8 = 0;
    }

    else if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceObjectLabel([(MTLDevice *)v8->_dev deviceRef], 8, 26, v8->_globalTraceObjectID, 0);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)dealloc
{
  if (self->_vnioID)
  {
    IOGPUDeviceDestroyVNIODesc([(MTLDevice *)self->_dev deviceRef], self->_vnioID);
  }

  self->_dev = 0;
  v3.receiver = self;
  v3.super_class = IOGPUMetalIOHandleRaw;
  [(_MTLIOHandleRaw *)&v3 dealloc];
}

- (void)setLabel:(id)label
{
  v9.receiver = self;
  v9.super_class = IOGPUMetalIOHandleRaw;
  [(_MTLObjectWithLabel *)&v9 setLabel:?];
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.isa + *MEMORY[0x1E6974398]) deviceRef];
    globalTraceObjectID = self->_globalTraceObjectID;
    v7 = *MEMORY[0x1E69743A8];
    v8 = *(&self->super.super.super.isa + v7);
    [label cStringUsingEncoding:1];
    *(&self->super.super.super.isa + v7) = IOGPUDeviceTraceObjectLabel(deviceRef, 8, 0, globalTraceObjectID, v8);
  }
}

@end