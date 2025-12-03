@interface HDPriorityQueue
- (BOOL)_lock_isObject:(uint64_t)object greaterThan:(uint64_t)than;
- (BOOL)_lock_isObject:(uint64_t)object greaterThanOrEqualTo:;
- (BOOL)isEmpty;
- (HDPriorityQueue)initWithComparisonBlock:(id)block;
- (id)initMinHeapWithComparisonBlock:(id)block;
- (id)peek;
- (id)remove;
- (unint64_t)count;
- (void)_lock_heapifyDown;
- (void)_lock_heapifyUp;
- (void)_lock_swapIndicies:(uint64_t)indicies with:;
- (void)insert:(id)insert;
@end

@implementation HDPriorityQueue

- (id)remove
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_heap count])
  {
    v3 = [(NSMutableArray *)self->_heap objectAtIndexedSubscript:0];
    v5 = [(NSMutableArray *)self->_heap objectAtIndexedSubscript:[(NSMutableArray *)self->_heap count]- 1];
    [(NSMutableArray *)self->_heap setObject:v5 atIndexedSubscript:0];

    [(NSMutableArray *)self->_heap removeLastObject];
    [(HDPriorityQueue *)self _lock_heapifyDown];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_lock_heapifyUp
{
  if (self)
  {
    v2 = [*(self + 8) count];
    if (v2 >= 2)
    {
      v3 = v2 - 1;
      do
      {
        v4 = v3 - 1;
        if ([(HDPriorityQueue *)self _lock_isObject:v3 greaterThanOrEqualTo:?])
        {
          break;
        }

        v5 = OUTLINED_FUNCTION_1_3();
        [(HDPriorityQueue *)v5 _lock_swapIndicies:v6 with:v7];
        v3 = (v3 - 1) >> 1;
      }

      while (v4 > 1);
    }
  }
}

- (void)_lock_heapifyDown
{
  if (self)
  {
    v2 = [*(self + 8) count];
    if (v2 >= 2)
    {
      v3 = 0;
      v4 = v2 - 1;
      do
      {
        v5 = 2 * v3;
        if (2 * v3 >= v4)
        {
          break;
        }

        v6 = (2 * v3) | 1;
        v7 = v5 + 2;
        if (v5 + 2 <= v4 && [HDPriorityQueue _lock_isObject:self greaterThan:v5 + 2])
        {
          v6 = v7;
        }

        v8 = OUTLINED_FUNCTION_1_3();
        if ([(HDPriorityQueue *)v8 _lock_isObject:v9 greaterThanOrEqualTo:v10])
        {
          break;
        }

        v11 = OUTLINED_FUNCTION_1_3();
        [(HDPriorityQueue *)v11 _lock_swapIndicies:v12 with:v13];
        v3 = v6;
      }

      while (v6 < v4);
    }
  }
}

- (HDPriorityQueue)initWithComparisonBlock:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = HDPriorityQueue;
  v5 = [(HDPriorityQueue *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    heap = v6->_heap;
    v6->_heap = v7;

    v9 = [blockCopy copy];
    comparisonBlock = v6->_comparisonBlock;
    v6->_comparisonBlock = v9;
  }

  return v6;
}

- (id)initMinHeapWithComparisonBlock:(id)block
{
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = HDPriorityQueue;
  v5 = [(HDPriorityQueue *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    heap = v6->_heap;
    v6->_heap = v7;

    v9 = [blockCopy copy];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__HDPriorityQueue_initMinHeapWithComparisonBlock___block_invoke;
    aBlock[3] = &unk_2796BDE28;
    v15 = v9;
    v10 = v9;
    v11 = _Block_copy(aBlock);
    comparisonBlock = v6->_comparisonBlock;
    v6->_comparisonBlock = v11;
  }

  return v6;
}

uint64_t __50__HDPriorityQueue_initMinHeapWithComparisonBlock___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  if (v1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  if (v1 == -1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

- (void)insert:(id)insert
{
  insertCopy = insert;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_heap addObject:insertCopy];

  [(HDPriorityQueue *)self _lock_heapifyUp];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)peek
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_heap count])
  {
    v3 = [(NSMutableArray *)self->_heap objectAtIndexedSubscript:0];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_heap count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)isEmpty
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_heap count]== 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)_lock_isObject:(uint64_t)object greaterThan:(uint64_t)than
{
  if (!object)
  {
    return 0;
  }

  v4 = *(object + 24);
  v5 = [*(object + 8) objectAtIndexedSubscript:?];
  [*(object + 8) objectAtIndexedSubscript:than];
  objc_claimAutoreleasedReturnValue();
  v6 = OUTLINED_FUNCTION_0_5();
  v8 = v7(v6) == -1;

  return v8;
}

- (BOOL)_lock_isObject:(uint64_t)object greaterThanOrEqualTo:
{
  if (!self)
  {
    return 0;
  }

  v5 = *(self + 24);
  v6 = [*(self + 8) objectAtIndexedSubscript:a2];
  [*(self + 8) objectAtIndexedSubscript:object];
  objc_claimAutoreleasedReturnValue();
  v7 = OUTLINED_FUNCTION_0_5();
  v9 = v8(v7) != -1;

  return v9;
}

- (void)_lock_swapIndicies:(uint64_t)indicies with:
{
  if (self)
  {
    v7 = [*(self + 8) objectAtIndexedSubscript:a2];
    v6 = [*(self + 8) objectAtIndexedSubscript:indicies];
    [*(self + 8) setObject:v6 atIndexedSubscript:a2];

    [*(self + 8) setObject:v7 atIndexedSubscript:indicies];
  }
}

@end