@interface MTL4DebugCommandQueue
- (MTL4DebugCommandQueue)initWithBaseObject:(id)object parent:(id)parent;
- (void)addResidencySet:(id)set;
- (void)addResidencySets:(const void *)sets count:(unint64_t)count;
- (void)commit:(const void *)commit count:(unint64_t)count;
- (void)commit:(const void *)commit count:(unint64_t)count options:(id)options;
- (void)copyBufferMappingsFromBuffer:(id)buffer toBuffer:(id)toBuffer operations:(id *)operations count:(unint64_t)count;
- (void)copyTextureMappingsFromTexture:(id)texture toTexture:(id)toTexture operations:(id *)operations count:(unint64_t)count;
- (void)dealloc;
- (void)removeResidencySet:(id)set;
- (void)removeResidencySets:(const void *)sets count:(unint64_t)count;
- (void)signalDrawable:(id)drawable;
- (void)signalEvent:(id)event value:(unint64_t)value;
- (void)updateBufferMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count;
- (void)updateTextureMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count;
- (void)validateBufferAccess:(id)access range:(_NSRange)range resourceSparsePageSize:(int64_t)size context:(_MTLMessageContext *)context;
- (void)validateBufferAccess:(id)access region:(id *)region resourceSparsePageSize:(int64_t)size context:(_MTLMessageContext *)context;
- (void)validateCommitCommon:(_MTLMessageContext *)common commandBuffers:(const void *)buffers count:(unint64_t)count;
- (void)validateHeapAccess:(id)access rangeOffset:(unint64_t)offset tileRegions:(id *)regions resourceSparsePageSize:(int64_t)size context:(_MTLMessageContext *)context;
- (void)validateTextureAccess:(id)access region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice context:(_MTLMessageContext *)context;
- (void)waitForDrawable:(id)drawable;
- (void)waitForEvent:(id)event value:(unint64_t)value;
@end

@implementation MTL4DebugCommandQueue

- (MTL4DebugCommandQueue)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4DebugCommandQueue;
  return [(MTL4ToolsCommandQueue *)&v5 initWithBaseObject:object parent:parent];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v2 dealloc];
}

- (void)commit:(const void *)commit count:(unint64_t)count
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugCommandQueue *)self validateCommitCommon:v9 commandBuffers:commit count:count];
  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v8 commit:commit count:count];
}

- (void)commit:(const void *)commit count:(unint64_t)count options:(id)options
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugCommandQueue *)self validateCommitCommon:v11 commandBuffers:commit count:count];
  if (options)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v10 commit:commit count:count options:options];
}

- (void)signalEvent:(id)event value:(unint64_t)value
{
  v9 = 0;
  memset(&v8[1], 0, 48);
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!event || ([event conformsToProtocol:&unk_2842371A8] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v8[0].receiver = self;
  v8[0].super_class = MTL4DebugCommandQueue;
  [(objc_super *)v8 signalEvent:event value:value];
}

- (void)waitForEvent:(id)event value:(unint64_t)value
{
  v9 = 0;
  memset(&v8[1], 0, 48);
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!event || ([event conformsToProtocol:&unk_2842371A8] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v8[0].receiver = self;
  v8[0].super_class = MTL4DebugCommandQueue;
  [(objc_super *)v8 waitForEvent:event value:value];
}

- (void)signalDrawable:(id)drawable
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!drawable || ![drawable conformsToProtocol:{&unk_284249EC0, 0, 0, 0, 0, 0, 0, 0}] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)waitForDrawable:(id)drawable
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!drawable || ![drawable conformsToProtocol:{&unk_284249EC0, 0, 0, 0, 0, 0, 0, 0}] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)addResidencySet:(id)set
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!set)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugCommandQueue;
  [(objc_super *)v6 addResidencySet:set];
}

- (void)addResidencySets:(const void *)sets count:(unint64_t)count
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (count)
  {
    v8 = 0;
    do
    {
      if (!sets[v8])
      {
        _MTLMessageContextPush_();
        v9 = sets[v8];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _MTLMessageContextPush_();
      }

      ++v8;
    }

    while (count != v8);
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v10 addResidencySets:sets count:count];
}

- (void)removeResidencySet:(id)set
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!set)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugCommandQueue;
  [(objc_super *)v6 removeResidencySet:set];
}

- (void)removeResidencySets:(const void *)sets count:(unint64_t)count
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (count)
  {
    v8 = 0;
    do
    {
      if (!sets[v8])
      {
        _MTLMessageContextPush_();
        v9 = sets[v8];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _MTLMessageContextPush_();
      }

      ++v8;
    }

    while (count != v8);
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v10 removeResidencySets:sets count:count];
}

- (void)updateTextureMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (![mappings placementSparsePageSize])
  {
    _MTLMessageContextPush_();
  }

  if ([mappings textureType] == 16)
  {
    _MTLMessageContextPush_();
    if (heap)
    {
      goto LABEL_5;
    }
  }

  else if (heap)
  {
LABEL_5:
    if ([heap type] != 1)
    {
      _MTLMessageContextPush_();
    }

    if (!_MTLDebugIsValidSparsePageSize([heap maxCompatiblePlacementSparsePageSize]))
    {
      [MTL4DebugCommandQueue updateTextureMappings:heap heap:? operations:? count:?];
    }

    placementSparsePageSize = [mappings placementSparsePageSize];
    if (placementSparsePageSize > [heap maxCompatiblePlacementSparsePageSize])
    {
      [MTL4DebugCommandQueue updateTextureMappings:heap heap:mappings operations:? count:?];
    }

    goto LABEL_11;
  }

  if (count)
  {
    v18 = 0;
    operationsCopy = operations;
    do
    {
      var0 = operationsCopy->var0;
      ++operationsCopy;
      if (var0 != 1)
      {
        v21 = v18;
        _MTLMessageContextPush_();
      }

      ++v18;
    }

    while (count != v18);
  }

LABEL_11:
  if (_MTLDebugIsValidSparsePageSize([mappings placementSparsePageSize]))
  {
    if (!count)
    {
      goto LABEL_19;
    }
  }

  else
  {
    [MTL4DebugCommandQueue updateTextureMappings:mappings heap:? operations:? count:?];
    if (!count)
    {
      goto LABEL_19;
    }
  }

  v13 = 0;
  p_var4 = &operations->var4;
  do
  {
    v15 = *(p_var4 - 3);
    v24 = *(p_var4 - 4);
    v25 = v15;
    v26 = *(p_var4 - 2);
    [(MTL4DebugCommandQueue *)self validateTextureAccess:mappings region:&v24 mipLevel:*(p_var4 - 2) slice:*(p_var4 - 1) context:v27, v22];
    if (!*(p_var4 - 9))
    {
      if (heap)
      {
        v16 = *p_var4;
        v17 = *(p_var4 - 3);
        v24 = *(p_var4 - 4);
        v25 = v17;
        v26 = *(p_var4 - 2);
        -[MTL4DebugCommandQueue validateHeapAccess:rangeOffset:tileRegions:resourceSparsePageSize:context:](self, "validateHeapAccess:rangeOffset:tileRegions:resourceSparsePageSize:context:", heap, v16, &v24, [mappings placementSparsePageSize], v27);
      }

      else
      {
        v22 = v13;
        _MTLMessageContextPush_();
      }
    }

    ++v13;
    p_var4 += 10;
  }

  while (count != v13);
LABEL_19:
  if (!*&v27[0])
  {
    v23.receiver = self;
    v23.super_class = MTL4DebugCommandQueue;
    [(MTL4ToolsCommandQueue *)&v23 updateTextureMappings:mappings heap:heap operations:operations count:count];
  }

  _MTLMessageContextEnd();
}

- (void)copyTextureMappingsFromTexture:(id)texture toTexture:(id)toTexture operations:(id *)operations count:(unint64_t)count
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (![texture placementSparsePageSize])
  {
    _MTLMessageContextPush_();
  }

  if ([texture textureType] == 16)
  {
    _MTLMessageContextPush_();
  }

  if (![toTexture placementSparsePageSize])
  {
    _MTLMessageContextPush_();
  }

  if ([toTexture textureType] == 16)
  {
    _MTLMessageContextPush_();
    if (!count)
    {
      goto LABEL_11;
    }
  }

  else if (!count)
  {
    goto LABEL_11;
  }

  p_var1 = &operations->var1;
  countCopy = count;
  do
  {
    v14 = *(p_var1 - 2);
    v19 = *(p_var1 - 3);
    *v20 = v14;
    *&v20[16] = *(p_var1 - 1);
    [(MTL4DebugCommandQueue *)self validateTextureAccess:texture region:&v19 mipLevel:*p_var1 slice:p_var1[1] context:v21];
    v15 = *(p_var1 + 1);
    v16 = p_var1[5];
    *v20 = p_var1[4];
    *&v20[24] = *(p_var1 - 1);
    *&v20[8] = *(p_var1 - 3);
    v18[0] = v15;
    v18[1] = *v20;
    v18[2] = *&v20[16];
    v19 = v15;
    [(MTL4DebugCommandQueue *)self validateTextureAccess:toTexture region:v18 mipLevel:v16 slice:p_var1[6] context:v21];
    p_var1 += 13;
    --countCopy;
  }

  while (countCopy);
LABEL_11:
  if (!*&v21[0])
  {
    v17.receiver = self;
    v17.super_class = MTL4DebugCommandQueue;
    [(MTL4ToolsCommandQueue *)&v17 copyTextureMappingsFromTexture:texture toTexture:toTexture operations:operations count:count];
  }

  _MTLMessageContextEnd();
}

- (void)updateBufferMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if ([mappings placementSparsePageSize])
  {
    if (heap)
    {
LABEL_3:
      if ([heap type] != 1)
      {
        _MTLMessageContextPush_();
      }

      if (!_MTLDebugIsValidSparsePageSize([heap maxCompatiblePlacementSparsePageSize]))
      {
        [MTL4DebugCommandQueue updateTextureMappings:heap heap:? operations:? count:?];
      }

      placementSparsePageSize = [mappings placementSparsePageSize];
      if (placementSparsePageSize > [heap maxCompatiblePlacementSparsePageSize])
      {
        [MTL4DebugCommandQueue updateBufferMappings:heap heap:mappings operations:? count:?];
      }

      goto LABEL_9;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (heap)
    {
      goto LABEL_3;
    }
  }

  if (count)
  {
    v19 = 0;
    operationsCopy = operations;
    do
    {
      var0 = operationsCopy->var0;
      ++operationsCopy;
      if (var0 != 1)
      {
        v22 = v19;
        _MTLMessageContextPush_();
      }

      ++v19;
    }

    while (count != v19);
  }

LABEL_9:
  if (_MTLDebugIsValidSparsePageSize([mappings placementSparsePageSize]))
  {
    if (!count)
    {
      goto LABEL_17;
    }
  }

  else
  {
    [MTL4DebugCommandQueue updateBufferMappings:mappings heap:? operations:? count:?];
    if (!count)
    {
      goto LABEL_17;
    }
  }

  v13 = 0;
  v14 = 1;
  do
  {
    v15 = &operations[v13];
    -[MTL4DebugCommandQueue validateBufferAccess:range:resourceSparsePageSize:context:](self, "validateBufferAccess:range:resourceSparsePageSize:context:", mappings, v15->var1.location, v15->var1.length, [mappings placementSparsePageSize], v27);
    if (!v15->var0)
    {
      if (heap)
      {
        location = v15->var1.location;
        length = v15->var1.length;
        var2 = v15->var2;
        v25[1] = 0;
        v25[2] = 0;
        v25[0] = location;
        v25[3] = length;
        v26 = vdupq_n_s64(1uLL);
        -[MTL4DebugCommandQueue validateHeapAccess:rangeOffset:tileRegions:resourceSparsePageSize:context:](self, "validateHeapAccess:rangeOffset:tileRegions:resourceSparsePageSize:context:", heap, var2, v25, [mappings placementSparsePageSize], v27);
      }

      else
      {
        v23 = v13;
        _MTLMessageContextPush_();
      }
    }

    v13 = v14++;
  }

  while (v13 < count);
LABEL_17:
  if (!*&v27[0])
  {
    v24.receiver = self;
    v24.super_class = MTL4DebugCommandQueue;
    [(MTL4ToolsCommandQueue *)&v24 updateBufferMappings:mappings heap:heap operations:operations count:count];
  }

  _MTLMessageContextEnd();
}

- (void)copyBufferMappingsFromBuffer:(id)buffer toBuffer:(id)toBuffer operations:(id *)operations count:(unint64_t)count
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (![buffer placementSparsePageSize])
  {
    _MTLMessageContextPush_();
  }

  if ([toBuffer placementSparsePageSize])
  {
    if (!count)
    {
      goto LABEL_7;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!count)
    {
      goto LABEL_7;
    }
  }

  v12 = 0;
  v13 = 1;
  do
  {
    v14 = &operations[v12];
    -[MTL4DebugCommandQueue validateBufferAccess:range:resourceSparsePageSize:context:](self, "validateBufferAccess:range:resourceSparsePageSize:context:", buffer, v14->var0.location, v14->var0.length, [buffer placementSparsePageSize], v16);
    -[MTL4DebugCommandQueue validateBufferAccess:range:resourceSparsePageSize:context:](self, "validateBufferAccess:range:resourceSparsePageSize:context:", toBuffer, v14->var1, v14->var0.length, [toBuffer placementSparsePageSize], v16);
    v12 = v13++;
  }

  while (v12 < count);
LABEL_7:
  if (!*&v16[0])
  {
    v15.receiver = self;
    v15.super_class = MTL4DebugCommandQueue;
    [(MTL4ToolsCommandQueue *)&v15 copyBufferMappingsFromBuffer:buffer toBuffer:toBuffer operations:operations count:count];
  }

  _MTLMessageContextEnd();
}

- (void)validateTextureAccess:(id)access region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice context:(_MTLMessageContext *)context
{
  if (!access)
  {
    [MTL4DebugCommandQueue validateTextureAccess:region:mipLevel:slice:context:];
LABEL_32:
    v23 = sliceCopy;
    arrayLength = [accessCopy arrayLength];
    _MTLMessageContextPush_();
    goto LABEL_8;
  }

  sliceCopy = slice;
  levelCopy = level;
  accessCopy = access;
  regionCopy = region;
  v32 = 0;
  v31 = 0u;
  v7 = 24;
  selfCopy = self;
  device = self->super.super._device;
  [access pixelFormat];
  [accessCopy width];
  [accessCopy height];
  [accessCopy depth];
  [accessCopy sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  if ([accessCopy textureType] == 5)
  {
    v14 = 6;
  }

  else if ([accessCopy textureType] == 6)
  {
    v14 = 6;
  }

  else
  {
    v14 = 1;
  }

  contextCopy = context;
  if ([accessCopy arrayLength] * v14 <= sliceCopy)
  {
    goto LABEL_32;
  }

LABEL_8:
  v15 = [accessCopy mipmapLevelCount] - 1;
  if (v15 >= [accessCopy firstMipmapInTail])
  {
    firstMipmapInTail = [accessCopy firstMipmapInTail];
  }

  else
  {
    firstMipmapInTail = [accessCopy mipmapLevelCount] - 1;
  }

  if (firstMipmapInTail < levelCopy)
  {
    [MTLDebugBlitCommandEncoder validateTextureAccess:accessCopy region:? mipLevel:? slice:?];
  }

  if (contextCopy->var0 <= 0)
  {
    device = [accessCopy device];
    textureType = [accessCopy textureType];
    pixelFormat = [accessCopy pixelFormat];
    sampleCount = [accessCopy sampleCount];
    placementSparsePageSize = [accessCopy placementSparsePageSize];
    if (device)
    {
      [device sparseTileSizeWithTextureType:textureType pixelFormat:pixelFormat sampleCount:sampleCount sparsePageSize:placementSparsePageSize];
    }

    if ([accessCopy firstMipmapInTail] == levelCopy)
    {
      v22 = [*(&selfCopy->super.super.super.isa + v7) sparseTileSizeInBytesForSparsePageSize:{objc_msgSend(accessCopy, "placementSparsePageSize")}];
      if (regionCopy->var1.var0 + regionCopy->var0.var0 > (v22 + [accessCopy tailSizeInBytes] - 1) / v22)
      {
        [accessCopy firstMipmapInTail];
        _MTLMessageContextPush_();
      }

      if (regionCopy->var0.var1)
      {
        [accessCopy firstMipmapInTail];
        _MTLMessageContextPush_();
      }

      if (regionCopy->var1.var1 != 1)
      {
        [accessCopy firstMipmapInTail];
        _MTLMessageContextPush_();
      }

      if (regionCopy->var1.var2 + regionCopy->var0.var2 > (v32 - 1) / 0uLL)
      {
        v24 = regionCopy->var1.var2 + regionCopy->var0.var2;
LABEL_34:
        _MTLMessageContextPush_();
      }
    }

    else
    {
      if (regionCopy->var1.var0 + regionCopy->var0.var0 > (v31 - 1) / 0uLL)
      {
        v25 = regionCopy->var1.var0 + regionCopy->var0.var0;
        _MTLMessageContextPush_();
      }

      if (regionCopy->var1.var1 + regionCopy->var0.var1 > (*(&v31 + 1) - 1) / 0uLL)
      {
        v26 = regionCopy->var1.var1 + regionCopy->var0.var1;
        _MTLMessageContextPush_();
      }

      if (regionCopy->var1.var2 + regionCopy->var0.var2 > (v32 - 1) / 0uLL)
      {
        v27 = regionCopy->var1.var2 + regionCopy->var0.var2;
        goto LABEL_34;
      }
    }
  }
}

- (void)validateBufferAccess:(id)access region:(id *)region resourceSparsePageSize:(int64_t)size context:(_MTLMessageContext *)context
{
  v8 = [(MTLToolsDevice *)self->super.super._device sparseTileSizeInBytesForSparsePageSize:size];
  if (region->var1.var0 + region->var0.var0 > (v8 + [access length] - 1) / v8)
  {
    v9 = region->var1.var0 + region->var0.var0;
    _MTLMessageContextPush_();
  }
}

- (void)validateBufferAccess:(id)access range:(_NSRange)range resourceSparsePageSize:(int64_t)size context:(_MTLMessageContext *)context
{
  length = range.length;
  location = range.location;
  v9 = [(MTLToolsDevice *)self->super.super._device sparseTileSizeInBytesForSparsePageSize:size];
  if (location + length > (v9 + [access length] - 1) / v9)
  {
    _MTLMessageContextPush_();
  }
}

- (void)validateHeapAccess:(id)access rangeOffset:(unint64_t)offset tileRegions:(id *)regions resourceSparsePageSize:(int64_t)size context:(_MTLMessageContext *)context
{
  v9 = regions->var1.var0 * [(MTLToolsDevice *)self->super.super._device sparseTileSizeInBytesForSparsePageSize:size]* regions->var1.var1 * regions->var1.var2;
  if (v9 + offset > [access size])
  {
    [access size];
    _MTLMessageContextPush_();
  }
}

- (void)validateCommitCommon:(_MTLMessageContext *)common commandBuffers:(const void *)buffers count:(unint64_t)count
{
  v54 = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = MTL4DebugCommandQueue;
  addedResidencySets = [(MTL4ToolsCommandQueue *)&v51 addedResidencySets];
  if (!count)
  {
    goto LABEL_52;
  }

  if (common->var0 <= 0)
  {
    v9 = addedResidencySets;
    v10 = 0;
    v39 = 0;
    v11 = 0;
    v12 = 0x2787B2000uLL;
    while (1)
    {
      v13 = buffers[v11];
      if (!v13)
      {
        v34 = v11;
        _MTLMessageContextPush_();
      }

      v14 = v11 + 1;
      v15 = v11 + 1;
      if (v11 + 1 < count)
      {
        do
        {
          if (v13 == buffers[v15])
          {
            v34 = v11;
            v38 = v15;
            _MTLMessageContextPush_();
          }

          ++v15;
        }

        while (count != v15);
      }

      v16 = *(v12 + 3208);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v34 = v11;
      _MTLMessageContextPush_();
LABEL_47:
      v11 = v14;
      if (v14 == count)
      {
        if (!v10)
        {
          goto LABEL_51;
        }

LABEL_52:
        _MTLMessageContextPush_();
        goto LABEL_51;
      }
    }

    v40 = v10;
    v41 = v11 + 1;
    if (([v13 isAllocatorGenerationValid] & 1) == 0)
    {
      v34 = v11;
      _MTLMessageContextPush_();
    }

    v42 = v11;
    usedResidencySets = [v13 usedResidencySets];
    for (i = *([v13 attachmentSet] + 16); i; i = *i)
    {
      v19 = i[2];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v20 = [usedResidencySets countByEnumeratingWithState:&v47 objects:v53 count:{16, v35}];
      if (v20)
      {
        v21 = v20;
        v22 = *v48;
LABEL_16:
        v23 = 0;
        while (1)
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(usedResidencySets);
          }

          if ([*(*(&v47 + 1) + 8 * v23) containsAllocation:v19])
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [usedResidencySets countByEnumeratingWithState:&v47 objects:v53 count:16];
            if (v21)
            {
              goto LABEL_16;
            }

            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v24 = [v9 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v44;
LABEL_24:
          v27 = 0;
          while (1)
          {
            if (*v44 != v26)
            {
              objc_enumerationMutation(v9);
            }

            if ([*(*(&v43 + 1) + 8 * v27) containsAllocation:v19])
            {
              break;
            }

            if (v25 == ++v27)
            {
              v25 = [v9 countByEnumeratingWithState:&v43 objects:v52 count:16];
              if (v25)
              {
                goto LABEL_24;
              }

              goto LABEL_30;
            }
          }
        }

        else
        {
LABEL_30:
          v35 = [objc_msgSend(v19 "label")];
          v38 = v42;
          _MTLMessageContextPush_();
        }
      }
    }

    aggregatedEncoderMask = [v13 aggregatedEncoderMask];
    v29 = aggregatedEncoderMask;
    if (v40)
    {
      v30 = v42;
      v14 = v41;
      if ((aggregatedEncoderMask & 8) != 0)
      {
        if (([objc_msgSend(v13 "suspendResumeRenderPassInfo")] & 1) == 0)
        {
          v36 = v39;
          v38 = v42;
          goto LABEL_42;
        }

LABEL_38:
        if ((v29 & 0x10) != 0)
        {
LABEL_43:
          [v13 suspendResumeRenderPassInfo];
          v10 = v31;
          v39 = v30;
          goto LABEL_44;
        }

LABEL_39:
        v39 = 0;
        v10 = 0;
LABEL_44:
        currentState = [v13 currentState];
        v12 = 0x2787B2000;
        if (currentState == 1 || currentState == 3)
        {
          _MTLMessageContextPush_();
          [v13 setCurrentState:{3, v30}];
        }

        else
        {
          [v13 setCurrentState:{3, v37}];
        }

        goto LABEL_47;
      }

      v36 = v42;
      v38 = v39;
    }

    else
    {
      v30 = v42;
      v14 = v41;
      if ((aggregatedEncoderMask & 8) == 0)
      {
        goto LABEL_38;
      }

      v36 = v42;
    }

LABEL_42:
    _MTLMessageContextPush_();
    if ((v29 & 0x10) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

LABEL_51:
  v33 = *MEMORY[0x277D85DE8];
}

- (uint64_t)updateTextureMappings:(void *)a1 heap:(void *)a2 operations:count:.cold.2(void *a1, void *a2)
{
  [a1 maxCompatiblePlacementSparsePageSize];
  [MTLSparsePageSizeString() UTF8String];
  [a2 placementSparsePageSize];
  [MTLSparsePageSizeString() UTF8String];
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)updateBufferMappings:(void *)a1 heap:(void *)a2 operations:count:.cold.2(void *a1, void *a2)
{
  [a1 maxCompatiblePlacementSparsePageSize];
  [MTLSparsePageSizeString() UTF8String];
  [a2 placementSparsePageSize];
  [MTLSparsePageSizeString() UTF8String];
  return OUTLINED_FUNCTION_7();
}

@end