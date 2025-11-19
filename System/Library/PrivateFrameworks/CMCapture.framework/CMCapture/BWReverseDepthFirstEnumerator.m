@interface BWReverseDepthFirstEnumerator
- (BWReverseDepthFirstEnumerator)initWithGraph:(id)a3 vertexOrdering:(int)a4;
- (id)nextObject;
- (uint64_t)_nextUnvisitedParent:(uint64_t)a1;
- (uint64_t)nextObject;
- (void)dealloc;
@end

@implementation BWReverseDepthFirstEnumerator

- (id)nextObject
{
  if (![(NSMutableArray *)self->_stack count])
  {
    v11 = [(BWGraph *)self->super._graph _sinkNodes];
    currentSinkIndex = self->_currentSinkIndex;
    if (currentSinkIndex >= [v11 count])
    {
      return 0;
    }

    [BWReverseDepthFirstEnumerator nextObject];
  }

  stack = self->_stack;
  if (self->_ordering)
  {
    v14 = [(BWReverseDepthFirstEnumerator *)self _nextUnvisitedParent:?];
    if (v14)
    {
      v15 = v14;
      do
      {
        [(NSMutableArray *)self->_stack bw_push:v15];
        v15 = [(BWReverseDepthFirstEnumerator *)self _nextUnvisitedParent:v15];
      }

      while (v15);
    }

    v4 = [(NSMutableArray *)self->_stack bw_pop];
  }

  else
  {
    v4 = [(NSMutableArray *)stack bw_pop];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [objc_msgSend(v4 "inputs")];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [objc_msgSend(objc_msgSend(*(*(&v17 + 1) + 8 * v9) "connection")];
          if (v10)
          {
            [(BWDepthFirstEnumerator *)self nextObject];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v7);
    }
  }

  self->super._depth = 0;
  return v4;
}

- (uint64_t)nextObject
{
  OUTLINED_FUNCTION_4_56();
  [v3 bw_push:{objc_msgSend(v1, "objectAtIndexedSubscript:", *v4)}];
  result = -[BWNodeEnumerator _updateVisitedCount:](v0, [v1 objectAtIndexedSubscript:*v2]);
  ++*v2;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWReverseDepthFirstEnumerator;
  [(BWNodeEnumerator *)&v3 dealloc];
}

- (BWReverseDepthFirstEnumerator)initWithGraph:(id)a3 vertexOrdering:(int)a4
{
  v8.receiver = self;
  v8.super_class = BWReverseDepthFirstEnumerator;
  v5 = [(BWNodeEnumerator *)&v8 initWithGraph:a3];
  v6 = v5;
  if (v5)
  {
    v5->_ordering = a4;
    v5->_stack = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_currentSinkIndex = 0;
  }

  return v6;
}

- (uint64_t)_nextUnvisitedParent:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [objc_msgSend(OUTLINED_FUNCTION_0_73(a1 a2)];
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