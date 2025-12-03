@interface CSFAudioChunkQueue
- (CSFAudioChunkQueue)initWithBufferCapacity:(unint64_t)capacity;
- (id)copyChunkFromStartSampleCount:(unint64_t)count toEndSampleCount:(unint64_t)sampleCount;
- (void)addChunk:(id)chunk;
- (void)reset;
@end

@implementation CSFAudioChunkQueue

- (void)reset
{
  circularQueue = [(CSFAudioChunkQueue *)self circularQueue];
  [circularQueue removeAllObjects];

  [(CSFAudioChunkQueue *)self setTotalSampleCount:0];

  [(CSFAudioChunkQueue *)self setLastSampleCount:0];
}

- (id)copyChunkFromStartSampleCount:(unint64_t)count toEndSampleCount:(unint64_t)sampleCount
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = sampleCount - count;
  if (sampleCount >= count)
  {
    array = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    circularQueue = [(CSFAudioChunkQueue *)self circularQueue];
    v10 = [circularQueue countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v10)
    {
      goto LABEL_26;
    }

    v11 = v10;
    v12 = *v29;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(circularQueue);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if ([v14 startSampleCount] <= count)
        {
          startSampleCount = [v14 startSampleCount];
          if ([v14 numSamples] + startSampleCount > count)
          {
            v16 = count - [v14 startSampleCount];
            startSampleCount2 = [v14 startSampleCount];
            v18 = startSampleCount2 - count + [v14 numSamples];
            v19 = v14;
            v20 = v16;
LABEL_21:
            v24 = [v19 subChunkFrom:v20 numSamples:v18];
            if (v24)
            {
              [array addObject:v24];
            }

            continue;
          }
        }

        if ([v14 startSampleCount] <= count || (v21 = objc_msgSend(v14, "startSampleCount"), objc_msgSend(v14, "numSamples") + v21 > sampleCount))
        {
          if ([v14 startSampleCount] < sampleCount && (v22 = objc_msgSend(v14, "startSampleCount"), objc_msgSend(v14, "numSamples") + v22 >= sampleCount))
          {
            v18 = sampleCount - [v14 startSampleCount];
            v19 = v14;
            v20 = 0;
          }

          else
          {
            if ([v14 startSampleCount] > count)
            {
              continue;
            }

            startSampleCount3 = [v14 startSampleCount];
            if ([v14 numSamples] + startSampleCount3 > sampleCount)
            {
              continue;
            }

            v20 = count - [v14 startSampleCount];
            v19 = v14;
            v18 = v27;
          }

          goto LABEL_21;
        }

        if (v14)
        {
          [array addObject:v14];
        }
      }

      v11 = [circularQueue countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (!v11)
      {
LABEL_26:

        v4 = [array copy];
        goto LABEL_27;
      }
    }
  }

  v4 = 0;
LABEL_27:
  v25 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)addChunk:(id)chunk
{
  chunkCopy = chunk;
  if (chunkCopy)
  {
    v12 = chunkCopy;
    circularQueue = [(CSFAudioChunkQueue *)self circularQueue];
    [circularQueue addObject:v12];

    -[CSFAudioChunkQueue setTotalSampleCount:](self, "setTotalSampleCount:", -[CSFAudioChunkQueue totalSampleCount](self, "totalSampleCount") + [v12 numSamples]);
    while (1)
    {
      circularQueue2 = [(CSFAudioChunkQueue *)self circularQueue];
      if (![circularQueue2 count])
      {
        break;
      }

      totalSampleCount = [(CSFAudioChunkQueue *)self totalSampleCount];
      bufferCapacity = [(CSFAudioChunkQueue *)self bufferCapacity];

      if (totalSampleCount <= bufferCapacity)
      {
        goto LABEL_7;
      }

      circularQueue3 = [(CSFAudioChunkQueue *)self circularQueue];
      firstObject = [circularQueue3 firstObject];
      -[CSFAudioChunkQueue setTotalSampleCount:](self, "setTotalSampleCount:", -[CSFAudioChunkQueue totalSampleCount](self, "totalSampleCount") - [firstObject numSamples]);

      circularQueue4 = [(CSFAudioChunkQueue *)self circularQueue];
      [circularQueue4 removeObjectAtIndex:0];
    }

LABEL_7:
    -[CSFAudioChunkQueue setLastSampleCount:](self, "setLastSampleCount:", -[CSFAudioChunkQueue lastSampleCount](self, "lastSampleCount") + [v12 numSamples]);
    chunkCopy = v12;
  }
}

- (CSFAudioChunkQueue)initWithBufferCapacity:(unint64_t)capacity
{
  v9.receiver = self;
  v9.super_class = CSFAudioChunkQueue;
  v4 = [(CSFAudioChunkQueue *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_bufferCapacity = capacity;
    v4->_totalSampleCount = 0;
    v4->_lastSampleCount = 0;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:capacity];
    circularQueue = v5->_circularQueue;
    v5->_circularQueue = v6;
  }

  return v5;
}

@end