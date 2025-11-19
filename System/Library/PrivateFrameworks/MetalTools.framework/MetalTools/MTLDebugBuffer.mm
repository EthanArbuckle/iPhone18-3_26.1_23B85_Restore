@interface MTLDebugBuffer
- (BOOL)detachBacking;
- (BOOL)replaceBackingWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 deallocator:(id)a5;
- (MTLDebugBuffer)initWithBuffer:(id)a3 device:(id)a4 bytes:(const void *)a5 options:(unint64_t)a6;
- (MTLDebugBuffer)initWithBuffer:(id)a3 device:(id)a4 options:(unint64_t)a5;
- (MTLDebugBuffer)initWithBuffer:(id)a3 device:(id)a4 options:(unint64_t)a5 placementSparsePageSize:(int64_t)a6;
- (MTLDebugBuffer)initWithBuffer:(id)a3 heap:(id)a4 device:(id)a5 options:(unint64_t)a6;
- (id)copyDebugMarkers;
- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6;
- (id)newTensorWithDescriptor:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5;
- (unint64_t)gpuAddress;
- (unint64_t)parentGPUAddress;
- (unint64_t)parentGPUSize;
- (unint64_t)resourceIndex;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (void)addDebugMarker:(id)a3 range:(_NSRange)a4;
- (void)contents;
- (void)dealloc;
- (void)didModifyRange:(_NSRange)a3;
- (void)makeAliasable;
- (void)removeAllDebugMarkers;
- (void)setParentGPUAddress:(unint64_t)a3;
- (void)setParentGPUSize:(unint64_t)a3;
@end

@implementation MTLDebugBuffer

- (MTLDebugBuffer)initWithBuffer:(id)a3 device:(id)a4 options:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = MTLDebugBuffer;
  v7 = [(MTLToolsResource *)&v9 initWithBaseObject:a3 parent:a4];
  if (v7)
  {
    v7->_length = [a3 length];
    v7->_common = [[MTLDebugResource alloc] initWithBaseObject:a3];
    v7->super.super._options = a5;
    atomic_store(0, &v7->_purgeableStateToken);
    v7->_purgeableStateHasBeenSet = 0;
  }

  return v7;
}

- (MTLDebugBuffer)initWithBuffer:(id)a3 heap:(id)a4 device:(id)a5 options:(unint64_t)a6
{
  v10.receiver = self;
  v10.super_class = MTLDebugBuffer;
  v8 = [(MTLToolsResource *)&v10 initWithBaseObject:a3 parent:a4 heap:a4];
  if (v8)
  {
    v8->_length = [a3 length];
    v8->_common = [[MTLDebugResource alloc] initWithBaseObject:a3];
    v8->super.super._options = a6;
    atomic_store(0, &v8->_purgeableStateToken);
    v8->_purgeableStateHasBeenSet = 0;
  }

  return v8;
}

- (MTLDebugBuffer)initWithBuffer:(id)a3 device:(id)a4 bytes:(const void *)a5 options:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = MTLDebugBuffer;
  v9 = [(MTLToolsResource *)&v11 initWithBaseObject:a3 parent:a4];
  if (v9)
  {
    v9->_length = [a3 length];
    v9->_common = [[MTLDebugResource alloc] initWithBaseObject:a3];
    v9->_pointer = a5;
    v9->super.super._options = a6;
    atomic_store(0, &v9->_purgeableStateToken);
    v9->_purgeableStateHasBeenSet = 0;
    v9->_isContentExposedToCPU = 1;
  }

  return v9;
}

- (MTLDebugBuffer)initWithBuffer:(id)a3 device:(id)a4 options:(unint64_t)a5 placementSparsePageSize:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = MTLDebugBuffer;
  v9 = [(MTLToolsResource *)&v11 initWithBaseObject:a3 parent:a4];
  if (v9)
  {
    v9->_length = [a3 length];
    v9->_common = [[MTLDebugResource alloc] initWithBaseObject:a3];
    v9->super.super._options = a5;
    atomic_store(0, &v9->_purgeableStateToken);
    v9->_purgeableStateHasBeenSet = 0;
    v9->_placementSparsePageSize = a6;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugBuffer;
  [(MTLToolsBuffer *)&v3 dealloc];
}

- (unint64_t)resourceIndex
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceIndex];
}

- (void)makeAliasable
{
  if (![-[MTLToolsObject baseObject](self "baseObject")])
  {
    [MTLDebugBuffer makeAliasable];
  }

  v3 = [(MTLToolsObject *)self baseObject];

  [v3 makeAliasable];
}

- (unint64_t)gpuAddress
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuAddress];
}

- (unint64_t)parentGPUAddress
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 parentGPUAddress];
}

- (void)setParentGPUAddress:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setParentGPUAddress:a3];
}

- (unint64_t)parentGPUSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 parentGPUSize];
}

- (void)setParentGPUSize:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setParentGPUSize:a3];
}

- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5
{
  v9 = [(MTLDevice *)[(MTLToolsObject *)self device] baseObject];
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([a3 textureType] == 9)
  {
    _validateTextureBufferDescriptor(a3, v9);
  }

  _MTLMessageContextEnd();
  v10 = [a3 textureType];
  v11 = [a3 pixelFormat];
  if (v10 == 9)
  {
    v12 = [v9 minimumTextureBufferAlignmentForPixelFormat:v11];
  }

  else
  {
    v12 = [v9 minimumLinearTextureAlignmentForPixelFormat:v11];
  }

  validateNewTexture(self, a3, a4, a5, v12, v12);
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v13 = [a3 resourceOptions];
  options_low = LOBYTE(self->super.super._options);
  v15 = [(MTLToolsResource *)self resourceOptions];
  if ((v13 & 0x300) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 & 0x300;
  }

  if ((v16 | v13 & 0x3FF) != (v15 & 0x300 | options_low))
  {
    v23 = [a3 resourceOptions];
    options = self->super.super._options;
    _MTLMessageContextPush_();
  }

  if ([a3 depth] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:a3 offset:? bytesPerRow:?];
  }

  if ([a3 mipmapLevelCount] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:a3 offset:? bytesPerRow:?];
  }

  if ([a3 sampleCount] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:a3 offset:? bytesPerRow:?];
  }

  if ([a3 arrayLength] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:a3 offset:? bytesPerRow:?];
  }

  if ([a3 compressionType] || objc_msgSend(a3, "compressionFootprint"))
  {
    _MTLMessageContextPush_();
  }

  if (([v9 supportsRenderToLinearTextures] & 1) == 0 && (objc_msgSend(a3, "usage") & 4) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ([a3 placementSparsePageSize])
  {
    if (-[MTLToolsDevice supportsMTL4PlacementSparse](self->super.super.super._device, "supportsMTL4PlacementSparse") && (IsValidSparsePageSize = _MTLDebugIsValidSparsePageSize([a3 placementSparsePageSize]), v18 = objc_msgSend(a3, "placementSparsePageSize"), IsValidSparsePageSize))
    {
      if (v18 != self->_placementSparsePageSize)
      {
        [MTLDebugBuffer newTextureWithDescriptor:a3 offset:&self->_placementSparsePageSize bytesPerRow:?];
      }
    }

    else
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v19 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  v21 = [[MTLDebugTexture alloc] initWithBaseTexture:v19 device:[(MTLToolsObject *)self device] buffer:self offset:a4 bytesPerRow:a5 descriptor:a3];

  return v21;
}

- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6
{
  v11 = [(MTLDevice *)[(MTLToolsObject *)self device] baseObject];
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([a3 textureType] == 3)
  {
    v12 = [v11 linearTextureArrayAlignmentBytes];
    v13 = [v11 linearTextureArrayAlignmentSlice];
    v14 = v13;
    if (!v12 || !v13)
    {
      _MTLMessageContextPush_();
    }

    if ((a6 & (v14 - 1)) != 0)
    {
      v28 = v14;
      _MTLMessageContextPush_();
    }
  }

  else if ([a3 textureType] == 9)
  {
    _validateTextureBufferDescriptor(a3, v11);
  }

  _MTLMessageContextEnd();
  if ([a3 textureType] == 3)
  {
    v15 = [v11 linearTextureArrayAlignmentBytes];
    v16 = [v11 linearTextureArrayAlignmentSlice];
  }

  else if ([a3 textureType] == 9)
  {
    v16 = [v11 minimumTextureBufferAlignmentForPixelFormat:objc_msgSend(a3, "pixelFormat")];
    v15 = 0;
  }

  else
  {
    if ([a3 usage] == 1)
    {
      v17 = [v11 deviceLinearReadOnlyTextureAlignmentBytes];
    }

    else
    {
      v17 = [v11 minLinearTextureAlignmentForPixelFormat:objc_msgSend(a3, "pixelFormat")];
    }

    v15 = v17;
    v16 = v17;
  }

  validateNewTexture(self, a3, a4, a5, v16, v15);
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v18 = [a3 resourceOptions];
  options_low = LOBYTE(self->super.super._options);
  v20 = [(MTLToolsResource *)self resourceOptions];
  if ((v18 & 0x300) != 0)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20 & 0x300;
  }

  if ((v21 | v18 & 0x3FF) != (v20 & 0x300 | options_low))
  {
    v28 = [a3 resourceOptions];
    options = self->super.super._options;
    _MTLMessageContextPush_();
  }

  if ([a3 depth] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:a3 offset:? bytesPerRow:?];
  }

  if ([a3 mipmapLevelCount] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:a3 offset:? bytesPerRow:?];
  }

  if ([a3 sampleCount] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:a3 offset:? bytesPerRow:?];
  }

  if (([v11 supportsRenderToLinearTextures] & 1) == 0 && (objc_msgSend(a3, "usage") & 4) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ([a3 placementSparsePageSize])
  {
    if (-[MTLToolsDevice supportsMTL4PlacementSparse](self->super.super.super._device, "supportsMTL4PlacementSparse") && (IsValidSparsePageSize = _MTLDebugIsValidSparsePageSize([a3 placementSparsePageSize]), v23 = objc_msgSend(a3, "placementSparsePageSize"), IsValidSparsePageSize))
    {
      if (v23 != self->_placementSparsePageSize)
      {
        [MTLDebugBuffer newTextureWithDescriptor:a3 offset:&self->_placementSparsePageSize bytesPerRow:?];
      }
    }

    else
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v24 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v24)
  {
    return 0;
  }

  v25 = v24;
  v26 = [[MTLDebugTexture alloc] initWithBaseTexture:v24 device:[(MTLToolsObject *)self device] buffer:self offset:a4 bytesPerRow:a5 bytesPerImage:a6 descriptor:a3];

  return v26;
}

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  if ([-[MTLToolsObject baseObject](self "baseObject")])
  {
    [MTLDebugBuffer setPurgeableState:];
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      if (atomic_load(&self->_purgeableStateToken))
      {
        [MTLDebugBuffer setPurgeableState:];
      }
    }

    self->_purgeableStateHasBeenSet = 1;
  }

  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 setPurgeableState:a3];
}

- (void)didModifyRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 didModifyRange:{location, length}];
}

- (void)contents
{
  [(MTLToolsResource *)self validateCPUWriteable];
  self->_isContentExposedToCPU = 1;
  v3 = [(MTLToolsObject *)self baseObject];

  return [v3 contents];
}

- (id)copyDebugMarkers
{
  result = [(NSMutableArray *)self->_debugMarkers count];
  if (result)
  {
    debugMarkers = self->_debugMarkers;

    return [(NSMutableArray *)debugMarkers copy];
  }

  return result;
}

- (void)addDebugMarker:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v10.receiver = self;
  v10.super_class = MTLDebugBuffer;
  [MTLToolsBuffer addDebugMarker:sel_addDebugMarker_range_ range:?];
  v8 = objc_alloc_init(MTLDebugBufferMarker);
  [(MTLDebugBufferMarker *)v8 setLabel:a3];
  [(MTLDebugBufferMarker *)v8 setRange:location, length];
  debugMarkers = self->_debugMarkers;
  if (!debugMarkers)
  {
    debugMarkers = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_debugMarkers = debugMarkers;
  }

  [(NSMutableArray *)debugMarkers addObject:v8];
}

- (void)removeAllDebugMarkers
{
  v3.receiver = self;
  v3.super_class = MTLDebugBuffer;
  [(MTLToolsBuffer *)&v3 removeAllDebugMarkers];
  [(NSMutableArray *)self->_debugMarkers removeAllObjects];
}

- (BOOL)detachBacking
{
  if (([(MTLDevice *)[(MTLToolsObject *)self device] supportsResourceDetachBacking]& 1) == 0)
  {
    [MTLDebugBuffer detachBacking];
  }

  v3 = [(MTLToolsObject *)self baseObject];

  return [v3 detachBacking];
}

- (BOOL)replaceBackingWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 deallocator:(id)a5
{
  if (([(MTLDevice *)[(MTLToolsObject *)self device] supportsResourceDetachBacking]& 1) == 0)
  {
    [MTLDebugBuffer replaceBackingWithBytesNoCopy:length:deallocator:];
  }

  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  return [-[MTLToolsObject baseObject](self "baseObject")];
}

- (id)newTensorWithDescriptor:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v15 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v10)
  {
    v12 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    objc_autoreleasePoolPop(v9);
    return v12;
  }

  v11 = v10;
  v12 = [(MTLToolsTensor *)[MTLDebugTensor alloc] initWithBaseObject:v10 buffer:self];

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = v15;
  objc_autoreleasePoolPop(v9);
  *a5 = v15;
  return v12;
}

- (uint64_t)newTextureWithDescriptor:(void *)a1 offset:(uint64_t *)a2 bytesPerRow:.cold.5(void *a1, uint64_t *a2)
{
  [a1 placementSparsePageSize];
  MTLSparsePageSizeString();
  v3 = *a2;
  MTLSparsePageSizeString();
  return OUTLINED_FUNCTION_7();
}

@end