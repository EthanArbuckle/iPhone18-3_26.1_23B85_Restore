@interface HMDBackgroundOperationGraph
+ (id)logCategory;
- (BOOL)canAddEdgeFrom:(id)from to:(id)to;
- (BOOL)doesCycleExist;
- (BOOL)doesVertexAlreadyExistInGraph:(id)graph;
- (HMDBackgroundOperationGraph)initWithOperations:(id)operations;
- (id)getIndependentVertices;
- (void)addEdgeFrom:(id)from to:(id)to;
- (void)addVertex:(id)vertex;
- (void)removeVertex:(id)vertex;
@end

@implementation HMDBackgroundOperationGraph

- (BOOL)doesCycleExist
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  opGraph = [(HMDBackgroundOperationGraph *)self opGraph];
  inDegrees = [(HMDBackgroundOperationGraph *)self inDegrees];
  __computeInDegrees(opGraph, inDegrees);

  objc_autoreleasePoolPop(v3);
  opGraph2 = [(HMDBackgroundOperationGraph *)self opGraph];
  v7 = [opGraph2 count];

  if (v7)
  {
    v8 = 0;
    while (2)
    {
      context = objc_autoreleasePoolPush();
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      inDegrees2 = [(HMDBackgroundOperationGraph *)self inDegrees];
      v10 = [inDegrees2 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (!v10)
      {
LABEL_21:

        objc_autoreleasePoolPop(context);
        result = 1;
        goto LABEL_22;
      }

      v11 = v10;
      v12 = *v38;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(inDegrees2);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        inDegrees3 = [(HMDBackgroundOperationGraph *)self inDegrees];
        v16 = [inDegrees3 objectForKey:v14];
        unsignedIntValue = [v16 unsignedIntValue];

        if (!unsignedIntValue)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [inDegrees2 countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          goto LABEL_21;
        }
      }

      v18 = v14;

      inDegrees4 = [(HMDBackgroundOperationGraph *)self inDegrees];
      __decrementInDegree(inDegrees4, v18);

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      opGraph3 = [(HMDBackgroundOperationGraph *)self opGraph];
      v21 = [opGraph3 objectForKey:v18];

      v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v34;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v34 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v33 + 1) + 8 * i);
            inDegrees5 = [(HMDBackgroundOperationGraph *)self inDegrees];
            __decrementInDegree(inDegrees5, v26);
          }

          v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v23);
      }

      objc_autoreleasePoolPop(context);
      ++v8;
      opGraph4 = [(HMDBackgroundOperationGraph *)self opGraph];
      v29 = [opGraph4 count];

      if (v29 > v8)
      {
        continue;
      }

      break;
    }
  }

  result = 0;
LABEL_22:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)canAddEdgeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v8 = [(HMDBackgroundOperationGraph *)self doesVertexAlreadyExistInGraph:fromCopy];
  v9 = [(HMDBackgroundOperationGraph *)self doesVertexAlreadyExistInGraph:toCopy];
  [(HMDBackgroundOperationGraph *)self addEdgeFrom:fromCopy to:toCopy];
  doesCycleExist = [(HMDBackgroundOperationGraph *)self doesCycleExist];
  if (!v8)
  {
    [(HMDBackgroundOperationGraph *)self removeVertex:fromCopy];
  }

  if (!v9)
  {
    [(HMDBackgroundOperationGraph *)self removeVertex:toCopy];
  }

  return doesCycleExist;
}

- (id)getIndependentVertices
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  opGraph = [(HMDBackgroundOperationGraph *)self opGraph];
  v5 = [v3 setWithCapacity:{objc_msgSend(opGraph, "count")}];

  context = objc_autoreleasePoolPush();
  opGraph2 = [(HMDBackgroundOperationGraph *)self opGraph];
  inDegrees = [(HMDBackgroundOperationGraph *)self inDegrees];
  __computeInDegrees(opGraph2, inDegrees);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  inDegrees2 = [(HMDBackgroundOperationGraph *)self inDegrees];
  v9 = [inDegrees2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(inDegrees2);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        inDegrees3 = [(HMDBackgroundOperationGraph *)self inDegrees];
        v15 = [inDegrees3 objectForKey:v13];
        unsignedIntValue = [v15 unsignedIntValue];

        if (!unsignedIntValue)
        {
          [v5 addObject:v13];
        }
      }

      v10 = [inDegrees2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(context);
  v17 = [v5 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)addEdgeFrom:(id)from to:(id)to
{
  toCopy = to;
  fromCopy = from;
  [(HMDBackgroundOperationGraph *)self addVertex:fromCopy];
  [(HMDBackgroundOperationGraph *)self addVertex:toCopy];
  opGraph = [(HMDBackgroundOperationGraph *)self opGraph];
  v8 = [opGraph objectForKey:toCopy];

  [v8 addObject:fromCopy];
}

- (void)removeVertex:(id)vertex
{
  vertexCopy = vertex;
  if ([(HMDBackgroundOperationGraph *)self doesVertexAlreadyExistInGraph:?])
  {
    opGraph = [(HMDBackgroundOperationGraph *)self opGraph];
    [opGraph removeObjectForKey:vertexCopy];

    inDegrees = [(HMDBackgroundOperationGraph *)self inDegrees];
    [inDegrees removeObjectForKey:vertexCopy];

    opGraph2 = [(HMDBackgroundOperationGraph *)self opGraph];
    objectEnumerator = [opGraph2 objectEnumerator];

    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      v9 = nextObject;
      do
      {
        [v9 removeObject:vertexCopy];
        nextObject2 = [objectEnumerator nextObject];

        v9 = nextObject2;
      }

      while (nextObject2);
    }
  }
}

- (BOOL)doesVertexAlreadyExistInGraph:(id)graph
{
  graphCopy = graph;
  opGraph = [(HMDBackgroundOperationGraph *)self opGraph];
  v6 = [opGraph objectForKey:graphCopy];

  return v6 != 0;
}

- (void)addVertex:(id)vertex
{
  vertexCopy = vertex;
  if (![(HMDBackgroundOperationGraph *)self doesVertexAlreadyExistInGraph:?])
  {
    opGraph = [(HMDBackgroundOperationGraph *)self opGraph];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [opGraph setObject:weakObjectsHashTable forKey:vertexCopy];

    inDegrees = [(HMDBackgroundOperationGraph *)self inDegrees];
    [inDegrees setObject:&unk_283E72BA8 forKey:vertexCopy];
  }
}

- (HMDBackgroundOperationGraph)initWithOperations:(id)operations
{
  v46 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  v35.receiver = self;
  v35.super_class = HMDBackgroundOperationGraph;
  v5 = [(HMDBackgroundOperationGraph *)&v35 init];
  v6 = v5;
  if (v5)
  {
    v29 = v5;
    v30 = operationsCopy;
    v7 = operationsCopy;
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v7;
    v33 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v33)
    {
      v32 = *v41;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v41 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v40 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          operationUUID = [v10 operationUUID];
          allDependencies = [v10 AllDependencies];
          v13 = [(NSMapTable *)weakToStrongObjectsMapTable objectForKey:operationUUID];

          if (!v13)
          {
            weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
            [(NSMapTable *)weakToStrongObjectsMapTable setObject:weakObjectsHashTable forKey:operationUUID];
          }

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v15 = allDependencies;
          v16 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v37;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v37 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v36 + 1) + 8 * j);
                v21 = [(NSMapTable *)weakToStrongObjectsMapTable objectForKey:v20, v29];

                if (!v21)
                {
                  weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
                  [(NSMapTable *)weakToStrongObjectsMapTable setObject:weakObjectsHashTable2 forKey:v20];
                }

                v23 = [(NSMapTable *)weakToStrongObjectsMapTable objectForKey:v20];
                [v23 addObject:operationUUID];
              }

              v17 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v17);
          }

          objc_autoreleasePoolPop(context);
        }

        v33 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v33);
    }

    v6 = v29;
    opGraph = v29->_opGraph;
    v29->_opGraph = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    inDegrees = v29->_inDegrees;
    v29->_inDegrees = weakToStrongObjectsMapTable2;

    operationsCopy = v30;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_119381 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_119381, &__block_literal_global_119382);
  }

  v3 = logCategory__hmf_once_v1_119383;

  return v3;
}

void __42__HMDBackgroundOperationGraph_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_119383;
  logCategory__hmf_once_v1_119383 = v1;
}

@end