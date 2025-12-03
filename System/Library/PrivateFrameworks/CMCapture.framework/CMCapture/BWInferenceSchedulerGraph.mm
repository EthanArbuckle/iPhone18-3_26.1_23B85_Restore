@interface BWInferenceSchedulerGraph
- (BWInferenceSchedulerGraph)initWithHeadNode:(id)node directedEdges:(id)edges;
- (void)_visitJob:(void *)job withEnRouteAccumulation:(uint64_t)accumulation block:;
- (void)dealloc;
- (void)enumerateVideoDestinationsFromJob:(id)job withBlock:(id)block;
- (void)visitProvidersWithBlock:(id)block;
@end

@implementation BWInferenceSchedulerGraph

- (BWInferenceSchedulerGraph)initWithHeadNode:(id)node directedEdges:(id)edges
{
  v8.receiver = self;
  v8.super_class = BWInferenceSchedulerGraph;
  v6 = [(BWInferenceSchedulerGraph *)&v8 init];
  if (v6)
  {
    v6->_head = node;
    v6->_directedEdgesByNode = edges;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceSchedulerGraph;
  [(BWInferenceSchedulerGraph *)&v3 dealloc];
}

- (void)enumerateVideoDestinationsFromJob:(id)job withBlock:(id)block
{
  v5 = [(NSMapTable *)self->_directedEdgesByNode objectForKey:job];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(block + 2))(block, **(*(&v11 + 1) + 8 * v9), *(*(*(&v11 + 1) + 8 * v9) + 16), *(*(*(&v11 + 1) + 8 * v9) + 24), *(*(*(&v11 + 1) + 8 * v9) + 8));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)_visitJob:(void *)job withEnRouteAccumulation:(uint64_t)accumulation block:
{
  if (self)
  {
    v17 = [job objectForKey:a2];
    (*(accumulation + 16))(accumulation, a2);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __69__BWInferenceSchedulerGraph__visitJob_withEnRouteAccumulation_block___block_invoke;
    v23[3] = &unk_1E7998908;
    v23[4] = v8;
    v9 = a2;
    [self enumerateVideoDestinationsFromJob:a2 withBlock:v23];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v8;
    v11 = [v8 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [job objectForKey:v15];
          if (!v16)
          {
            v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            [job setObject:v16 forKey:v15];
          }

          [v16 addObject:v9];
          [v16 addObjectsFromArray:{objc_msgSend(v17, "allObjects")}];
          [(BWInferenceSchedulerGraph *)self _visitJob:v15 withEnRouteAccumulation:job block:accumulation];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v12);
    }
  }
}

- (void)visitProvidersWithBlock:(id)block
{
  v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:{-[NSMapTable count](self->_directedEdgesByNode, "count")}];
  [(BWInferenceSchedulerGraph *)self _visitJob:v5 withEnRouteAccumulation:block block:?];
}

@end