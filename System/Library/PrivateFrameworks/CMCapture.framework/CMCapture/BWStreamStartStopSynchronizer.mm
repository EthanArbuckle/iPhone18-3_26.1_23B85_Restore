@interface BWStreamStartStopSynchronizer
- (BOOL)streamWillStart:(id)start;
- (BOOL)streamWillStop:(id)stop;
- (BOOL)waitForMasterAEToSettle;
- (BWStreamStartStopSynchronizer)initWithStreams:(id)streams synchronizationPrimary:(id)primary timeoutInSeconds:(float)seconds;
- (NSArray)synchronizationSlavesOrderedByPriority;
- (void)dealloc;
- (void)setSynchronizationSlavesOrderedByPriority:(id)priority;
- (void)setWaitForMasterAEToSettle:(BOOL)settle;
- (void)streamDidStart:(id)start;
- (void)streamDidStop:(id)stop;
@end

@implementation BWStreamStartStopSynchronizer

- (BOOL)waitForMasterAEToSettle
{
  firstObject = [(NSArray *)[(NSDictionary *)self->_streamStatesByPortType allValues] firstObject];
  if (firstObject)
  {
    v3 = firstObject[68];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BWStreamStartStopSynchronizer)initWithStreams:(id)streams synchronizationPrimary:(id)primary timeoutInSeconds:(float)seconds
{
  v30.receiver = self;
  v30.super_class = BWStreamStartStopSynchronizer;
  v8 = [(BWStreamStartStopSynchronizer *)&v30 init];
  if (v8)
  {
    v8->_synchronizationPrimary = primary;
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [streams countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v10)
    {
      v11 = *v27;
      while (2)
      {
        for (i = 0; i != v10; i = (i + 1))
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(streams);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          if (v13 == v8->_synchronizationPrimary)
          {
            [(BWStreamStartStopSynchronizer *)v13 initWithStreams:v9 synchronizationPrimary:&v31 timeoutInSeconds:seconds];
            v10 = v31;
            goto LABEL_12;
          }
        }

        v10 = [streams countByEnumeratingWithState:&v26 objects:v25 count:16];
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
    v14 = [streams countByEnumeratingWithState:&v21 objects:v20 count:16];
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
            objc_enumerationMutation(streams);
          }

          v18 = *(*(&v21 + 1) + 8 * j);
          if (v18 != v8->_synchronizationPrimary)
          {
            [(BWStreamStartStopSynchronizer *)v18 initWithStreams:v10 synchronizationPrimary:v9 timeoutInSeconds:seconds];
          }
        }

        v15 = [streams countByEnumeratingWithState:&v21 objects:v20 count:16];
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

- (void)setWaitForMasterAEToSettle:(BOOL)settle
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSDictionary *)self->_streamStatesByPortType allValues];
  v5 = [(NSArray *)allValues countByEnumeratingWithState:&v11 objects:v10 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (v9)
        {
          *(v9 + 68) = settle;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)allValues countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

- (void)setSynchronizationSlavesOrderedByPriority:(id)priority
{
  self->_synchronizationSlavesOrderedByPriority = priority;
  v5 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [priority countByEnumeratingWithState:&v31 objects:v30 count:16];
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
          objc_enumerationMutation(priority);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [(NSDictionary *)self->_streamStatesByPortType objectForKeyedSubscript:[(BWFigVideoCaptureStream *)v11 portType]];
        if (v12)
        {
          if (v11 != self->_synchronizationPrimary)
          {
            v13 = v12;
            if (([array containsObject:v12] & 1) == 0)
            {
              [array addObject:v13];
            }
          }
        }
      }

      v8 = [priority countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  allValues = [(NSDictionary *)self->_streamStatesByPortType allValues];
  v15 = [(NSArray *)allValues countByEnumeratingWithState:&v26 objects:v25 count:16];
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
          objc_enumerationMutation(allValues);
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
          v21 = [array indexOfObject:*(*(&v26 + 1) + 8 * v18)];
          if (v21)
          {
            v23 = array;
            if (v21 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v23 = [array subarrayWithRange:{0, v21}];
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
      v24 = [(NSArray *)allValues countByEnumeratingWithState:&v26 objects:v25 count:16];
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

- (BOOL)streamWillStart:(id)start
{
  v3 = OUTLINED_FUNCTION_2_87(self, a2, start);
  v4 = OUTLINED_FUNCTION_3_79(v3);

  return [(BWStreamStartStopState *)v4 streamWillStart];
}

- (void)streamDidStart:(id)start
{
  v4 = OUTLINED_FUNCTION_2_87(self, a2, start);
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

- (BOOL)streamWillStop:(id)stop
{
  v3 = OUTLINED_FUNCTION_2_87(self, a2, stop);
  v4 = OUTLINED_FUNCTION_3_79(v3);

  return [(BWStreamStartStopState *)v4 streamWillStop];
}

- (void)streamDidStop:(id)stop
{
  v3 = OUTLINED_FUNCTION_2_87(self, a2, stop);
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