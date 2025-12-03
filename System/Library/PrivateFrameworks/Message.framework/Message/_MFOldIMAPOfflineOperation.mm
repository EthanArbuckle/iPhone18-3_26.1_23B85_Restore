@interface _MFOldIMAPOfflineOperation
+ (id)_createStringFromData:(id)data cursor:(unint64_t *)cursor;
+ (id)deserializedCopyFromData:(id)data cursor:(unint64_t *)cursor;
@end

@implementation _MFOldIMAPOfflineOperation

+ (id)deserializedCopyFromData:(id)data cursor:(unint64_t *)cursor
{
  dataCopy = data;
  v13 = 0;
  v12 = -86;
  [dataCopy getBytes:&v13 range:{(*cursor)++, 1}];
  [dataCopy getBytes:&v12 range:?];
  ++*cursor;
  if (v13)
  {
    p_super = EDLibraryLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [_MFOldIMAPOfflineOperation deserializedCopyFromData:p_super cursor:?];
    }

    goto LABEL_10;
  }

  v8 = v12 & 7;
  if ((v8 - 1) > 1)
  {
    p_super = EDLibraryLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [(_MFOldIMAPOfflineOperation *)&v12 deserializedCopyFromData:cursor cursor:p_super];
    }

    goto LABEL_10;
  }

  v9 = objc_alloc_init(_MFOldIMAPOfflineOperation);
  [(_MFOldIMAPOfflineOperation *)v9 setOperationType:v8];
  if (v9)
  {
    p_super = [self _createStringFromData:dataCopy cursor:cursor];
    if (p_super)
    {
      [(_MFOldIMAPOfflineOperation *)v9 setMailboxName:p_super];
LABEL_11:

      goto LABEL_12;
    }

    v11 = EDLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_MFOldIMAPOfflineOperation deserializedCopyFromData:v11 cursor:?];
    }

    p_super = &v9->super;
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

LABEL_12:

  return v9;
}

+ (id)_createStringFromData:(id)data cursor:(unint64_t *)cursor
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v7 = *cursor;
  bytes2 = [dataCopy bytes];
  v9 = (bytes + v7);
  v10 = bytes2 + [dataCopy length];
  if (v9 >= v10)
  {
LABEL_5:
    v13 = [dataCopy length];
    v14 = 0;
  }

  else
  {
    v11 = 1;
    v12 = v9;
    while (*v12)
    {
      ++v12;
      ++v11;
      if (v12 >= v10)
      {
        goto LABEL_5;
      }
    }

    if (v12 <= v9)
    {
      v14 = 0;
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v9];
    }

    v13 = *cursor + v11;
  }

  *cursor = v13;

  return v14;
}

+ (void)deserializedCopyFromData:(unsigned __int8 *)a1 cursor:(NSObject *)a2 .cold.1(unsigned __int8 *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Unexpected type while unarchiving offline cache operation: %d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)deserializedCopyFromData:(os_log_t)log cursor:.cold.2(unsigned __int8 *a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v6[0] = 67109376;
  v6[1] = v3;
  v7 = 2048;
  v8 = v4;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Unexpected operationType while unarchiving offline cache %u at position %lu", v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

@end