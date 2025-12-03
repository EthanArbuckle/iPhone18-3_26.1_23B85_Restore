@interface SUUISettingValueStore
- (BOOL)hasChanges;
- (SUUISettingValueStore)init;
- (id)modifiedKeys;
- (id)originalValueForKey:(id)key;
- (id)resolvedValueForKey:(id)key;
- (id)valueForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (id)valueForUndefinedKey:(id)key;
- (void)clearValueForKey:(id)key;
- (void)commitChanges;
- (void)discardChanges;
- (void)setModifiedValue:(id)value forKey:(id)key;
- (void)setOriginalValue:(id)value forKey:(id)key;
- (void)setValue:(id)value forKey:(id)key;
- (void)setValue:(id)value forKeyPath:(id)path;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation SUUISettingValueStore

- (SUUISettingValueStore)init
{
  v6.receiver = self;
  v6.super_class = SUUISettingValueStore;
  v2 = [(SUUISettingValueStore *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUISettingValueStore", 0);
    mutexQueue = v2->_mutexQueue;
    v2->_mutexQueue = v3;
  }

  return v2;
}

- (void)clearValueForKey:(id)key
{
  keyCopy = key;
  mutexQueue = self->_mutexQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUUISettingValueStore_clearValueForKey___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_sync(mutexQueue, v7);
}

void *__42__SUUISettingValueStore_clearValueForKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    [v3 removeObjectForKey:*(a1 + 40)];
    v2 = *(a1 + 32);
  }

  result = *(v2 + 24);
  if (result)
  {
    v5 = *(a1 + 40);

    return [result removeObjectForKey:v5];
  }

  return result;
}

- (void)commitChanges
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SUUISettingValueStore_commitChanges__block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

void __38__SUUISettingValueStore_commitChanges__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {
    if (!*(v2 + 16))
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v5 = *(a1 + 32);
      v6 = *(v5 + 16);
      *(v5 + 16) = v4;

      v2 = *(a1 + 32);
      v3 = *(v2 + 24);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__SUUISettingValueStore_commitChanges__block_invoke_2;
    v9[3] = &unk_2798FD250;
    v9[4] = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v9];
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = 0;
  }
}

- (void)discardChanges
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SUUISettingValueStore_discardChanges__block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

void __39__SUUISettingValueStore_discardChanges__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (BOOL)hasChanges
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__SUUISettingValueStore_hasChanges__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)modifiedKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__86;
  v10 = __Block_byref_object_dispose__86;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__SUUISettingValueStore_modifiedKeys__block_invoke;
  v5[3] = &unk_2798FD278;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void *__37__SUUISettingValueStore_modifiedKeys__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    v3 = [result allKeys];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8](v3, v5);
  }

  return result;
}

- (id)originalValueForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__86;
  v16 = __Block_byref_object_dispose__86;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUUISettingValueStore_originalValueForKey___block_invoke;
  block[3] = &unk_2798FD2A0;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(mutexQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void *__45__SUUISettingValueStore_originalValueForKey___block_invoke(void *a1)
{
  result = *(a1[4] + 16);
  if (result)
  {
    v3 = [result objectForKey:a1[5]];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8](v3, v5);
  }

  return result;
}

- (id)resolvedValueForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__86;
  v16 = __Block_byref_object_dispose__86;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUUISettingValueStore_resolvedValueForKey___block_invoke;
  block[3] = &unk_2798FD2A0;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(mutexQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__SUUISettingValueStore_resolvedValueForKey___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  if (v2)
  {
    v3 = [v2 objectForKey:a1[5]];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  if (!*(*(a1[6] + 8) + 40))
  {
    v6 = *(a1[4] + 16);
    if (v6)
    {
      v7 = [v6 objectForKey:a1[5]];
      v8 = *(a1[6] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      MEMORY[0x2821F96F8](v7, v9);
    }
  }
}

- (void)setModifiedValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUUISettingValueStore_setModifiedValue_forKey___block_invoke;
  block[3] = &unk_2798F5BC0;
  block[4] = self;
  v12 = valueCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = valueCopy;
  dispatch_sync(mutexQueue, block);
}

uint64_t __49__SUUISettingValueStore_setModifiedValue_forKey___block_invoke(void *a1)
{
  if (!*(a1[4] + 24))
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = a1[4];
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;
  }

  v5 = *(a1[4] + 24);
  v6 = a1[6];
  if (a1[5])
  {

    return [v5 setObject:? forKey:?];
  }

  else
  {
    v8 = a1[6];

    return [v5 removeObjectForKey:{v8, v6}];
  }
}

- (void)setOriginalValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUUISettingValueStore_setOriginalValue_forKey___block_invoke;
  block[3] = &unk_2798F5BC0;
  block[4] = self;
  v12 = valueCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = valueCopy;
  dispatch_sync(mutexQueue, block);
}

uint64_t __49__SUUISettingValueStore_setOriginalValue_forKey___block_invoke(void *a1)
{
  if (!*(a1[4] + 16))
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = a1[4];
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;
  }

  v5 = *(a1[4] + 16);
  v6 = a1[6];
  if (a1[5])
  {

    return [v5 setObject:? forKey:?];
  }

  else
  {
    v8 = a1[6];

    return [v5 removeObjectForKey:{v8, v6}];
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SUUISettingValueStore.m" lineNumber:146 description:@"setValue:forKey: is unimplemented. Use setOriginalValue:forKey: or setModifiedValue:forKey: instead."];
}

- (void)setValue:(id)value forKeyPath:(id)path
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SUUISettingValueStore.m" lineNumber:150 description:@"setValue:forKeyPath: is unimplemented. Use setOriginalValue:forKey: or setModifiedValue:forKey: instead."];
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SUUISettingValueStore.m" lineNumber:154 description:@"setValue:forUndefinedKey: is unimplemented. Use setOriginalValue:forKey: or setModifiedValue:forKey: instead."];
}

- (id)valueForKey:(id)key
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SUUISettingValueStore.m" lineNumber:158 description:@"valueForKey: is unimplemented. Use resolvedValueForKey: instead."];

  return 0;
}

- (id)valueForKeyPath:(id)path
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SUUISettingValueStore.m" lineNumber:163 description:@"valueForKeyPath: is unimplemented. Use resolvedValueForKey: instead."];

  return 0;
}

- (id)valueForUndefinedKey:(id)key
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SUUISettingValueStore.m" lineNumber:168 description:@"valueForUndefinedKey: is unimplemented. Use resolvedValueForKey: instead."];

  return 0;
}

@end