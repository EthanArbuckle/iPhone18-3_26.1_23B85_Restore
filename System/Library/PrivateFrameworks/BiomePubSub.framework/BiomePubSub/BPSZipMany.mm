@interface BPSZipMany
- (BOOL)completed;
- (BPSZipMany)initWithPublishers:(id)publishers;
- (id)_tryConstructResultArray;
- (id)nextEvent;
- (void)_resetBuffer;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSZipMany

- (BPSZipMany)initWithPublishers:(id)publishers
{
  publishersCopy = publishers;
  v9.receiver = self;
  v9.super_class = BPSZipMany;
  v6 = [(BPSZipMany *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_publishers, publishers);
    v7->_currentPublisher = 0;
    [(BPSZipMany *)v7 _resetBuffer];
  }

  return v7;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  publishers = [(BPSZipMany *)self publishers];
  v5 = [publishers count];

  v6 = [(_BPSAbstractZip *)[_BPSZipManyInner alloc] initWithDownstream:subscribeCopy upstreamCount:v5];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      publishers2 = [(BPSZipMany *)self publishers];
      v9 = [publishers2 objectAtIndexedSubscript:i];
      v10 = [[_BPSAbstractZipSide alloc] initWithIndex:i zip:v6];
      [v9 subscribe:v10];
    }
  }
}

- (void)_resetBuffer
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  publishers = [(BPSZipMany *)self publishers];
  v5 = [v3 initWithCapacity:{objc_msgSend(publishers, "count")}];
  [(BPSZipMany *)self setBuffer:v5];

  [(BPSZipMany *)self setBufferResultCount:0];
  publishers2 = [(BPSZipMany *)self publishers];
  v7 = [publishers2 count];

  if (v7)
  {
    v8 = 0;
    do
    {
      buffer = [(BPSZipMany *)self buffer];
      null = [MEMORY[0x1E695DFB0] null];
      [buffer addObject:null];

      ++v8;
      publishers3 = [(BPSZipMany *)self publishers];
      v12 = [publishers3 count];
    }

    while (v8 < v12);
  }
}

- (id)_tryConstructResultArray
{
  v23 = *MEMORY[0x1E69E9840];
  bufferResultCount = [(BPSZipMany *)self bufferResultCount];
  publishers = [(BPSZipMany *)self publishers];
  v5 = [publishers count];

  if (bufferResultCount == v5)
  {
    v6 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    buffer = [(BPSZipMany *)self buffer];
    v8 = [buffer countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(buffer);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          null = [MEMORY[0x1E695DFB0] null];
          v14 = [v12 isEqual:null];

          if (v14)
          {

            v15 = 0;
            goto LABEL_13;
          }

          [v6 addObject:v12];
        }

        v9 = [buffer countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    [(BPSZipMany *)self _resetBuffer];
    v15 = v6;
LABEL_13:
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)nextEvent
{
  publishers = [(BPSZipMany *)self publishers];
  [publishers count];

  v4 = 0;
  do
  {
    currentPublisher = [(BPSZipMany *)self currentPublisher];
    v6 = [(BPSZipMany *)self currentPublisher]+ 1;
    publishers2 = [(BPSZipMany *)self publishers];
    -[BPSZipMany setCurrentPublisher:](self, "setCurrentPublisher:", v6 % [publishers2 count]);

    publishers3 = [(BPSZipMany *)self publishers];
    v9 = [publishers3 objectAtIndexedSubscript:currentPublisher];

    buffer = [(BPSZipMany *)self buffer];
    v11 = [buffer objectAtIndexedSubscript:currentPublisher];
    null = [MEMORY[0x1E695DFB0] null];
    v13 = [v11 isEqual:null];

    if (v13)
    {
      nextEvent = [v9 nextEvent];
      if (nextEvent)
      {
        buffer2 = [(BPSZipMany *)self buffer];
        [buffer2 setObject:nextEvent atIndexedSubscript:currentPublisher];

        [(BPSZipMany *)self setBufferResultCount:[(BPSZipMany *)self bufferResultCount]+ 1];
      }
    }

    _tryConstructResultArray = [(BPSZipMany *)self _tryConstructResultArray];

    if (_tryConstructResultArray)
    {
      break;
    }

    ++v4;
    publishers4 = [(BPSZipMany *)self publishers];
    v18 = [publishers4 count];
  }

  while (v4 <= v18);

  return _tryConstructResultArray;
}

- (void)reset
{
  [(BPSZipMany *)self setCurrentPublisher:0];
  [(BPSZipMany *)self _resetBuffer];
  v3.receiver = self;
  v3.super_class = BPSZipMany;
  [(BPSPublisher *)&v3 reset];
}

- (BOOL)completed
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  publishers = [(BPSZipMany *)self publishers];
  v3 = [publishers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(publishers);
        }

        if ([*(*(&v8 + 1) + 8 * i) completed])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [publishers countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

@end