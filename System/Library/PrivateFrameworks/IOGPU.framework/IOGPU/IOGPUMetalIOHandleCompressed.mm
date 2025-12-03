@interface IOGPUMetalIOHandleCompressed
- (IOGPUMetalIOHandleCompressed)initWithDevice:(id)device path:(const char *)path compressionType:(int64_t)type error:(id *)error uncached:(BOOL)uncached;
- (void)dealloc;
- (void)setLabel:(id)label;
@end

@implementation IOGPUMetalIOHandleCompressed

- (IOGPUMetalIOHandleCompressed)initWithDevice:(id)device path:(const char *)path compressionType:(int64_t)type error:(id *)error uncached:(BOOL)uncached
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = IOGPUMetalIOHandleCompressed;
  v9 = [_MTLIOHandleCompressed initWithDevice:sel_initWithDevice_path_compressionType_error_uncached_ path:? compressionType:? error:? uncached:?];
  if (v9)
  {
    deviceCopy = device;
    v9->_dev = deviceCopy;
    deviceRef = [(MTLDevice *)deviceCopy deviceRef];
    if (IOGPUDeviceCreateVNIODesc(deviceRef, *(&v9->super.super.super.isa + *MEMORY[0x1E6974388]), &v9->_vnioID, &v9->_globalTraceObjectID))
    {
      if (error)
      {
        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        v13 = *MEMORY[0x1E6973F90];
        v17 = *MEMORY[0x1E696A578];
        v18[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Internal Error"];
        *error = [v12 initWithDomain:v13 code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v18, &v17, 1)}];
      }

      v9 = 0;
    }

    else if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceObjectLabel([(MTLDevice *)v9->_dev deviceRef], 8, 26, v9->_globalTraceObjectID, 0);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)dealloc
{
  if (self->_vnioID)
  {
    IOGPUDeviceDestroyVNIODesc([(MTLDevice *)self->_dev deviceRef], self->_vnioID);
  }

  self->_dev = 0;
  v3.receiver = self;
  v3.super_class = IOGPUMetalIOHandleCompressed;
  [(_MTLIOHandleCompressed *)&v3 dealloc];
}

- (void)setLabel:(id)label
{
  v9.receiver = self;
  v9.super_class = IOGPUMetalIOHandleCompressed;
  [(_MTLObjectWithLabel *)&v9 setLabel:?];
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.isa + *MEMORY[0x1E6974380]) deviceRef];
    globalTraceObjectID = self->_globalTraceObjectID;
    v7 = *MEMORY[0x1E6974390];
    v8 = *(&self->super.super.super.isa + v7);
    [label cStringUsingEncoding:1];
    *(&self->super.super.super.isa + v7) = IOGPUDeviceTraceObjectLabel(deviceRef, 8, 0, globalTraceObjectID, v8);
  }
}

@end