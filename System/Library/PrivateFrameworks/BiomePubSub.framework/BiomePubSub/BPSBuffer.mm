@interface BPSBuffer
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BPSBuffer)initWithUpstream:(id)upstream size:(unint64_t)size prefetch:(unint64_t)prefetch whenFull:(unint64_t)full values:(id)values;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (id)validateBookmark:(id)bookmark;
- (void)addToBuffer:(id)buffer;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSBuffer

- (BPSBuffer)initWithUpstream:(id)upstream size:(unint64_t)size prefetch:(unint64_t)prefetch whenFull:(unint64_t)full values:(id)values
{
  upstreamCopy = upstream;
  valuesCopy = values;
  v20.receiver = self;
  v20.super_class = BPSBuffer;
  v15 = [(BPSBuffer *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_upstream, upstream);
    v16->_size = size;
    v16->_prefetch = prefetch;
    v16->_whenFull = full;
    objc_storeStrong(&v16->_values, values);
    v17 = objc_opt_new();
    buffer = v16->_buffer;
    v16->_buffer = v17;
  }

  return v16;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = [[BPSBufferInner alloc] initWithDownstream:subscribeCopy size:self->_size prefetch:self->_prefetch whenFull:self->_whenFull];

  [(BPSPublisher *)self->_upstream subscribe:v5];
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSBuffer *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  prefetch = self->_prefetch;
  if (prefetch == 1)
  {
    upstream = [(BPSBuffer *)self upstream];
    nextEvent = [upstream nextEvent];

    if (nextEvent)
    {
      do
      {
        [(BPSBuffer *)self addToBuffer:nextEvent];
        upstream2 = [(BPSBuffer *)self upstream];
        nextEvent2 = [upstream2 nextEvent];

        nextEvent = nextEvent2;
      }

      while (nextEvent2);
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
      buffer = [(BPSBuffer *)self buffer];
      v5 = [buffer count];
      v6 = [(BPSBuffer *)self size];

      if (v5 >= v6)
      {
        break;
      }

      upstream3 = [(BPSBuffer *)self upstream];
      nextEvent3 = [upstream3 nextEvent];

      if (!nextEvent3)
      {
        break;
      }

      [(BPSBuffer *)self addToBuffer:nextEvent3];
    }
  }

  buffer2 = [(BPSBuffer *)self buffer];
  v14 = [buffer2 count];

  if (v14)
  {
    buffer3 = [(BPSBuffer *)self buffer];
    v16 = [buffer3 objectAtIndex:0];

    buffer4 = [(BPSBuffer *)self buffer];
    [buffer4 removeObjectAtIndex:0];

    goto LABEL_11;
  }

LABEL_10:
  v16 = 0;
LABEL_11:

  return v16;
}

- (void)addToBuffer:(id)buffer
{
  bufferCopy = buffer;
  whenFull = self->_whenFull;
  if (whenFull != 1)
  {
    if (whenFull)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  buffer = [(BPSBuffer *)self buffer];
  v6 = [buffer count];
  if (v6 >= [(BPSBuffer *)self size])
  {
    buffer2 = [(BPSBuffer *)self buffer];
    v8 = [buffer2 count];

    if (!v8)
    {
      goto LABEL_8;
    }

    buffer = [(BPSBuffer *)self buffer];
    [buffer removeObjectAtIndex:0];
  }

LABEL_8:
  buffer3 = [(BPSBuffer *)self buffer];
  v10 = [buffer3 count];
  v11 = [(BPSBuffer *)self size];

  if (v10 < v11)
  {
    buffer4 = [(BPSBuffer *)self buffer];
    [buffer4 addObject:bufferCopy];
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

- (id)validateBookmark:(id)bookmark
{
  v13[1] = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    bookmarkCopy = [v5 initWithFormat:@"%@ expected bookmark of class %@, but received %@", v6, objc_opt_class(), bookmarkCopy];
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = bookmarkCopy;
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

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  publisherCopy = publisher;
  upstreamsCopy = upstreams;
  stateCopy = state;
  if (stateCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BPSBuffer publisherWithPublisher:a2 upstreams:self bookmarkState:?];
    }
  }

  v12 = publisherCopy;
  v13 = [BPSBuffer alloc];
  upstream = [v12 upstream];
  v15 = [v12 size];
  prefetch = [v12 prefetch];
  whenFull = [v12 whenFull];

  v18 = [(BPSBuffer *)v13 initWithUpstream:upstream size:v15 prefetch:prefetch whenFull:whenFull values:stateCopy];

  return v18;
}

+ (void)publisherWithPublisher:(uint64_t)a1 upstreams:(uint64_t)a2 bookmarkState:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSBuffer.m" lineNumber:472 description:@"bookmark for Buffer should be a buffer object"];
}

@end