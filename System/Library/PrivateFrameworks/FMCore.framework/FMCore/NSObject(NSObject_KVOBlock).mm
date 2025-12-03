@interface NSObject(NSObject_KVOBlock)
- (id)addKVOBlockForKeyPath:()NSObject_KVOBlock options:handler:;
- (id)addOneShotKVOBlockForKeyPath:()NSObject_KVOBlock options:handler:;
- (id)allKVOObservers;
- (void)removeKVOBlockForToken:()NSObject_KVOBlock;
@end

@implementation NSObject(NSObject_KVOBlock)

- (id)addKVOBlockForKeyPath:()NSObject_KVOBlock options:handler:
{
  v8 = a5;
  v9 = a3;
  v10 = KVOBlockHelperForObject(self, 1);
  v11 = [v10 insertNewTokenForKeyPath:v9 block:v8];

  [self addObserver:v10 forKeyPath:v9 options:a4 context:{objc_msgSend(v11, "context")}];

  return v11;
}

- (void)removeKVOBlockForToken:()NSObject_KVOBlock
{
  v4 = a3;
  v5 = KVOBlockHelperForObject(self, 0);
  context = [v4 context];
  if (context)
  {
    v7 = context;
    keypath = [v4 keypath];
    if ([keypath length])
    {
      [self removeObserver:v5 forKeyPath:keypath context:v7];
      [v5 removeHandlerForKey:v4];
    }

    else
    {
      v15 = LogCategory_Unspecified();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(NSObject(NSObject_KVOBlock) *)v4 removeKVOBlockForToken:v15, v16, v17, v18, v19, v20, v21];
      }
    }
  }

  else
  {
    keypath = LogCategory_Unspecified();
    if (os_log_type_enabled(keypath, OS_LOG_TYPE_ERROR))
    {
      [(NSObject(NSObject_KVOBlock) *)v4 removeKVOBlockForToken:keypath, v9, v10, v11, v12, v13, v14];
    }
  }
}

- (id)allKVOObservers
{
  v1 = KVOBlockHelperForObject(self, 0);
  allKVOObservers = [v1 allKVOObservers];

  return allKVOObservers;
}

- (id)addOneShotKVOBlockForKeyPath:()NSObject_KVOBlock options:handler:
{
  v8 = a3;
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4;
  v23 = __Block_byref_object_dispose__4;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__NSObject_NSObject_KVOBlock__addOneShotKVOBlockForKeyPath_options_handler___block_invoke;
  v16[3] = &unk_278FD9BC8;
  v10 = v9;
  v16[4] = self;
  v17 = v10;
  v18 = &v19;
  v11 = MEMORY[0x24C215A50](v16);
  v12 = [self addKVOBlockForKeyPath:v8 options:a4 handler:v11];
  v13 = v20[5];
  v20[5] = v12;

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v14;
}

- (void)removeKVOBlockForToken:()NSObject_KVOBlock .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3(&dword_24A2EE000, a2, a3, "No keyPath in removeKVOBlockForToken: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeKVOBlockForToken:()NSObject_KVOBlock .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3(&dword_24A2EE000, a2, a3, "No context in removeKVOBlockForToken: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end