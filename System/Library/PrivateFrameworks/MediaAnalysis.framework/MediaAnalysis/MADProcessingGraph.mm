@interface MADProcessingGraph
- (BOOL)_graphContainsNode:(id)node;
- (BOOL)_searchForNode:(id)node startingFromNode:(id)fromNode;
- (BOOL)addChild:(id)child toParent:(id)parent error:(id *)error;
- (BOOL)addInput:(id)input error:(id *)error;
- (BOOL)addRoot:(id)root error:(id *)error;
- (BOOL)connectChild:(id)child withParent:(id)parent error:(id *)error;
- (BOOL)hasProcessingFailure;
- (MADProcessingGraph)init;
- (id)_bfsFromNode:(id)node conditionBlock:(id)block actionBlock:(id)actionBlock;
- (id)waitForResultsWithError:(id *)error;
- (int)_setDispatchGroupOfNodesToMatch;
- (void)cancelProcessing;
- (void)setDispatchGroup:(id)group;
@end

@implementation MADProcessingGraph

- (MADProcessingGraph)init
{
  v8.receiver = self;
  v8.super_class = MADProcessingGraph;
  v2 = [(MADProcessingGraph *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    roots = v2->_roots;
    v2->_roots = array;

    v2->_startedProcessing = 0;
    v5 = dispatch_group_create();
    graphGroup = v2->_graphGroup;
    v2->_graphGroup = v5;

    v2->_isCanceled = 0;
  }

  return v2;
}

- (id)_bfsFromNode:(id)node conditionBlock:(id)block actionBlock:(id)actionBlock
{
  v25 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  blockCopy = block;
  actionBlockCopy = actionBlock;
  v19 = nodeCopy;
  v10 = [MEMORY[0x1E695DFA8] setWithObject:nodeCopy];
  v11 = [MEMORY[0x1E695DF70] arrayWithObject:nodeCopy];
  while ([v11 count])
  {
    v12 = [v11 objectAtIndex:0];
    [v11 removeObjectAtIndex:0];
    if (actionBlockCopy)
    {
      actionBlockCopy[2](actionBlockCopy, v12);
    }

    if (blockCopy && (blockCopy[2](blockCopy, v12) & 1) != 0)
    {
      goto LABEL_18;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    children = [v12 children];
    v14 = [children countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(children);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          if (([v10 containsObject:v17] & 1) == 0)
          {
            [v10 addObject:v17];
            [v11 addObject:v17];
          }
        }

        v14 = [children countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (BOOL)_searchForNode:(id)node startingFromNode:(id)fromNode
{
  nodeCopy = node;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__MADProcessingGraph__searchForNode_startingFromNode___block_invoke;
  v10[3] = &unk_1E83505E8;
  v11 = nodeCopy;
  v7 = nodeCopy;
  v8 = [(MADProcessingGraph *)self _bfsFromNode:fromNode conditionBlock:v10 actionBlock:0];
  LOBYTE(fromNode) = v8 != 0;

  return fromNode;
}

- (BOOL)_graphContainsNode:(id)node
{
  v16 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  if (nodeCopy)
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

          if ([(MADProcessingGraph *)self _searchForNode:nodeCopy startingFromNode:*(*(&v11 + 1) + 8 * i), v11])
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

- (void)setDispatchGroup:(id)group
{
  groupCopy = group;
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
    objc_storeStrong(&self->_graphGroup, group);
    [(MADProcessingGraph *)self _setDispatchGroupOfNodesToMatch];
  }
}

- (BOOL)addRoot:(id)root error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  rootCopy = root;
  v7 = rootCopy;
  if (self->_startedProcessing)
  {
    if (error)
    {
      v8 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Graph modification not allowed after processing started"];
      v22[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v11 = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v10];
LABEL_16:
      v14 = *error;
      *error = v11;

      LOBYTE(error) = 0;
    }
  }

  else if (rootCopy)
  {
    if (![(MADProcessingGraph *)self _graphContainsNode:rootCopy])
    {
      [(NSMutableArray *)self->_roots addObject:v7];
      LOBYTE(error) = 1;
      goto LABEL_18;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] Node already exists in graph, not adding as root", v16, 2u);
    }

    if (error)
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

    if (error)
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

  return error;
}

- (BOOL)addChild:(id)child toParent:(id)parent error:(id *)error
{
  v47[1] = *MEMORY[0x1E69E9840];
  childCopy = child;
  parentCopy = parent;
  v10 = parentCopy;
  if (self->_startedProcessing)
  {
    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v46 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Graph modification not allowed after processing started"];
      v47[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v14 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v13];
      v15 = *error;
      *error = v14;

LABEL_22:
      LOBYTE(error) = 0;
    }
  }

  else if (childCopy)
  {
    if (parentCopy)
    {
      if ([(MADProcessingGraph *)self _graphContainsNode:parentCopy])
      {
        if (![(MADProcessingGraph *)self _graphContainsNode:childCopy])
        {
          [v10 addChild:childCopy error:error];
          LOBYTE(error) = error == 0;
          goto LABEL_23;
        }

        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] Child already in graph, not attaching to parent", v37, 2u);
        }

        if (error)
        {
          v16 = MEMORY[0x1E696ABC0];
          v38 = *MEMORY[0x1E696A578];
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Child to be added is already in graph"];
          v39 = v17;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v19 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v18];
          v20 = *error;
          *error = v19;

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

        if (error)
        {
          v31 = MEMORY[0x1E696ABC0];
          v40 = *MEMORY[0x1E696A578];
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Parent is not in graph"];
          v41 = v32;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v34 = [v31 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v33];
          v35 = *error;
          *error = v34;

          goto LABEL_22;
        }
      }
    }

    else if (error)
    {
      v26 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Parent is nil"];
      v43 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v29 = [v26 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v28];
      v30 = *error;
      *error = v29;

      goto LABEL_22;
    }
  }

  else if (error)
  {
    v21 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Child is nil"];
    v45 = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v24 = [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v23];
    v25 = *error;
    *error = v24;

    goto LABEL_22;
  }

LABEL_23:

  return error;
}

- (BOOL)connectChild:(id)child withParent:(id)parent error:(id *)error
{
  v54[1] = *MEMORY[0x1E69E9840];
  childCopy = child;
  parentCopy = parent;
  v10 = parentCopy;
  if (self->_startedProcessing)
  {
    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Graph modification not allowed after processing started"];
      v54[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      v14 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v13];
      v15 = *error;
      *error = v14;

LABEL_28:
      LOBYTE(error) = 0;
    }
  }

  else if (childCopy)
  {
    if (parentCopy)
    {
      if ([(MADProcessingGraph *)self _graphContainsNode:parentCopy])
      {
        if ([(MADProcessingGraph *)self _graphContainsNode:childCopy])
        {
          if (![(MADProcessingGraph *)self _searchForNode:v10 startingFromNode:childCopy])
          {
            [v10 addChild:childCopy error:error];
            LOBYTE(error) = error == 0;
            goto LABEL_29;
          }

          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v42 = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingGraph] Connecting child with parent would create a cycle, not connecting", v42, 2u);
          }

          if (error)
          {
            v16 = MEMORY[0x1E696ABC0];
            v43 = *MEMORY[0x1E696A578];
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Parent is descendant of child"];
            v44 = v17;
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
            v19 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v18];
            v20 = *error;
            *error = v19;

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

          if (error)
          {
            v36 = MEMORY[0x1E696ABC0];
            v45 = *MEMORY[0x1E696A578];
            v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Child is not in graph"];
            v46 = v37;
            v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            v39 = [v36 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v38];
            v40 = *error;
            *error = v39;

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

        if (error)
        {
          v31 = MEMORY[0x1E696ABC0];
          v47 = *MEMORY[0x1E696A578];
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Parent is not in graph"];
          v48 = v32;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v34 = [v31 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v33];
          v35 = *error;
          *error = v34;

          goto LABEL_28;
        }
      }
    }

    else if (error)
    {
      v26 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A578];
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Parent is nil"];
      v50 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v29 = [v26 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v28];
      v30 = *error;
      *error = v29;

      goto LABEL_28;
    }
  }

  else if (error)
  {
    v21 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Child is nil"];
    v52 = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v24 = [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v23];
    v25 = *error;
    *error = v24;

    goto LABEL_28;
  }

LABEL_29:

  return error;
}

- (BOOL)addInput:(id)input error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  inputCopy = input;
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

          if (error)
          {
            v13 = MEMORY[0x1E696ABC0];
            v33 = *MEMORY[0x1E696A578];
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Processing canceled", v25];
            v34 = v14;
            v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            v16 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v15];
            v17 = *error;
            *error = v16;
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

          if (error)
          {
            v18 = MEMORY[0x1E696ABC0];
            v31 = *MEMORY[0x1E696A578];
            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Processing failed"];
            v32 = v19;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            v21 = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v20];
            v22 = *error;
            *error = v21;
          }

          goto LABEL_28;
        }

        [v11 processInput:inputCopy error:error];
        if (error && *error)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v23 = [*error description];
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

- (id)waitForResultsWithError:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (self->_startedProcessing)
  {
    dispatch_group_wait(self->_graphGroup, 0xFFFFFFFFFFFFFFFFLL);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
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
        v10 = dictionary;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * v9);
          v12 = [v11 waitForResultsWithError:{error, v19}];
          dictionary = [v11 combineResults:v12 withOtherResults:v10];

          ++v9;
          v10 = dictionary;
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

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADProcessingGraph] Waiting for processing before processing started"];
      v26[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v16 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v15];
      v17 = *error;
      *error = v16;
    }

    dictionary = 0;
  }

  return dictionary;
}

@end