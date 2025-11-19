@interface NSData(ISMutableStoreIndex)
+ (id)_ISMutableStoreIndex_mappedDataWithURL:()ISMutableStoreIndex;
- (uint64_t)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex;
@end

@implementation NSData(ISMutableStoreIndex)

+ (id)_ISMutableStoreIndex_mappedDataWithURL:()ISMutableStoreIndex
{
  v3 = [a3 path];
  v4 = open_dprotected_np([v3 UTF8String], 2, 4, 0, 384);
  if (v4 == -1)
  {
    v8 = 0;
  }

  else
  {
    v5 = v4;
    v6 = lseek(v4, 0, 2);
    if (v6)
    {
      v7 = mmap(0, v6, 3, 1, v5, 0);
      if (v7 == -1)
      {
        v6 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    close(v5);
    v8 = 0;
    if (v7 && v6)
    {
      v9 = objc_alloc(MEMORY[0x1E695DEF0]);
      v8 = [v9 initWithBytesNoCopy:v7 length:v6 deallocator:*MEMORY[0x1E696A268]];
    }
  }

  return v8;
}

- (uint64_t)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex
{
  v4 = a3;
  v5 = [v4 path];
  v6 = [v5 stringByAppendingPathExtension:@"tmp"];

  v7 = [a1 length];
  v8 = [a1 bytes];
  v9 = open_dprotected_np([v6 UTF8String], 1538, 4, 0, 420);
  if (v9 == -1)
  {
    v14 = _ISDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [NSData(ISMutableStoreIndex) _ISMutableStoreIndex_makeBackedByFileAtURL:];
    }

    goto LABEL_14;
  }

  v10 = v9;
  if (lseek(v9, v7 - 1, 0) != v7 - 1 || write(v10, "", 1uLL) == -1)
  {
    v13 = _ISDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [NSData(ISMutableStoreIndex) _ISMutableStoreIndex_makeBackedByFileAtURL:];
    }

    goto LABEL_10;
  }

  v11 = mmap(0, v7, 3, 1, v10, 0);
  if (v11)
  {
    v12 = v11;
    if (v11 == -1)
    {
      v13 = _ISDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [NSData(ISMutableStoreIndex) _ISMutableStoreIndex_makeBackedByFileAtURL:];
      }

LABEL_10:

      goto LABEL_11;
    }

    v17 = vm_copy(*MEMORY[0x1E69E9A60], v8, v7, v11);
    if (v17)
    {
      v18 = v17;
      v19 = _ISDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [(NSData(ISMutableStoreIndex) *)v18 _ISMutableStoreIndex_makeBackedByFileAtURL:v19];
      }

LABEL_23:

      munmap(v12, v7);
      goto LABEL_11;
    }

    if (mmap(v8, v7, 3, 17, v10, 0) != v8)
    {
      v19 = _ISDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [(NSData(ISMutableStoreIndex) *)v6 _ISMutableStoreIndex_makeBackedByFileAtURL:v19];
      }

      goto LABEL_23;
    }

    munmap(v12, v7);
    close(v10);
    v20 = [v6 UTF8String];
    v21 = [v4 path];
    v22 = [v21 UTF8String];
    rename(v20, v22, v23);
    LODWORD(v20) = v24;

    if (v20 != -1)
    {
      v15 = 1;
      goto LABEL_16;
    }

    v14 = _ISDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(NSData(ISMutableStoreIndex) *)v6 _ISMutableStoreIndex_makeBackedByFileAtURL:v4];
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_11:
  close(v10);
LABEL_15:
  v15 = 0;
LABEL_16:

  return v15;
}

- (void)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex .cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex .cold.2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "vm_copy failed: %x", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Failed to remap the index buffer to: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex .cold.4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a2 path];
  v3 = *__error();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x1Cu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex .cold.5()
{
  OUTLINED_FUNCTION_1();
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_ISMutableStoreIndex_makeBackedByFileAtURL:()ISMutableStoreIndex .cold.6()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

@end