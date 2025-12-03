@interface HKThrottledUpdateData
- (HKThrottledUpdateData)initWithSampleType:(id)type;
- (void)addThrottledObservers:(id)observers samplesAdded:(id)added objectsRemoved:(id)removed;
- (void)clearThrottlingData;
@end

@implementation HKThrottledUpdateData

- (HKThrottledUpdateData)initWithSampleType:(id)type
{
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = HKThrottledUpdateData;
  v6 = [(HKThrottledUpdateData *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_throttledSampleType, type);
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

- (void)addThrottledObservers:(id)observers samplesAdded:(id)added objectsRemoved:(id)removed
{
  v26 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  addedCopy = added;
  removedCopy = removed;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [observersCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(observersCopy);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        throttledObservers = [(HKThrottledUpdateData *)self throttledObservers];
        v17 = [throttledObservers containsObject:v15];

        if ((v17 & 1) == 0)
        {
          throttledObservers2 = [(HKThrottledUpdateData *)self throttledObservers];
          [throttledObservers2 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [observersCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  throttledSamplesAdded = [(HKThrottledUpdateData *)self throttledSamplesAdded];
  [throttledSamplesAdded addObjectsFromArray:addedCopy];

  throttledDeletedObjects = [(HKThrottledUpdateData *)self throttledDeletedObjects];
  [throttledDeletedObjects addObjectsFromArray:removedCopy];

  ++self->_incomingUpdateCountSinceLastDrain;
}

- (void)clearThrottlingData
{
  throttledObservers = [(HKThrottledUpdateData *)self throttledObservers];
  [throttledObservers removeAllObjects];

  throttledSamplesAdded = [(HKThrottledUpdateData *)self throttledSamplesAdded];
  [throttledSamplesAdded removeAllObjects];

  throttledDeletedObjects = [(HKThrottledUpdateData *)self throttledDeletedObjects];
  [throttledDeletedObjects removeAllObjects];
}

@end