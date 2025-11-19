@interface BWInferenceResultRingBuffers
- (BWInferenceResultRingBuffers)init;
- (id)retrieveInferencesForType:(int)a3 beginning:(id *)a4 until:(id *)a5;
- (void)bufferingStatsForType:(int)a3 firstOut:(id *)a4 lastOut:(id *)a5 countOut:(int *)a6;
- (void)dealloc;
- (void)insertInferenceResultsFromSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)setupRingBuffer:(int)a3 inferencesOfType:(int)a4;
@end

@implementation BWInferenceResultRingBuffers

- (BWInferenceResultRingBuffers)init
{
  v4.receiver = self;
  v4.super_class = BWInferenceResultRingBuffers;
  v2 = [(BWInferenceResultRingBuffers *)&v4 init];
  if (v2)
  {
    v2->_lock = FigSimpleMutexCreate();
    v2->_rings = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();

  v3.receiver = self;
  v3.super_class = BWInferenceResultRingBuffers;
  [(BWInferenceResultRingBuffers *)&v3 dealloc];
}

- (void)setupRingBuffer:(int)a3 inferencesOfType:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  FigSimpleMutexLock();
  if (v5)
  {
    v7 = [[BWObjectRingBuffer alloc] initWithCapacity:v5];
    [(BWObjectRingBuffer *)v7 setExpectAscending:1];
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_rings, "setObject:forKeyedSubscript:", v7, [MEMORY[0x1E696AD98] numberWithInt:v4]);
  }

  else
  {
    -[NSMutableDictionary removeObjectForKey:](self->_rings, "removeObjectForKey:", [MEMORY[0x1E696AD98] numberWithInt:v4]);
  }

  FigSimpleMutexUnlock();
}

- (id)retrieveInferencesForType:(int)a3 beginning:(id *)a4 until:(id *)a5
{
  v7 = *&a3;
  FigSimpleMutexLock();
  time1 = *a4;
  time2 = *a5;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    [BWInferenceResultRingBuffers retrieveInferencesForType:beginning:until:];
LABEL_8:
    v11 = 0;
    goto LABEL_5;
  }

  v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_rings, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v7]);
  if (!v9)
  {
    [BWInferenceResultRingBuffers retrieveInferencesForType:beginning:until:];
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  if ([v10 count] <= 0)
  {
    [BWInferenceResultRingBuffers retrieveInferencesForType:beginning:until:];
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__BWInferenceResultRingBuffers_retrieveInferencesForType_beginning_until___block_invoke;
    v13[3] = &unk_1E7999F40;
    v14 = *&a5->var0;
    var3 = a5->var3;
    v13[4] = v11;
    time1 = *a4;
    [v10 enumerateObjectsStartingAt:&time1 usingBlock:v13];
  }

LABEL_5:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t __74__BWInferenceResultRingBuffers_retrieveInferencesForType_beginning_until___block_invoke(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4, _BYTE *a5)
{
  time1 = *a3;
  v9 = *(a1 + 40);
  result = CMTimeCompare(&time1, &v9);
  if ((result & 0x80000000) != 0)
  {
    return [*(a1 + 32) addObject:a2];
  }

  *a5 = 1;
  return result;
}

- (void)bufferingStatsForType:(int)a3 firstOut:(id *)a4 lastOut:(id *)a5 countOut:(int *)a6
{
  v9 = *&a3;
  FigSimpleMutexLock();
  v11 = -[NSMutableDictionary objectForKeyedSubscript:](self->_rings, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v9]);
  v12 = v11;
  if (a4)
  {
    if (!v11)
    {
      v14 = MEMORY[0x1E6960C70];
      *&a4->var0 = *MEMORY[0x1E6960C70];
      a4->var3 = *(v14 + 16);
      if (!a5)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    [v11 firstTime];
    *&a4->var0 = v16;
    a4->var3 = v17;
  }

  if (!a5)
  {
    goto LABEL_10;
  }

  if (!v12)
  {
LABEL_8:
    v15 = MEMORY[0x1E6960C70];
    *&a5->var0 = *MEMORY[0x1E6960C70];
    v13 = *(v15 + 16);
    goto LABEL_9;
  }

  [v12 lastTime];
  *&a5->var0 = v16;
  v13 = v17;
LABEL_9:
  a5->var3 = v13;
LABEL_10:
  if (a6)
  {
    *a6 = [v12 count];
  }

  FigSimpleMutexUnlock();
}

- (void)insertInferenceResultsFromSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  FigSimpleMutexLock();
  rings = self->_rings;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__BWInferenceResultRingBuffers_insertInferenceResultsFromSampleBuffer___block_invoke;
  v6[3] = &__block_descriptor_40_e45_v32__0__NSNumber_8__BWObjectRingBuffer_16_B24l;
  v6[4] = a3;
  [(NSMutableDictionary *)rings enumerateKeysAndObjectsUsingBlock:v6];
  FigSimpleMutexUnlock();
}

uint64_t __71__BWInferenceResultRingBuffers_insertInferenceResultsFromSampleBuffer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = BWInferenceGetAttachedInferenceResult(*(a1 + 32), [a2 longValue]);
  if (result)
  {
    v5 = result;
    if ([a3 count] >= 1)
    {
      if (a3)
      {
        [a3 lastTime];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      [v5 timestamp];
      if ((CMTimeCompare(&time1, &v6) & 0x80000000) == 0)
      {
        [a3 clear];
      }
    }

    [v5 timestamp];
    return [a3 appendObject:v5 forTime:&time1];
  }

  return result;
}

@end