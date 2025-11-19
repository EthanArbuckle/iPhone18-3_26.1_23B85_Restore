@interface SYMultiSuspendableQueue
@end

@implementation SYMultiSuspendableQueue

_DWORD *__64___SYMultiSuspendableQueue_initWithName_qosClass_serial_target___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = MEMORY[0x1E696AE40];
    v6 = [WeakRetained stateForLogging];
    v7 = [v6 dictionaryRepresentation];
    v13 = 0;
    v8 = [v5 dataWithPropertyList:v7 format:200 options:0 error:&v13];
    v9 = v13;

    if (!v8)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error while generating state: %@", v9];
      v8 = [v10 dataUsingEncoding:4];
    }

    v11 = malloc_type_calloc(1uLL, [v8 length] + 200, 0x1000040BEF03554uLL);
    *v11 = 1;
    v11[1] = [v8 length];
    __strlcpy_chk();
    [v8 getBytes:v11 + 50 length:{objc_msgSend(v8, "length")}];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v11;
}

@end