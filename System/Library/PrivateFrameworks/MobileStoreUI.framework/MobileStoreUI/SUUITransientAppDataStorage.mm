@interface SUUITransientAppDataStorage
- (SUUITransientAppDataStorage)init;
- (id)getDataForKey:(id)a3;
- (id)keyAtIndex:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)setData:(id)a3 forKey:(id)a4;
- (void)clear;
- (void)removeDataForKey:(id)a3;
@end

@implementation SUUITransientAppDataStorage

- (SUUITransientAppDataStorage)init
{
  v6.receiver = self;
  v6.super_class = SUUITransientAppDataStorage;
  v2 = [(SUUITransientAppDataStorage *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("SUUITransientAppDataStorage.accessQueue", MEMORY[0x277D85CD8]);
    [(SUUITransientAppDataStorage *)v2 setAccessQueue:v3];

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(SUUITransientAppDataStorage *)v2 setStorage:v4];
  }

  return v2;
}

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(SUUITransientAppDataStorage *)self accessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SUUITransientAppDataStorage_count__block_invoke;
  v6[3] = &unk_2798F5B48;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __36__SUUITransientAppDataStorage_count__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (id)keyAtIndex:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v5 = [(SUUITransientAppDataStorage *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUUITransientAppDataStorage_keyAtIndex___block_invoke;
  block[3] = &unk_2798F5B70;
  block[4] = self;
  block[5] = &v9;
  block[6] = a3;
  dispatch_sync(v5, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __42__SUUITransientAppDataStorage_keyAtIndex___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) storage];
  v2 = [v6 allKeys];
  v3 = [v2 objectAtIndexedSubscript:*(a1 + 48)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)getDataForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = [(SUUITransientAppDataStorage *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUUITransientAppDataStorage_getDataForKey___block_invoke;
  block[3] = &unk_2798F5B98;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__SUUITransientAppDataStorage_getDataForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) storage];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)setData:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUUITransientAppDataStorage *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUUITransientAppDataStorage_setData_forKey___block_invoke;
  block[3] = &unk_2798F5BC0;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_sync(v8, block);

  return 0;
}

void __46__SUUITransientAppDataStorage_setData_forKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) storage];
  v4 = *(a1 + 48);
  v5 = v3;
  if (v2)
  {
    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  else
  {
    [v3 removeObjectForKey:v4];
  }
}

- (void)removeDataForKey:(id)a3
{
  v4 = a3;
  v5 = [(SUUITransientAppDataStorage *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SUUITransientAppDataStorage_removeDataForKey___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

void __48__SUUITransientAppDataStorage_removeDataForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)clear
{
  v3 = [(SUUITransientAppDataStorage *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SUUITransientAppDataStorage_clear__block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_barrier_sync(v3, block);
}

void __36__SUUITransientAppDataStorage_clear__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) storage];
  [v1 removeAllObjects];
}

@end