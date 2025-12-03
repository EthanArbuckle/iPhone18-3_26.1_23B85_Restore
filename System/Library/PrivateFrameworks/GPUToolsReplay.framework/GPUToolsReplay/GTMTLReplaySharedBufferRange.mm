@interface GTMTLReplaySharedBufferRange
- (GTMTLReplaySharedBufferRange)initWithBuffer:(id)buffer;
- (GTMTLReplaySharedBufferRange)initWithHeap:(id)heap range:(_NSRange)range;
- (id)data;
- (id)tensorAlias:(id)alias;
@end

@implementation GTMTLReplaySharedBufferRange

- (id)data
{
  v3 = self->_heap;
  v4 = self->_heapBuffer;
  v5 = objc_alloc(MEMORY[0x277CBEA90]);
  contents = [(MTLBuffer *)v4 contents];
  location = self->_heapRange.location;
  length = self->_heapRange.length;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__GTMTLReplaySharedBufferRange_data__block_invoke;
  v13[3] = &unk_279658358;
  v14 = v4;
  v15 = v3;
  v9 = v3;
  v10 = v4;
  v11 = [v5 initWithBytesNoCopy:contents + location length:length deallocator:v13];

  return v11;
}

- (id)tensorAlias:(id)alias
{
  v18[1] = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  strides = [aliasCopy strides];

  if (strides)
  {
    heapBuffer = self->_heapBuffer;
    location = self->_heapRange.location;
    v16 = 0;
    v8 = [(MTLBuffer *)heapBuffer newTensorWithDescriptor:aliasCopy offset:location error:&v16];
    v9 = v16;
    v10 = v9;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v17 = *MEMORY[0x277CCA7E8];
      v18[0] = v9;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v13 = MakeNSError(101, v12);
      GTMTLReplay_handleNSError(v13);
    }
  }

  else
  {
    v10 = MakeNSError(101, MEMORY[0x277CBEC10]);
    GTMTLReplay_handleNSError(v10);
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (GTMTLReplaySharedBufferRange)initWithHeap:(id)heap range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  heapCopy = heap;
  v14.receiver = self;
  v14.super_class = GTMTLReplaySharedBufferRange;
  v9 = [(GTMTLReplaySharedBufferRange *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_heap, heap);
    buffer = [heapCopy buffer];
    heapBuffer = v10->_heapBuffer;
    v10->_heapBuffer = buffer;

    v10->_heapRange.location = location;
    v10->_heapRange.length = length;
  }

  return v10;
}

- (GTMTLReplaySharedBufferRange)initWithBuffer:(id)buffer
{
  bufferCopy = buffer;
  v10.receiver = self;
  v10.super_class = GTMTLReplaySharedBufferRange;
  v6 = [(GTMTLReplaySharedBufferRange *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_heapBuffer, buffer);
    v8 = [bufferCopy length];
    v7->_heapRange.location = 0;
    v7->_heapRange.length = v8;
  }

  return v7;
}

@end