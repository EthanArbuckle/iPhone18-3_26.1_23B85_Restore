@interface MTLDebugHeap
- (BOOL)detachBacking;
- (MTLDebugHeap)initWithHeap:(id)a3 device:(id)a4;
- (MTLDebugHeap)initWithHeap:(id)a3 device:(id)a4 maxCompatiblePlacementSparsePageSize:(int64_t)a5;
- (id)_newDebugAccelerationStructure:(id)a3;
- (id)newAccelerationStructureWithDescriptor:(id)a3;
- (id)newAccelerationStructureWithDescriptor:(id)a3 offset:(unint64_t)a4;
- (id)newAccelerationStructureWithSize:(unint64_t)a3;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 offset:(unint64_t)a5;
- (id)newTextureWithDescriptor:(id)a3;
- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4;
- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)a3;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (void)validateHeapResourceOptions:(unint64_t)a3 isTexture:(BOOL)a4 isIOSurface:(BOOL)a5 context:(_MTLMessageContext *)a6;
- (void)validateHeapTextureUsage:(unint64_t)a3 options:(unint64_t)a4 context:(_MTLMessageContext *)a5;
- (void)validateOffset:(unint64_t)a3 withRequirements:(id)a4;
- (void)validatePixelFormatWithHeap:(unint64_t)a3 context:(_MTLMessageContext *)a4;
- (void)validateRaytracingHeap;
- (void)validateTextureAtomicFlags:(id)a3 context:(_MTLMessageContext *)a4;
@end

@implementation MTLDebugHeap

- (void)validatePixelFormatWithHeap:(unint64_t)a3 context:(_MTLMessageContext *)a4
{
  if (-[MTLToolsHeap type](self, "type") == 2 && ([-[MTLToolsObject baseObject](self->_debugDevice "baseObject")] & 1) == 0)
  {
    device = self->super.super._device;
    MTLPixelFormatGetInfoForDevice();
  }
}

- (void)validateHeapResourceOptions:(unint64_t)a3 isTexture:(BOOL)a4 isIOSurface:(BOOL)a5 context:(_MTLMessageContext *)a6
{
  v6 = a4;
  v9 = a3 & 0xF;
  v10 = (a3 >> 8) & 3;
  if (v10 && v10 != [(MTLToolsHeap *)self hazardTrackingMode])
  {
    _MTLMessageContextPush_();
  }

  if (v9 != [(MTLToolsHeap *)self cpuCacheMode])
  {
    _MTLMessageContextPush_();
  }

  if (a3 >> 4 == [(MTLToolsHeap *)self storageMode])
  {
    if (a3 >> 4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (a3 >> 4)
    {
      goto LABEL_11;
    }
  }

  if (v6 && ([(MTLDevice *)[(MTLToolsObject *)self device] supportsSharedStorageTextures]& 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_11:
  if ((a3 & 0xFFFFFFFFFFF3FC00) != 0)
  {
    _MTLMessageContextPush_();
  }
}

- (void)validateHeapTextureUsage:(unint64_t)a3 options:(unint64_t)a4 context:(_MTLMessageContext *)a5
{
  v5 = a3;
  if (([-[MTLToolsObject baseObject](self->_debugDevice baseObject] & 1) == 0)
  {
    v7 = [(MTLToolsHeap *)self type];
    if ((v5 & 2) != 0 && v7 == 2)
    {

      _MTLMessageContextPush_();
    }
  }
}

- (void)validateTextureAtomicFlags:(id)a3 context:(_MTLMessageContext *)a4
{
  if (([a3 usage] & 0x20) != 0)
  {
    if (([a3 usage] & 3) == 0)
    {
      _MTLMessageContextPush_();
    }

    if ([a3 pixelFormat] != 53 && objc_msgSend(a3, "pixelFormat") != 54 && objc_msgSend(a3, "pixelFormat") != 103)
    {

      _MTLMessageContextPush_();
    }
  }
}

- (MTLDebugHeap)initWithHeap:(id)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTLDebugHeap;
  result = [(MTLToolsObject *)&v6 initWithBaseObject:a3 parent:?];
  if (result)
  {
    result->_debugDevice = a4;
    atomic_store(0, &result->super.super._externalReferences + 1);
    LOBYTE(result->_purgeableStateToken.__a_.__a_value) = 0;
    result->_maxCompatiblePlacementSparsePageSize = 0;
  }

  return result;
}

- (MTLDebugHeap)initWithHeap:(id)a3 device:(id)a4 maxCompatiblePlacementSparsePageSize:(int64_t)a5
{
  result = [(MTLDebugHeap *)self initWithHeap:a3 device:a4];
  if (result)
  {
    result->_maxCompatiblePlacementSparsePageSize = a5;
  }

  return result;
}

- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)a3
{
  if ((a3 & (a3 - 1)) != 0)
  {
    [MTLDebugHeap maxAvailableSizeWithAlignment:];
  }

  v5 = [(MTLToolsObject *)self baseObject];

  return [v5 maxAvailableSizeWithAlignment:a3];
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsHeap *)self size]< a3)
  {
    v11 = a3;
    v12 = [(MTLToolsHeap *)self size];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->_debugDevice limits:v11][256] < a3)
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

  [(MTLDebugHeap *)self validateHeapResourceOptions:a4 isTexture:0 isIOSurface:0 context:v13];
  _MTLMessageContextEnd();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [[MTLDebugBuffer alloc] initWithBuffer:v7 heap:self device:self->_debugDevice options:a4];

  return v9;
}

- (id)newTextureWithDescriptor:(id)a3
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsHeap *)self type]== 1)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v9[0])
  {
    [(MTLDebugDevice *)self->_debugDevice validateMemorylessResource:a3 context:v9];
    if ([a3 textureType] == 9)
    {
      _validateTextureBufferDescriptor(a3, [(MTLToolsObject *)self->_debugDevice baseObject]);
    }

    -[MTLDebugHeap validateHeapResourceOptions:isTexture:isIOSurface:context:](self, "validateHeapResourceOptions:isTexture:isIOSurface:context:", [a3 resourceOptions], 1, 0, v9);
    -[MTLDebugHeap validateHeapTextureUsage:options:context:](self, "validateHeapTextureUsage:options:context:", [a3 usage], objc_msgSend(a3, "resourceOptions"), v9);
    if ([(MTLToolsHeap *)self type]== 2 && ([(MTLToolsHeap *)self type]!= 2 || ([(MTLDevice *)[(MTLToolsObject *)self device] supportsSparseTextures]& 1) == 0))
    {
      _MTLMessageContextPush_();
    }

    if (-[MTLToolsHeap type](self, "type") == 2 && [a3 storageMode] != 2)
    {
      _MTLMessageContextPush_();
    }

    if ([(MTLToolsHeap *)self type]== 2)
    {
      if (![a3 textureType] || objc_msgSend(a3, "textureType") == 1)
      {
        _MTLMessageContextPush_();
      }

      if ([a3 textureType] == 9)
      {
        _MTLMessageContextPush_();
      }
    }

    if ([a3 sparseSurfaceDefaultValue] == 1 && objc_msgSend(a3, "pixelFormat") != 252)
    {
      _MTLMessageContextPush_();
    }

    -[MTLDebugHeap validatePixelFormatWithHeap:context:](self, "validatePixelFormatWithHeap:context:", [a3 pixelFormat], v9);
    [(MTLDebugHeap *)self validateTextureAtomicFlags:a3 context:v9];
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

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      if (atomic_load(&self->super.super._externalReferences + 1))
      {
        [MTLDebugHeap setPurgeableState:];
      }
    }

    LOBYTE(self->_purgeableStateToken.__a_.__a_value) = 1;
  }

  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 setPurgeableState:a3];
}

- (void)validateOffset:(unint64_t)a3 withRequirements:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (var0 + a3 > [(MTLToolsHeap *)self size])
  {
    [(MTLToolsHeap *)self size];
    _MTLMessageContextPush_();
  }

  if (a3 % var1)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 offset:(unint64_t)a5
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsHeap *)self size]< a3)
  {
    v15 = a3;
    v16 = [(MTLToolsHeap *)self size];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->_debugDevice limits:v15][256] < a3)
  {
    [MTLDebugHeap newBufferWithLength:? options:?];
  }

  if ([(MTLToolsHeap *)self type]!= 1)
  {
    _MTLMessageContextPush_();
  }

  [(MTLDebugHeap *)self validateHeapResourceOptions:a4 isTexture:0 isIOSurface:0 context:v17];
  _MTLMessageContextEnd();
  v9 = [(MTLDevice *)[(MTLToolsObject *)self device] heapBufferSizeAndAlignWithLength:a3 options:a4];
  [(MTLDebugHeap *)self validateOffset:a5 withRequirements:v9, v10];
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = [[MTLDebugBuffer alloc] initWithBuffer:v11 heap:self device:self->_debugDevice options:a4];

  return v13;
}

- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsHeap *)self type]!= 1)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v13[0])
  {
    [(MTLDebugDevice *)self->_debugDevice validateMemorylessResource:a3 context:v13];
    if ([a3 textureType] == 9)
    {
      _validateTextureBufferDescriptor(a3, [(MTLToolsObject *)self->_debugDevice baseObject]);
    }

    -[MTLDebugHeap validateHeapResourceOptions:isTexture:isIOSurface:context:](self, "validateHeapResourceOptions:isTexture:isIOSurface:context:", [a3 resourceOptions], 1, 0, v13);
    -[MTLDebugHeap validateHeapTextureUsage:options:context:](self, "validateHeapTextureUsage:options:context:", [a3 usage], objc_msgSend(a3, "resourceOptions"), v13);
    -[MTLDebugHeap validatePixelFormatWithHeap:context:](self, "validatePixelFormatWithHeap:context:", [a3 pixelFormat], v13);
    [(MTLDebugHeap *)self validateTextureAtomicFlags:a3 context:v13];
  }

  _MTLMessageContextEnd();
  v7 = [(MTLDevice *)[(MTLToolsObject *)self device] heapTextureSizeAndAlignWithDescriptor:a3];
  [(MTLDebugHeap *)self validateOffset:a4 withRequirements:v7, v8];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [[MTLDebugTexture alloc] initWithBaseTexture:v9 heap:self device:self->_debugDevice];

  return v11;
}

- (id)_newDebugAccelerationStructure:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [[MTLDebugAccelerationStructure alloc] initWithBaseObject:a3 parent:self heap:self];

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

- (id)newAccelerationStructureWithSize:(unint64_t)a3
{
  [(MTLDebugHeap *)self validateRaytracingHeap];
  if (!a3)
  {
    [MTLDebugHeap newAccelerationStructureWithSize:];
  }

  if ([(MTLToolsHeap *)self size]< a3)
  {
    [MTLDebugHeap newAccelerationStructureWithSize:?];
  }

  v5 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithSize:a3];

  return [(MTLDebugHeap *)self _newDebugAccelerationStructure:v5];
}

- (id)newAccelerationStructureWithDescriptor:(id)a3
{
  [(MTLDebugHeap *)self validateRaytracingHeap];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = [(MTLToolsObject *)self device];
  if (isKindOfClass)
  {
    checkMTL4AccelerationStructureDescriptor(v6, a3, 0);
  }

  else
  {
    checkAccelerationStructureDescriptor(v6, a3, 0);
  }

  v7 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithDescriptor:unwrapAccelerationStructureDescriptor(a3)];

  return [(MTLDebugHeap *)self _newDebugAccelerationStructure:v7];
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4
{
  [(MTLDebugHeap *)self validateRaytracingHeap];
  if ([(MTLToolsHeap *)self type]== 1)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MTLDebugHeap newAccelerationStructureWithSize:offset:];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  [MTLDebugHeap newAccelerationStructureWithSize:offset:];
LABEL_3:
  if ([(MTLToolsHeap *)self size]< a3)
  {
    [MTLDebugHeap newAccelerationStructureWithSize:? offset:?];
  }

  v7 = [(MTLDevice *)[(MTLToolsObject *)self device] heapAccelerationStructureSizeAndAlignWithSize:a3];
  [(MTLDebugHeap *)self validateOffset:a4 withRequirements:v7, v8];
  v9 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithSize:a3 offset:a4];

  return [(MTLDebugHeap *)self _newDebugAccelerationStructure:v9];
}

- (id)newAccelerationStructureWithDescriptor:(id)a3 offset:(unint64_t)a4
{
  [(MTLDebugHeap *)self validateRaytracingHeap];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = [(MTLToolsObject *)self device];
  if (isKindOfClass)
  {
    checkMTL4AccelerationStructureDescriptor(v8, a3, 0);
  }

  else
  {
    checkAccelerationStructureDescriptor(v8, a3, 0);
  }

  if ([(MTLToolsHeap *)self type]!= 1)
  {
    [MTLDebugHeap newAccelerationStructureWithDescriptor:offset:];
  }

  v9 = [(MTLDevice *)[(MTLToolsObject *)self device] heapAccelerationStructureSizeAndAlignWithDescriptor:a3];
  [(MTLDebugHeap *)self validateOffset:a4 withRequirements:v9, v10];
  v11 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithDescriptor:unwrapAccelerationStructureDescriptor(a3) offset:a4];

  return [(MTLDebugHeap *)self _newDebugAccelerationStructure:v11];
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4
{
  [(MTLDebugHeap *)self validateRaytracingHeap];
  if (!a3)
  {
    [MTLDebugHeap newAccelerationStructureWithSize:resourceIndex:];
  }

  if ([(MTLToolsHeap *)self size]< a3)
  {
    [MTLDebugHeap newAccelerationStructureWithSize:? resourceIndex:?];
  }

  v7 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithSize:a3 resourceIndex:a4];

  return [(MTLDebugHeap *)self _newDebugAccelerationStructure:v7];
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5
{
  [(MTLDebugHeap *)self validateRaytracingHeap];
  if ([(MTLToolsHeap *)self type]== 1)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MTLDebugHeap newAccelerationStructureWithSize:offset:resourceIndex:];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  [MTLDebugHeap newAccelerationStructureWithSize:offset:resourceIndex:];
LABEL_3:
  if ([(MTLToolsHeap *)self size]< a3)
  {
    [MTLDebugHeap newAccelerationStructureWithSize:? offset:? resourceIndex:?];
  }

  v9 = [(MTLDevice *)[(MTLToolsObject *)self device] heapAccelerationStructureSizeAndAlignWithSize:a3];
  [(MTLDebugHeap *)self validateOffset:a4 withRequirements:v9, v10];
  v11 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithSize:a3 offset:a4 resourceIndex:a5];

  return [(MTLDebugHeap *)self _newDebugAccelerationStructure:v11];
}

- (BOOL)detachBacking
{
  if (([(MTLDevice *)[(MTLToolsObject *)self device] supportsResourceDetachBacking]& 1) == 0)
  {
    [MTLDebugHeap detachBacking];
  }

  v3 = [(MTLToolsObject *)self baseObject];

  return [v3 detachBacking];
}

@end