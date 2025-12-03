@interface BMPairedEventSession
+ (id)openSessionsFromBookmark:(id)bookmark;
+ (id)sessionPublisherWithStreamPublisher:(id)publisher startingBlock:(id)block sessionKeyBlock:(id)keyBlock options:(unint64_t)options;
- (BMPairedEventSession)initWithKey:(id)key startEvent:(id)event endEvent:(id)endEvent;
- (BMStoreEvent)endEvent;
- (BMStoreEvent)startEvent;
@end

@implementation BMPairedEventSession

- (BMPairedEventSession)initWithKey:(id)key startEvent:(id)event endEvent:(id)endEvent
{
  v18[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  eventCopy = event;
  endEventCopy = endEvent;
  null = eventCopy;
  if (!eventCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  null2 = endEventCopy;
  if (!endEventCopy)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v17.receiver = self;
  v17.super_class = BMPairedEventSession;
  v14 = [(BMEventSession *)&v17 initWithKey:keyCopy events:v13];

  if (!endEventCopy)
  {

    if (eventCopy)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!eventCopy)
  {
    goto LABEL_9;
  }

LABEL_7:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BMStoreEvent)startEvent
{
  v3 = [(NSArray *)self->super._events objectAtIndexedSubscript:0];
  null = [MEMORY[0x1E695DFB0] null];
  if (v3 == null)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->super._events objectAtIndexedSubscript:0];
  }

  return v5;
}

- (BMStoreEvent)endEvent
{
  v3 = [(NSArray *)self->super._events objectAtIndexedSubscript:1];
  null = [MEMORY[0x1E695DFB0] null];
  if (v3 == null)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->super._events objectAtIndexedSubscript:1];
  }

  return v5;
}

+ (id)sessionPublisherWithStreamPublisher:(id)publisher startingBlock:(id)block sessionKeyBlock:(id)keyBlock options:(unint64_t)options
{
  publisherCopy = publisher;
  blockCopy = block;
  keyBlockCopy = keyBlock;
  if ((options & 2) != 0)
  {
    [BMPairedEventSession sessionPublisherWithStreamPublisher:a2 startingBlock:self sessionKeyBlock:? options:?];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __98__BMPairedEventSession_sessionPublisherWithStreamPublisher_startingBlock_sessionKeyBlock_options___block_invoke;
  v21[3] = &unk_1E6E54278;
  v14 = blockCopy;
  v22 = v14;
  v15 = [BMEventSession sessionPublisherWithStreamPublisher:publisherCopy startingBlock:v14 endingBlock:v21 sessionKeyBlock:keyBlockCopy options:options];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98__BMPairedEventSession_sessionPublisherWithStreamPublisher_startingBlock_sessionKeyBlock_options___block_invoke_2;
  v19[3] = &unk_1E6E542A0;
  v20 = v14;
  v16 = v14;
  v17 = [v15 mapWithTransform:v19];

  return v17;
}

BMPairedEventSession *__98__BMPairedEventSession_sessionPublisherWithStreamPublisher_startingBlock_sessionKeyBlock_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 events];
  v5 = [v4 count];

  if (v5 == 2)
  {
    v6 = [BMPairedEventSession alloc];
    v7 = [v3 key];
    v8 = [v3 events];
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v3 events];
    v11 = [v10 objectAtIndexedSubscript:1];
    v12 = [(BMPairedEventSession *)v6 initWithKey:v7 startEvent:v9 endEvent:v11];
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [v3 events];
    v15 = [v14 objectAtIndexedSubscript:0];
    v16 = (*(v13 + 16))(v13, v15);

    v17 = [BMPairedEventSession alloc];
    v7 = [v3 key];
    v8 = [v3 events];
    v9 = [v8 objectAtIndexedSubscript:0];
    if (v16)
    {
      v18 = v9;
      v19 = 0;
    }

    else
    {
      v18 = 0;
      v19 = v9;
    }

    v12 = [(BMPairedEventSession *)v17 initWithKey:v7 startEvent:v18 endEvent:v19];
  }

  return v12;
}

+ (id)openSessionsFromBookmark:(id)bookmark
{
  upstreams = [bookmark upstreams];
  v4 = [upstreams objectAtIndexedSubscript:0];
  v5 = [BMEventSession openSessionsFromBookmark:v4];

  v6 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_69_0];

  return v6;
}

BMPairedEventSession *__49__BMPairedEventSession_openSessionsFromBookmark___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [BMPairedEventSession alloc];
  v4 = [v2 key];
  v5 = [v2 events];

  v6 = [v5 firstObject];
  v7 = [(BMPairedEventSession *)v3 initWithKey:v4 startEvent:v6 endEvent:0];

  return v7;
}

@end