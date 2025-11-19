@interface KGDegasAllInMemoryGraphStore
- (BOOL)addEdges:(id)a3 error:(id *)a4;
- (BOOL)addNodes:(id)a3 error:(id *)a4;
- (BOOL)beginTransactionWithError:(id *)a3;
- (BOOL)commitTransactionWithError:(id *)a3;
- (BOOL)openWithMode:(unint64_t)a3 error:(id *)a4;
- (BOOL)rollbackTransactionWithError:(id *)a3;
- (BOOL)updateEdgeForIdentifier:(unint64_t)a3 withProperties:(id)a4 error:(id *)a5;
- (BOOL)updateNodeForIdentifier:(unint64_t)a3 withProperties:(id)a4 error:(id *)a5;
- (KGDegasAllInMemoryGraphStore)initWithURL:(id)a3;
- (void)enumerateModelEdgesWithBlock:(id)a3;
- (void)enumerateModelNodesWithBlock:(id)a3;
@end

@implementation KGDegasAllInMemoryGraphStore

- (BOOL)addEdges:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = KGDegasAllInMemoryGraphStore;
  if ([(KGMemoryGraphStore *)&v9 addEdges:v6 error:a4])
  {
    v7 = [(KGDatabase *)self->_database addEdges:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)addNodes:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = KGDegasAllInMemoryGraphStore;
  if ([(KGMemoryGraphStore *)&v9 addNodes:v6 error:a4])
  {
    v7 = [(KGDatabase *)self->_database addNodes:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)updateEdgeForIdentifier:(unint64_t)a3 withProperties:(id)a4 error:(id *)a5
{
  v8 = a4;
  if ([(KGDatabase *)self->_database setEdgeProperties:v8 forIdentifier:a3 error:a5])
  {
    v11.receiver = self;
    v11.super_class = KGDegasAllInMemoryGraphStore;
    v9 = [(KGMemoryGraphStore *)&v11 updateEdgeForIdentifier:a3 withProperties:v8 error:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)updateNodeForIdentifier:(unint64_t)a3 withProperties:(id)a4 error:(id *)a5
{
  v8 = a4;
  if ([(KGDatabase *)self->_database setNodeProperties:v8 forIdentifier:a3 error:a5])
  {
    v11.receiver = self;
    v11.super_class = KGDegasAllInMemoryGraphStore;
    v9 = [(KGMemoryGraphStore *)&v11 updateNodeForIdentifier:a3 withProperties:v8 error:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)enumerateModelEdgesWithBlock:(id)a3
{
  v4 = a3;
  database = self->_database;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__KGDegasAllInMemoryGraphStore_enumerateModelEdgesWithBlock___block_invoke;
  v7[3] = &unk_2797FEBA8;
  v8 = v4;
  v6 = v4;
  [(KGDatabase *)database enumerateEdgesWithIdentifiers:0 block:v7];
}

- (void)enumerateModelNodesWithBlock:(id)a3
{
  v4 = a3;
  database = self->_database;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__KGDegasAllInMemoryGraphStore_enumerateModelNodesWithBlock___block_invoke;
  v7[3] = &unk_2797FEB80;
  v8 = v4;
  v6 = v4;
  [(KGDatabase *)database enumerateNodesWithIdentifiers:0 block:v7];
}

- (BOOL)rollbackTransactionWithError:(id *)a3
{
  v5 = self->_transactionCounter - 1;
  self->_transactionCounter = v5;
  if (v5)
  {
    v6 = KGLoggingConnection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_255870000, v6, OS_LOG_TYPE_FAULT, "graph database transaction rollback called at non-root level!", v8, 2u);
    }
  }

  return [(KGDatabase *)self->_database rollbackTransactionWithError:a3];
}

- (BOOL)commitTransactionWithError:(id *)a3
{
  v3 = self->_transactionCounter - 1;
  self->_transactionCounter = v3;
  return v3 || [(KGDatabase *)self->_database commitTransactionWithError:a3];
}

- (BOOL)beginTransactionWithError:(id *)a3
{
  transactionCounter = self->_transactionCounter;
  if (transactionCounter)
  {
    result = 1;
  }

  else
  {
    result = [(KGDatabase *)self->_database beginTransactionWithError:a3];
    transactionCounter = self->_transactionCounter;
  }

  self->_transactionCounter = transactionCounter + 1;
  return result;
}

- (BOOL)openWithMode:(unint64_t)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = [[KGDatabase alloc] initWithURL:self->_url];
  database = self->_database;
  self->_database = v7;

  v9 = [(KGDatabase *)self->_database openWithMode:a3 error:a4];
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x2020000000;
    v24 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __51__KGDegasAllInMemoryGraphStore_openWithMode_error___block_invoke;
    v20[3] = &unk_2797FEB30;
    v20[4] = self;
    v20[5] = &buf;
    [(KGDegasAllInMemoryGraphStore *)self enumerateModelNodesWithBlock:v20];
    [(KGMemoryGraphStore *)self setNextNodeIdentifier:*(*(&buf + 1) + 24) + 1];
    _Block_object_dispose(&buf, 8);
    objc_autoreleasePoolPop(v10);
    v11 = objc_autoreleasePoolPush();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x2020000000;
    v24 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__KGDegasAllInMemoryGraphStore_openWithMode_error___block_invoke_2;
    v19[3] = &unk_2797FEB58;
    v19[4] = self;
    v19[5] = &buf;
    [(KGDegasAllInMemoryGraphStore *)self enumerateModelEdgesWithBlock:v19];
    [(KGMemoryGraphStore *)self setNextEdgeIdentifier:*(*(&buf + 1) + 24) + 1];
    _Block_object_dispose(&buf, 8);
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v12 = objc_opt_class();
    url = self->_url;
    v21 = 0;
    v14 = [v12 destroyAtURL:url error:&v21];
    v15 = v21;
    if ((v14 & 1) == 0)
    {
      v16 = KGLoggingConnection();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_error_impl(&dword_255870000, v16, OS_LOG_TYPE_ERROR, "failed to open then failed to delete: %@", &buf, 0xCu);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

id __51__KGDegasAllInMemoryGraphStore_openWithMode_error___block_invoke(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 24);
  if (v3 <= a2)
  {
    v3 = a2;
  }

  *(v2 + 24) = v3;
  return [*(a1 + 32) insertNodeWithIdentifier:? labels:? properties:? error:?];
}

id __51__KGDegasAllInMemoryGraphStore_openWithMode_error___block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 24);
  if (v3 <= a2)
  {
    v3 = a2;
  }

  *(v2 + 24) = v3;
  return [*(a1 + 32) insertEdgeWithIdentifier:? labels:? properties:? sourceNodeIdentifier:? targetNodeIdentifier:? error:?];
}

- (KGDegasAllInMemoryGraphStore)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KGDegasAllInMemoryGraphStore;
  v6 = [(KGMemoryGraphStore *)&v9 initForSubclasses];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 15, a3);
  }

  return v7;
}

@end