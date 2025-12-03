@interface HMIVideoEventBuffer
- (HMIVideoEventBuffer)initWithMaxCapacity:(int64_t)capacity;
- (id)description;
- (id)extractObjectsInTimeRange:(id *)range;
- (id)neighborsOfObject:(id)object;
- (id)objectsInTimeRange:(id *)range includeEnd:(BOOL)end;
- (void)addObject:(id)object;
- (void)removeAllObjects;
@end

@implementation HMIVideoEventBuffer

- (HMIVideoEventBuffer)initWithMaxCapacity:(int64_t)capacity
{
  v8.receiver = self;
  v8.super_class = HMIVideoEventBuffer;
  v4 = [(HMIVideoEventBuffer *)&v8 init];
  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    data = v4->_data;
    v4->_data = array;

    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_maxCapacity = capacity;
  }

  return v4;
}

- (void)removeAllObjects
{
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_data removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_data count]>= self->_maxCapacity)
  {
    [(NSMutableArray *)self->_data hmf_removeFirstObject];
  }

  v4 = [(NSMutableArray *)self->_data indexOfObject:objectCopy inSortedRange:0 options:[(NSMutableArray *)self->_data count] usingComparator:1024, &__block_literal_global_148];
  data = self->_data;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)data addObject:objectCopy];
  }

  else
  {
    [(NSMutableArray *)data insertObject:objectCopy atIndex:?];
  }

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __33__HMIVideoEventBuffer_addObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (!v4)
  {
    memset(&time1, 0, sizeof(time1));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v9, 0, sizeof(v9));
    goto LABEL_6;
  }

  [v4 time];
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v6 time];
LABEL_6:
  v7 = CMTimeCompare(&time1, &v9);

  return v7;
}

- (id)objectsInTimeRange:(id *)range includeEnd:(BOOL)end
{
  os_unfair_lock_lock_with_options();
  data = self->_data;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HMIVideoEventBuffer_objectsInTimeRange_includeEnd___block_invoke;
  v11[3] = &__block_descriptor_81_e32_B32__0___HMIVideoEvent__8Q16_B24l;
  endCopy = end;
  v8 = *&range->var0.var3;
  v12 = *&range->var0.var0;
  v13 = v8;
  v14 = *&range->var1.var1;
  v9 = [(NSMutableArray *)data hmf_objectsPassingTest:v11];
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

BOOL __53__HMIVideoEventBuffer_objectsInTimeRange_includeEnd___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 80) != 1)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 48);
  *&v8.start.value = *(a1 + 32);
  *&v8.start.epoch = v4;
  *&v8.duration.timescale = *(a1 + 64);
  CMTimeRangeGetEnd(&time1, &v8);
  if (v3)
  {
    [v3 time];
  }

  else
  {
    memset(&v8, 0, 24);
  }

  if (!CMTimeCompare(&time1, &v8.start))
  {
    v6 = 1;
  }

  else
  {
LABEL_6:
    if (v3)
    {
      [v3 time];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v5 = *(a1 + 48);
    *&v8.start.value = *(a1 + 32);
    *&v8.start.epoch = v5;
    *&v8.duration.timescale = *(a1 + 64);
    v6 = CMTimeRangeContainsTime(&v8, &time1) != 0;
  }

  return v6;
}

- (id)extractObjectsInTimeRange:(id *)range
{
  os_unfair_lock_lock_with_options();
  data = self->_data;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HMIVideoEventBuffer_extractObjectsInTimeRange___block_invoke;
  v10[3] = &__block_descriptor_80_e32_B32__0___HMIVideoEvent__8Q16_B24l;
  v6 = *&range->var0.var3;
  v11 = *&range->var0.var0;
  v12 = v6;
  v13 = *&range->var1.var1;
  v7 = [(NSMutableArray *)data indexesOfObjectsPassingTest:v10];
  v8 = [(NSMutableArray *)self->_data objectsAtIndexes:v7];
  [(NSMutableArray *)self->_data removeObjectsAtIndexes:v7];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

BOOL __49__HMIVideoEventBuffer_extractObjectsInTimeRange___block_invoke(_OWORD *a1, void *a2)
{
  if (a2)
  {
    [a2 time];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v3 = a1[3];
  *&v5.start.value = a1[2];
  *&v5.start.epoch = v3;
  *&v5.duration.timescale = a1[4];
  return CMTimeRangeContainsTime(&v5, &time) != 0;
}

- (id)neighborsOfObject:(id)object
{
  v11[2] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableArray *)self->_data indexOfObject:objectCopy inSortedRange:0 options:[(NSMutableArray *)self->_data count] usingComparator:1024, &__block_literal_global_153];
  if (v5 && v5 < [(NSMutableArray *)self->_data count])
  {
    v6 = [(NSMutableArray *)self->_data objectAtIndex:v5 - 1];
    v11[0] = v6;
    v7 = [(NSMutableArray *)self->_data objectAtIndex:v5];
    v11[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

LABEL_6:
    goto LABEL_8;
  }

  if (v5 < [(NSMutableArray *)self->_data count])
  {
    v6 = [(NSMutableArray *)self->_data objectAtIndex:v5];
    v10 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    goto LABEL_6;
  }

  v8 = MEMORY[0x277CBEBF8];
LABEL_8:
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

uint64_t __41__HMIVideoEventBuffer_neighborsOfObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (!v4)
  {
    memset(&time1, 0, sizeof(time1));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v9, 0, sizeof(v9));
    goto LABEL_6;
  }

  [v4 time];
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v6 time];
LABEL_6:
  v7 = CMTimeCompare(&time1, &v9);

  return v7;
}

- (id)description
{
  v2 = [(NSMutableArray *)self->_data na_map:&__block_literal_global_157];
  v3 = [v2 componentsJoinedByString:{@", "}];

  return v3;
}

id __34__HMIVideoEventBuffer_description__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 time];
  }

  else
  {
    memset(&v4, 0, sizeof(v4));
  }

  v2 = HMICMTimeDescription(&v4);

  return v2;
}

@end