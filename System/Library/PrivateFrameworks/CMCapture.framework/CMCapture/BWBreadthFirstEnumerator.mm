@interface BWBreadthFirstEnumerator
- (BWBreadthFirstEnumerator)initWithGraph:(id)a3;
- (id)nextObject;
- (uint64_t)addChildren:(uint64_t)result;
- (uint64_t)nextObject;
- (void)dealloc;
@end

@implementation BWBreadthFirstEnumerator

- (BWBreadthFirstEnumerator)initWithGraph:(id)a3
{
  v17.receiver = self;
  v17.super_class = BWBreadthFirstEnumerator;
  v4 = [(BWNodeEnumerator *)&v17 initWithGraph:?];
  if (v4)
  {
    v4->_queue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_holdQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [a3 _sourceNodes];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          [(NSMutableArray *)v4->_queue addObject:v10];
          [(BWNodeEnumerator *)v4 _updateVisitedCount:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWBreadthFirstEnumerator;
  [(BWNodeEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  if ([(NSMutableArray *)self->_queue count])
  {
    v3 = [(NSMutableArray *)self->_queue firstObject];
    [(NSMutableArray *)self->_queue removeObjectAtIndex:0];
LABEL_7:
    [(BWBreadthFirstEnumerator *)self addChildren:v3];
    return v3;
  }

  if ([(NSMutableArray *)self->_holdQueue count])
  {
    [(BWBreadthFirstEnumerator *)&self->_holdQueue nextObject];
    v3 = v5;
    goto LABEL_7;
  }

  return 0;
}

- (uint64_t)addChildren:(uint64_t)result
{
  if (result)
  {
    v5 = [OUTLINED_FUNCTION_0_73(result a2)];
    result = OUTLINED_FUNCTION_44_0(v5, v6);
    if (result)
    {
      v7 = result;
      v8 = *v39;
      do
      {
        v9 = 0;
        do
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = [objc_msgSend(objc_msgSend(*(v38 + 8 * v9) "connection")];
          if (v10)
          {
            if ((v18 = OUTLINED_FUNCTION_3_66(v10), v18 == [objc_msgSend(v4 "inputs")] - 1) && (v19 = objc_msgSend(*(v2 + 40), "containsObject:", v4), v20 = &OBJC_IVAR___BWBreadthFirstEnumerator__queue, !v19) || (v10 = objc_msgSend(*(v2 + 40), "containsObject:", v4), v20 = &OBJC_IVAR___BWBreadthFirstEnumerator__holdQueue, (v10 & 1) == 0))
            {
              v10 = [*(v2 + *v20) addObject:v4];
            }
          }

          ++v9;
        }

        while (v7 != v9);
        result = OUTLINED_FUNCTION_1_3(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
        v7 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)nextObject
{
  *a3 = [*a1 firstObject];
  [*a1 removeObjectAtIndex:0];
  [*a2 addObjectsFromArray:*a1];
  v5 = *a1;

  return [v5 removeAllObjects];
}

@end