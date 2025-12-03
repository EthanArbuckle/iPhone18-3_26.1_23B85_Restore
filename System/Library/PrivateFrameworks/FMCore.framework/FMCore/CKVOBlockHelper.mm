@interface CKVOBlockHelper
- (CKVOBlockHelper)initWithObject:(id)object;
- (id)allKVOObservers;
- (id)debugDescription;
- (id)insertNewTokenForKeyPath:(id)path block:(id)block;
- (id)observedObject;
- (void)dealloc;
- (void)dump;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeHandlerForKey:(id)key;
@end

@implementation CKVOBlockHelper

- (CKVOBlockHelper)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = CKVOBlockHelper;
  v5 = [(CKVOBlockHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observedObject, objectCopy);
  }

  return v6;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  observedObject = [(CKVOBlockHelper *)self observedObject];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_tokensByContext allValues];
  v5 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        context = [v9 context];
        keypath = [v9 keypath];
        [observedObject removeObserver:self forKeyPath:keypath context:context];
      }

      v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  observedObject = [(CKVOBlockHelper *)self observedObject];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(CKVOBlockHelper *)self description];
  tokensByContext = [(CKVOBlockHelper *)self tokensByContext];
  v7 = [v4 stringWithFormat:@"%@ (%@, %@, %@)", v5, observedObject, tokensByContext, objc_msgSend(observedObject, "observationInfo")];

  return v7;
}

- (void)dump
{
  observedObject = [(CKVOBlockHelper *)self observedObject];
  puts("*******************************************************");
  v3 = [(CKVOBlockHelper *)self description];
  puts([v3 UTF8String]);

  printf("\tObserved Object: %p\n", observedObject);
  puts("\tKeys:");
  [(NSMutableDictionary *)self->_tokensByContext enumerateKeysAndObjectsUsingBlock:&__block_literal_global_4];
  v4 = observedObject;
  v5 = [objc_msgSend(observedObject "observationInfo")];
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

- (void)removeHandlerForKey:(id)key
{
  tokensByContext = self->_tokensByContext;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(key, "index")}];
  [(NSMutableDictionary *)tokensByContext removeObjectForKey:v5];

  if (![(NSMutableDictionary *)self->_tokensByContext count])
  {
    v6 = self->_tokensByContext;
    self->_tokensByContext = 0;
  }
}

- (id)insertNewTokenForKeyPath:(id)path block:(id)block
{
  blockCopy = block;
  pathCopy = path;
  v8 = [CKVOToken alloc];
  nextIdentifier = [(CKVOBlockHelper *)self nextIdentifier];
  [(CKVOBlockHelper *)self setNextIdentifier:nextIdentifier + 1];
  v10 = [(CKVOToken *)v8 initWithKeyPath:pathCopy index:nextIdentifier + 1 block:blockCopy];

  tokensByContext = self->_tokensByContext;
  if (!tokensByContext)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v13 = self->_tokensByContext;
    self->_tokensByContext = dictionary;

    tokensByContext = self->_tokensByContext;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CKVOToken index](v10, "index")}];
  [(NSMutableDictionary *)tokensByContext setObject:v10 forKeyedSubscript:v14];

  return v10;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:context];
  v14 = [(NSMutableDictionary *)self->_tokensByContext objectForKeyedSubscript:v13];
  v15 = v14;
  if (v14)
  {
    block = [v14 block];
    (*(block + 16))(block, pathCopy, objectCopy, changeCopy);
  }

  else
  {
    block = LogCategory_Unspecified();
    if (os_log_type_enabled(block, OS_LOG_TYPE_ERROR))
    {
      [(CKVOBlockHelper *)v13 observeValueForKeyPath:block ofObject:v17 change:v18 context:v19, v20, v21, v22];
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