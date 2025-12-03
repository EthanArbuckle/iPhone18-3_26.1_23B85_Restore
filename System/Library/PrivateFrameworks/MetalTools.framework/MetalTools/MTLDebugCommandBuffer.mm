@interface MTLDebugCommandBuffer
- (BOOL)testObjectReferenced:(id)referenced wasInternallyRetained:(BOOL *)retained;
- (MTLDebugCommandBuffer)initWithCommandBuffer:(id)buffer commandQueue:(id)queue descriptor:(id)descriptor;
- (id).cxx_construct;
- (id)accelerationStructureCommandEncoder;
- (id)accelerationStructureCommandEncoderWithDescriptor:(id)descriptor;
- (id)blitCommandEncoder;
- (id)blitCommandEncoderWithDescriptor:(id)descriptor;
- (id)computeCommandEncoder;
- (id)computeCommandEncoderWithDescriptor:(id)descriptor;
- (id)computeCommandEncoderWithDispatchType:(unint64_t)type;
- (id)parallelRenderCommandEncoderWithDescriptor:(id)descriptor;
- (id)renderCommandEncoderWithDescriptor:(id)descriptor;
- (id)resourceStateCommandEncoder;
- (id)resourceStateCommandEncoderWithDescriptor:(id)descriptor;
- (id)sampledComputeCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)type programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (id)sampledComputeCommandEncoderWithProgramInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (id)sampledRenderCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (id)unwrapMTLRenderPassDescriptor:(id)descriptor;
- (uint64_t)lockPurgeableObjects;
- (void)_removeUsedRenderTargetsExcept:(id)except;
- (void)addActiveRenderTargets:(id)targets;
- (void)addCompletedHandler:(id)handler;
- (void)addObject:(id)object retained:(BOOL)retained purgeable:(BOOL)purgeable;
- (void)addPurgeableObject:(id)object;
- (void)addReferencedObject:(id)object internallyRetained:(BOOL)retained;
- (void)addScheduledHandler:(id)handler;
- (void)addSynchronizationNotification:(id)notification;
- (void)commitWithDeadline:(unint64_t)deadline;
- (void)dealloc;
- (void)debugBufferContentsWithLength:(unint64_t *)length;
- (void)encodeDashboardFinalizeForResourceGroup:(id)group dashboard:(unint64_t)dashboard value:(unint64_t)value forIndex:(unint64_t)index;
- (void)encodeDashboardFinalizeForResourceGroup:(id)group dashboard:(unint64_t)dashboard values:(const unint64_t *)values indices:(const unint64_t *)indices count:(unint64_t)count;
- (void)encodeDashboardTagForResourceGroup:(id)group;
- (void)encodeSignalEvent:(id)event value:(unint64_t)value;
- (void)encodeWaitForEvent:(id)event value:(unint64_t)value;
- (void)lockPurgeableObjects;
- (void)postCompletionHandlers;
- (void)preCommit;
- (void)preCompletionHandlers;
- (void)removeAllReferencedObjects:(BOOL)objects;
- (void)unlockPurgeableObjects;
- (void)useInternalResidencySet:(id)set;
- (void)useInternalResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)waitUntilCompleted;
- (void)waitUntilScheduled;
@end

@implementation MTLDebugCommandBuffer

- (void)dealloc
{
  if ([(MTLToolsCommandBuffer *)self status]- 1 <= 2)
  {
    MTLReportFailure();
  }

  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_attachmentSet.__table_.__bucket_list_.__ptr_);

  v3 = 0;
  self->_renderTargetAttachments = 0;
  memset(__src, 0, sizeof(__src));
  do
  {
    AttachmentDescriptorSimple::AttachmentDescriptorSimple((__src + v3));
    v3 += 56;
  }

  while (v3 != 448);
  memcpy(&self->_prevAttachments, __src, sizeof(self->_prevAttachments));
  v4 = 0;
  memset(__src, 0, sizeof(__src));
  do
  {
    AttachmentDescriptorSimple::AttachmentDescriptorSimple((__src + v4));
    v4 += 56;
  }

  while (v4 != 448);
  memcpy(&self->_currAttachments, __src, sizeof(self->_currAttachments));

  v5.receiver = self;
  v5.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v5 dealloc];
}

- (MTLDebugCommandBuffer)initWithCommandBuffer:(id)buffer commandQueue:(id)queue descriptor:(id)descriptor
{
  v8.receiver = self;
  v8.super_class = MTLDebugCommandBuffer;
  v5 = [(MTLToolsCommandBuffer *)&v8 initWithCommandBuffer:buffer parent:queue descriptor:descriptor];
  v6 = v5;
  if (v5)
  {
    v5->_currentEncoder = 0;
    v5->_purgeableObjectsLock._os_unfair_lock_opaque = 0;
    v5->_retainedObjectsLock._os_unfair_lock_opaque = 0;
    v5->_renderTargetAttachmentLock._os_unfair_lock_opaque = 0;
    v5->_renderTargetAttachments = objc_alloc_init(MEMORY[0x277CBEB58]);
    pthread_once(&initLifetimeOptions(void)::token, initLifetimeOptions(void)::$_0::__invoke);
    if ((checkLifetimeOfExternallyReferencedObjects & 1) != 0 || checkLifetimeOfInternallyReferencedObjects == 1)
    {
      [*&v6->MTLToolsCommandBuffer_opaque[24] addReferenceTrackingCommandBuffer:v6];
    }
  }

  return v6;
}

- (void)encodeWaitForEvent:(id)event value:(unint64_t)value
{
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    device = [event device];
    if (device != [(MTLToolsObject *)self device])
    {
      [MTLDebugCommandBuffer encodeWaitForEvent:value:];
    }
  }

  [(MTLDebugCommandBuffer *)self addObject:event retained:1 purgeable:0];
  v9.receiver = self;
  v9.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v9 encodeWaitForEvent:event value:value];
}

- (void)encodeSignalEvent:(id)event value:(unint64_t)value
{
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    device = [event device];
    if (device != [(MTLToolsObject *)self device])
    {
      [MTLDebugCommandBuffer encodeSignalEvent:value:];
    }
  }

  [(MTLDebugCommandBuffer *)self addObject:event retained:1 purgeable:0];
  v9.receiver = self;
  v9.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v9 encodeSignalEvent:event value:value];
}

- (void)waitUntilScheduled
{
  if (([-[MTLToolsObject originalObject](self "originalObject")] & 1) == 0)
  {
    [MTLDebugCommandBuffer waitUntilScheduled];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject waitUntilScheduled];
}

- (void)waitUntilCompleted
{
  if (([-[MTLToolsObject originalObject](self "originalObject")] & 1) == 0)
  {
    [MTLDebugCommandBuffer waitUntilCompleted];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject waitUntilCompleted];
}

- (id)blitCommandEncoder
{
  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    [MTLDebugCommandBuffer blitCommandEncoder];
  }

  self->_currentEncoder = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v5)
  {
    v6 = [[MTLDebugBlitCommandEncoder alloc] initWithBlitCommandEncoder:v5 commandBuffer:self descriptor:0];
    objc_autoreleasePoolPop(v4);
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_attachmentSet.__table_.__bucket_list_.__ptr_);
    v7 = 0;
    memset(v9, 0, sizeof(v9));
    do
    {
      AttachmentDescriptorSimple::AttachmentDescriptorSimple((v9 + v7));
      v7 += 56;
    }

    while (v7 != 448);
    memcpy(&self->_currAttachments, v9, sizeof(self->_currAttachments));
    self->_currentEncoder = [(MTLToolsObject *)v6 originalObject];
    return v6;
  }

  else
  {
    objc_autoreleasePoolPop(v4);
    return 0;
  }
}

- (id)resourceStateCommandEncoder
{
  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    [MTLDebugCommandBuffer resourceStateCommandEncoder];
  }

  self->_currentEncoder = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v5)
  {
    v6 = [[MTLDebugResourceStateCommandEncoder alloc] initWithResourceStateCommandEncoder:v5 commandBuffer:self descriptor:0];
    objc_autoreleasePoolPop(v4);
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_attachmentSet.__table_.__bucket_list_.__ptr_);
    v7 = 0;
    memset(v9, 0, sizeof(v9));
    do
    {
      AttachmentDescriptorSimple::AttachmentDescriptorSimple((v9 + v7));
      v7 += 56;
    }

    while (v7 != 448);
    memcpy(&self->_currAttachments, v9, sizeof(self->_currAttachments));
    self->_currentEncoder = [(MTLToolsObject *)v6 originalObject];
    return v6;
  }

  else
  {
    objc_autoreleasePoolPop(v4);
    return 0;
  }
}

- (void)addCompletedHandler:(id)handler
{
  if (!handler)
  {
    [MTLDebugCommandBuffer addCompletedHandler:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v5 addCompletedHandler:handler];
}

- (void)addScheduledHandler:(id)handler
{
  if (!handler)
  {
    [MTLDebugCommandBuffer addScheduledHandler:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v5 addScheduledHandler:handler];
}

- (id)unwrapMTLRenderPassDescriptor:(id)descriptor
{
  v10.receiver = self;
  v10.super_class = MTLDebugCommandBuffer;
  v5 = [(MTLToolsCommandBuffer *)&v10 unwrapMTLRenderPassDescriptor:?];
  v6 = 0;
  v7 = *[descriptor _descriptorPrivate];
  do
  {
    if ([v7 _descriptorAtIndex:{v6, v9}] && !objc_msgSend(objc_msgSend(objc_msgSend(v5, "colorAttachments"), "objectAtIndexedSubscript:", v6), "loadAction") && -[MTLDevice loadValidationEnabled](-[MTLToolsObject device](self, "device"), "loadValidationEnabled"))
    {
      [objc_msgSend(objc_msgSend(v5 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v5 "colorAttachments")];
      v9 = v6;
      MTLReportFailure();
    }

    ++v6;
  }

  while (v6 != 8);
  if ([v7 _descriptorAtIndex:8] && !objc_msgSend(objc_msgSend(v5, "depthAttachment"), "loadAction") && -[MTLDevice loadValidationEnabled](-[MTLToolsObject device](self, "device"), "loadValidationEnabled"))
  {
    [objc_msgSend(v5 "depthAttachment")];
    [objc_msgSend(v5 "depthAttachment")];
    MTLReportFailure();
  }

  if ([v7 _descriptorAtIndex:{9, v9}] && !objc_msgSend(objc_msgSend(v5, "stencilAttachment"), "loadAction") && -[MTLDevice loadValidationEnabled](-[MTLToolsObject device](self, "device"), "loadValidationEnabled"))
  {
    [objc_msgSend(v5 "stencilAttachment")];
    [objc_msgSend(v5 "stencilAttachment")];
    MTLReportFailure();
  }

  return v5;
}

- (id)renderCommandEncoderWithDescriptor:(id)descriptor
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if (!descriptor || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if (MTLReportFailureTypeEnabled())
  {
    _MTLDebugValidateRenderPassDescriptorAndTrackAttachments([descriptor _descriptorPrivate], -[MTLToolsObject device](self, "device"), &self->_attachmentSet, &self->_prevAttachments, &self->_currAttachments);
  }

  v6 = [(MTLDebugCommandBuffer *)self unwrapMTLRenderPassDescriptor:descriptor];

  self->_currentEncoder = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [[MTLDebugRenderCommandEncoder alloc] initWithRenderCommandEncoder:v8 parent:self descriptor:descriptor];
    objc_autoreleasePoolPop(v7);
    self->_currentEncoder = [(MTLToolsObject *)v9 originalObject];
    return v9;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (id)computeCommandEncoder
{
  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    [MTLDebugCommandBuffer computeCommandEncoder];
  }

  self->_currentEncoder = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v5)
  {
    v6 = [[MTLDebugComputeCommandEncoder alloc] initWithComputeCommandEncoder:v5 commandBuffer:self descriptor:0];
    objc_autoreleasePoolPop(v4);
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_attachmentSet.__table_.__bucket_list_.__ptr_);
    v7 = 0;
    memset(v9, 0, sizeof(v9));
    do
    {
      AttachmentDescriptorSimple::AttachmentDescriptorSimple((v9 + v7));
      v7 += 56;
    }

    while (v7 != 448);
    memcpy(&self->_currAttachments, v9, sizeof(self->_currAttachments));
    self->_currentEncoder = [(MTLToolsObject *)v6 originalObject];
    return v6;
  }

  else
  {
    objc_autoreleasePoolPop(v4);
    return 0;
  }
}

- (id)computeCommandEncoderWithDescriptor:(id)descriptor
{
  v13 = 0;
  memset(&v12[28], 0, 48);
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!descriptor || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    _MTLMessageContextPush_();
  }

  if (MTLReportFailureTypeEnabled())
  {
    validateComputePassDescriptor(descriptor, [(MTLToolsObject *)self device]);
  }

  _MTLMessageContextEnd();
  v6 = [(MTLToolsCommandBuffer *)self unwrapMTLComputePassDescriptor:descriptor];

  self->_currentEncoder = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [[MTLDebugComputeCommandEncoder alloc] initWithComputeCommandEncoder:v8 commandBuffer:self descriptor:descriptor];
    objc_autoreleasePoolPop(v7);
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_attachmentSet.__table_.__bucket_list_.__ptr_);
    v10 = 0;
    memset(v12, 0, 448);
    do
    {
      AttachmentDescriptorSimple::AttachmentDescriptorSimple((v12 + v10));
      v10 += 56;
    }

    while (v10 != 448);
    memcpy(&self->_currAttachments, v12, sizeof(self->_currAttachments));
    self->_currentEncoder = [(MTLToolsObject *)v9 originalObject];
    return v9;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (id)blitCommandEncoderWithDescriptor:(id)descriptor
{
  v19 = 0;
  memset(&__src[28], 0, 48);
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!descriptor || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    _MTLMessageContextPush_();
  }

  if (MTLReportFailureTypeEnabled())
  {
    device = [(MTLToolsObject *)self device];
    for (i = 0; i != 4; ++i)
    {
      sampleBufferAttachments = [objc_msgSend(descriptor sampleBufferAttachments];
      if ([sampleBufferAttachments sampleBuffer])
      {
        if ([(MTLDevice *)device supportsCounterSampling:0])
        {
          v9 = [objc_msgSend(sampleBufferAttachments "sampleBuffer")];
          if ([sampleBufferAttachments startOfEncoderSampleIndex] != -1 && objc_msgSend(sampleBufferAttachments, "startOfEncoderSampleIndex") >= v9)
          {
            startOfEncoderSampleIndex = [sampleBufferAttachments startOfEncoderSampleIndex];
            v17 = v9;
            _MTLMessageContextPush_();
          }

          if ([sampleBufferAttachments endOfEncoderSampleIndex] == -1 || objc_msgSend(sampleBufferAttachments, "endOfEncoderSampleIndex") < v9)
          {
            continue;
          }

          startOfEncoderSampleIndex = [sampleBufferAttachments endOfEncoderSampleIndex];
          v17 = v9;
        }

        else
        {
          if ([sampleBufferAttachments startOfEncoderSampleIndex] != -1)
          {
            _MTLMessageContextPush_();
          }

          if ([sampleBufferAttachments endOfEncoderSampleIndex] == -1)
          {
            continue;
          }
        }

        _MTLMessageContextPush_();
      }
    }
  }

  _MTLMessageContextEnd();
  v10 = [(MTLToolsCommandBuffer *)self unwrapMTLBlitPassDescriptor:descriptor];

  self->_currentEncoder = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = [[MTLDebugBlitCommandEncoder alloc] initWithBlitCommandEncoder:v12 commandBuffer:self descriptor:descriptor];
    objc_autoreleasePoolPop(v11);
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_attachmentSet.__table_.__bucket_list_.__ptr_);
    v14 = 0;
    memset(__src, 0, 448);
    do
    {
      AttachmentDescriptorSimple::AttachmentDescriptorSimple((__src + v14));
      v14 += 56;
    }

    while (v14 != 448);
    memcpy(&self->_currAttachments, __src, sizeof(self->_currAttachments));
    self->_currentEncoder = [(MTLToolsObject *)v13 originalObject];
    return v13;
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    return 0;
  }
}

- (id)resourceStateCommandEncoderWithDescriptor:(id)descriptor
{
  v19 = 0;
  memset(&__src[28], 0, 48);
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!descriptor || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    _MTLMessageContextPush_();
  }

  if (MTLReportFailureTypeEnabled())
  {
    device = [(MTLToolsObject *)self device];
    for (i = 0; i != 4; ++i)
    {
      sampleBufferAttachments = [objc_msgSend(descriptor sampleBufferAttachments];
      if ([sampleBufferAttachments sampleBuffer])
      {
        if ([(MTLDevice *)device supportsCounterSampling:0])
        {
          v9 = [objc_msgSend(sampleBufferAttachments "sampleBuffer")];
          if ([sampleBufferAttachments startOfEncoderSampleIndex] != -1 && objc_msgSend(sampleBufferAttachments, "startOfEncoderSampleIndex") >= v9)
          {
            startOfEncoderSampleIndex = [sampleBufferAttachments startOfEncoderSampleIndex];
            v17 = v9;
            _MTLMessageContextPush_();
          }

          if ([sampleBufferAttachments endOfEncoderSampleIndex] == -1 || objc_msgSend(sampleBufferAttachments, "endOfEncoderSampleIndex") < v9)
          {
            continue;
          }

          startOfEncoderSampleIndex = [sampleBufferAttachments endOfEncoderSampleIndex];
          v17 = v9;
        }

        else
        {
          if ([sampleBufferAttachments startOfEncoderSampleIndex] != -1)
          {
            _MTLMessageContextPush_();
          }

          if ([sampleBufferAttachments endOfEncoderSampleIndex] == -1)
          {
            continue;
          }
        }

        _MTLMessageContextPush_();
      }
    }
  }

  _MTLMessageContextEnd();
  v10 = [(MTLToolsCommandBuffer *)self unwrapMTLResourceStatePassDescriptor:descriptor];

  self->_currentEncoder = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = [[MTLDebugResourceStateCommandEncoder alloc] initWithResourceStateCommandEncoder:v12 commandBuffer:self descriptor:descriptor];
    objc_autoreleasePoolPop(v11);
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_attachmentSet.__table_.__bucket_list_.__ptr_);
    v14 = 0;
    memset(__src, 0, 448);
    do
    {
      AttachmentDescriptorSimple::AttachmentDescriptorSimple((__src + v14));
      v14 += 56;
    }

    while (v14 != 448);
    memcpy(&self->_currAttachments, __src, sizeof(self->_currAttachments));
    self->_currentEncoder = [(MTLToolsObject *)v13 originalObject];
    return v13;
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    return 0;
  }
}

- (id)computeCommandEncoderWithDispatchType:(unint64_t)type
{
  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    [MTLDebugCommandBuffer computeCommandEncoderWithDispatchType:];
  }

  self->_currentEncoder = 0;
  v6 = objc_autoreleasePoolPush();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = [[MTLDebugComputeCommandEncoder alloc] initWithComputeCommandEncoder:v7 commandBuffer:self descriptor:0];
    objc_autoreleasePoolPop(v6);
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_attachmentSet.__table_.__bucket_list_.__ptr_);
    v9 = 0;
    memset(v11, 0, sizeof(v11));
    do
    {
      AttachmentDescriptorSimple::AttachmentDescriptorSimple((v11 + v9));
      v9 += 56;
    }

    while (v9 != 448);
    memcpy(&self->_currAttachments, v11, sizeof(self->_currAttachments));
    self->_currentEncoder = [(MTLToolsObject *)v8 originalObject];
    return v8;
  }

  else
  {
    objc_autoreleasePoolPop(v6);
    return 0;
  }
}

- (id)parallelRenderCommandEncoderWithDescriptor:(id)descriptor
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if (!descriptor || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if (MTLReportFailureTypeEnabled())
  {
    _MTLDebugValidateRenderPassDescriptorAndTrackAttachments([descriptor _descriptorPrivate], -[MTLToolsObject device](self, "device"), &self->_attachmentSet, &self->_prevAttachments, &self->_currAttachments);
  }

  v6 = [(MTLDebugCommandBuffer *)self unwrapMTLRenderPassDescriptor:descriptor];

  self->_currentEncoder = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [[MTLDebugParallelRenderCommandEncoder alloc] initWithBaseRenderPass:v8 commandBuffer:self descriptor:descriptor];
    objc_autoreleasePoolPop(v7);
    self->_currentEncoder = [(MTLToolsObject *)v9 originalObject];
    return v9;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (void)addPurgeableObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    if ([object conformsToProtocol:&unk_28421F128])
    {
      heap = [objectCopy heap];
      if (!heap)
      {
        if (![objectCopy conformsToProtocol:&unk_28423C818])
        {
          goto LABEL_10;
        }

        heap = [objectCopy buffer];
        if (!heap)
        {
          for (i = objectCopy; [i parentTexture]; objectCopy = i)
          {
            i = [objectCopy parentTexture];
          }

          goto LABEL_10;
        }
      }

      objectCopy = heap;
    }

LABEL_10:
    os_unfair_lock_lock(&self->_purgeableObjectsLock);
    v7 = objectCopy;
    std::__hash_table<objc_object  {objcproto25MTLDebugResourcePurgeable}*,std::hash<objc_object  {objcproto25MTLDebugResourcePurgeable}>,std::equal_to<objc_object  {objcproto25MTLDebugResourcePurgeable}>,std::allocator<objc_object  {objcproto25MTLDebugResourcePurgeable}>>::__emplace_unique_key_args<objc_object  {objcproto25MTLDebugResourcePurgeable},objc_object  {objcproto25MTLDebugResourcePurgeable}>(&self->_referencedPurgeableObjects.__table_.__bucket_list_.__ptr_, &v7);
    os_unfair_lock_unlock(&self->_purgeableObjectsLock);
  }
}

- (void)addObject:(id)object retained:(BOOL)retained purgeable:(BOOL)purgeable
{
  if (!object)
  {
    return;
  }

  purgeableCopy = purgeable;
  if (retained)
  {
    v8 = [(MTLToolsCommandBuffer *)self addRetainedObject:object];
    v9 = &checkLifetimeOfInternallyReferencedObjects;
    if (!v8)
    {
      v9 = &checkLifetimeOfExternallyReferencedObjects;
    }

    if ((*v9 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if ((checkLifetimeOfExternallyReferencedObjects & 1) == 0)
    {
      goto LABEL_10;
    }

    v8 = 0;
  }

  [(MTLDebugCommandBuffer *)self addReferencedObject:object internallyRetained:v8];
LABEL_10:
  if (purgeableCopy)
  {

    [(MTLDebugCommandBuffer *)self addPurgeableObject:object];
  }
}

- (void)addReferencedObject:(id)object internallyRetained:(BOOL)retained
{
  retainedCopy = retained;
  objectCopy = object;
  os_unfair_lock_lock(&self->_retainedObjectsLock);
  v6 = &OBJC_IVAR___MTLDebugCommandBuffer__externallyRetainedObjects;
  if (retainedCopy)
  {
    v6 = &OBJC_IVAR___MTLDebugCommandBuffer__internallyRetainedObjects;
  }

  std::__hash_table<MTLToolsObject *,std::hash<MTLToolsObject *>,std::equal_to<MTLToolsObject *>,std::allocator<MTLToolsObject *>>::__emplace_unique_key_args<MTLToolsObject *,MTLToolsObject * const&>(&self->MTLToolsCommandBuffer_opaque[*v6], &objectCopy);
  if (v7)
  {
    atomic_fetch_add(objectCopy + 8, 1u);
  }

  os_unfair_lock_unlock(&self->_retainedObjectsLock);
}

- (void)removeAllReferencedObjects:(BOOL)objects
{
  objectsCopy = objects;
  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  os_unfair_lock_lock(&self->_retainedObjectsLock);
  v5 = &OBJC_IVAR___MTLDebugCommandBuffer__externallyRetainedObjects;
  if (objectsCopy)
  {
    v5 = &OBJC_IVAR___MTLDebugCommandBuffer__internallyRetainedObjects;
  }

  std::__hash_table<MTLToolsObject *,std::hash<MTLToolsObject *>,std::equal_to<MTLToolsObject *>,std::allocator<MTLToolsObject *>>::swap(&self->MTLToolsCommandBuffer_opaque[*v5], &v7);
  for (i = v8; i; i = *i)
  {
    atomic_fetch_add((i[2] + 32), 0xFFFFFFFF);
  }

  os_unfair_lock_unlock(&self->_retainedObjectsLock);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v7);
}

- (BOOL)testObjectReferenced:(id)referenced wasInternallyRetained:(BOOL *)retained
{
  referencedCopy = referenced;
  os_unfair_lock_lock(&self->_retainedObjectsLock);
  *retained = std::__hash_table<MTLToolsObject *,std::hash<MTLToolsObject *>,std::equal_to<MTLToolsObject *>,std::allocator<MTLToolsObject *>>::__erase_unique<MTLToolsObject *>(&self->_internallyRetainedObjects.__table_.__bucket_list_.__ptr_, &referencedCopy) != 0;
  if (std::__hash_table<MTLToolsObject *,std::hash<MTLToolsObject *>,std::equal_to<MTLToolsObject *>,std::allocator<MTLToolsObject *>>::__erase_unique<MTLToolsObject *>(&self->_externallyRetainedObjects.__table_.__bucket_list_.__ptr_, &referencedCopy))
  {
    if (*retained || (checkLifetimeBeforeCommit & 1) != 0 || self->_referencedDeadObject == 3735928559)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0;
      self->_referencedDeadObject = referencedCopy;
    }
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_retainedObjectsLock);
  os_unfair_lock_lock(&self->_purgeableObjectsLock);
  v8 = referencedCopy;
  std::__hash_table<MTLToolsObject *,std::hash<MTLToolsObject *>,std::equal_to<MTLToolsObject *>,std::allocator<MTLToolsObject *>>::__erase_unique<MTLToolsObject *>(&self->_referencedPurgeableObjects.__table_.__bucket_list_.__ptr_, &v8);
  os_unfair_lock_unlock(&self->_purgeableObjectsLock);
  [(MTLDebugCommandBuffer *)self _removeUsedRenderTargetsExcept:referencedCopy];
  return (v6 | *retained) & 1;
}

- (void)preCommit
{
  v28 = *MEMORY[0x277D85DE8];
  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    [MTLDebugCommandBuffer preCommit];
  }

  os_unfair_lock_lock(&self->_retainedObjectsLock);
  referencedDeadObject = self->_referencedDeadObject;
  if (referencedDeadObject)
  {
    v5 = referencedDeadObject == 3735928559;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v21 = self->_referencedDeadObject;
    MTLReportFailure();
  }

  self->_referencedDeadObject = 3735928559;
  os_unfair_lock_unlock(&self->_retainedObjectsLock);
  os_unfair_lock_lock(&self->_renderTargetAttachmentLock);
  self->_didAddRenderTargetAttachments = 1;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  renderTargetAttachments = self->_renderTargetAttachments;
  v7 = [(NSMutableSet *)renderTargetAttachments countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(renderTargetAttachments);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        baseTexture = [v11 baseTexture];
        baseLevelOffset = [v11 baseLevelOffset];
        baseSliceRangeOffset = [v11 baseSliceRangeOffset];
        [baseTexture addUsedRenderTarget:baseLevelOffset slices:{baseSliceRangeOffset, v15}];
        baseResolveTexture = [v11 baseResolveTexture];
        resolveLevelOffset = [v11 resolveLevelOffset];
        resolveSliceRangeOffset = [v11 resolveSliceRangeOffset];
        [baseResolveTexture addUsedRenderTarget:resolveLevelOffset slices:{resolveSliceRangeOffset, v19}];
      }

      v8 = [(NSMutableSet *)renderTargetAttachments countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_renderTargetAttachmentLock);
  [*&self->MTLToolsCommandBuffer_opaque[8] validateDeadlineAwareness:self];
  [(MTLDebugCommandBuffer *)self lockPurgeableObjects];
  v22.receiver = self;
  v22.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v22 preCommit];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)preCompletionHandlers
{
  [(MTLDebugCommandBuffer *)self _removeUsedRenderTargetsExcept:0];
  [(MTLDebugCommandBuffer *)self unlockPurgeableObjects];
  if (checkLifetimeOfExternallyReferencedObjects == 1)
  {
    [(MTLDebugCommandBuffer *)self removeAllReferencedObjects:0];
  }

  v3.receiver = self;
  v3.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v3 preCompletionHandlers];
  *gInsideCompletionHandler() = 1;
}

- (void)postCompletionHandlers
{
  *gInsideCompletionHandler() = 0;
  if ((checkLifetimeOfExternallyReferencedObjects & 1) != 0 || checkLifetimeOfInternallyReferencedObjects == 1)
  {
    [(MTLDebugCommandBuffer *)self removeAllReferencedObjects:1];
    [*&self->MTLToolsCommandBuffer_opaque[24] removeReferenceTrackingCommandBuffer:self];
  }

  v3.receiver = self;
  v3.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v3 postCompletionHandlers];
}

- (void)_removeUsedRenderTargetsExcept:(id)except
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_renderTargetAttachmentLock);
  if (self->_didAddRenderTargetAttachments)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    renderTargetAttachments = self->_renderTargetAttachments;
    v6 = [(NSMutableSet *)renderTargetAttachments countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(renderTargetAttachments);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          baseTexture = [v10 baseTexture];
          if (baseTexture != except)
          {
            v12 = baseTexture;
            baseLevelOffset = [v10 baseLevelOffset];
            baseSliceRangeOffset = [v10 baseSliceRangeOffset];
            [v12 removeUsedRenderTarget:baseLevelOffset slices:{baseSliceRangeOffset, v15}];
          }

          baseResolveTexture = [v10 baseResolveTexture];
          if (baseResolveTexture != except)
          {
            v17 = baseResolveTexture;
            resolveLevelOffset = [v10 resolveLevelOffset];
            resolveSliceRangeOffset = [v10 resolveSliceRangeOffset];
            [v17 removeUsedRenderTarget:resolveLevelOffset slices:{resolveSliceRangeOffset, v20}];
          }
        }

        v7 = [(NSMutableSet *)renderTargetAttachments countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }
  }

  [(NSMutableSet *)self->_renderTargetAttachments removeAllObjects];
  os_unfair_lock_unlock(&self->_renderTargetAttachmentLock);
  v21 = *MEMORY[0x277D85DE8];
}

- (id)sampledRenderCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if (!descriptor || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if (MTLReportFailureTypeEnabled())
  {
    _MTLDebugValidateRenderPassDescriptorAndTrackAttachments([descriptor _descriptorPrivate], -[MTLToolsObject device](self, "device"), &self->_attachmentSet, &self->_prevAttachments, &self->_currAttachments);
  }

  v10 = [(MTLDebugCommandBuffer *)self unwrapMTLRenderPassDescriptor:descriptor];

  self->_currentEncoder = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = [[MTLDebugRenderCommandEncoder alloc] initWithRenderCommandEncoder:v12 parent:self descriptor:descriptor];
    objc_autoreleasePoolPop(v11);
    self->_currentEncoder = [(MTLToolsObject *)v13 originalObject];
    return v13;
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    return 0;
  }
}

- (id)sampledComputeCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if (!descriptor || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    _MTLMessageContextPush_();
  }

  if (MTLReportFailureTypeEnabled())
  {
    validateComputePassDescriptor(descriptor, [(MTLToolsObject *)self device]);
  }

  _MTLMessageContextEnd();
  v10 = [(MTLToolsCommandBuffer *)self unwrapMTLComputePassDescriptor:descriptor];

  self->_currentEncoder = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = [[MTLDebugComputeCommandEncoder alloc] initWithComputeCommandEncoder:v12 commandBuffer:self descriptor:descriptor];
    objc_autoreleasePoolPop(v11);
    self->_currentEncoder = [(MTLToolsObject *)v13 originalObject];
    return v13;
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    return 0;
  }
}

- (id)sampledComputeCommandEncoderWithProgramInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    [MTLDebugCommandBuffer sampledComputeCommandEncoderWithProgramInfoBuffer:capacity:];
  }

  self->_currentEncoder = 0;
  v8 = objc_autoreleasePoolPush();
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v9)
  {
    v10 = [[MTLDebugComputeCommandEncoder alloc] initWithComputeCommandEncoder:v9 commandBuffer:self descriptor:0];
    objc_autoreleasePoolPop(v8);
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_attachmentSet.__table_.__bucket_list_.__ptr_);
    v11 = 0;
    memset(v13, 0, sizeof(v13));
    do
    {
      AttachmentDescriptorSimple::AttachmentDescriptorSimple((v13 + v11));
      v11 += 56;
    }

    while (v11 != 448);
    memcpy(&self->_currAttachments, v13, sizeof(self->_currAttachments));
    self->_currentEncoder = [(MTLToolsObject *)v10 originalObject];
    return v10;
  }

  else
  {
    objc_autoreleasePoolPop(v8);
    return 0;
  }
}

- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)type programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    [MTLDebugCommandBuffer sampledComputeCommandEncoderWithDispatchType:programInfoBuffer:capacity:];
  }

  self->_currentEncoder = 0;
  v10 = objc_autoreleasePoolPush();
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v11)
  {
    v12 = [[MTLDebugComputeCommandEncoder alloc] initWithComputeCommandEncoder:v11 commandBuffer:self descriptor:0];
    objc_autoreleasePoolPop(v10);
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_attachmentSet.__table_.__bucket_list_.__ptr_);
    v13 = 0;
    memset(v15, 0, sizeof(v15));
    do
    {
      AttachmentDescriptorSimple::AttachmentDescriptorSimple((v15 + v13));
      v13 += 56;
    }

    while (v13 != 448);
    memcpy(&self->_currAttachments, v15, sizeof(self->_currAttachments));
    self->_currentEncoder = [(MTLToolsObject *)v12 originalObject];
    return v12;
  }

  else
  {
    objc_autoreleasePoolPop(v10);
    return 0;
  }
}

- (void)lockPurgeableObjects
{
  os_unfair_lock_lock(&self->_purgeableObjectsLock);
  for (i = self->_referencedPurgeableObjects.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i[2];
    [v4 lockPurgeableState];
    if (([v4 purgeableStateValidForRendering] & 1) == 0)
    {
      [(MTLDebugCommandBuffer *)v4 lockPurgeableObjects];
    }
  }

  os_unfair_lock_unlock(&self->_purgeableObjectsLock);
}

- (void)unlockPurgeableObjects
{
  os_unfair_lock_lock(&self->_purgeableObjectsLock);
  for (i = self->_referencedPurgeableObjects.__table_.__first_node_.__next_; i; i = *i)
  {
    [i[2] unlockPurgeableState];
  }

  os_unfair_lock_unlock(&self->_purgeableObjectsLock);
}

- (void)addSynchronizationNotification:(id)notification
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject addSynchronizationNotification:notification];
}

- (void)debugBufferContentsWithLength:(unint64_t *)length
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject debugBufferContentsWithLength:length];
}

- (id)accelerationStructureCommandEncoder
{
  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    [MTLDebugCommandBuffer accelerationStructureCommandEncoder];
  }

  self->_currentEncoder = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v5)
  {
    v6 = [(MTLToolsCommandEncoder *)[MTLDebugAccelerationStructureCommandEncoder alloc] initWithBaseObject:v5 parent:self];
    objc_autoreleasePoolPop(v4);
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_attachmentSet.__table_.__bucket_list_.__ptr_);
    v7 = 0;
    memset(v9, 0, sizeof(v9));
    do
    {
      AttachmentDescriptorSimple::AttachmentDescriptorSimple((v9 + v7));
      v7 += 56;
    }

    while (v7 != 448);
    memcpy(&self->_currAttachments, v9, sizeof(self->_currAttachments));
    self->_currentEncoder = [(MTLToolsObject *)v6 originalObject];
    return v6;
  }

  else
  {
    objc_autoreleasePoolPop(v4);
    return 0;
  }
}

- (id)accelerationStructureCommandEncoderWithDescriptor:(id)descriptor
{
  v19 = 0;
  memset(&__src[28], 0, 48);
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!descriptor || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  currentEncoder = self->_currentEncoder;
  if (currentEncoder && [(_MTLCommandEncoder *)currentEncoder commandBuffer])
  {
    _MTLMessageContextPush_();
  }

  if (MTLReportFailureTypeEnabled())
  {
    device = [(MTLToolsObject *)self device];
    for (i = 0; i != 4; ++i)
    {
      sampleBufferAttachments = [objc_msgSend(descriptor sampleBufferAttachments];
      if ([sampleBufferAttachments sampleBuffer])
      {
        if ([(MTLDevice *)device supportsCounterSampling:0])
        {
          v9 = [objc_msgSend(sampleBufferAttachments "sampleBuffer")];
          if ([sampleBufferAttachments startOfEncoderSampleIndex] != -1 && objc_msgSend(sampleBufferAttachments, "startOfEncoderSampleIndex") >= v9)
          {
            startOfEncoderSampleIndex = [sampleBufferAttachments startOfEncoderSampleIndex];
            v17 = v9;
            _MTLMessageContextPush_();
          }

          if ([sampleBufferAttachments endOfEncoderSampleIndex] == -1 || objc_msgSend(sampleBufferAttachments, "endOfEncoderSampleIndex") < v9)
          {
            continue;
          }

          startOfEncoderSampleIndex = [sampleBufferAttachments endOfEncoderSampleIndex];
          v17 = v9;
        }

        else
        {
          if ([sampleBufferAttachments startOfEncoderSampleIndex] != -1)
          {
            _MTLMessageContextPush_();
          }

          if ([sampleBufferAttachments endOfEncoderSampleIndex] == -1)
          {
            continue;
          }
        }

        _MTLMessageContextPush_();
      }
    }
  }

  _MTLMessageContextEnd();
  v10 = [(MTLToolsCommandBuffer *)self unwrapMTLAccelerationStructurePassDescriptor:descriptor];

  self->_currentEncoder = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = [(MTLToolsAccelerationStructureCommandEncoder *)[MTLDebugAccelerationStructureCommandEncoder alloc] initWithAccelerationStructureCommandEncoder:v12 parent:self descriptor:descriptor];
    objc_autoreleasePoolPop(v11);
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_attachmentSet.__table_.__bucket_list_.__ptr_);
    v14 = 0;
    memset(__src, 0, 448);
    do
    {
      AttachmentDescriptorSimple::AttachmentDescriptorSimple((__src + v14));
      v14 += 56;
    }

    while (v14 != 448);
    memcpy(&self->_currAttachments, __src, sizeof(self->_currAttachments));
    self->_currentEncoder = [(MTLToolsObject *)v13 originalObject];
    return v13;
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    return 0;
  }
}

- (void)encodeDashboardTagForResourceGroup:(id)group
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  v5 = *&self->MTLToolsCommandBuffer_opaque[24];
  _MTLMessageContextBegin_();
  if (!group)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTLDebugCommandBuffer *)self addObject:group retained:1 purgeable:0];
  v6[0].receiver = self;
  v6[0].super_class = MTLDebugCommandBuffer;
  [(objc_super *)v6 encodeDashboardTagForResourceGroup:group];
}

- (void)encodeDashboardFinalizeForResourceGroup:(id)group dashboard:(unint64_t)dashboard value:(unint64_t)value forIndex:(unint64_t)index
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v11 = *&self->MTLToolsCommandBuffer_opaque[24];
  _MTLMessageContextBegin_();
  if (!group)
  {
    _MTLMessageContextPush_();
    if (!dashboard)
    {
      goto LABEL_3;
    }

LABEL_5:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  if (dashboard)
  {
    goto LABEL_5;
  }

LABEL_3:
  _MTLMessageContextEnd();
  [(MTLDebugCommandBuffer *)self addObject:group retained:1 purgeable:0];
  v12.receiver = self;
  v12.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v12 encodeDashboardFinalizeForResourceGroup:group dashboard:dashboard value:value forIndex:index];
}

- (void)encodeDashboardFinalizeForResourceGroup:(id)group dashboard:(unint64_t)dashboard values:(const unint64_t *)values indices:(const unint64_t *)indices count:(unint64_t)count
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v13 = *&self->MTLToolsCommandBuffer_opaque[24];
  _MTLMessageContextBegin_();
  if (!group)
  {
    _MTLMessageContextPush_();
    if (!dashboard)
    {
      goto LABEL_3;
    }

LABEL_5:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  if (dashboard)
  {
    goto LABEL_5;
  }

LABEL_3:
  _MTLMessageContextEnd();
  [(MTLDebugCommandBuffer *)self addObject:group retained:1 purgeable:0];
  v14.receiver = self;
  v14.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v14 encodeDashboardFinalizeForResourceGroup:group dashboard:dashboard values:values indices:indices count:count];
}

- (void)addActiveRenderTargets:(id)targets
{
  os_unfair_lock_lock(&self->_renderTargetAttachmentLock);
  [(NSMutableSet *)self->_renderTargetAttachments unionSet:targets];

  os_unfair_lock_unlock(&self->_renderTargetAttachmentLock);
}

- (void)commitWithDeadline:(unint64_t)deadline
{
  deadlineProfile = [(MTLToolsCommandBuffer *)self deadlineProfile];
  if (!deadline || !deadlineProfile)
  {
    [MTLDebugCommandBuffer commitWithDeadline:];
  }

  [(MTLToolsCommandBuffer *)self deadlineProfile];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugCommandBuffer commitWithDeadline:?];
  }

  [(MTLDebugCommandBuffer *)self preCommit];
  v6.receiver = self;
  v6.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v6 commitWithDeadline:deadline];
}

- (void)useResidencySet:(id)set
{
  if (!set)
  {
    [MTLDebugCommandBuffer useResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v5 useResidencySet:set];
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!sets[i])
      {
        [MTLDebugCommandBuffer useResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v8 useResidencySets:sets count:count];
}

- (void)useInternalResidencySet:(id)set
{
  if (!set)
  {
    [MTLDebugCommandBuffer useInternalResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v5 useInternalResidencySet:set];
}

- (void)useInternalResidencySets:(const void *)sets count:(unint64_t)count
{
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!sets[i])
      {
        [MTLDebugCommandBuffer useInternalResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v8 useInternalResidencySets:sets count:count];
}

- (id).cxx_construct
{
  self->_attachmentSet.__table_.__bucket_list_ = 0u;
  *&self->_attachmentSet.__table_.__first_node_.__next_ = 0u;
  self->_attachmentSet.__table_.__max_load_factor_ = 1.0;
  p_prevAttachments = &self->_prevAttachments;
  v4 = 448;
  do
  {
    AttachmentDescriptorSimple::AttachmentDescriptorSimple(p_prevAttachments->__elems_);
    p_prevAttachments = (v5 + 56);
    v4 -= 56;
  }

  while (v4);
  p_currAttachments = &self->_currAttachments;
  v7 = 448;
  do
  {
    AttachmentDescriptorSimple::AttachmentDescriptorSimple(p_currAttachments->__elems_);
    p_currAttachments = (v8 + 56);
    v7 -= 56;
  }

  while (v7);
  self->_referencedPurgeableObjects.__table_.__bucket_list_ = 0u;
  *&self->_referencedPurgeableObjects.__table_.__first_node_.__next_ = 0u;
  self->_referencedPurgeableObjects.__table_.__max_load_factor_ = 1.0;
  self->_externallyRetainedObjects.__table_.__bucket_list_ = 0u;
  *&self->_externallyRetainedObjects.__table_.__first_node_.__next_ = 0u;
  self->_externallyRetainedObjects.__table_.__max_load_factor_ = 1.0;
  self->_internallyRetainedObjects.__table_.__bucket_list_ = 0u;
  *&self->_internallyRetainedObjects.__table_.__first_node_.__next_ = 0u;
  self->_internallyRetainedObjects.__table_.__max_load_factor_ = 1.0;
  return self;
}

- (uint64_t)lockPurgeableObjects
{
  [self label];
  [a2 label];
  return MTLReportFailure();
}

- (uint64_t)commitWithDeadline:(void *)a1 .cold.2(void *a1)
{
  v2 = objc_opt_class();
  [NSStringFromClass(v2) UTF8String];
  [a1 deadlineProfile];
  v3 = objc_opt_class();
  [NSStringFromClass(v3) UTF8String];
  return MTLReportFailure();
}

@end