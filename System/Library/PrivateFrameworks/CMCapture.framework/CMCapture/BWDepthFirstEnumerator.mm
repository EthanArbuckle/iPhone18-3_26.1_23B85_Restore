@interface BWDepthFirstEnumerator
- (BWDepthFirstEnumerator)initWithGraph:(id)graph vertexOrdering:(int)ordering;
- (BWDepthFirstEnumerator)initWithSourceNodes:(id)nodes vertexOrdering:(int)ordering;
- (id)nextObject;
- (uint64_t)_nextUnvisitedChild:(uint64_t)child;
- (uint64_t)nextObject;
- (void)dealloc;
@end

@implementation BWDepthFirstEnumerator

- (uint64_t)nextObject
{
  OUTLINED_FUNCTION_4_56();
  [v3 bw_push:{objc_msgSend(*v4, "objectAtIndexedSubscript:", *v5)}];
  result = -[BWNodeEnumerator _updateVisitedCount:](v0, [*v2 objectAtIndexedSubscript:*v1]);
  ++*v1;
  return result;
}

- (BWDepthFirstEnumerator)initWithGraph:(id)graph vertexOrdering:(int)ordering
{
  v8.receiver = self;
  v8.super_class = BWDepthFirstEnumerator;
  v5 = [(BWNodeEnumerator *)&v8 initWithGraph:graph];
  v6 = v5;
  if (v5)
  {
    v5->_ordering = ordering;
    v5->_stack = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_currentSourceIndex = 0;
    v6->_sourceNodes = [(BWGraph *)v6->super._graph _sourceNodes];
  }

  return v6;
}

- (BWDepthFirstEnumerator)initWithSourceNodes:(id)nodes vertexOrdering:(int)ordering
{
  v9.receiver = self;
  v9.super_class = BWDepthFirstEnumerator;
  v6 = [(BWDepthFirstEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_ordering = ordering;
    v6->_stack = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7->_currentSourceIndex = 0;
    v7->_sourceNodes = nodes;
    v7->super._nodeVisitCountMap = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDepthFirstEnumerator;
  [(BWNodeEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  if (![(NSMutableArray *)self->_stack count])
  {
    currentSourceIndex = self->_currentSourceIndex;
    if (currentSourceIndex >= [(NSArray *)self->_sourceNodes count])
    {
      return 0;
    }

    [BWDepthFirstEnumerator nextObject];
  }

  stack = self->_stack;
  if (self->_ordering)
  {
    v13 = [(BWDepthFirstEnumerator *)self _nextUnvisitedChild:?];
    if (v13)
    {
      v14 = v13;
      do
      {
        [(NSMutableArray *)self->_stack bw_push:v14];
        v14 = [(BWDepthFirstEnumerator *)self _nextUnvisitedChild:v14];
      }

      while (v14);
    }

    bw_pop = [(NSMutableArray *)self->_stack bw_pop];
  }

  else
  {
    bw_pop = [(NSMutableArray *)stack bw_pop];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [objc_msgSend(bw_pop "outputs")];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [objc_msgSend(objc_msgSend(*(*(&v16 + 1) + 8 * v9) "connection")];
          if (v10)
          {
            [(BWDepthFirstEnumerator *)self nextObject];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v7);
    }
  }

  self->super._depth = 0;
  return bw_pop;
}

- (uint64_t)_nextUnvisitedChild:(uint64_t)child
{
  if (!child)
  {
    return 0;
  }

  v4 = [objc_msgSend(OUTLINED_FUNCTION_0_73(child a2)];
  v6 = OUTLINED_FUNCTION_44_0(v4, v5);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v38;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v38 != v8)
    {
      objc_enumerationMutation(v2);
    }

    v10 = [objc_msgSend(objc_msgSend(*(v37 + 8 * v9) "connection")];
    if (v10)
    {
      v10 = OUTLINED_FUNCTION_3_66(v10);
      if (!v10)
      {
        return v3;
      }
    }

    if (v7 == ++v9)
    {
      v18 = OUTLINED_FUNCTION_1_3(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
      v7 = v18;
      if (v18)
      {
        goto LABEL_4;
      }

      return 0;
    }
  }
}

@end