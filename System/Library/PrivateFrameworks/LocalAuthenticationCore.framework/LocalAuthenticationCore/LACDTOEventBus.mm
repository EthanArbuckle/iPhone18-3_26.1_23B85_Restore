@interface LACDTOEventBus
- (LACDTOEventBus)init;
- (void)dispatchEvent:(id)a3 sender:(id)a4;
@end

@implementation LACDTOEventBus

- (LACDTOEventBus)init
{
  v6.receiver = self;
  v6.super_class = LACDTOEventBus;
  v2 = [(LACDTOEventBus *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    eventHandlers = v2->_eventHandlers;
    v2->_eventHandlers = v3;
  }

  return v2;
}

- (void)dispatchEvent:(id)a3 sender:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = LACLogDTOEvent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(LACDTOEventBus *)v6 dispatchEvent:v7 sender:v8];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(NSHashTable *)self->_eventHandlers allObjects];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (v14 != v7)
        {
          [v14 handleEvent:v6 sender:v7];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)dispatchEvent:(os_log_t)log sender:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1B0233000, log, OS_LOG_TYPE_DEBUG, "Will dispatch event: %@ from: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end