@interface COCoordinationServiceClientSet
- (COCoordinationServiceClientSet)init;
- (id)serviceClientForXPCConnection:(id)a3;
- (id)serviceClients;
- (void)_withLock:(id)a3;
- (void)addServiceClient:(id)a3;
- (void)removeServiceClient:(id)a3;
@end

@implementation COCoordinationServiceClientSet

- (COCoordinationServiceClientSet)init
{
  v6.receiver = self;
  v6.super_class = COCoordinationServiceClientSet;
  v2 = [(COCoordinationServiceClientSet *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clients = v2->_clients;
    v2->_clients = v3;
  }

  return v2;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)serviceClientForXPCConnection:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__22;
  v15 = __Block_byref_object_dispose__22;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__COCoordinationServiceClientSet_serviceClientForXPCConnection___block_invoke;
  v8[3] = &unk_278E15700;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(COCoordinationServiceClientSet *)self _withLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __64__COCoordinationServiceClientSet_serviceClientForXPCConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__COCoordinationServiceClientSet_serviceClientForXPCConnection___block_invoke_2;
  v5[3] = &unk_278E18428;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __64__COCoordinationServiceClientSet_serviceClientForXPCConnection___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 connection];
  v7 = [v6 isEqual:*(a1 + 32)];
  *a3 = v7;

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)serviceClients
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__22;
  v9 = __Block_byref_object_dispose__22;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__COCoordinationServiceClientSet_serviceClients__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COCoordinationServiceClientSet *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __48__COCoordinationServiceClientSet_serviceClients__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) clients];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addServiceClient:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__COCoordinationServiceClientSet_addServiceClient___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(COCoordinationServiceClientSet *)self _withLock:v6];
}

void __51__COCoordinationServiceClientSet_addServiceClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeServiceClient:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__COCoordinationServiceClientSet_removeServiceClient___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(COCoordinationServiceClientSet *)self _withLock:v6];
}

void __54__COCoordinationServiceClientSet_removeServiceClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  [v2 removeObject:*(a1 + 40)];
}

@end