@interface NSData(ISStoreIndex)
+ (id)_ISStoreIndex_mappedDataWithURL:()ISStoreIndex;
@end

@implementation NSData(ISStoreIndex)

+ (id)_ISStoreIndex_mappedDataWithURL:()ISStoreIndex
{
  path = [a3 path];
  v4 = open([path UTF8String], 0);
  if (v4 == -1)
  {
    v8 = _ISDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [NSData(ISStoreIndex) _ISStoreIndex_mappedDataWithURL:v8];
    }

    v9 = 0;
  }

  else
  {
    v5 = v4;
    v6 = lseek(v4, 0, 2);
    if (v6)
    {
      v7 = mmap(0, v6, 1, 1, v5, 0);
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
    v9 = 0;
    if (v7 && v6)
    {
      v10 = objc_alloc(MEMORY[0x1E695DEF0]);
      v9 = [v10 initWithBytesNoCopy:v7 length:v6 deallocator:*MEMORY[0x1E696A268]];
    }
  }

  return v9;
}

+ (void)_ISStoreIndex_mappedDataWithURL:()ISStoreIndex .cold.1(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_1A77B8000, a1, OS_LOG_TYPE_DEBUG, "Failed to open store index with errno: %d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

@end