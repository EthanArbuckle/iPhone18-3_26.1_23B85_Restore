@interface HMDBackgroundOperationGraph
+ (id)logCategory;
- (BOOL)canAddEdgeFrom:(id)a3 to:(id)a4;
- (BOOL)doesCycleExist;
- (BOOL)doesVertexAlreadyExistInGraph:(id)a3;
- (HMDBackgroundOperationGraph)initWithOperations:(id)a3;
- (id)getIndependentVertices;
- (void)addEdgeFrom:(id)a3 to:(id)a4;
- (void)addVertex:(id)a3;
- (void)removeVertex:(id)a3;
@end

@implementation HMDBackgroundOperationGraph

- (BOOL)doesCycleExist
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [(HMDBackgroundOperationGraph *)self opGraph];
  v5 = [(HMDBackgroundOperationGraph *)self inDegrees];
  __computeInDegrees(v4, v5);

  objc_autoreleasePoolPop(v3);
  v6 = [(HMDBackgroundOperationGraph *)self opGraph];
  v7 = [v6 count];

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
      v9 = [(HMDBackgroundOperationGraph *)self inDegrees];
      v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        v15 = [(HMDBackgroundOperationGraph *)self inDegrees];
        v16 = [v15 objectForKey:v14];
        v17 = [v16 unsignedIntValue];

        if (!v17)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          goto LABEL_21;
        }
      }

      v18 = v14;

      v19 = [(HMDBackgroundOperationGraph *)self inDegrees];
      __decrementInDegree(v19, v18);

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = [(HMDBackgroundOperationGraph *)self opGraph];
      v21 = [v20 objectForKey:v18];

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
            v27 = [(HMDBackgroundOperationGraph *)self inDegrees];
            __decrementInDegree(v27, v26);
          }

          v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v23);
      }

      objc_autoreleasePoolPop(context);
      ++v8;
      v28 = [(HMDBackgroundOperationGraph *)self opGraph];
      v29 = [v28 count];

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

- (BOOL)canAddEdgeFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBackgroundOperationGraph *)self doesVertexAlreadyExistInGraph:v6];
  v9 = [(HMDBackgroundOperationGraph *)self doesVertexAlreadyExistInGraph:v7];
  [(HMDBackgroundOperationGraph *)self addEdgeFrom:v6 to:v7];
  v10 = [(HMDBackgroundOperationGraph *)self doesCycleExist];
  if (!v8)
  {
    [(HMDBackgroundOperationGraph *)self removeVertex:v6];
  }

  if (!v9)
  {
    [(HMDBackgroundOperationGraph *)self removeVertex:v7];
  }

  return v10;
}

- (id)getIndependentVertices
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v4 = [(HMDBackgroundOperationGraph *)self opGraph];
  v5 = [v3 setWithCapacity:{objc_msgSend(v4, "count")}];

  context = objc_autoreleasePoolPush();
  v6 = [(HMDBackgroundOperationGraph *)self opGraph];
  v7 = [(HMDBackgroundOperationGraph *)self inDegrees];
  __computeInDegrees(v6, v7);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(HMDBackgroundOperationGraph *)self inDegrees];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [(HMDBackgroundOperationGraph *)self inDegrees];
        v15 = [v14 objectForKey:v13];
        v16 = [v15 unsignedIntValue];

        if (!v16)
        {
          [v5 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(context);
  v17 = [v5 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)addEdgeFrom:(id)a3 to:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HMDBackgroundOperationGraph *)self addVertex:v7];
  [(HMDBackgroundOperationGraph *)self addVertex:v6];
  v9 = [(HMDBackgroundOperationGraph *)self opGraph];
  v8 = [v9 objectForKey:v6];

  [v8 addObject:v7];
}

- (void)removeVertex:(id)a3
{
  v11 = a3;
  if ([(HMDBackgroundOperationGraph *)self doesVertexAlreadyExistInGraph:?])
  {
    v4 = [(HMDBackgroundOperationGraph *)self opGraph];
    [v4 removeObjectForKey:v11];

    v5 = [(HMDBackgroundOperationGraph *)self inDegrees];
    [v5 removeObjectForKey:v11];

    v6 = [(HMDBackgroundOperationGraph *)self opGraph];
    v7 = [v6 objectEnumerator];

    v8 = [v7 nextObject];
    if (v8)
    {
      v9 = v8;
      do
      {
        [v9 removeObject:v11];
        v10 = [v7 nextObject];

        v9 = v10;
      }

      while (v10);
    }
  }
}

- (BOOL)doesVertexAlreadyExistInGraph:(id)a3
{
  v4 = a3;
  v5 = [(HMDBackgroundOperationGraph *)self opGraph];
  v6 = [v5 objectForKey:v4];

  return v6 != 0;
}

- (void)addVertex:(id)a3
{
  v7 = a3;
  if (![(HMDBackgroundOperationGraph *)self doesVertexAlreadyExistInGraph:?])
  {
    v4 = [(HMDBackgroundOperationGraph *)self opGraph];
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [v4 setObject:v5 forKey:v7];

    v6 = [(HMDBackgroundOperationGraph *)self inDegrees];
    [v6 setObject:&unk_283E72BA8 forKey:v7];
  }
}

- (HMDBackgroundOperationGraph)initWithOperations:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = HMDBackgroundOperationGraph;
  v5 = [(HMDBackgroundOperationGraph *)&v35 init];
  v6 = v5;
  if (v5)
  {
    v29 = v5;
    v30 = v4;
    v7 = v4;
    v8 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
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
          v11 = [v10 operationUUID];
          v12 = [v10 AllDependencies];
          v13 = [(NSMapTable *)v8 objectForKey:v11];

          if (!v13)
          {
            v14 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
            [(NSMapTable *)v8 setObject:v14 forKey:v11];
          }

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v15 = v12;
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
                v21 = [(NSMapTable *)v8 objectForKey:v20, v29];

                if (!v21)
                {
                  v22 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
                  [(NSMapTable *)v8 setObject:v22 forKey:v20];
                }

                v23 = [(NSMapTable *)v8 objectForKey:v20];
                [v23 addObject:v11];
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
    v29->_opGraph = v8;

    v25 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    inDegrees = v29->_inDegrees;
    v29->_inDegrees = v25;

    v4 = v30;
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