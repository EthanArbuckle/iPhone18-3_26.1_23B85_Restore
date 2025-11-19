@interface MGServiceClientSet
- (MGServiceClientSet)init;
- (id)serviceClientForXPCConnection:(id)a3;
- (void)addClientService:(id)a3;
- (void)enumerateClientsUsingBlock:(id)a3;
- (void)removeClientService:(id)a3;
@end

@implementation MGServiceClientSet

- (MGServiceClientSet)init
{
  v7.receiver = self;
  v7.super_class = MGServiceClientSet;
  v2 = [(MGServiceClientSet *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CCAB00]);
    clients = v3->_clients;
    v3->_clients = v4;
  }

  return v3;
}

- (id)serviceClientForXPCConnection:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__MGServiceClientSet_serviceClientForXPCConnection___block_invoke;
  v8[3] = &unk_27989EEF8;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(MGServiceClient *)self _withLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __52__MGServiceClientSet_serviceClientForXPCConnection___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) clients];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addClientService:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__MGServiceClientSet_addClientService___block_invoke;
  v6[3] = &unk_27989EE80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MGServiceClient *)self _withLock:v6];
}

void __39__MGServiceClientSet_addClientService___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) clients];
  v2 = *(a1 + 40);
  v3 = [v2 connection];
  [v4 setObject:v2 forKey:v3];
}

- (void)removeClientService:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__MGServiceClientSet_removeClientService___block_invoke;
  v6[3] = &unk_27989EE80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MGServiceClient *)self _withLock:v6];
}

void __42__MGServiceClientSet_removeClientService___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) clients];
  v2 = [*(a1 + 40) connection];
  [v3 removeObjectForKey:v2];
}

- (void)enumerateClientsUsingBlock:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = MEMORY[0x277CBEBF8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__MGServiceClientSet_enumerateClientsUsingBlock___block_invoke;
  v9[3] = &unk_27989EFC0;
  v9[4] = self;
  v9[5] = &v10;
  [(MGServiceClient *)self _withLock:v9];
  v5 = v11[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__MGServiceClientSet_enumerateClientsUsingBlock___block_invoke_2;
  v7[3] = &unk_27989F9B8;
  v6 = v4;
  v8 = v6;
  [v5 enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(&v10, 8);
}

void __49__MGServiceClientSet_enumerateClientsUsingBlock___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) clients];
  v2 = [v6 objectEnumerator];
  v3 = [v2 allObjects];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end