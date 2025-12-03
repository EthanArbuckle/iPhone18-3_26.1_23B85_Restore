@interface BWObjectRingBuffer
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)firstTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastTime;
- (BWObjectRingBuffer)initWithCapacity:(int)capacity;
- (Float64)_checkAscendingInsertAt:(uint64_t)at object:(CMTime *)object forTime:;
- (id)description;
- (id)firstObject;
- (id)lastObject;
- (int)_findClosestOffsetToTimestamp:(id *)timestamp;
- (uint64_t)_permuteBufferForNewObjectAtTime:(uint64_t)time;
- (void)_enumerateObjectsStartingAtOffset:(int)offset usingBlock:(id)block;
- (void)_reverseEnumerateObjectsStartingAtOffset:(int)offset usingBlock:(id)block;
- (void)appendObject:(id)object forTime:(id *)time;
- (void)clear;
- (void)dealloc;
- (void)enumerateObjectsStartingAt:(id *)at usingBlock:(id)block;
- (void)extractTimeRangeFrom:(id *)from until:(id *)until into:(id)into times:(id)times;
- (void)flushEntriesEarlierThan:(id *)than;
- (void)reverseEnumerateObjectsStartingAt:(id *)at usingBlock:(id)block;
- (void)setCapacity:(int)capacity;
- (void)setEnforceAscending:(BOOL)ascending;
@end

@implementation BWObjectRingBuffer

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWObjectRingBuffer)initWithCapacity:(int)capacity
{
  v3 = *&capacity;
  v7.receiver = self;
  v7.super_class = BWObjectRingBuffer;
  v4 = [(BWObjectRingBuffer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_ascending = 1;
    v4->_enforceAscending = 0;
    [(BWObjectRingBuffer *)v4 setCapacity:v3];
  }

  return v5;
}

- (void)dealloc
{
  [(BWObjectRingBuffer *)self setCapacity:0];
  v3.receiver = self;
  v3.super_class = BWObjectRingBuffer;
  [(BWObjectRingBuffer *)&v3 dealloc];
}

- (void)setCapacity:(int)capacity
{
  if (capacity < 1)
  {
    if (capacity < 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"setting negative capacity %d", *&capacity}];
    }

    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = malloc_type_malloc(8 * capacity, 0x80040B8603338uLL);
    v6 = malloc_type_malloc(24 * capacity, 0x1000040504FFAC1uLL);
  }

  count = self->_count;
  v8 = __OFSUB__(count, capacity);
  v9 = count - capacity;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__BWObjectRingBuffer_setCapacity___block_invoke;
  v11[3] = &__block_descriptor_52_e25_v52__0_8___qiIq_16i40_B44l;
  v12 = v9;
  v11[4] = v5;
  v11[5] = v6;
  [(BWObjectRingBuffer *)self _enumerateObjectsStartingAtOffset:0 usingBlock:v11];
  free(self->_objects);
  free(self->_times);
  self->_objects = v5;
  self->_times = v6;
  capacityCopy = self->_count;
  if (capacityCopy >= capacity)
  {
    capacityCopy = capacity;
  }

  self->_capacity = capacity;
  self->_count = capacityCopy;
  self->_oldest = 0;
}

uint64_t __34__BWObjectRingBuffer_setCapacity___block_invoke(uint64_t result, uint64_t a2, __int128 *a3, int a4)
{
  v4 = *(result + 48);
  v5 = __OFSUB__(a4, v4);
  v6 = a4 - v4;
  if (v6 < 0 != v5)
  {
    return MEMORY[0x1EEE66BB8](result, a2);
  }

  *(*(result + 32) + 8 * v6) = a2;
  v7 = *(result + 40) + 24 * (a4 - *(result + 48));
  v8 = *a3;
  *(v7 + 16) = *(a3 + 2);
  *v7 = v8;
  return result;
}

- (void)setEnforceAscending:(BOOL)ascending
{
  if (ascending && !self->_ascending)
  {
    if (self->_count >= 1)
    {
      v5 = malloc_type_malloc(8 * self->_capacity, 0x80040B8603338uLL);
      v6 = malloc_type_malloc(24 * self->_capacity, 0x1000040504FFAC1uLL);
      v7 = malloc_type_malloc(4 * self->_capacity, 0x100004052888210uLL);
      v8 = v7;
      capacity = self->_capacity;
      if (capacity >= 1)
      {
        for (i = 0; i < capacity; ++i)
        {
          v7[i] = i;
          capacity = self->_capacity;
        }
      }

      __compar[0] = MEMORY[0x1E69E9820];
      __compar[1] = 3221225472;
      __compar[2] = __42__BWObjectRingBuffer_setEnforceAscending___block_invoke;
      __compar[3] = &unk_1E7999CC8;
      __compar[4] = self;
      heapsort_b(v7, capacity, 4uLL, __compar);
      if (self->_count >= 1)
      {
        v11 = 0;
        v12 = v6;
        do
        {
          v5[v11] = self->_objects[v8[v11]];
          v13 = &self->_times[v8[v11]];
          v14 = *&v13->var0;
          v12->var3 = v13->var3;
          *&v12->var0 = v14;
          ++v12;
          ++v11;
        }

        while (v11 < self->_count);
      }

      free(v8);
      free(self->_objects);
      free(self->_times);
      self->_objects = v5;
      self->_times = v6;
      self->_oldest = 0;
    }

    self->_ascending = 1;
  }

  self->_enforceAscending = ascending;
}

uint64_t __42__BWObjectRingBuffer_setEnforceAscending___block_invoke(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  v9 = *a2;
  if (*a2 < v8)
  {
    v9 = *(v7 + 24) + v5;
  }

  v10 = v9 - v8;
  v11 = *(v7 + 28);
  v12 = *a3;
  if (v6 < v8)
  {
    v12 = *(v7 + 24) + v6;
  }

  v13 = v12 - v8;
  if (v10 < v11 && v13 < v11)
  {
    v23 = v3;
    v24 = v4;
    v16 = *(v7 + 16);
    v17 = (v16 + 24 * v5);
    v18 = (v16 + 24 * v6);
    v19 = *v17;
    time1.epoch = *(v17 + 2);
    *&time1.value = v19;
    v20 = *v18;
    v21.epoch = *(v18 + 2);
    *&v21.value = v20;
    return CMTimeCompare(&time1, &v21);
  }

  else if (v10 < v11)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v13 < v11;
  }
}

- (void)appendObject:(id)object forTime:(id *)time
{
  capacity = self->_capacity;
  if (!capacity)
  {
    return;
  }

  count = self->_count;
  oldest = self->_oldest;
  if (count == capacity)
  {
    if (oldest + 1 < capacity)
    {
      capacity = 0;
    }

    self->_oldest = oldest + 1 - capacity;
    if (self->_ascending)
    {
      if (self->_enforceAscending)
      {
        v10 = &self->_times[oldest];
        v11 = *&v10->var0;
        time1.epoch = v10->var3;
        *&time1.value = v11;
        v15 = *time;
        if (CMTimeCompare(&time1, &v15) >= 1)
        {
          v12 = self->_oldest;
          if (!v12)
          {
            v12 = self->_capacity;
          }

          self->_oldest = v12 - 1;
          return;
        }
      }

      time1 = *time;
      [(BWObjectRingBuffer *)self _checkAscendingInsertAt:object object:&time1 forTime:?];
    }
  }

  else
  {
    oldest = (oldest + count) % capacity;
    if (count >= 1 && self->_ascending)
    {
      time1 = *time;
      [(BWObjectRingBuffer *)self _checkAscendingInsertAt:object object:&time1 forTime:?];
      count = self->_count;
    }

    self->_count = count + 1;
  }

  if (self->_enforceAscending && !self->_ascending && self->_count >= 2)
  {
    time1 = *time;
    oldest = [(BWObjectRingBuffer *)self _permuteBufferForNewObjectAtTime:?];
    self->_ascending = 1;
  }

  self->_objects[oldest] = object;
  v13 = &self->_times[oldest];
  var3 = time->var3;
  *&v13->var0 = *&time->var0;
  v13->var3 = var3;
}

- (int)_findClosestOffsetToTimestamp:(id *)timestamp
{
  if (!self->_count)
  {
    v5 = *MEMORY[0x1E695DA20];
    time = *timestamp;
    [MEMORY[0x1E695DF30] raise:v5 format:{@"searching for %.4f, empty ring buffer", CMTimeGetSeconds(&time)}];
  }

  if (self->_ascending)
  {
    count = self->_count;
    v7 = 0;
    v8 = count - 1;
    if (count >= 1)
    {
      v9 = count - 1;
      while (1)
      {
        v10 = v7 + (v9 - v7) / 2;
        v11 = &self->_times[(self->_oldest + v10) % self->_capacity];
        v12 = *&v11->var0;
        time.epoch = v11->var3;
        *&time.value = v12;
        time2 = *timestamp;
        v13 = CMTimeCompare(&time, &time2);
        switch(v13)
        {
          case -1:
            if (v10 == v8)
            {
              return v8;
            }

            v7 = v10 + 1;
            break;
          case 1:
            if (!v10)
            {
              return v10;
            }

            v9 = v10 - 1;
            break;
          case 0:
            return v10;
        }

        if (v7 > v9)
        {
          goto LABEL_28;
        }
      }
    }

    v9 = count - 1;
LABEL_28:
    oldest = self->_oldest;
    capacity = self->_capacity;
    v27 = (oldest + v9) % capacity;
    memset(&time, 0, sizeof(time));
    v28 = &self->_times[(oldest + v7) % capacity];
    lhs = *timestamp;
    v29 = *&v28->var0;
    rhs.epoch = v28->var3;
    *&rhs.value = v29;
    CMTimeSubtract(&time2, &lhs, &rhs);
    CMTimeAbsoluteValue(&time, &time2);
    memset(&time2, 0, sizeof(time2));
    v30 = &self->_times[v27];
    rhs = *timestamp;
    v31 = *&v30->var0;
    v34.epoch = v30->var3;
    *&v34.value = v31;
    CMTimeSubtract(&lhs, &rhs, &v34);
    CMTimeAbsoluteValue(&time2, &lhs);
    lhs = time;
    rhs = time2;
    if (CMTimeCompare(&lhs, &rhs) >= 1)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v14 = self->_oldest % self->_capacity;
    memset(&time, 0, sizeof(time));
    v15 = &self->_times[v14];
    v16 = *&v15->var0;
    lhs.epoch = v15->var3;
    *&lhs.value = v16;
    rhs = *timestamp;
    CMTimeSubtract(&time2, &lhs, &rhs);
    CMTimeAbsoluteValue(&time, &time2);
    v17 = self->_capacity;
    v18 = (self->_count + self->_oldest) % v17;
    if (v14 + 1 >= v17)
    {
      v19 = self->_capacity;
    }

    else
    {
      v19 = 0;
    }

    v20 = v14 + 1 - v19;
    if (v20 != v18)
    {
      v21 = MEMORY[0x1E6960CC0];
      while (1)
      {
        memset(&time2, 0, sizeof(time2));
        v22 = &self->_times[v20];
        v23 = *&v22->var0;
        rhs.epoch = v22->var3;
        *&rhs.value = v23;
        v34 = *timestamp;
        CMTimeSubtract(&lhs, &rhs, &v34);
        CMTimeAbsoluteValue(&time2, &lhs);
        lhs = time2;
        rhs = time;
        if (CMTimeCompare(&lhs, &rhs) < 0)
        {
          time = time2;
          lhs = time2;
          rhs = *v21;
          v14 = v20;
          if (!CMTimeCompare(&lhs, &rhs))
          {
            break;
          }
        }

        v24 = self->_capacity;
        if (v20 + 1 < v24)
        {
          v24 = 0;
        }

        v20 = v20 + 1 - v24;
        if (v20 == v18)
        {
          goto LABEL_32;
        }
      }

      v14 = v20;
    }

LABEL_32:
    v32 = self->_oldest;
    if (v14 < v32)
    {
      v14 += self->_capacity;
    }

    return v14 - v32;
  }
}

- (id)firstObject
{
  if (self->_count)
  {
    return self->_objects[self->_oldest];
  }

  else
  {
    return 0;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)firstTime
{
  if (HIDWORD(self[1].var0))
  {
    v3 = (self->var3 + 24 * self[1].var1);
  }

  else
  {
    v3 = MEMORY[0x1E6960C70];
  }

  *retstr = *v3;
  return self;
}

- (id)lastObject
{
  count = self->_count;
  if (count)
  {
    return self->_objects[(count + self->_oldest - 1) % self->_capacity];
  }

  else
  {
    return 0;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastTime
{
  var0_high = HIDWORD(self[1].var0);
  if (var0_high)
  {
    v4 = (self->var3 + 24 * ((var0_high + self[1].var1 - 1) % SLODWORD(self[1].var0)));
  }

  else
  {
    v4 = MEMORY[0x1E6960C70];
  }

  *retstr = *v4;
  return self;
}

- (void)enumerateObjectsStartingAt:(id *)at usingBlock:(id)block
{
  if (self->_count)
  {
    time1 = *at;
    v6 = [(BWObjectRingBuffer *)self _findClosestOffsetToTimestamp:&time1];
    v7 = &self->_times[(self->_oldest + v6) % self->_capacity];
    v8 = *&v7->var0;
    time1.epoch = v7->var3;
    *&time1.value = v8;
    v9 = *at;
    if ((v6 + (CMTimeCompare(&time1, &v9) >> 31)) < self->_count)
    {
      [BWObjectRingBuffer _enumerateObjectsStartingAtOffset:"_enumerateObjectsStartingAtOffset:usingBlock:" usingBlock:?];
    }
  }
}

- (void)_enumerateObjectsStartingAtOffset:(int)offset usingBlock:(id)block
{
  v5 = *&offset;
  count = self->_count;
  if (offset < 0 || count <= offset)
  {
    if (count == offset)
    {
      return;
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"Invalid start %d for ring buffer of count %d", *&offset, count}];
    LODWORD(count) = self->_count;
  }

  v20 = 0;
  oldest = self->_oldest;
  capacity = self->_capacity;
  v10 = (oldest + v5) % capacity;
  v11 = (count + oldest) % capacity;
  do
  {
    v12 = self->_objects[v10];
    v13 = &self->_times[v10];
    v14 = *(block + 2);
    v15 = *&v13->var0;
    var3 = v13->var3;
    v18 = v15;
    v14(block, v12, &v18, v5, &v20);
    if (v20)
    {
      break;
    }

    v5 = (v5 + 1);
    v16 = v10 + 1;
    v17 = self->_capacity;
    if (v10 + 1 < v17)
    {
      v17 = 0;
    }

    v10 = v16 - v17;
  }

  while (v16 - v17 != v11);
}

- (void)reverseEnumerateObjectsStartingAt:(id *)at usingBlock:(id)block
{
  if (self->_count)
  {
    time1 = *at;
    v7 = [(BWObjectRingBuffer *)self _findClosestOffsetToTimestamp:&time1];
    v8 = &self->_times[(self->_oldest + v7) % self->_capacity];
    v9 = *&v8->var0;
    time1.epoch = v8->var3;
    *&time1.value = v9;
    v11 = *at;
    v10 = CMTimeCompare(&time1, &v11) > 0;
    if (v7 - v10 >= 0)
    {
      [(BWObjectRingBuffer *)self _reverseEnumerateObjectsStartingAtOffset:(v7 - v10) usingBlock:block];
    }
  }
}

- (void)_reverseEnumerateObjectsStartingAtOffset:(int)offset usingBlock:(id)block
{
  v5 = *&offset;
  if (offset < 0)
  {
    if (offset == -1)
    {
      return;
    }

    count = self->_count;
  }

  else
  {
    count = self->_count;
    if (count > offset)
    {
      goto LABEL_7;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"Invalid start %d for ring buffer of count %d", *&offset, count}];
LABEL_7:
  v18 = 0;
  oldest = self->_oldest;
  v9 = (oldest + v5) % self->_capacity;
  if (oldest)
  {
    capacity = self->_oldest;
  }

  else
  {
    capacity = self->_capacity;
  }

  do
  {
    v11 = self->_objects[v9];
    v12 = &self->_times[v9];
    v13 = *(block + 2);
    v14 = *&v12->var0;
    var3 = v12->var3;
    v16 = v14;
    v13(block, v11, &v16, v5, &v18);
    if (v18)
    {
      break;
    }

    if (!v9)
    {
      v9 = self->_capacity;
    }

    v5 = (v5 - 1);
  }

  while (v9-- != capacity);
}

- (void)extractTimeRangeFrom:(id *)from until:(id *)until into:(id)into times:(id)times
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__BWObjectRingBuffer_extractTimeRangeFrom_until_into_times___block_invoke;
  v7[3] = &unk_1E7999CF0;
  v8 = *until;
  v7[4] = into;
  v7[5] = times;
  v6 = *from;
  [(BWObjectRingBuffer *)self enumerateObjectsStartingAt:&v6 usingBlock:v7];
}

uint64_t __60__BWObjectRingBuffer_extractTimeRangeFrom_until_into_times___block_invoke(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4, _BYTE *a5)
{
  time1 = *a3;
  v11 = *(a1 + 48);
  result = CMTimeCompare(&time1, &v11);
  if ((result & 0x80000000) != 0)
  {
    result = *(a1 + 32);
    if (result)
    {
      result = [result addObject:a2];
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      return [v10 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", a3, "{?=qiIq}")}];
    }
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

- (void)clear
{
  [(BWObjectRingBuffer *)self _enumerateObjectsStartingAtOffset:0 usingBlock:&__block_literal_global_91];
  self->_count = 0;
  self->_oldest = 0;
  self->_ascending = 1;
}

- (void)flushEntriesEarlierThan:(id *)than
{
  count = self->_count;
  if (count)
  {
    oldest = self->_oldest;
    v7 = (oldest + count) % self->_capacity;
    while (1)
    {
      v8 = &self->_times[oldest];
      v9 = *&v8->var0;
      time1.epoch = v8->var3;
      *&time1.value = v9;
      v13 = *than;
      if ((CMTimeCompare(&time1, &v13) & 0x80000000) == 0)
      {
        break;
      }

      capacity = self->_capacity;
      v11 = self->_count;
      if (oldest + 1 < capacity)
      {
        capacity = 0;
      }

      oldest = oldest + 1 - capacity;
      v12 = v11 - 1;
      self->_count = v11 - 1;
      self->_oldest = oldest;
      if (oldest == v7)
      {
        goto LABEL_9;
      }
    }

    v12 = self->_count;
LABEL_9:
    if (v12 <= 1)
    {
      self->_ascending = 1;
      if (!v12)
      {
        self->_oldest = 0;
      }
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"BWObjectRingBuffer %p holding %d of %d entries:\n", self, self->_count, self->_capacity];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__BWObjectRingBuffer_description__block_invoke;
  v5[3] = &unk_1E7999D38;
  v5[4] = v3;
  [(BWObjectRingBuffer *)self _enumerateObjectsStartingAtOffset:0 usingBlock:v5];
  return v3;
}

uint64_t __33__BWObjectRingBuffer_description__block_invoke(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  time = *a3;
  return [v4 appendFormat:@"#%d: %.4f %p\n", a4, CMTimeGetSeconds(&time), a2];
}

- (Float64)_checkAscendingInsertAt:(uint64_t)at object:(CMTime *)object forTime:
{
  if (self)
  {
    v6 = (a2 + *(self + 24) - 1) % *(self + 24);
    v7 = *(self + 16) + 24 * v6;
    v8 = *v7;
    time1.epoch = *(v7 + 16);
    *&time1.value = v8;
    time2 = *object;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      *(self + 36) = 0;
      if (*(self + 37) == 1)
      {
        v10 = *(self + 16) + 24 * v6;
        time2 = *object;
        v11 = *v10;
        v12.epoch = *(v10 + 16);
        *&v12.value = v11;
        CMTimeSubtract(&time1, &time2, &v12);
        return CMTimeGetSeconds(&time1);
      }
    }
  }

  return result;
}

- (uint64_t)_permuteBufferForNewObjectAtTime:(uint64_t)time
{
  if (!time)
  {
    return 0;
  }

  v4 = *(time + 24);
  LODWORD(v5) = (*(time + 32) + *(time + 28) - 1) % v4;
  if (v5)
  {
    v6 = (*(time + 32) + *(time + 28) - 1) % v4;
  }

  else
  {
    v6 = *(time + 24);
  }

  v7 = (v6 - 1);
  do
  {
    v8 = v5;
    v5 = v7;
    *(*(time + 8) + 8 * v8) = *(*(time + 8) + 8 * v7);
    v9 = *(time + 16);
    v10 = v9 + 24 * v8;
    v11 = (v9 + 24 * v7);
    v12 = *v11;
    *(v10 + 16) = *(v11 + 2);
    *v10 = v12;
    v13 = v7;
    if (!v7)
    {
      v13 = *(time + 24);
    }

    v14 = *(time + 32);
    v15 = v7;
    if (v7 < v14)
    {
      v15 = *(time + 24) + v7;
    }

    if (v15 <= v14)
    {
      break;
    }

    v7 = (v13 - 1);
    v16 = *(time + 16) + 24 * v7;
    v17 = *v16;
    time1.epoch = *(v16 + 16);
    *&time1.value = v17;
    v19 = *a2;
  }

  while (CMTimeCompare(&time1, &v19) > 0);
  return v5;
}

@end