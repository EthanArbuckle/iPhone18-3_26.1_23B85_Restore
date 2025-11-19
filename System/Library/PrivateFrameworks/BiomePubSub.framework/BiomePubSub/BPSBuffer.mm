@interface BPSBuffer
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BPSBuffer)initWithUpstream:(id)a3 size:(unint64_t)a4 prefetch:(unint64_t)a5 whenFull:(unint64_t)a6 values:(id)a7;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (id)validateBookmark:(id)a3;
- (void)addToBuffer:(id)a3;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSBuffer

- (BPSBuffer)initWithUpstream:(id)a3 size:(unint64_t)a4 prefetch:(unint64_t)a5 whenFull:(unint64_t)a6 values:(id)a7
{
  v13 = a3;
  v14 = a7;
  v20.receiver = self;
  v20.super_class = BPSBuffer;
  v15 = [(BPSBuffer *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_upstream, a3);
    v16->_size = a4;
    v16->_prefetch = a5;
    v16->_whenFull = a6;
    objc_storeStrong(&v16->_values, a7);
    v17 = objc_opt_new();
    buffer = v16->_buffer;
    v16->_buffer = v17;
  }

  return v16;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = [[BPSBufferInner alloc] initWithDownstream:v4 size:self->_size prefetch:self->_prefetch whenFull:self->_whenFull];

  [(BPSPublisher *)self->_upstream subscribe:v5];
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSBuffer *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  prefetch = self->_prefetch;
  if (prefetch == 1)
  {
    v9 = [(BPSBuffer *)self upstream];
    v10 = [v9 nextEvent];

    if (v10)
    {
      do
      {
        [(BPSBuffer *)self addToBuffer:v10];
        v11 = [(BPSBuffer *)self upstream];
        v12 = [v11 nextEvent];

        v10 = v12;
      }

      while (v12);
    }
  }

  else
  {
    if (prefetch)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v4 = [(BPSBuffer *)self buffer];
      v5 = [v4 count];
      v6 = [(BPSBuffer *)self size];

      if (v5 >= v6)
      {
        break;
      }

      v7 = [(BPSBuffer *)self upstream];
      v8 = [v7 nextEvent];

      if (!v8)
      {
        break;
      }

      [(BPSBuffer *)self addToBuffer:v8];
    }
  }

  v13 = [(BPSBuffer *)self buffer];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [(BPSBuffer *)self buffer];
    v16 = [v15 objectAtIndex:0];

    v17 = [(BPSBuffer *)self buffer];
    [v17 removeObjectAtIndex:0];

    goto LABEL_11;
  }

LABEL_10:
  v16 = 0;
LABEL_11:

  return v16;
}

- (void)addToBuffer:(id)a3
{
  v13 = a3;
  whenFull = self->_whenFull;
  if (whenFull != 1)
  {
    if (whenFull)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v5 = [(BPSBuffer *)self buffer];
  v6 = [v5 count];
  if (v6 >= [(BPSBuffer *)self size])
  {
    v7 = [(BPSBuffer *)self buffer];
    v8 = [v7 count];

    if (!v8)
    {
      goto LABEL_8;
    }

    v5 = [(BPSBuffer *)self buffer];
    [v5 removeObjectAtIndex:0];
  }

LABEL_8:
  v9 = [(BPSBuffer *)self buffer];
  v10 = [v9 count];
  v11 = [(BPSBuffer *)self size];

  if (v10 < v11)
  {
    v12 = [(BPSBuffer *)self buffer];
    [v12 addObject:v13];
  }

LABEL_10:
}

- (void)reset
{
  v3 = objc_opt_new();
  [(BPSBuffer *)self setBuffer:v3];

  v4.receiver = self;
  v4.super_class = BPSBuffer;
  [(BPSPublisher *)&v4 reset];
}

- (id)validateBookmark:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    v7 = [v5 initWithFormat:@"%@ expected bookmark of class %@, but received %@", v6, objc_opt_class(), v3];
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v4 = [v8 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v9];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)bookmarkableUpstreams
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self->_upstream;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BPSBuffer publisherWithPublisher:a2 upstreams:a1 bookmarkState:?];
    }
  }

  v12 = v9;
  v13 = [BPSBuffer alloc];
  v14 = [v12 upstream];
  v15 = [v12 size];
  v16 = [v12 prefetch];
  v17 = [v12 whenFull];

  v18 = [(BPSBuffer *)v13 initWithUpstream:v14 size:v15 prefetch:v16 whenFull:v17 values:v11];

  return v18;
}

+ (void)publisherWithPublisher:(uint64_t)a1 upstreams:(uint64_t)a2 bookmarkState:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSBuffer.m" lineNumber:472 description:@"bookmark for Buffer should be a buffer object"];
}

@end