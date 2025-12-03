@interface MTLDebugBuffer
- (BOOL)detachBacking;
- (BOOL)replaceBackingWithBytesNoCopy:(void *)copy length:(unint64_t)length deallocator:(id)deallocator;
- (MTLDebugBuffer)initWithBuffer:(id)buffer device:(id)device bytes:(const void *)bytes options:(unint64_t)options;
- (MTLDebugBuffer)initWithBuffer:(id)buffer device:(id)device options:(unint64_t)options;
- (MTLDebugBuffer)initWithBuffer:(id)buffer device:(id)device options:(unint64_t)options placementSparsePageSize:(int64_t)size;
- (MTLDebugBuffer)initWithBuffer:(id)buffer heap:(id)heap device:(id)device options:(unint64_t)options;
- (id)copyDebugMarkers;
- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (id)newTensorWithDescriptor:(id)descriptor offset:(unint64_t)offset error:(id *)error;
- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
- (unint64_t)gpuAddress;
- (unint64_t)parentGPUAddress;
- (unint64_t)parentGPUSize;
- (unint64_t)resourceIndex;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (void)addDebugMarker:(id)marker range:(_NSRange)range;
- (void)contents;
- (void)dealloc;
- (void)didModifyRange:(_NSRange)range;
- (void)makeAliasable;
- (void)removeAllDebugMarkers;
- (void)setParentGPUAddress:(unint64_t)address;
- (void)setParentGPUSize:(unint64_t)size;
@end

@implementation MTLDebugBuffer

- (MTLDebugBuffer)initWithBuffer:(id)buffer device:(id)device options:(unint64_t)options
{
  v9.receiver = self;
  v9.super_class = MTLDebugBuffer;
  v7 = [(MTLToolsResource *)&v9 initWithBaseObject:buffer parent:device];
  if (v7)
  {
    v7->_length = [buffer length];
    v7->_common = [[MTLDebugResource alloc] initWithBaseObject:buffer];
    v7->super.super._options = options;
    atomic_store(0, &v7->_purgeableStateToken);
    v7->_purgeableStateHasBeenSet = 0;
  }

  return v7;
}

- (MTLDebugBuffer)initWithBuffer:(id)buffer heap:(id)heap device:(id)device options:(unint64_t)options
{
  v10.receiver = self;
  v10.super_class = MTLDebugBuffer;
  v8 = [(MTLToolsResource *)&v10 initWithBaseObject:buffer parent:heap heap:heap];
  if (v8)
  {
    v8->_length = [buffer length];
    v8->_common = [[MTLDebugResource alloc] initWithBaseObject:buffer];
    v8->super.super._options = options;
    atomic_store(0, &v8->_purgeableStateToken);
    v8->_purgeableStateHasBeenSet = 0;
  }

  return v8;
}

- (MTLDebugBuffer)initWithBuffer:(id)buffer device:(id)device bytes:(const void *)bytes options:(unint64_t)options
{
  v11.receiver = self;
  v11.super_class = MTLDebugBuffer;
  v9 = [(MTLToolsResource *)&v11 initWithBaseObject:buffer parent:device];
  if (v9)
  {
    v9->_length = [buffer length];
    v9->_common = [[MTLDebugResource alloc] initWithBaseObject:buffer];
    v9->_pointer = bytes;
    v9->super.super._options = options;
    atomic_store(0, &v9->_purgeableStateToken);
    v9->_purgeableStateHasBeenSet = 0;
    v9->_isContentExposedToCPU = 1;
  }

  return v9;
}

- (MTLDebugBuffer)initWithBuffer:(id)buffer device:(id)device options:(unint64_t)options placementSparsePageSize:(int64_t)size
{
  v11.receiver = self;
  v11.super_class = MTLDebugBuffer;
  v9 = [(MTLToolsResource *)&v11 initWithBaseObject:buffer parent:device];
  if (v9)
  {
    v9->_length = [buffer length];
    v9->_common = [[MTLDebugResource alloc] initWithBaseObject:buffer];
    v9->super.super._options = options;
    atomic_store(0, &v9->_purgeableStateToken);
    v9->_purgeableStateHasBeenSet = 0;
    v9->_placementSparsePageSize = size;
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceIndex];
}

- (void)makeAliasable
{
  if (![-[MTLToolsObject baseObject](self "baseObject")])
  {
    [MTLDebugBuffer makeAliasable];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject makeAliasable];
}

- (unint64_t)gpuAddress
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuAddress];
}

- (unint64_t)parentGPUAddress
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject parentGPUAddress];
}

- (void)setParentGPUAddress:(unint64_t)address
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setParentGPUAddress:address];
}

- (unint64_t)parentGPUSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject parentGPUSize];
}

- (void)setParentGPUSize:(unint64_t)size
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setParentGPUSize:size];
}

- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row
{
  baseObject = [(MTLDevice *)[(MTLToolsObject *)self device] baseObject];
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor textureType] == 9)
  {
    _validateTextureBufferDescriptor(descriptor, baseObject);
  }

  _MTLMessageContextEnd();
  textureType = [descriptor textureType];
  pixelFormat = [descriptor pixelFormat];
  if (textureType == 9)
  {
    v12 = [baseObject minimumTextureBufferAlignmentForPixelFormat:pixelFormat];
  }

  else
  {
    v12 = [baseObject minimumLinearTextureAlignmentForPixelFormat:pixelFormat];
  }

  validateNewTexture(self, descriptor, offset, row, v12, v12);
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  resourceOptions = [descriptor resourceOptions];
  options_low = LOBYTE(self->super.super._options);
  resourceOptions2 = [(MTLToolsResource *)self resourceOptions];
  if ((resourceOptions & 0x300) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = resourceOptions2 & 0x300;
  }

  if ((v16 | resourceOptions & 0x3FF) != (resourceOptions2 & 0x300 | options_low))
  {
    resourceOptions3 = [descriptor resourceOptions];
    options = self->super.super._options;
    _MTLMessageContextPush_();
  }

  if ([descriptor depth] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:descriptor offset:? bytesPerRow:?];
  }

  if ([descriptor mipmapLevelCount] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:descriptor offset:? bytesPerRow:?];
  }

  if ([descriptor sampleCount] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:descriptor offset:? bytesPerRow:?];
  }

  if ([descriptor arrayLength] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:descriptor offset:? bytesPerRow:?];
  }

  if ([descriptor compressionType] || objc_msgSend(descriptor, "compressionFootprint"))
  {
    _MTLMessageContextPush_();
  }

  if (([baseObject supportsRenderToLinearTextures] & 1) == 0 && (objc_msgSend(descriptor, "usage") & 4) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor placementSparsePageSize])
  {
    if (-[MTLToolsDevice supportsMTL4PlacementSparse](self->super.super.super._device, "supportsMTL4PlacementSparse") && (IsValidSparsePageSize = _MTLDebugIsValidSparsePageSize([descriptor placementSparsePageSize]), v18 = objc_msgSend(descriptor, "placementSparsePageSize"), IsValidSparsePageSize))
    {
      if (v18 != self->_placementSparsePageSize)
      {
        [MTLDebugBuffer newTextureWithDescriptor:descriptor offset:&self->_placementSparsePageSize bytesPerRow:?];
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
  v21 = [[MTLDebugTexture alloc] initWithBaseTexture:v19 device:[(MTLToolsObject *)self device] buffer:self offset:offset bytesPerRow:row descriptor:descriptor];

  return v21;
}

- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  baseObject = [(MTLDevice *)[(MTLToolsObject *)self device] baseObject];
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor textureType] == 3)
  {
    linearTextureArrayAlignmentBytes = [baseObject linearTextureArrayAlignmentBytes];
    linearTextureArrayAlignmentSlice = [baseObject linearTextureArrayAlignmentSlice];
    v14 = linearTextureArrayAlignmentSlice;
    if (!linearTextureArrayAlignmentBytes || !linearTextureArrayAlignmentSlice)
    {
      _MTLMessageContextPush_();
    }

    if ((image & (v14 - 1)) != 0)
    {
      resourceOptions3 = v14;
      _MTLMessageContextPush_();
    }
  }

  else if ([descriptor textureType] == 9)
  {
    _validateTextureBufferDescriptor(descriptor, baseObject);
  }

  _MTLMessageContextEnd();
  if ([descriptor textureType] == 3)
  {
    linearTextureArrayAlignmentBytes2 = [baseObject linearTextureArrayAlignmentBytes];
    linearTextureArrayAlignmentSlice2 = [baseObject linearTextureArrayAlignmentSlice];
  }

  else if ([descriptor textureType] == 9)
  {
    linearTextureArrayAlignmentSlice2 = [baseObject minimumTextureBufferAlignmentForPixelFormat:objc_msgSend(descriptor, "pixelFormat")];
    linearTextureArrayAlignmentBytes2 = 0;
  }

  else
  {
    if ([descriptor usage] == 1)
    {
      deviceLinearReadOnlyTextureAlignmentBytes = [baseObject deviceLinearReadOnlyTextureAlignmentBytes];
    }

    else
    {
      deviceLinearReadOnlyTextureAlignmentBytes = [baseObject minLinearTextureAlignmentForPixelFormat:objc_msgSend(descriptor, "pixelFormat")];
    }

    linearTextureArrayAlignmentBytes2 = deviceLinearReadOnlyTextureAlignmentBytes;
    linearTextureArrayAlignmentSlice2 = deviceLinearReadOnlyTextureAlignmentBytes;
  }

  validateNewTexture(self, descriptor, offset, row, linearTextureArrayAlignmentSlice2, linearTextureArrayAlignmentBytes2);
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  resourceOptions = [descriptor resourceOptions];
  options_low = LOBYTE(self->super.super._options);
  resourceOptions2 = [(MTLToolsResource *)self resourceOptions];
  if ((resourceOptions & 0x300) != 0)
  {
    v21 = 0;
  }

  else
  {
    v21 = resourceOptions2 & 0x300;
  }

  if ((v21 | resourceOptions & 0x3FF) != (resourceOptions2 & 0x300 | options_low))
  {
    resourceOptions3 = [descriptor resourceOptions];
    options = self->super.super._options;
    _MTLMessageContextPush_();
  }

  if ([descriptor depth] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:descriptor offset:? bytesPerRow:?];
  }

  if ([descriptor mipmapLevelCount] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:descriptor offset:? bytesPerRow:?];
  }

  if ([descriptor sampleCount] != 1)
  {
    [MTLDebugBuffer newTextureWithDescriptor:descriptor offset:? bytesPerRow:?];
  }

  if (([baseObject supportsRenderToLinearTextures] & 1) == 0 && (objc_msgSend(descriptor, "usage") & 4) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor placementSparsePageSize])
  {
    if (-[MTLToolsDevice supportsMTL4PlacementSparse](self->super.super.super._device, "supportsMTL4PlacementSparse") && (IsValidSparsePageSize = _MTLDebugIsValidSparsePageSize([descriptor placementSparsePageSize]), v23 = objc_msgSend(descriptor, "placementSparsePageSize"), IsValidSparsePageSize))
    {
      if (v23 != self->_placementSparsePageSize)
      {
        [MTLDebugBuffer newTextureWithDescriptor:descriptor offset:&self->_placementSparsePageSize bytesPerRow:?];
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
  v26 = [[MTLDebugTexture alloc] initWithBaseTexture:v24 device:[(MTLToolsObject *)self device] buffer:self offset:offset bytesPerRow:row bytesPerImage:image descriptor:descriptor];

  return v26;
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  if ([-[MTLToolsObject baseObject](self "baseObject")])
  {
    [MTLDebugBuffer setPurgeableState:];
  }

  if (state != 1)
  {
    if (state != 2)
    {
      if (atomic_load(&self->_purgeableStateToken))
      {
        [MTLDebugBuffer setPurgeableState:];
      }
    }

    self->_purgeableStateHasBeenSet = 1;
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject setPurgeableState:state];
}

- (void)didModifyRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject didModifyRange:{location, length}];
}

- (void)contents
{
  [(MTLToolsResource *)self validateCPUWriteable];
  self->_isContentExposedToCPU = 1;
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject contents];
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

- (void)addDebugMarker:(id)marker range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v10.receiver = self;
  v10.super_class = MTLDebugBuffer;
  [MTLToolsBuffer addDebugMarker:sel_addDebugMarker_range_ range:?];
  v8 = objc_alloc_init(MTLDebugBufferMarker);
  [(MTLDebugBufferMarker *)v8 setLabel:marker];
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

  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject detachBacking];
}

- (BOOL)replaceBackingWithBytesNoCopy:(void *)copy length:(unint64_t)length deallocator:(id)deallocator
{
  if (([(MTLDevice *)[(MTLToolsObject *)self device] supportsResourceDetachBacking]& 1) == 0)
  {
    [MTLDebugBuffer replaceBackingWithBytesNoCopy:length:deallocator:];
  }

  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if (!copy)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  return [-[MTLToolsObject baseObject](self "baseObject")];
}

- (id)newTensorWithDescriptor:(id)descriptor offset:(unint64_t)offset error:(id *)error
{
  v15 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v10)
  {
    v12 = 0;
    if (error)
    {
      goto LABEL_3;
    }

LABEL_5:
    objc_autoreleasePoolPop(v9);
    return v12;
  }

  v11 = v10;
  v12 = [(MTLToolsTensor *)[MTLDebugTensor alloc] initWithBaseObject:v10 buffer:self];

  if (!error)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = v15;
  objc_autoreleasePoolPop(v9);
  *error = v15;
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