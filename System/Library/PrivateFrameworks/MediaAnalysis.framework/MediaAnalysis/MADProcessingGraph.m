@interface MADProcessingGraph
- (BOOL)_graphContainsNode:(id)a3;
- (BOOL)_searchForNode:(id)a3 startingFromNode:(id)a4;
- (BOOL)addChild:(id)a3 toParent:(id)a4 error:(id *)a5;
- (BOOL)addInput:(id)a3 error:(id *)a4;
- (BOOL)addRoot:(id)a3 error:(id *)a4;
- (BOOL)connectChild:(id)a3 withParent:(id)a4 error:(id *)a5;
- (BOOL)hasProcessingFailure;
- (MADProcessingGraph)init;
- (id)_bfsFromNode:(id)a3 conditionBlock:(id)a4 actionBlock:(id)a5;
- (id)waitForResultsWithError:(id *)a3;
- (int)_setDispatchGroupOfNodesToMatch;
- (void)cancelProcessing;
- (void)setDispatchGroup:(id)a3;
@end

@implementation MADProcessingGraph

- (MADProcessingGraph)init
{
  v8.receiver = self;
  v8.super_class = MADProcessingGraph;
  v2 = [(MADProcessingGraph *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    roots = v2->_roots;
    v2->_roots = v3;

    v2->_startedProcessing = 0;
    v5 = dispatch_group_create();
    graphGroup = v2->_graphGroup;
    v2->_graphGroup = v5;

    v2->_isCanceled = 0;
  }

  return v2;
}

- (id)_bfsFromNode:(id)a3 conditionBlock:(id)a4 actionBlock:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v19 = v7;
  v10 = [MEMORY[0x1E695DFA8] setWithObject:v7];
  v11 = [MEMORY[0x1E695DF70] arrayWithObject:v7];
  while ([v11 count])
  {
    v12 = [v11 objectAtIndex:0];
    [v11 removeObjectAtIndex:0];
    if (v9)
    {
      v9[2](v9, v12);
    }

    if (v8 && (v8[2](v8, v12) & 1) != 0)
    {
      goto LABEL_18;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [v12 children];
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          if (([v10 containsObject:v17] & 1) == 0)
          {
            [v10 addObject:v17];
            [v11 addObject:v17];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (BOOL)_searchForNode:(id)a3 startingFromNode:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__MADProcessingGraph__searchForNode_startingFromNode___block_invoke;
  v10[3] = &unk_1E83505E8;
  v11 = v6;
  v7 = v6;
  v8 = [(MADProcessingGraph *)self _bfsFromNode:a4 conditionBlock:v10 actionBlock:0];
  LOBYTE(a4) = v8 != 0;

  return a4;
}

- (BOOL)_graphContainsNode:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_roots;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([(MADProcessingGraph *)self _searchForNode:v4 startingFromNode:*(*(&v11 + 1) + 8 * i), v11])
          {
            v9 = 1;
            goto LABEL_12;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int)_setDispatchGroupOfNodesToMatch
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_startedProcessing)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] Processing started, not setting dispatch group for nodes", buf, 2u);
    }

    return -18;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_roots;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __53__MADProcessingGraph__setDispatchGroupOfNodesToMatch__block_invoke;
          v10[3] = &unk_1E8350610;
          v10[4] = self;
          v9 = [(MADProcessingGraph *)self _bfsFromNode:v8 conditionBlock:0 actionBlock:v10];
          ++v7;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v5);
    }

    return 0;
  }
}

void __53__MADProcessingGraph__setDispatchGroupOfNodesToMatch__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) dispatchGroup];
  [v4 setDispatchGroup:v3];
}

- (void)setDispatchGroup:(id)a3
{
  v5 = a3;
  if (self->_startedProcessing)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] Processing started, not setting dispatch group", v6, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_graphGroup, a3);
    [(MADProcessingGraph *)self _setDispatchGroupOfNodesToMatch];
  }
}

- (BOOL)addRoot:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (self->_startedProcessing)
  {
    if (a4)
    {
      v8 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Graph modification not allowed after processing started"];
      v22[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v11 = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v10];
LABEL_16:
      v14 = *a4;
      *a4 = v11;

      LOBYTE(a4) = 0;
    }
  }

  else if (v6)
  {
    if (![(MADProcessingGraph *)self _graphContainsNode:v6])
    {
      [(NSMutableArray *)self->_roots addObject:v7];
      LOBYTE(a4) = 1;
      goto LABEL_18;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] Node already exists in graph, not adding as root", v16, 2u);
    }

    if (a4)
    {
      v12 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Node already exists in graph"];
      v18 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v11 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v10];
      goto LABEL_16;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] Cannot add nil as root", v16, 2u);
    }

    if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A578];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Node to be added as root is nil"];
      v20 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v11 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v10];
      goto LABEL_16;
    }
  }

LABEL_18:

  return a4;
}

- (BOOL)addChild:(id)a3 toParent:(id)a4 error:(id *)a5
{
  v47[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (self->_startedProcessing)
  {
    if (a5)
    {
      v11 = MEMORY[0x1E696ABC0];
      v46 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Graph modification not allowed after processing started"];
      v47[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v14 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v13];
      v15 = *a5;
      *a5 = v14;

LABEL_22:
      LOBYTE(a5) = 0;
    }
  }

  else if (v8)
  {
    if (v9)
    {
      if ([(MADProcessingGraph *)self _graphContainsNode:v9])
      {
        if (![(MADProcessingGraph *)self _graphContainsNode:v8])
        {
          [v10 addChild:v8 error:a5];
          LOBYTE(a5) = a5 == 0;
          goto LABEL_23;
        }

        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] Child already in graph, not attaching to parent", v37, 2u);
        }

        if (a5)
        {
          v16 = MEMORY[0x1E696ABC0];
          v38 = *MEMORY[0x1E696A578];
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Child to be added is already in graph"];
          v39 = v17;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v19 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v18];
          v20 = *a5;
          *a5 = v19;

          goto LABEL_22;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] Parent is not in graph, not adding child", v37, 2u);
        }

        if (a5)
        {
          v31 = MEMORY[0x1E696ABC0];
          v40 = *MEMORY[0x1E696A578];
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Parent is not in graph"];
          v41 = v32;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v34 = [v31 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v33];
          v35 = *a5;
          *a5 = v34;

          goto LABEL_22;
        }
      }
    }

    else if (a5)
    {
      v26 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Parent is nil"];
      v43 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v29 = [v26 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v28];
      v30 = *a5;
      *a5 = v29;

      goto LABEL_22;
    }
  }

  else if (a5)
  {
    v21 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Child is nil"];
    v45 = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v24 = [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v23];
    v25 = *a5;
    *a5 = v24;

    goto LABEL_22;
  }

LABEL_23:

  return a5;
}

- (BOOL)connectChild:(id)a3 withParent:(id)a4 error:(id *)a5
{
  v54[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (self->_startedProcessing)
  {
    if (a5)
    {
      v11 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Graph modification not allowed after processing started"];
      v54[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      v14 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v13];
      v15 = *a5;
      *a5 = v14;

LABEL_28:
      LOBYTE(a5) = 0;
    }
  }

  else if (v8)
  {
    if (v9)
    {
      if ([(MADProcessingGraph *)self _graphContainsNode:v9])
      {
        if ([(MADProcessingGraph *)self _graphContainsNode:v8])
        {
          if (![(MADProcessingGraph *)self _searchForNode:v10 startingFromNode:v8])
          {
            [v10 addChild:v8 error:a5];
            LOBYTE(a5) = a5 == 0;
            goto LABEL_29;
          }

          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v42 = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] Connecting child with parent would create a cycle, not connecting", v42, 2u);
          }

          if (a5)
          {
            v16 = MEMORY[0x1E696ABC0];
            v43 = *MEMORY[0x1E696A578];
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Parent is descendant of child"];
            v44 = v17;
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
            v19 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v18];
            v20 = *a5;
            *a5 = v19;

            goto LABEL_28;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v42 = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] Child is not in graph, not connecting to parent", v42, 2u);
          }

          if (a5)
          {
            v36 = MEMORY[0x1E696ABC0];
            v45 = *MEMORY[0x1E696A578];
            v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Child is not in graph"];
            v46 = v37;
            v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            v39 = [v36 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v38];
            v40 = *a5;
            *a5 = v39;

            goto LABEL_28;
          }
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v42 = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] Parent is not in graph, not connecting to child", v42, 2u);
        }

        if (a5)
        {
          v31 = MEMORY[0x1E696ABC0];
          v47 = *MEMORY[0x1E696A578];
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Parent is not in graph"];
          v48 = v32;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v34 = [v31 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v33];
          v35 = *a5;
          *a5 = v34;

          goto LABEL_28;
        }
      }
    }

    else if (a5)
    {
      v26 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A578];
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Parent is nil"];
      v50 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v29 = [v26 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v28];
      v30 = *a5;
      *a5 = v29;

      goto LABEL_28;
    }
  }

  else if (a5)
  {
    v21 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Child is nil"];
    v52 = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v24 = [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v23];
    v25 = *a5;
    *a5 = v24;

    goto LABEL_28;
  }

LABEL_29:

  return a5;
}

- (BOOL)addInput:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!self->_startedProcessing)
  {
    [(MADProcessingGraph *)self _setDispatchGroupOfNodesToMatch];
  }

  self->_startedProcessing = 1;
  dispatch_group_enter(self->_graphGroup);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_roots;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v8)
  {
    v9 = *v26;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if (self->_isCanceled)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] processing canceled", buf, 2u);
          }

          if (a4)
          {
            v13 = MEMORY[0x1E696ABC0];
            v33 = *MEMORY[0x1E696A578];
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Processing canceled", v25];
            v34 = v14;
            v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            v16 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v15];
            v17 = *a4;
            *a4 = v16;
          }

          goto LABEL_28;
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        if ([v11 hasFailure])
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADProcessingGraph] processing had failed", buf, 2u);
          }

          if (a4)
          {
            v18 = MEMORY[0x1E696ABC0];
            v31 = *MEMORY[0x1E696A578];
            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Processing failed"];
            v32 = v19;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            v21 = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v20];
            v22 = *a4;
            *a4 = v21;
          }

          goto LABEL_28;
        }

        [v11 processInput:v6 error:a4];
        if (a4 && *a4)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v23 = [*a4 description];
            *buf = 138412290;
            v30 = v23;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADProcessingGraph] Error sending input to queue: %@", buf, 0xCu);
          }

LABEL_28:
          dispatch_group_leave(self->_graphGroup);

          v12 = 0;
          goto LABEL_29;
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  dispatch_group_leave(self->_graphGroup);
  v12 = 1;
LABEL_29:

  return v12;
}

- (BOOL)hasProcessingFailure
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_roots;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasFailure])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)cancelProcessing
{
  v11 = *MEMORY[0x1E69E9840];
  self->_isCanceled = 1;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = self->_roots;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5++) cancelProcessing];
      }

      while (v3 != v5);
      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (id)waitForResultsWithError:(id *)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (self->_startedProcessing)
  {
    dispatch_group_wait(self->_graphGroup, 0xFFFFFFFFFFFFFFFFLL);
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_roots;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        v9 = 0;
        v10 = v5;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * v9);
          v12 = [v11 waitForResultsWithError:{a3, v19}];
          v5 = [v11 combineResults:v12 withOtherResults:v10];

          ++v9;
          v10 = v5;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADProcessingGraph] Graph processing finished", buf, 2u);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] WARNING: Waiting for processing before processing started", buf, 2u);
    }

    if (a3)
    {
      v13 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADProcessingGraph] Waiting for processing before processing started"];
      v26[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v16 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v15];
      v17 = *a3;
      *a3 = v16;
    }

    v5 = 0;
  }

  return v5;
}

@end