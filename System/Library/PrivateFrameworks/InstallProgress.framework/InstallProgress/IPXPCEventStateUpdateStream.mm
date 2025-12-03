@interface IPXPCEventStateUpdateStream
- (IPXPCEventStateUpdateStream)initWithStreamName:(id)name queue:(id)queue;
- (id)sink;
- (id)source;
@end

@implementation IPXPCEventStateUpdateStream

- (IPXPCEventStateUpdateStream)initWithStreamName:(id)name queue:(id)queue
{
  nameCopy = name;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = IPXPCEventStateUpdateStream;
  v8 = [(IPXPCEventStateUpdateStream *)&v12 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    streamName = v8->_streamName;
    v8->_streamName = v9;

    objc_storeStrong(&v8->_queue, queue);
    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (id)sink
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__IPXPCEventStateUpdateStream_sink__block_invoke;
  v4[3] = &unk_2797B1F90;
  v4[4] = self;
  v4[5] = &v5;
  IPDoWithLock(&self->_lock, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __35__IPXPCEventStateUpdateStream_sink__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [[IPXPCEventStateUpdateStreamSink alloc] initWithQueue:*(*(a1 + 32) + 32) streamName:*(*(a1 + 32) + 8)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (id)source
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__IPXPCEventStateUpdateStream_source__block_invoke;
  v4[3] = &unk_2797B1F90;
  v4[4] = self;
  v4[5] = &v5;
  IPDoWithLock(&self->_lock, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __37__IPXPCEventStateUpdateStream_source__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = [[IPXPCEventStateUpdateStreamSource alloc] initWithQueue:*(*(a1 + 32) + 32) streamName:*(*(a1 + 32) + 8)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

@end