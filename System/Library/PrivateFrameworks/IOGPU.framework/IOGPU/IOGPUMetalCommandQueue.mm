@interface IOGPUMetalCommandQueue
- (BOOL)_setGPUPriority:(unint64_t)priority backgroundPriority:(unint64_t)backgroundPriority;
- (BOOL)setBackgroundGPUPriority:(unint64_t)priority;
- (BOOL)setBackgroundGPUPriority:(unint64_t)priority offset:(unsigned __int16)offset;
- (BOOL)setGPUPriority:(unint64_t)priority;
- (BOOL)setGPUPriority:(unint64_t)priority offset:(unsigned __int16)offset;
- (IOGPUMetalCommandQueue)initWithDevice:(id)device descriptor:(id)descriptor;
- (IOGPUMetalCommandQueue)initWithDevice:(id)device descriptor:(id)descriptor args:(IOGPUDeviceNewCommandQueueArgs *)args argsSize:(unsigned int)size;
- (void)_submitCommandBuffers:(id *)buffers count:(unint64_t)count;
- (void)dealloc;
- (void)dispatchAvailableCompletionNotifications;
- (void)setCompletionQueue:(id)queue;
- (void)setLabel:(id)label;
- (void)submitCommandBuffers:(id *)buffers count:(unint64_t)count;
@end

@implementation IOGPUMetalCommandQueue

- (void)dealloc
{
  resourceGroups = self->_resourceGroups;

  IOGPUCommandQueueRelease(self->_commandQueue);
  v4.receiver = self;
  v4.super_class = IOGPUMetalCommandQueue;
  [(_MTLCommandQueue *)&v4 dealloc];
}

- (IOGPUMetalCommandQueue)initWithDevice:(id)device descriptor:(id)descriptor args:(IOGPUDeviceNewCommandQueueArgs *)args argsSize:(unsigned int)size
{
  v33[2] = *MEMORY[0x1E69E9840];
  if (!args)
  {
    [IOGPUMetalCommandQueue initWithDevice:descriptor:args:argsSize:];
  }

  if (size <= 0x407)
  {
    [IOGPUMetalCommandQueue initWithDevice:descriptor:args:argsSize:];
  }

  v29.receiver = self;
  v29.super_class = IOGPUMetalCommandQueue;
  v10 = [_MTLCommandQueue initWithDevice:sel_initWithDevice_descriptor_ descriptor:?];
  if (v10)
  {
    *(v10 + 49) = device;
    bzero(args, 0x408uLL);
    x = 0;
    pid_for_task(*MEMORY[0x1E69E9A60], &x);
    proc_pidpath(x, args, 0x400u);
    v11 = MEMORY[0x1E6974300];
    args->var1 = *&v10[*MEMORY[0x1E6974308]];
    *&args->var2 = v10[*v11];
    v12 = IOGPUCommandQueueCreate([device deviceRef], args, size);
    *(v10 + 48) = v12;
    if (v12)
    {
      *(v10 + 110) = 0;
      disableAsyncCompletionDispatch = [descriptor disableAsyncCompletionDispatch];
      v10[400] = disableAsyncCompletionDispatch;
      if ((disableAsyncCompletionDispatch & 1) == 0)
      {
        v14 = *&v10[*MEMORY[0x1E69742E8]];
        if (!v14)
        {
          [IOGPUMetalCommandQueue initWithDevice:descriptor:args:argsSize:];
        }

        IOGPUCommandQueueSetDispatchQueue(*(v10 + 48), v14);
      }

      *(v10 + 51) = 1;
      *(v10 + 52) = 3;
      *&v10[*MEMORY[0x1E69742F0]] = IOGPUCommandQueueGetGlobalTraceObjectID(*(v10 + 48));
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      iterator = 0;
      if (!MEMORY[0x1CCA976B0]([device acceleratorPort], "IOService", 0, &iterator))
      {
        v26 = v15;
        v17 = IOIteratorNext(iterator);
        if (v17)
        {
          v18 = v17;
          do
          {
            v19 = objc_autoreleasePoolPush();
            CFProperty = IORegistryEntryCreateCFProperty(v18, @"CommandQueueCount", 0, 0);
            if (CFProperty)
            {
              v21 = CFProperty;
              v22 = IORegistryEntryCreateCFProperty(v18, @"IOUserClientCreator", 0, 0);
              if (v22)
              {
                v23 = v22;
                v32[0] = @"Count";
                v32[1] = @"Process";
                v33[0] = v21;
                v33[1] = v22;
                [v16 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v33, v32, 2)}];
              }
            }

            objc_autoreleasePoolPop(v19);
            IOObjectRelease(v18);
            v18 = IOIteratorNext(iterator);
          }

          while (v18);
        }

        IOObjectRelease(iterator);
      }

      [v16 sortUsingComparator:{&__block_literal_global, v26}];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v16;
        _os_log_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Command queue creation failed.  Worst processes %{public}@", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        [IOGPUMetalCommandQueue initWithDevice:v16 descriptor:? args:? argsSize:?];
      }

      objc_autoreleasePoolPop(v15);
      v10 = 0;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

- (IOGPUMetalCommandQueue)initWithDevice:(id)device descriptor:(id)descriptor
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, 512);
  result = [(IOGPUMetalCommandQueue *)self initWithDevice:device descriptor:descriptor args:v6 argsSize:1032];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setLabel:(id)label
{
  v9.receiver = self;
  v9.super_class = IOGPUMetalCommandQueue;
  [(_MTLCommandQueue *)&v9 setLabel:?];
  if (*__globalGPUCommPage)
  {
    deviceRef = [(MTLDevice *)self->_device deviceRef];
    v6 = *(&self->super.super.super.isa + *MEMORY[0x1E69742F0]);
    v7 = *MEMORY[0x1E69742F8];
    v8 = *(&self->super.super.super.isa + v7);
    [label cStringUsingEncoding:1];
    *(&self->super.super.super.isa + v7) = IOGPUDeviceTraceObjectLabel(deviceRef, 8, 0, v6, v8);
  }
}

- (void)setCompletionQueue:(id)queue
{
  if (!queue)
  {
    [IOGPUMetalCommandQueue setCompletionQueue:];
  }

  v5 = *MEMORY[0x1E69742E8];
  v6 = *(&self->super.super.super.isa + v5);
  if (v6)
  {
    dispatch_release(v6);
  }

  *(&self->super.super.super.isa + v5) = queue;
  dispatch_retain(queue);
  commandQueue = self->_commandQueue;
  v8 = *(&self->super.super.super.isa + v5);

  IOGPUCommandQueueSetDispatchQueue(commandQueue, v8);
}

- (BOOL)_setGPUPriority:(unint64_t)priority backgroundPriority:(unint64_t)backgroundPriority
{
  inputStruct[0] = priority;
  inputStruct[1] = backgroundPriority;
  inputStruct[2] = 0;
  v8 = 3;
  v6 = IOGPUCommandQueueSetPriorityAndBackground(self->_commandQueue, inputStruct, &v8);
  if (!v6)
  {
    self->_priority = v8;
    self->_backgroundPriority = backgroundPriority;
  }

  return v6 == 0;
}

- (BOOL)setGPUPriority:(unint64_t)priority
{
  validateGPUPriority(priority, 0);
  backgroundPriority = self->_backgroundPriority;

  return [(IOGPUMetalCommandQueue *)self _setGPUPriority:priority backgroundPriority:backgroundPriority];
}

- (BOOL)setGPUPriority:(unint64_t)priority offset:(unsigned __int16)offset
{
  validateGPUPriority(priority, 0);
  backgroundPriority = self->_backgroundPriority;

  return [(IOGPUMetalCommandQueue *)self _setGPUPriority:priority backgroundPriority:backgroundPriority];
}

- (BOOL)setBackgroundGPUPriority:(unint64_t)priority
{
  if (priority >= 6)
  {
    MTLReportFailure();
  }

  priority = self->_priority;

  return [(IOGPUMetalCommandQueue *)self _setGPUPriority:priority backgroundPriority:priority];
}

- (BOOL)setBackgroundGPUPriority:(unint64_t)priority offset:(unsigned __int16)offset
{
  if (priority >= 6)
  {
    MTLReportFailure();
  }

  priority = self->_priority;

  return [(IOGPUMetalCommandQueue *)self _setGPUPriority:priority backgroundPriority:priority];
}

- (void)submitCommandBuffers:(id *)buffers count:(unint64_t)count
{
  if (count)
  {
    v7 = 0;
    countCopy = count;
    do
    {
      v9 = countCopy - 32;
      if (countCopy >= 0x20)
      {
        v10 = 32;
      }

      else
      {
        v10 = countCopy;
      }

      [(IOGPUMetalCommandQueue *)self _submitCommandBuffers:buffers count:v10];
      v7 += 32;
      buffers += 32;
      countCopy = v9;
    }

    while (v7 < count);
  }
}

- (void)_submitCommandBuffers:(id *)buffers count:(unint64_t)count
{
  v28 = *MEMORY[0x1E69E9840];
  cmdBufArgsSize = [(MTLDevice *)self->_device cmdBufArgsSize];
  if (HIDWORD(count))
  {
    [IOGPUMetalCommandQueue _submitCommandBuffers:count:];
  }

  v27 = 0;
  v8 = cmdBufArgsSize;
  MEMORY[0x1EEE9AC00](cmdBufArgsSize, cmdBufArgsSize * count);
  v23 = &v22 - v9;
  bzero(&v22 - v9, v10);
  if (count)
  {
    v11 = v23;
    countCopy = count;
    do
    {
      v13 = *buffers;
      [*buffers fillCommandBufferArgs:v11 commandQueue:self];
      if ([v13 isProfilingEnabled])
      {
        [v13 kernelSubmitTime];
      }

      if (*__globalGPUCommPage)
      {
        [objc_msgSend(v13 "commandQueue")];
        [objc_msgSend(v13 "device")];
        [objc_msgSend(v13 "commandQueue")];
        [v13 globalTraceObjectID];
        IOGPUDeviceTraceEvent();
      }

      v11 += v8;
      ++buffers;
      --countCopy;
    }

    while (countCopy);
  }

  v14 = IOGPUCommandQueueSubmitCommandBuffers(self->_commandQueue, 0, count, v23, v8, &v27);
  if (v14)
  {
    if (v14 == 268435459)
    {
      v15 = 15;
    }

    else
    {
      v15 = 1;
    }

    if (v14 == -536870174)
    {
      v16 = 7;
    }

    else
    {
      v16 = v15;
    }

    if (count)
    {
      v17 = *MEMORY[0x1E69742E0];
      v18 = MEMORY[0x1E69E9820];
      v19 = (v23 + 16);
      do
      {
        v20 = *(&self->super.super.super.isa + v17);
        block[0] = v18;
        block[1] = 3221225472;
        block[2] = __54__IOGPUMetalCommandQueue__submitCommandBuffers_count___block_invoke;
        block[3] = &unk_1E83629C0;
        v25 = *v19;
        v26 = v16;
        dispatch_async(v20, block);
        v19 = (v19 + v8);
        --count;
      }

      while (count);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __54__IOGPUMetalCommandQueue__submitCommandBuffers_count___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 48);
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 32));
  v3 = *(a1 + 40);

  _Block_release(v3);
}

- (void)dispatchAvailableCompletionNotifications
{
  IOGPUCommandQueueDispatchAvailableCompletionNotifications(self->_commandQueue);
  [(IOGPUMetalDevice *)self->_device cancelPeriodicUpdateResourcePoolPurgeability];
  device = self->_device;

  [(IOGPUMetalDevice *)device updateResourcePoolPurgeability];
}

- (void)initWithDevice:(uint64_t)a1 descriptor:args:argsSize:.cold.2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Command queue creation failed.  Worst processes %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end