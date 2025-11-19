@interface HKThrottledUpdateData
- (HKThrottledUpdateData)initWithSampleType:(id)a3;
- (void)addThrottledObservers:(id)a3 samplesAdded:(id)a4 objectsRemoved:(id)a5;
- (void)clearThrottlingData;
@end

@implementation HKThrottledUpdateData

- (HKThrottledUpdateData)initWithSampleType:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = HKThrottledUpdateData;
  v6 = [(HKThrottledUpdateData *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_throttledSampleType, a3);
    v7->_incomingUpdateCountSinceLastDrain = 0;
    v8 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:5];
    throttledObservers = v7->_throttledObservers;
    v7->_throttledObservers = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    throttledSamplesAdded = v7->_throttledSamplesAdded;
    v7->_throttledSamplesAdded = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    throttledDeletedObjects = v7->_throttledDeletedObjects;
    v7->_throttledDeletedObjects = v12;

    v7->_lastDrainTime = CACurrentMediaTime();
  }

  return v7;
}

- (void)addThrottledObservers:(id)a3 samplesAdded:(id)a4 objectsRemoved:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v16 = [(HKThrottledUpdateData *)self throttledObservers];
        v17 = [v16 containsObject:v15];

        if ((v17 & 1) == 0)
        {
          v18 = [(HKThrottledUpdateData *)self throttledObservers];
          [v18 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v19 = [(HKThrottledUpdateData *)self throttledSamplesAdded];
  [v19 addObjectsFromArray:v9];

  v20 = [(HKThrottledUpdateData *)self throttledDeletedObjects];
  [v20 addObjectsFromArray:v10];

  ++self->_incomingUpdateCountSinceLastDrain;
}

- (void)clearThrottlingData
{
  v3 = [(HKThrottledUpdateData *)self throttledObservers];
  [v3 removeAllObjects];

  v4 = [(HKThrottledUpdateData *)self throttledSamplesAdded];
  [v4 removeAllObjects];

  v5 = [(HKThrottledUpdateData *)self throttledDeletedObjects];
  [v5 removeAllObjects];
}

@end