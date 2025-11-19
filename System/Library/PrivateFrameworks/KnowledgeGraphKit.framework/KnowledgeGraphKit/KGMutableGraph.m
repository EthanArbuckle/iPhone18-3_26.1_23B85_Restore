@interface KGMutableGraph
- (BOOL)_applyEdgeChangeRequests:(id)a3 error:(id *)a4;
- (BOOL)_applyNodeChangeRequests:(id)a3 error:(id *)a4;
- (BOOL)_performChangesAndWait:(id)a3 error:(id *)a4;
- (BOOL)performChangesAndWait:(id)a3 error:(id *)a4;
- (KGMutableGraph)initWithMutableImplementation:(id)a3 entityFactory:(id)a4;
@end

@implementation KGMutableGraph

- (BOOL)performChangesAndWait:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6485;
  v20 = __Block_byref_object_dispose__6486;
  v21 = 0;
  transactionQueue = self->_transactionQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__KGMutableGraph_performChangesAndWait_error___block_invoke;
  v12[3] = &unk_2797FFB88;
  v14 = &v22;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v15 = &v16;
  dispatch_sync(transactionQueue, v12);
  v9 = v23;
  if (a4 && (v23[3] & 1) == 0)
  {
    *a4 = v17[5];
    v9 = v23;
  }

  v10 = *(v9 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __46__KGMutableGraph_performChangesAndWait_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _performChangesAndWait:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (BOOL)_performChangesAndWait:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(KGMutableGraph *)self mutableImplementation];
  v8 = [v6 nodesToInsert];
  v9 = [v7 addNodes:v8 error:a4];

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = [(KGMutableGraph *)self mutableImplementation];
  v11 = [v6 edgesToInsert];
  v12 = [v10 addEdges:v11 error:a4];

  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = [v6 nodeUpdates];
  v14 = [(KGMutableGraph *)self _applyNodeChangeRequests:v13 error:a4];

  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = [v6 edgeUpdates];
  v16 = [(KGMutableGraph *)self _applyEdgeChangeRequests:v15 error:a4];

  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = [(KGMutableGraph *)self mutableImplementation];
  v18 = [v6 edgeIdentifiersToRemove];
  v19 = [v17 removeEdgesForIdentifiers:v18 error:a4];

  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = [(KGMutableGraph *)self mutableImplementation];
  v21 = [v6 nodeIdentifiersToRemove];
  v22 = [v20 removeNodesForIdentifiers:v21 error:a4];

  if (v22)
  {
    v23 = 1;
  }

  else
  {
LABEL_8:
    v24 = KGLoggingConnection();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = *a4;
      v28 = 138412290;
      v29 = v27;
      _os_log_error_impl(&dword_255870000, v24, OS_LOG_TYPE_ERROR, "Error with applying mutations (%@)", &v28, 0xCu);
    }

    v23 = 0;
  }

  [v6 setResolved];

  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)_applyEdgeChangeRequests:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 edge];
        v13 = [v12 identifier];

        v14 = [v11 properties];
        if (v14)
        {
          v15 = v14;
          v16 = [(KGMutableGraph *)self mutableImplementation];
          v17 = [v16 updateEdgeForIdentifier:v13 withProperties:v15 error:a4];

          if (!v17)
          {
            v18 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_applyNodeChangeRequests:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 node];
        v13 = [v12 identifier];

        v14 = [v11 properties];
        if (v14)
        {
          v15 = v14;
          v16 = [(KGMutableGraph *)self mutableImplementation];
          v17 = [v16 updateNodeForIdentifier:v13 withProperties:v15 error:a4];

          if (!v17)
          {
            v18 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (KGMutableGraph)initWithMutableImplementation:(id)a3 entityFactory:(id)a4
{
  v8.receiver = self;
  v8.super_class = KGMutableGraph;
  v4 = [(KGGraph *)&v8 initWithImplementation:a3 entityFactory:a4];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.kgdb.changes", 0);
    transactionQueue = v4->_transactionQueue;
    v4->_transactionQueue = v5;
  }

  return v4;
}

@end