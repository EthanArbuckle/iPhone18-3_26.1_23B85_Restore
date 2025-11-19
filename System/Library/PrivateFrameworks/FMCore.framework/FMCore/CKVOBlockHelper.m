@interface CKVOBlockHelper
- (CKVOBlockHelper)initWithObject:(id)a3;
- (id)allKVOObservers;
- (id)debugDescription;
- (id)insertNewTokenForKeyPath:(id)a3 block:(id)a4;
- (id)observedObject;
- (void)dealloc;
- (void)dump;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeHandlerForKey:(id)a3;
@end

@implementation CKVOBlockHelper

- (CKVOBlockHelper)initWithObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKVOBlockHelper;
  v5 = [(CKVOBlockHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observedObject, v4);
  }

  return v6;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(CKVOBlockHelper *)self observedObject];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(NSMutableDictionary *)self->_tokensByContext allValues];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 context];
        v11 = [v9 keypath];
        [v3 removeObserver:self forKeyPath:v11 context:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13.receiver = self;
  v13.super_class = CKVOBlockHelper;
  [(CKVOBlockHelper *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)debugDescription
{
  v3 = [(CKVOBlockHelper *)self observedObject];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(CKVOBlockHelper *)self description];
  v6 = [(CKVOBlockHelper *)self tokensByContext];
  v7 = [v4 stringWithFormat:@"%@ (%@, %@, %@)", v5, v3, v6, objc_msgSend(v3, "observationInfo")];

  return v7;
}

- (void)dump
{
  v6 = [(CKVOBlockHelper *)self observedObject];
  puts("*******************************************************");
  v3 = [(CKVOBlockHelper *)self description];
  puts([v3 UTF8String]);

  printf("\tObserved Object: %p\n", v6);
  puts("\tKeys:");
  [(NSMutableDictionary *)self->_tokensByContext enumerateKeysAndObjectsUsingBlock:&__block_literal_global_4];
  v4 = v6;
  v5 = [objc_msgSend(v6 "observationInfo")];
  printf("\tObservationInfo: %s\n", [v5 UTF8String]);
}

void __23__CKVOBlockHelper_dump__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 description];
  v2 = v3;
  printf("\t\t%s\n", [v3 UTF8String]);
}

- (id)allKVOObservers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  tokensByContext = self->_tokensByContext;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__CKVOBlockHelper_allKVOObservers__block_invoke;
  v7[3] = &unk_278FD9C10;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)tokensByContext enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)removeHandlerForKey:(id)a3
{
  tokensByContext = self->_tokensByContext;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "index")}];
  [(NSMutableDictionary *)tokensByContext removeObjectForKey:v5];

  if (![(NSMutableDictionary *)self->_tokensByContext count])
  {
    v6 = self->_tokensByContext;
    self->_tokensByContext = 0;
  }
}

- (id)insertNewTokenForKeyPath:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CKVOToken alloc];
  v9 = [(CKVOBlockHelper *)self nextIdentifier];
  [(CKVOBlockHelper *)self setNextIdentifier:v9 + 1];
  v10 = [(CKVOToken *)v8 initWithKeyPath:v7 index:v9 + 1 block:v6];

  tokensByContext = self->_tokensByContext;
  if (!tokensByContext)
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    v13 = self->_tokensByContext;
    self->_tokensByContext = v12;

    tokensByContext = self->_tokensByContext;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CKVOToken index](v10, "index")}];
  [(NSMutableDictionary *)tokensByContext setObject:v10 forKeyedSubscript:v14];

  return v10;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  v14 = [(NSMutableDictionary *)self->_tokensByContext objectForKeyedSubscript:v13];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 block];
    (*(v16 + 16))(v16, v10, v11, v12);
  }

  else
  {
    v16 = LogCategory_Unspecified();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CKVOBlockHelper *)v13 observeValueForKeyPath:v16 ofObject:v17 change:v18 context:v19, v20, v21, v22];
    }
  }
}

- (id)observedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_observedObject);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(uint64_t)a3 ofObject:(uint64_t)a4 change:(uint64_t)a5 context:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3(&dword_24A2EE000, a2, a3, "Warning: Could not find block for key: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end