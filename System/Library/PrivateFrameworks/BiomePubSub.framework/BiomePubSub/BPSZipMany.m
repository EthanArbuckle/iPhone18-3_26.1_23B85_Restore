@interface BPSZipMany
- (BOOL)completed;
- (BPSZipMany)initWithPublishers:(id)a3;
- (id)_tryConstructResultArray;
- (id)nextEvent;
- (void)_resetBuffer;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSZipMany

- (BPSZipMany)initWithPublishers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BPSZipMany;
  v6 = [(BPSZipMany *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_publishers, a3);
    v7->_currentPublisher = 0;
    [(BPSZipMany *)v7 _resetBuffer];
  }

  return v7;
}

- (void)subscribe:(id)a3
{
  v11 = a3;
  v4 = [(BPSZipMany *)self publishers];
  v5 = [v4 count];

  v6 = [(_BPSAbstractZip *)[_BPSZipManyInner alloc] initWithDownstream:v11 upstreamCount:v5];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [(BPSZipMany *)self publishers];
      v9 = [v8 objectAtIndexedSubscript:i];
      v10 = [[_BPSAbstractZipSide alloc] initWithIndex:i zip:v6];
      [v9 subscribe:v10];
    }
  }
}

- (void)_resetBuffer
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [(BPSZipMany *)self publishers];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];
  [(BPSZipMany *)self setBuffer:v5];

  [(BPSZipMany *)self setBufferResultCount:0];
  v6 = [(BPSZipMany *)self publishers];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [(BPSZipMany *)self buffer];
      v10 = [MEMORY[0x1E695DFB0] null];
      [v9 addObject:v10];

      ++v8;
      v11 = [(BPSZipMany *)self publishers];
      v12 = [v11 count];
    }

    while (v8 < v12);
  }
}

- (id)_tryConstructResultArray
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(BPSZipMany *)self bufferResultCount];
  v4 = [(BPSZipMany *)self publishers];
  v5 = [v4 count];

  if (v3 == v5)
  {
    v6 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(BPSZipMany *)self buffer];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [MEMORY[0x1E695DFB0] null];
          v14 = [v12 isEqual:v13];

          if (v14)
          {

            v15 = 0;
            goto LABEL_13;
          }

          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v3 = [(BPSZipMany *)self publishers];
  [v3 count];

  v4 = 0;
  do
  {
    v5 = [(BPSZipMany *)self currentPublisher];
    v6 = [(BPSZipMany *)self currentPublisher]+ 1;
    v7 = [(BPSZipMany *)self publishers];
    -[BPSZipMany setCurrentPublisher:](self, "setCurrentPublisher:", v6 % [v7 count]);

    v8 = [(BPSZipMany *)self publishers];
    v9 = [v8 objectAtIndexedSubscript:v5];

    v10 = [(BPSZipMany *)self buffer];
    v11 = [v10 objectAtIndexedSubscript:v5];
    v12 = [MEMORY[0x1E695DFB0] null];
    v13 = [v11 isEqual:v12];

    if (v13)
    {
      v14 = [v9 nextEvent];
      if (v14)
      {
        v15 = [(BPSZipMany *)self buffer];
        [v15 setObject:v14 atIndexedSubscript:v5];

        [(BPSZipMany *)self setBufferResultCount:[(BPSZipMany *)self bufferResultCount]+ 1];
      }
    }

    v16 = [(BPSZipMany *)self _tryConstructResultArray];

    if (v16)
    {
      break;
    }

    ++v4;
    v17 = [(BPSZipMany *)self publishers];
    v18 = [v17 count];
  }

  while (v4 <= v18);

  return v16;
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
  v2 = [(BPSZipMany *)self publishers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) completed])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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