@interface MTLDebugHeap
- (BOOL)detachBacking;
- (MTLDebugHeap)initWithHeap:(id)heap device:(id)device;
- (MTLDebugHeap)initWithHeap:(id)heap device:(id)device maxCompatiblePlacementSparsePageSize:(int64_t)size;
- (id)_newDebugAccelerationStructure:(id)structure;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset;
- (id)newAccelerationStructureWithSize:(unint64_t)size;
- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset;
- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options offset:(unint64_t)offset;
- (id)newTextureWithDescriptor:(id)descriptor;
- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset;
- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)alignment;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (void)validateHeapResourceOptions:(unint64_t)options isTexture:(BOOL)texture isIOSurface:(BOOL)surface context:(_MTLMessageContext *)context;
- (void)validateHeapTextureUsage:(unint64_t)usage options:(unint64_t)options context:(_MTLMessageContext *)context;
- (void)validateOffset:(unint64_t)offset withRequirements:(id)requirements;
- (void)validatePixelFormatWithHeap:(unint64_t)heap context:(_MTLMessageContext *)context;
- (void)validateRaytracingHeap;
- (void)validateTextureAtomicFlags:(id)flags context:(_MTLMessageContext *)context;
@end

@implementation MTLDebugHeap

- (void)validatePixelFormatWithHeap:(unint64_t)heap context:(_MTLMessageContext *)context
{
  if (-[MTLToolsHeap type](self, "type") == 2 && ([-[MTLToolsObject baseObject](self->_debugDevice "baseObject")] & 1) == 0)
  {
    device = self->super.super._device;
    MTLPixelFormatGetInfoForDevice();
  }
}

- (void)validateHeapResourceOptions:(unint64_t)options isTexture:(BOOL)texture isIOSurface:(BOOL)surface context:(_MTLMessageContext *)context
{
  textureCopy = texture;
  v9 = options & 0xF;
  v10 = (options >> 8) & 3;
  if (v10 && v10 != [(MTLToolsHeap *)self hazardTrackingMode])
  {
    _MTLMessageContextPush_();
  }

  if (v9 != [(MTLToolsHeap *)self cpuCacheMode])
  {
    _MTLMessageContextPush_();
  }

  if (options >> 4 == [(MTLToolsHeap *)self storageMode])
  {
    if (options >> 4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (options >> 4)
    {
      goto LABEL_11;
    }
  }

  if (textureCopy && ([(MTLDevice *)[(MTLToolsObject *)self device] supportsSharedStorageTextures]& 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_11:
  if ((options & 0xFFFFFFFFFFF3FC00) != 0)
  {
    _MTLMessageContextPush_();
  }
}

- (void)validateHeapTextureUsage:(unint64_t)usage options:(unint64_t)options context:(_MTLMessageContext *)context
{
  usageCopy = usage;
  if (([-[MTLToolsObject baseObject](self->_debugDevice baseObject] & 1) == 0)
  {
    type = [(MTLToolsHeap *)self type];
    if ((usageCopy & 2) != 0 && type == 2)
    {

      _MTLMessageContextPush_();
    }
  }
}

- (void)validateTextureAtomicFlags:(id)flags context:(_MTLMessageContext *)context
{
  if (([flags usage] & 0x20) != 0)
  {
    if (([flags usage] & 3) == 0)
    {
      _MTLMessageContextPush_();
    }

    if ([flags pixelFormat] != 53 && objc_msgSend(flags, "pixelFormat") != 54 && objc_msgSend(flags, "pixelFormat") != 103)
    {

      _MTLMessageContextPush_();
    }
  }
}

- (MTLDebugHeap)initWithHeap:(id)heap device:(id)device
{
  v6.receiver = self;
  v6.super_class = MTLDebugHeap;
  result = [(MTLToolsObject *)&v6 initWithBaseObject:heap parent:?];
  if (result)
  {
    result->_debugDevice = device;
    atomic_store(0, &result->super.super._externalReferences + 1);
    LOBYTE(result->_purgeableStateToken.__a_.__a_value) = 0;
    result->_maxCompatiblePlacementSparsePageSize = 0;
  }

  return result;
}

- (MTLDebugHeap)initWithHeap:(id)heap device:(id)device maxCompatiblePlacementSparsePageSize:(int64_t)size
{
  result = [(MTLDebugHeap *)self initWithHeap:heap device:device];
  if (result)
  {
    result->_maxCompatiblePlacementSparsePageSize = size;
  }

  return result;
}

- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)alignment
{
  if ((alignment & (alignment - 1)) != 0)
  {
    [MTLDebugHeap maxAvailableSizeWithAlignment:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxAvailableSizeWithAlignment:alignment];
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!length)
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsHeap *)self size]< length)
  {
    lengthCopy = length;
    v12 = [(MTLToolsHeap *)self size];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->_debugDevice limits:lengthCopy][256] < length)
  {
    [MTLDebugHeap newBufferWithLength:? options:?];
  }

  if ([(MTLToolsHeap *)self type]== 2)
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsHeap *)self type]== 1)
  {
    _MTLMessageContextPush_();
  }

  [(MTLDebugHeap *)self validateHeapResourceOptions:options isTexture:0 isIOSurface:0 context:v13];
  _MTLMessageContextEnd();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [[MTLDebugBuffer alloc] initWithBuffer:v7 heap:self device:self->_debugDevice options:options];

  return v9;
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!descriptor || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsHeap *)self type]== 1)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v9[0])
  {
    [(MTLDebugDevice *)self->_debugDevice validateMemorylessResource:descriptor context:v9];
    if ([descriptor textureType] == 9)
    {
      _validateTextureBufferDescriptor(descriptor, [(MTLToolsObject *)self->_debugDevice baseObject]);
    }

    -[MTLDebugHeap validateHeapResourceOptions:isTexture:isIOSurface:context:](self, "validateHeapResourceOptions:isTexture:isIOSurface:context:", [descriptor resourceOptions], 1, 0, v9);
    -[MTLDebugHeap validateHeapTextureUsage:options:context:](self, "validateHeapTextureUsage:options:context:", [descriptor usage], objc_msgSend(descriptor, "resourceOptions"), v9);
    if ([(MTLToolsHeap *)self type]== 2 && ([(MTLToolsHeap *)self type]!= 2 || ([(MTLDevice *)[(MTLToolsObject *)self device] supportsSparseTextures]& 1) == 0))
    {
      _MTLMessageContextPush_();
    }

    if (-[MTLToolsHeap type](self, "type") == 2 && [descriptor storageMode] != 2)
    {
      _MTLMessageContextPush_();
    }

    if ([(MTLToolsHeap *)self type]== 2)
    {
      if (![descriptor textureType] || objc_msgSend(descriptor, "textureType") == 1)
      {
        _MTLMessageContextPush_();
      }

      if ([descriptor textureType] == 9)
      {
        _MTLMessageContextPush_();
      }
    }

    if ([descriptor sparseSurfaceDefaultValue] == 1 && objc_msgSend(descriptor, "pixelFormat") != 252)
    {
      _MTLMessageContextPush_();
    }

    -[MTLDebugHeap validatePixelFormatWithHeap:context:](self, "validatePixelFormatWithHeap:context:", [descriptor pixelFormat], v9);
    [(MTLDebugHeap *)self validateTextureAtomicFlags:descriptor context:v9];
  }

  _MTLMessageContextEnd();
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [[MTLDebugTexture alloc] initWithBaseTexture:v5 heap:self device:self->_debugDevice];

  return v7;
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  if (state != 1)
  {
    if (state != 2)
    {
      if (atomic_load(&self->super.super._externalReferences + 1))
      {
        [MTLDebugHeap setPurgeableState:];
      }
    }

    LOBYTE(self->_purgeableStateToken.__a_.__a_value) = 1;
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject setPurgeableState:state];
}

- (void)validateOffset:(unint64_t)offset withRequirements:(id)requirements
{
  var1 = requirements.var1;
  var0 = requirements.var0;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (var0 + offset > [(MTLToolsHeap *)self size])
  {
    [(MTLToolsHeap *)self size];
    _MTLMessageContextPush_();
  }

  if (offset % var1)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options offset:(unint64_t)offset
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!length)
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsHeap *)self size]< length)
  {
    lengthCopy = length;
    v16 = [(MTLToolsHeap *)self size];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->_debugDevice limits:lengthCopy][256] < length)
  {
    [MTLDebugHeap newBufferWithLength:? options:?];
  }

  if ([(MTLToolsHeap *)self type]!= 1)
  {
    _MTLMessageContextPush_();
  }

  [(MTLDebugHeap *)self validateHeapResourceOptions:options isTexture:0 isIOSurface:0 context:v17];
  _MTLMessageContextEnd();
  v9 = [(MTLDevice *)[(MTLToolsObject *)self device] heapBufferSizeAndAlignWithLength:length options:options];
  [(MTLDebugHeap *)self validateOffset:offset withRequirements:v9, v10];
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = [[MTLDebugBuffer alloc] initWithBuffer:v11 heap:self device:self->_debugDevice options:options];

  return v13;
}

- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!descriptor || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsHeap *)self type]!= 1)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v13[0])
  {
    [(MTLDebugDevice *)self->_debugDevice validateMemorylessResource:descriptor context:v13];
    if ([descriptor textureType] == 9)
    {
      _validateTextureBufferDescriptor(descriptor, [(MTLToolsObject *)self->_debugDevice baseObject]);
    }

    -[MTLDebugHeap validateHeapResourceOptions:isTexture:isIOSurface:context:](self, "validateHeapResourceOptions:isTexture:isIOSurface:context:", [descriptor resourceOptions], 1, 0, v13);
    -[MTLDebugHeap validateHeapTextureUsage:options:context:](self, "validateHeapTextureUsage:options:context:", [descriptor usage], objc_msgSend(descriptor, "resourceOptions"), v13);
    -[MTLDebugHeap validatePixelFormatWithHeap:context:](self, "validatePixelFormatWithHeap:context:", [descriptor pixelFormat], v13);
    [(MTLDebugHeap *)self validateTextureAtomicFlags:descriptor context:v13];
  }

  _MTLMessageContextEnd();
  v7 = [(MTLDevice *)[(MTLToolsObject *)self device] heapTextureSizeAndAlignWithDescriptor:descriptor];
  [(MTLDebugHeap *)self validateOffset:offset withRequirements:v7, v8];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [[MTLDebugTexture alloc] initWithBaseTexture:v9 heap:self device:self->_debugDevice];

  return v11;
}

- (id)_newDebugAccelerationStructure:(id)structure
{
  if (!structure)
  {
    return 0;
  }

  v4 = [[MTLDebugAccelerationStructure alloc] initWithBaseObject:structure parent:self heap:self];

  return v4;
}

- (void)validateRaytracingHeap
{
  if (([(MTLDevice *)[(MTLToolsObject *)self device] supportsRaytracing]& 1) == 0)
  {
    [MTLDebugHeap validateRaytracingHeap];
  }

  if ([(MTLToolsHeap *)self storageMode]!= 2)
  {
    [MTLDebugHeap validateRaytracingHeap];
  }
}

- (id)newAccelerationStructureWithSize:(unint64_t)size
{
  [(MTLDebugHeap *)self validateRaytracingHeap];
  if (!size)
  {
    [MTLDebugHeap newAccelerationStructureWithSize:];
  }

  if ([(MTLToolsHeap *)self size]< size)
  {
    [MTLDebugHeap newAccelerationStructureWithSize:?];
  }

  v5 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithSize:size];

  return [(MTLDebugHeap *)self _newDebugAccelerationStructure:v5];
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor
{
  [(MTLDebugHeap *)self validateRaytracingHeap];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  device = [(MTLToolsObject *)self device];
  if (isKindOfClass)
  {
    checkMTL4AccelerationStructureDescriptor(device, descriptor, 0);
  }

  else
  {
    checkAccelerationStructureDescriptor(device, descriptor, 0);
  }

  v7 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithDescriptor:unwrapAccelerationStructureDescriptor(descriptor)];

  return [(MTLDebugHeap *)self _newDebugAccelerationStructure:v7];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset
{
  [(MTLDebugHeap *)self validateRaytracingHeap];
  if ([(MTLToolsHeap *)self type]== 1)
  {
    if (size)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MTLDebugHeap newAccelerationStructureWithSize:offset:];
    if (size)
    {
      goto LABEL_3;
    }
  }

  [MTLDebugHeap newAccelerationStructureWithSize:offset:];
LABEL_3:
  if ([(MTLToolsHeap *)self size]< size)
  {
    [MTLDebugHeap newAccelerationStructureWithSize:? offset:?];
  }

  v7 = [(MTLDevice *)[(MTLToolsObject *)self device] heapAccelerationStructureSizeAndAlignWithSize:size];
  [(MTLDebugHeap *)self validateOffset:offset withRequirements:v7, v8];
  v9 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithSize:size offset:offset];

  return [(MTLDebugHeap *)self _newDebugAccelerationStructure:v9];
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset
{
  [(MTLDebugHeap *)self validateRaytracingHeap];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  device = [(MTLToolsObject *)self device];
  if (isKindOfClass)
  {
    checkMTL4AccelerationStructureDescriptor(device, descriptor, 0);
  }

  else
  {
    checkAccelerationStructureDescriptor(device, descriptor, 0);
  }

  if ([(MTLToolsHeap *)self type]!= 1)
  {
    [MTLDebugHeap newAccelerationStructureWithDescriptor:offset:];
  }

  v9 = [(MTLDevice *)[(MTLToolsObject *)self device] heapAccelerationStructureSizeAndAlignWithDescriptor:descriptor];
  [(MTLDebugHeap *)self validateOffset:offset withRequirements:v9, v10];
  v11 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithDescriptor:unwrapAccelerationStructureDescriptor(descriptor) offset:offset];

  return [(MTLDebugHeap *)self _newDebugAccelerationStructure:v11];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  [(MTLDebugHeap *)self validateRaytracingHeap];
  if (!size)
  {
    [MTLDebugHeap newAccelerationStructureWithSize:resourceIndex:];
  }

  if ([(MTLToolsHeap *)self size]< size)
  {
    [MTLDebugHeap newAccelerationStructureWithSize:? resourceIndex:?];
  }

  v7 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithSize:size resourceIndex:index];

  return [(MTLDebugHeap *)self _newDebugAccelerationStructure:v7];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  [(MTLDebugHeap *)self validateRaytracingHeap];
  if ([(MTLToolsHeap *)self type]== 1)
  {
    if (size)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MTLDebugHeap newAccelerationStructureWithSize:offset:resourceIndex:];
    if (size)
    {
      goto LABEL_3;
    }
  }

  [MTLDebugHeap newAccelerationStructureWithSize:offset:resourceIndex:];
LABEL_3:
  if ([(MTLToolsHeap *)self size]< size)
  {
    [MTLDebugHeap newAccelerationStructureWithSize:? offset:? resourceIndex:?];
  }

  v9 = [(MTLDevice *)[(MTLToolsObject *)self device] heapAccelerationStructureSizeAndAlignWithSize:size];
  [(MTLDebugHeap *)self validateOffset:offset withRequirements:v9, v10];
  v11 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithSize:size offset:offset resourceIndex:index];

  return [(MTLDebugHeap *)self _newDebugAccelerationStructure:v11];
}

- (BOOL)detachBacking
{
  if (([(MTLDevice *)[(MTLToolsObject *)self device] supportsResourceDetachBacking]& 1) == 0)
  {
    [MTLDebugHeap detachBacking];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject detachBacking];
}

@end