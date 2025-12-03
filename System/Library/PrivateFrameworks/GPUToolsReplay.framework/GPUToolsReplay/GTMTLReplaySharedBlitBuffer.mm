@interface GTMTLReplaySharedBlitBuffer
- (BOOL)_commitCommandBufferWithLog:(id)log sync:(GTMTLCoreSync *)sync;
- (GTMTLReplaySharedBlitBuffer)bufferWithLength:(unint64_t)length alignment:(unint64_t)alignment;
- (GTMTLReplaySharedBlitBuffer)initWithCommandQueue:(id)queue resourcePool:(id)pool sync:(GTMTLCoreSync *)sync;
- (id)accelerationStructureCommandEncoder;
- (id)blitCommandEncoder;
- (id)commitCommandBufferAndWaitWithLog:(id)log;
- (id)renderCommandEncoderWithDescriptor:(id)descriptor;
- (void)clearCommandBuffer;
- (void)dealloc;
@end

@implementation GTMTLReplaySharedBlitBuffer

- (void)clearCommandBuffer
{
  v3 = SharedBufferArray_retainArray(&self->_bufferArray);

  SharedCommandBuffer_clearCommandBuffer(&self->_commandBuffer);
}

- (BOOL)_commitCommandBufferWithLog:(id)log sync:(GTMTLCoreSync *)sync
{
  logCopy = log;
  pthread_mutex_lock(&SharedBlitLock);
  [logCopy logSharedCommandBuffer:self->_commandBuffer.commandBuffer];

  if (self->_commandBuffer.commandBuffer)
  {
    [(MTLCommandEncoder *)self->_commandBuffer.commandEncoder endEncoding];
    commandEncoder = self->_commandBuffer.commandEncoder;
    self->_commandBuffer.commandEncoder = 0;

    add = atomic_fetch_add(&sync->var1, 1uLL);
    commandBuffer = self->_commandBuffer.commandBuffer;
    v10 = sync->var0;
    [(MTLCommandBuffer *)commandBuffer encodeSignalEvent:v10 value:add];
  }

  v11 = SharedBufferArray_retainArray(&self->_bufferArray);
  v12 = self->_commandBuffer.commandBuffer;
  SharedCommandBuffer_clearCommandBuffer(&self->_commandBuffer);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __SharedCommandBuffer_commitCommandBuffer_block_invoke;
  v15[3] = &unk_279658380;
  v16 = v11;
  v13 = v11;
  [(MTLCommandBuffer *)v12 addCompletedHandler:v15];
  GTMTLReplay_commitCommandBuffer(v12);

  pthread_mutex_unlock(&SharedBlitLock);
  return v12 != 0;
}

- (id)commitCommandBufferAndWaitWithLog:(id)log
{
  v5 = self->_commandBuffer.commandBuffer;
  [(GTMTLReplaySharedBlitBuffer *)self commitCommandBufferWithLog:log];
  [(MTLCommandBuffer *)v5 waitUntilCompleted];

  return v5;
}

- (id)renderCommandEncoderWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  p_commandEncoder = &self->_commandBuffer.commandEncoder;
  sync = self->_sync;
  v7 = self->_commandBuffer.commandEncoder;
  if (v7)
  {
    v8 = v7;
    [(MTLCommandEncoder *)v7 endEncoding];
  }

  v9 = SharedCommandBuffer_commandBuffer(&self->_commandBuffer, sync);
  v10 = [v9 renderCommandEncoderWithDescriptor:descriptorCopy];
  objc_storeStrong(p_commandEncoder, v10);

  return v10;
}

- (id)accelerationStructureCommandEncoder
{
  p_commandEncoder = &self->_commandBuffer.commandEncoder;
  sync = self->_sync;
  v4 = self->_commandBuffer.commandEncoder;
  if (v4)
  {
    accelerationStructureCommandEncoder = v4;
    if (([(MTLCommandEncoder *)v4 conformsToProtocol:&unk_2860F8868]& 1) != 0)
    {
      goto LABEL_5;
    }

    [accelerationStructureCommandEncoder endEncoding];
  }

  v6 = SharedCommandBuffer_commandBuffer((p_commandEncoder - 2), sync);
  accelerationStructureCommandEncoder = [v6 accelerationStructureCommandEncoder];
  objc_storeStrong(p_commandEncoder, accelerationStructureCommandEncoder);

LABEL_5:

  return accelerationStructureCommandEncoder;
}

- (id)blitCommandEncoder
{
  p_commandEncoder = &self->_commandBuffer.commandEncoder;
  sync = self->_sync;
  v4 = self->_commandBuffer.commandEncoder;
  if (v4)
  {
    v5 = v4;
    if (([(MTLCommandEncoder *)v4 conformsToProtocol:&unk_2860F8660]& 1) != 0)
    {
      goto LABEL_5;
    }

    [v5 endEncoding];
  }

  v6 = SharedCommandBuffer_commandBuffer((p_commandEncoder - 2), sync);
  v5 = InternalBlitCommandEncoder(v6, *(p_commandEncoder - 2));
  objc_storeStrong(p_commandEncoder, v5);

LABEL_5:

  return v5;
}

- (GTMTLReplaySharedBlitBuffer)bufferWithLength:(unint64_t)length alignment:(unint64_t)alignment
{
  lastObject = [(NSMutableArray *)self->_bufferArray.retainArray lastObject];
  if (lastObject)
  {
    v8 = lastObject;
    v9 = (alignment + self->_bufferArray.bufferOffset - 1) & -alignment;
    buffer = [lastObject buffer];
    v11 = [buffer length];

    if (v11 >= v9 + length)
    {
      goto LABEL_7;
    }
  }

  defaultBufferCapacity = [(GTMTLReplaySharedResourcePool *)self->_bufferArray.resourcePool defaultBufferCapacity];
  lengthCopy = length;
  if (defaultBufferCapacity > length)
  {
    lengthCopy = [(GTMTLReplaySharedResourcePool *)self->_bufferArray.resourcePool defaultBufferCapacity];
  }

  v8 = [(GTMTLReplaySharedResourcePool *)self->_bufferArray.resourcePool newBufferHeapWithLength:lengthCopy];
  [(NSMutableArray *)self->_bufferArray.retainArray addObject:v8];
  v9 = 0;
LABEL_7:
  self->_bufferArray.bufferOffset = v9 + length;
  v14 = [[GTMTLReplaySharedBufferRange alloc] initWithHeap:v8 range:v9, length];

  return v14;
}

- (void)dealloc
{
  SharedCommandBuffer_clearCommandBuffer(&self->_commandBuffer);
  commandQueue = self->_commandBuffer.commandQueue;
  self->_commandBuffer.commandQueue = 0;

  resourcePool = self->_bufferArray.resourcePool;
  self->_bufferArray.resourcePool = 0;

  retainArray = self->_bufferArray.retainArray;
  self->_bufferArray.retainArray = 0;

  v6.receiver = self;
  v6.super_class = GTMTLReplaySharedBlitBuffer;
  [(GTMTLReplaySharedBlitBuffer *)&v6 dealloc];
}

- (GTMTLReplaySharedBlitBuffer)initWithCommandQueue:(id)queue resourcePool:(id)pool sync:(GTMTLCoreSync *)sync
{
  queueCopy = queue;
  poolCopy = pool;
  v19.receiver = self;
  v19.super_class = GTMTLReplaySharedBlitBuffer;
  v11 = [(GTMTLReplaySharedBlitBuffer *)&v19 init];
  if (v11)
  {
    v12 = poolCopy;
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];

    resourcePool = v11->_bufferArray.resourcePool;
    v11->_bufferArray.resourcePool = v12;

    retainArray = v11->_bufferArray.retainArray;
    v11->_bufferArray.retainArray = v13;

    v11->_bufferArray.bufferOffset = 0;
    objc_storeStrong(&v11->_commandBuffer.commandQueue, queue);
    commandBuffer = v11->_commandBuffer.commandBuffer;
    v11->_commandBuffer.commandBuffer = 0;

    commandEncoder = v11->_commandBuffer.commandEncoder;
    v11->_commandBuffer.commandEncoder = 0;

    v11->_commandBuffer.sync = 0;
    v11->_sync = sync;
  }

  return v11;
}

@end