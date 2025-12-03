@interface HFMutablePriorityQueue
- (HFMutablePriorityQueue)init;
- (id)dequeue;
- (id)drain;
- (id)enqueue:(id)enqueue;
- (unint64_t)count;
- (void)_operateOnMatchingObjects:(id)objects removingMatched:(BOOL)matched lockedOperationBlock:(id)block;
- (void)_prioritizeObjects:(id)objects priorityBlock:(id)block;
- (void)prioritizeObjects:(id)objects increment:(int64_t)increment;
- (void)removeAllObjectsMatchingObjects:(id)objects;
- (void)removeFirstOfObjects:(id)objects;
- (void)removeObjectsWithEntries:(id)entries;
@end

@implementation HFMutablePriorityQueue

- (HFMutablePriorityQueue)init
{
  v6.receiver = self;
  v6.super_class = HFMutablePriorityQueue;
  v2 = [(HFMutablePriorityQueue *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D2C928] priorityQueueWithComparator:&__block_literal_global_12];
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

uint64_t __30__HFMutablePriorityQueue_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 priority];
  if (v6 <= [v5 priority])
  {
    v8 = [v5 priority];
    v7 = v8 > [v4 priority];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NAQueue *)self->_queue count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)enqueue:(id)enqueue
{
  enqueueCopy = enqueue;
  v5 = [[HFMutablePriorityQueueEntry alloc] initWithValue:enqueueCopy];

  os_unfair_lock_lock(&self->_lock);
  [(NAQueue *)self->_queue enqueue:v5];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)dequeue
{
  os_unfair_lock_lock(&self->_lock);
  dequeue = [(NAQueue *)self->_queue dequeue];
  value = [dequeue value];

  os_unfair_lock_unlock(&self->_lock);

  return value;
}

- (void)removeObjectsWithEntries:(id)entries
{
  v18 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  os_unfair_lock_lock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = entriesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        queue = [(HFMutablePriorityQueue *)self queue];
        [queue dequeueObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeFirstOfObjects:(id)objects
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__HFMutablePriorityQueue_removeFirstOfObjects___block_invoke;
  v3[3] = &unk_277DF3BF8;
  v3[4] = self;
  [(HFMutablePriorityQueue *)self _operateOnMatchingObjects:objects removingMatched:1 lockedOperationBlock:v3];
}

void __47__HFMutablePriorityQueue_removeFirstOfObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 queue];
  [v4 dequeueObject:v3];
}

- (void)removeAllObjectsMatchingObjects:(id)objects
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__HFMutablePriorityQueue_removeAllObjectsMatchingObjects___block_invoke;
  v3[3] = &unk_277DF3BF8;
  v3[4] = self;
  [(HFMutablePriorityQueue *)self _operateOnMatchingObjects:objects removingMatched:0 lockedOperationBlock:v3];
}

void __58__HFMutablePriorityQueue_removeAllObjectsMatchingObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 queue];
  [v4 dequeueObject:v3];
}

- (id)drain
{
  os_unfair_lock_lock(&self->_lock);
  queue = [(HFMutablePriorityQueue *)self queue];
  drain = [queue drain];
  v5 = [drain na_map:&__block_literal_global_26];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)prioritizeObjects:(id)objects increment:(int64_t)increment
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__HFMutablePriorityQueue_prioritizeObjects_increment___block_invoke;
  v4[3] = &__block_descriptor_40_e37_Q16__0__HFMutablePriorityQueueEntry_8l;
  v4[4] = increment;
  [(HFMutablePriorityQueue *)self _prioritizeObjects:objects priorityBlock:v4];
}

uint64_t __54__HFMutablePriorityQueue_prioritizeObjects_increment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 priority];
  v5 = *(a1 + 32);
  [v3 setPriority:v5 + v4];

  return v5 + v4;
}

- (void)_operateOnMatchingObjects:(id)objects removingMatched:(BOOL)matched lockedOperationBlock:(id)block
{
  matchedCopy = matched;
  v29 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  blockCopy = block;
  v9 = objc_alloc_init(MEMORY[0x277CCA940]);
  v22 = objectsCopy;
  v10 = [objectsCopy na_reduceWithInitialValue:v9 reducer:&__block_literal_global_34];

  os_unfair_lock_lock(&self->_lock);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  queue = [(HFMutablePriorityQueue *)self queue];
  allObjects = [queue allObjects];

  v13 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(allObjects);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        value = [v17 value];
        v19 = [v10 containsObject:value];

        if (v19)
        {
          blockCopy[2](blockCopy, v17);
          if (matchedCopy)
          {
            value2 = [v17 value];
            [v10 removeObject:value2];
          }
        }
      }

      v14 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  os_unfair_lock_unlock(&self->_lock);
  v21 = *MEMORY[0x277D85DE8];
}

id __89__HFMutablePriorityQueue__operateOnMatchingObjects_removingMatched_lockedOperationBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 addObject:a2];

  return v4;
}

- (void)_prioritizeObjects:(id)objects priorityBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HFMutablePriorityQueue__prioritizeObjects_priorityBlock___block_invoke;
  v8[3] = &unk_277DF3CA0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(HFMutablePriorityQueue *)self _operateOnMatchingObjects:objects removingMatched:1 lockedOperationBlock:v8];
}

void __59__HFMutablePriorityQueue__prioritizeObjects_priorityBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 queue];
  [v5 dequeueObject:v4];

  [v4 setPriority:(*(*(a1 + 40) + 16))()];
  v6 = [*(a1 + 32) queue];
  [v6 enqueue:v4];
}

@end