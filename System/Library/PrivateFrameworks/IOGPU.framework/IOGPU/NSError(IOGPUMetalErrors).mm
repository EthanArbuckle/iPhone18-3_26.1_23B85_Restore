@interface NSError(IOGPUMetalErrors)
- (uint64_t)initWithIOGPUError:()IOGPUMetalErrors MTL4QueueError:;
@end

@implementation NSError(IOGPUMetalErrors)

- (uint64_t)initWithIOGPUError:()IOGPUMetalErrors MTL4QueueError:
{
  v6 = *MEMORY[0x1E6973F68];
  if (a3 > 0x12)
  {
    v7 = "Internal Error";
    v9 = 1;
    v8 = "Internal Error";
    if (!a4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = off_1E8362AD0[a3];
    v8 = off_1E8362B68[a3];
    v9 = qword_1CA0CCCE8[a3];
    if (!a4)
    {
      goto LABEL_15;
    }
  }

  v6 = *MEMORY[0x1E6973F58];
  if (v9 <= 0x10)
  {
    if (((1 << v9) & 0x10688) != 0)
    {
      v9 = 2;
      goto LABEL_15;
    }

    if (v9 == 4)
    {
      v9 = 5;
      goto LABEL_15;
    }

    if (v9 == 8)
    {
      v9 = 3;
      goto LABEL_15;
    }
  }

  if (v9 == 2)
  {
    v9 = 1;
  }

LABEL_15:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s (%08x:%s)", v8, a3, v7];
  v11 = MEMORY[0x1E695DF20];
  v12 = *MEMORY[0x1E696A578];
  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IOGPUCommandQueueErrorDomain" code:a3 userInfo:0];
  v14 = [v11 dictionaryWithObjectsAndKeys:{v10, v12, v13, *MEMORY[0x1E696AA08], 0}];
  if (a3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [NSError(IOGPUMetalErrors) initWithIOGPUError:v10 MTL4QueueError:?];
  }

  return [self initWithDomain:v6 code:v9 userInfo:v14];
}

- (void)initWithIOGPUError:()IOGPUMetalErrors MTL4QueueError:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "IOGPUMetalError: %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end