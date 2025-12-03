@interface MCStateHandler
+ (void)addStateHandlerWithName:(const char *)name stateBlock:(id)block;
@end

@implementation MCStateHandler

+ (void)addStateHandlerWithName:(const char *)name stateBlock:(id)block
{
  v12 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v6 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    nameCopy = name;
    _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_DEBUG, "Adding os_state handler: %{public}s", buf, 0xCu);
  }

  v7 = dispatch_get_global_queue(0, 0);
  v8 = blockCopy;
  os_state_add_handler();

  v9 = *MEMORY[0x1E69E9840];
}

_DWORD *__53__MCStateHandler_addStateHandlerWithName_stateBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16) == 3)
  {
    v3 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 40);
      *buf = 136446210;
      v19 = v4;
      _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_DEBUG, "Processing os_state handler: %{public}s", buf, 0xCu);
    }

    v5 = (*(*(a1 + 32) + 16))();
    v17 = 0;
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:&v17];
    v7 = v17;
    v8 = [v6 length];
    if (v7)
    {
      v9 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 40);
        *buf = 136446466;
        v19 = v10;
        v20 = 2114;
        v21 = v7;
        _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "Error serializing state data for %{public}s: %{public}@", buf, 0x16u);
      }

      v11 = 0;
    }

    else
    {
      v12 = v8;
      v13 = v8;
      v11 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
      *v11 = 1;
      v11[1] = v12;
      v14 = *(a1 + 40);
      __strlcpy_chk();
      memcpy(v11 + 50, [v6 bytes], v13);
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

@end