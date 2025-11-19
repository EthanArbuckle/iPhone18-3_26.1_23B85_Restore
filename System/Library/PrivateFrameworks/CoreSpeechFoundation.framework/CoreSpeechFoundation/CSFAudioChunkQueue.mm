@interface CSFAudioChunkQueue
- (CSFAudioChunkQueue)initWithBufferCapacity:(unint64_t)a3;
- (id)copyChunkFromStartSampleCount:(unint64_t)a3 toEndSampleCount:(unint64_t)a4;
- (void)addChunk:(id)a3;
- (void)reset;
@end

@implementation CSFAudioChunkQueue

- (void)reset
{
  v3 = [(CSFAudioChunkQueue *)self circularQueue];
  [v3 removeAllObjects];

  [(CSFAudioChunkQueue *)self setTotalSampleCount:0];

  [(CSFAudioChunkQueue *)self setLastSampleCount:0];
}

- (id)copyChunkFromStartSampleCount:(unint64_t)a3 toEndSampleCount:(unint64_t)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = a4 - a3;
  if (a4 >= a3)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [(CSFAudioChunkQueue *)self circularQueue];
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if ([v14 startSampleCount] <= a3)
        {
          v15 = [v14 startSampleCount];
          if ([v14 numSamples] + v15 > a3)
          {
            v16 = a3 - [v14 startSampleCount];
            v17 = [v14 startSampleCount];
            v18 = v17 - a3 + [v14 numSamples];
            v19 = v14;
            v20 = v16;
LABEL_21:
            v24 = [v19 subChunkFrom:v20 numSamples:v18];
            if (v24)
            {
              [v8 addObject:v24];
            }

            continue;
          }
        }

        if ([v14 startSampleCount] <= a3 || (v21 = objc_msgSend(v14, "startSampleCount"), objc_msgSend(v14, "numSamples") + v21 > a4))
        {
          if ([v14 startSampleCount] < a4 && (v22 = objc_msgSend(v14, "startSampleCount"), objc_msgSend(v14, "numSamples") + v22 >= a4))
          {
            v18 = a4 - [v14 startSampleCount];
            v19 = v14;
            v20 = 0;
          }

          else
          {
            if ([v14 startSampleCount] > a3)
            {
              continue;
            }

            v23 = [v14 startSampleCount];
            if ([v14 numSamples] + v23 > a4)
            {
              continue;
            }

            v20 = a3 - [v14 startSampleCount];
            v19 = v14;
            v18 = v27;
          }

          goto LABEL_21;
        }

        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (!v11)
      {
LABEL_26:

        v4 = [v8 copy];
        goto LABEL_27;
      }
    }
  }

  v4 = 0;
LABEL_27:
  v25 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)addChunk:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = [(CSFAudioChunkQueue *)self circularQueue];
    [v5 addObject:v12];

    -[CSFAudioChunkQueue setTotalSampleCount:](self, "setTotalSampleCount:", -[CSFAudioChunkQueue totalSampleCount](self, "totalSampleCount") + [v12 numSamples]);
    while (1)
    {
      v6 = [(CSFAudioChunkQueue *)self circularQueue];
      if (![v6 count])
      {
        break;
      }

      v7 = [(CSFAudioChunkQueue *)self totalSampleCount];
      v8 = [(CSFAudioChunkQueue *)self bufferCapacity];

      if (v7 <= v8)
      {
        goto LABEL_7;
      }

      v9 = [(CSFAudioChunkQueue *)self circularQueue];
      v10 = [v9 firstObject];
      -[CSFAudioChunkQueue setTotalSampleCount:](self, "setTotalSampleCount:", -[CSFAudioChunkQueue totalSampleCount](self, "totalSampleCount") - [v10 numSamples]);

      v11 = [(CSFAudioChunkQueue *)self circularQueue];
      [v11 removeObjectAtIndex:0];
    }

LABEL_7:
    -[CSFAudioChunkQueue setLastSampleCount:](self, "setLastSampleCount:", -[CSFAudioChunkQueue lastSampleCount](self, "lastSampleCount") + [v12 numSamples]);
    v4 = v12;
  }
}

- (CSFAudioChunkQueue)initWithBufferCapacity:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = CSFAudioChunkQueue;
  v4 = [(CSFAudioChunkQueue *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_bufferCapacity = a3;
    v4->_totalSampleCount = 0;
    v4->_lastSampleCount = 0;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    circularQueue = v5->_circularQueue;
    v5->_circularQueue = v6;
  }

  return v5;
}

@end