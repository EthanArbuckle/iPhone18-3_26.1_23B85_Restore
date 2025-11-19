@interface BWStreamStartStopSynchronizer
- (BOOL)streamWillStart:(id)a3;
- (BOOL)streamWillStop:(id)a3;
- (BOOL)waitForMasterAEToSettle;
- (BWStreamStartStopSynchronizer)initWithStreams:(id)a3 synchronizationPrimary:(id)a4 timeoutInSeconds:(float)a5;
- (NSArray)synchronizationSlavesOrderedByPriority;
- (void)dealloc;
- (void)setSynchronizationSlavesOrderedByPriority:(id)a3;
- (void)setWaitForMasterAEToSettle:(BOOL)a3;
- (void)streamDidStart:(id)a3;
- (void)streamDidStop:(id)a3;
@end

@implementation BWStreamStartStopSynchronizer

- (BOOL)waitForMasterAEToSettle
{
  v2 = [(NSArray *)[(NSDictionary *)self->_streamStatesByPortType allValues] firstObject];
  if (v2)
  {
    v3 = v2[68];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BWStreamStartStopSynchronizer)initWithStreams:(id)a3 synchronizationPrimary:(id)a4 timeoutInSeconds:(float)a5
{
  v30.receiver = self;
  v30.super_class = BWStreamStartStopSynchronizer;
  v8 = [(BWStreamStartStopSynchronizer *)&v30 init];
  if (v8)
  {
    v8->_synchronizationPrimary = a4;
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [a3 countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v10)
    {
      v11 = *v27;
      while (2)
      {
        for (i = 0; i != v10; i = (i + 1))
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(a3);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          if (v13 == v8->_synchronizationPrimary)
          {
            [(BWStreamStartStopSynchronizer *)v13 initWithStreams:v9 synchronizationPrimary:&v31 timeoutInSeconds:a5];
            v10 = v31;
            goto LABEL_12;
          }
        }

        v10 = [a3 countByEnumeratingWithState:&v26 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [a3 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(a3);
          }

          v18 = *(*(&v21 + 1) + 8 * j);
          if (v18 != v8->_synchronizationPrimary)
          {
            [(BWStreamStartStopSynchronizer *)v18 initWithStreams:v10 synchronizationPrimary:v9 timeoutInSeconds:a5];
          }
        }

        v15 = [a3 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v15);
    }

    v8->_streamStatesByPortType = [v9 copy];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStreamStartStopSynchronizer;
  [(BWStreamStartStopSynchronizer *)&v3 dealloc];
}

- (void)setWaitForMasterAEToSettle:(BOOL)a3
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSDictionary *)self->_streamStatesByPortType allValues];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (v9)
        {
          *(v9 + 68) = a3;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

- (void)setSynchronizationSlavesOrderedByPriority:(id)a3
{
  self->_synchronizationSlavesOrderedByPriority = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [(NSDictionary *)self->_streamStatesByPortType objectForKeyedSubscript:[(BWFigVideoCaptureStream *)v11 portType]];
        if (v12)
        {
          if (v11 != self->_synchronizationPrimary)
          {
            v13 = v12;
            if (([v6 containsObject:v12] & 1) == 0)
            {
              [v6 addObject:v13];
            }
          }
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [(NSDictionary *)self->_streamStatesByPortType allValues];
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * v18);
        if (v19)
        {
          v20 = v19[2];
        }

        else
        {
          v20 = 0;
        }

        if (v20 != self->_synchronizationPrimary)
        {
          v21 = [v6 indexOfObject:*(*(&v26 + 1) + 8 * v18)];
          if (v21)
          {
            v23 = v6;
            if (v21 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v23 = [v6 subarrayWithRange:{0, v21}];
            }
          }

          else
          {
            v23 = 0;
          }

          if (v19)
          {
            objc_setProperty_nonatomic(v19, v22, v23, 56);
          }
        }

        ++v18;
      }

      while (v16 != v18);
      v24 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v25 count:16];
      v16 = v24;
    }

    while (v24);
  }

  objc_autoreleasePoolPop(v5);
}

- (NSArray)synchronizationSlavesOrderedByPriority
{
  v2 = self->_synchronizationSlavesOrderedByPriority;

  return v2;
}

- (BOOL)streamWillStart:(id)a3
{
  v3 = OUTLINED_FUNCTION_2_87(self, a2, a3);
  v4 = OUTLINED_FUNCTION_3_79(v3);

  return [(BWStreamStartStopState *)v4 streamWillStart];
}

- (void)streamDidStart:(id)a3
{
  v4 = OUTLINED_FUNCTION_2_87(self, a2, a3);
  if (OUTLINED_FUNCTION_3_79(v4))
  {
    OUTLINED_FUNCTION_1_100();
    if (v5 == 1)
    {
      *(v3 + 8) = 2;
      dispatch_group_leave(*(v3 + 24));
      *(v3 + 32) = 0;
    }
  }
}

- (BOOL)streamWillStop:(id)a3
{
  v3 = OUTLINED_FUNCTION_2_87(self, a2, a3);
  v4 = OUTLINED_FUNCTION_3_79(v3);

  return [(BWStreamStartStopState *)v4 streamWillStop];
}

- (void)streamDidStop:(id)a3
{
  v3 = OUTLINED_FUNCTION_2_87(self, a2, a3);
  v4 = OUTLINED_FUNCTION_3_79(v3);

  [(BWStreamStartStopState *)v4 streamDidStop];
}

- (uint64_t)initWithStreams:(float *)a3 synchronizationPrimary:(float)a4 timeoutInSeconds:.cold.1(void *a1, void *a2, float **a3, float a4)
{
  v7 = [[BWStreamStartStopState alloc] initWithStream:a1 masterState:0 timeoutInSeconds:a4];
  *a3 = v7;
  return [a2 setObject:v7 forKeyedSubscript:{objc_msgSend(a1, "portType")}];
}

- (void)initWithStreams:(void *)a3 synchronizationPrimary:(float)a4 timeoutInSeconds:.cold.2(void *a1, void *a2, void *a3, float a4)
{
  v6 = [[BWStreamStartStopState alloc] initWithStream:a1 masterState:a2 timeoutInSeconds:a4];
  [a3 setObject:v6 forKeyedSubscript:{objc_msgSend(a1, "portType")}];
}

@end