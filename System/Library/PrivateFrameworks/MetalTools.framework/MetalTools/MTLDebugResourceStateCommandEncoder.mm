@interface MTLDebugResourceStateCommandEncoder
- (MTLDebugResourceStateCommandEncoder)initWithResourceStateCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor;
- (id).cxx_construct;
- (void)_setDefaults;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)dealloc;
- (void)endEncoding;
- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)updateFence:(id)fence;
- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions;
- (void)validateSparseTextureMappingMode:(unint64_t)mode;
- (void)validateTextureAccess:(id)access region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)waitForFence:(id)fence;
@end

@implementation MTLDebugResourceStateCommandEncoder

- (void)_setDefaults
{
  *(&self->hasEndedEncoding + 2) = 0;
  *(&self->hasEndedEncoding + 3) = 0;
  *(&self->hasEndedEncoding + 4) = 0;
  p_updatedFences = &self->updatedFences;
  var0 = self->updatedFences.__map_.var0;
  var1 = self->updatedFences.__map_.var1;
  self->updatedFences.__size_ = 0;
  v5 = (var1 - var0) >> 3;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*var0);
      v6 = p_updatedFences->__map_.var1;
      var0 = (p_updatedFences->__map_.var0 + 1);
      p_updatedFences->__map_.var0 = var0;
      v5 = (v6 - var0) >> 3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v7 = 256;
  }

  else
  {
    if (v5 != 2)
    {
      return;
    }

    v7 = 512;
  }

  p_updatedFences->__start_ = v7;
}

- (MTLDebugResourceStateCommandEncoder)initWithResourceStateCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor
{
  v11.receiver = self;
  v11.super_class = MTLDebugResourceStateCommandEncoder;
  v7 = [MTLToolsResourceStateCommandEncoder initWithResourceStateCommandEncoder:sel_initWithResourceStateCommandEncoder_parent_descriptor_ parent:encoder descriptor:?];
  v8 = v7;
  if (v7)
  {
    [(MTLDebugResourceStateCommandEncoder *)v7 _setDefaults];
    if (descriptor)
    {
      for (i = 0; i != 4; ++i)
      {
        [buffer addObject:objc_msgSend(objc_msgSend(objc_msgSend(descriptor retained:"sampleBufferAttachments") purgeable:{"objectAtIndexedSubscript:", i), "sampleBuffer"), 1, 0}];
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  p_updatedFences = &self->updatedFences;
  var0 = self->updatedFences.__map_.var0;
  var1 = self->updatedFences.__map_.var1;
  self->updatedFences.__size_ = 0;
  v6 = (var1 - var0) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*var0);
      v7 = p_updatedFences->__map_.var1;
      var0 = (p_updatedFences->__map_.var0 + 1);
      p_updatedFences->__map_.var0 = var0;
      v6 = (v7 - var0) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 256;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 512;
  }

  p_updatedFences->__start_ = v8;
LABEL_8:
  if (*(&self->hasEndedEncoding + 2))
  {
    v9.receiver = self;
    v9.super_class = MTLDebugResourceStateCommandEncoder;
    [(MTLToolsObject *)&v9 dealloc];
  }

  else
  {
    [-[MTLToolsObject baseObject](self "baseObject")];
    v9.receiver = self;
    v9.super_class = MTLDebugResourceStateCommandEncoder;
    [(MTLToolsObject *)&v9 dealloc];
    MTLReportFailure();
  }
}

- (void)validateSparseTextureMappingMode:(unint64_t)mode
{
  if (mode >= 2)
  {
    [MTLDebugResourceStateCommandEncoder validateSparseTextureMappingMode:];
  }
}

- (void)validateTextureAccess:(id)access region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice
{
  accessCopy = access;
  arrayLength = [access arrayLength];
  textureType = [accessCopy textureType];
  v13 = 6;
  if ((textureType - 5) >= 2)
  {
    v13 = 1;
  }

  if (v13 * arrayLength <= slice)
  {
    [MTLDebugResourceStateCommandEncoder validateTextureAccess:accessCopy region:? mipLevel:? slice:?];
  }

  v14 = [accessCopy mipmapLevelCount] - 1;
  if (v14 >= [accessCopy firstMipmapInTail])
  {
    firstMipmapInTail = [accessCopy firstMipmapInTail];
  }

  else
  {
    firstMipmapInTail = [accessCopy mipmapLevelCount] - 1;
  }

  if (firstMipmapInTail < level)
  {
    [MTLDebugResourceStateCommandEncoder validateTextureAccess:accessCopy region:? mipLevel:? slice:?];
  }

  device = self->super.super.super._device;
  [accessCopy pixelFormat];
  [accessCopy width];
  [accessCopy height];
  [accessCopy depth];
  [accessCopy sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  if (accessCopy)
  {
    if ([accessCopy placementSparsePageSize])
    {
      device = [accessCopy device];
      textureType2 = [accessCopy textureType];
      pixelFormat = [accessCopy pixelFormat];
      sampleCount = [accessCopy sampleCount];
      placementSparsePageSize = [accessCopy placementSparsePageSize];
      if (device)
      {
        [device sparseTileSizeWithTextureType:textureType2 pixelFormat:pixelFormat sampleCount:sampleCount sparsePageSize:placementSparsePageSize];
LABEL_16:
        v27 = v31;
        v26 = v32;
        accessCopy = v33;
        goto LABEL_18;
      }
    }

    else
    {
      device2 = [accessCopy device];
      textureType3 = [accessCopy textureType];
      pixelFormat2 = [accessCopy pixelFormat];
      sampleCount2 = [accessCopy sampleCount];
      if (device2)
      {
        [device2 sparseTileSizeWithTextureType:textureType3 pixelFormat:pixelFormat2 sampleCount:sampleCount2];
        goto LABEL_16;
      }
    }

    accessCopy = 0;
    v26 = 0;
    v27 = 0;
LABEL_18:
    device = accessCopy - 1;
    level = (v26 - 1) / v26;
    if (region->var1.var0 + region->var0.var0 <= (v27 - 1) / v27)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  [MTLDebugResourceStateCommandEncoder validateTextureAccess:region:mipLevel:slice:];
LABEL_25:
  MTLReportFailure();
LABEL_19:
  v28 = device / accessCopy;
  if (region->var1.var1 + region->var0.var1 > level)
  {
    v29 = region->var1.var1 + region->var0.var1;
    MTLReportFailure();
  }

  if (region->var1.var2 + region->var0.var2 > v28)
  {
    v30 = region->var1.var2 + region->var0.var2;
    MTLReportFailure();
  }
}

- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions
{
  if (![(MTLDebugResourceStateCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMappings:mode:regions:mipLevels:slices:numRegions:];
  }

  if (([mappings isSparse] & 1) == 0)
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMappings:mode:regions:mipLevels:slices:numRegions:];
  }

  if ([mappings placementSparsePageSize])
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMappings:mode:regions:mipLevels:slices:numRegions:];
    if (!numRegions)
    {
      goto LABEL_13;
    }
  }

  else if (!numRegions)
  {
    goto LABEL_13;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = &levels[v14];
    v17 = *v16;
    if (v17 > [mappings firstMipmapInTail])
    {
      [MTLDebugResourceStateCommandEncoder updateTextureMappings:mappings mode:? regions:? mipLevels:? slices:? numRegions:?];
    }

    v18 = &regions[v14];
    v19 = *&v18->var0.var2;
    v21[0] = *&v18->var0.var0;
    v21[1] = v19;
    v21[2] = *&v18->var1.var1;
    [(MTLDebugResourceStateCommandEncoder *)self validateTextureAccess:mappings region:v21 mipLevel:*v16 slice:slices[v14]];
    [(MTLDebugResourceStateCommandEncoder *)self validateSparseTextureMappingMode:mode];
    v14 = ++v15;
  }

  while (v15 < numRegions);
LABEL_13:
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:mappings retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  *(&self->hasEndedEncoding + 3) = 1;
}

- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice
{
  if (![(MTLDebugResourceStateCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:mode:region:mipLevel:slice:];
  }

  if (([mapping isSparse] & 1) == 0)
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:mode:region:mipLevel:slice:];
  }

  if ([mapping placementSparsePageSize])
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:mode:region:mipLevel:slice:];
  }

  if ([mapping firstMipmapInTail] < level)
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:mapping mode:? region:? mipLevel:? slice:?];
  }

  v13 = *&region->var0.var2;
  v17 = *&region->var0.var0;
  v18 = v13;
  v19 = *&region->var1.var1;
  [(MTLDebugResourceStateCommandEncoder *)self validateTextureAccess:mapping region:&v17 mipLevel:level slice:slice];
  [(MTLDebugResourceStateCommandEncoder *)self validateSparseTextureMappingMode:mode];
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:mapping retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [mapping baseObject];
  v16 = *&region->var0.var2;
  v17 = *&region->var0.var0;
  v18 = v16;
  v19 = *&region->var1.var1;
  [baseObject updateTextureMapping:baseObject2 mode:mode region:&v17 mipLevel:level slice:slice];
  *(&self->hasEndedEncoding + 3) = 1;
}

- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  if (![(MTLDebugResourceStateCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:mode:indirectBuffer:indirectBufferOffset:];
  }

  if (([mapping isSparse] & 1) == 0)
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:mode:indirectBuffer:indirectBufferOffset:];
  }

  if ([mapping placementSparsePageSize])
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:mode:indirectBuffer:indirectBufferOffset:];
  }

  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:mapping retained:1 purgeable:1];
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:buffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  *(&self->hasEndedEncoding + 3) = 1;
}

- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (![(MTLDebugResourceStateCommandEncoder *)self checkEncoderState])
  {
    _MTLMessageContextPush_();
  }

  if (([texture isSparse] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (([toTexture isSparse] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  pixelFormat = [toTexture pixelFormat];
  if (pixelFormat != [texture pixelFormat])
  {
    _MTLMessageContextPush_();
  }

  heap = [texture heap];
  if (heap != [toTexture heap])
  {
    _MTLMessageContextPush_();
  }

  sampleCount = [texture sampleCount];
  if (sampleCount != [toTexture sampleCount])
  {
    [MTLDebugResourceStateCommandEncoder moveTextureMappingsFromTexture:texture sourceSlice:toTexture sourceLevel:? sourceOrigin:? sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
  }

  if ([texture mipmapLevelCount] <= level)
  {
    levelCopy = level;
    mipmapLevelCount = [texture mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces = [texture numFaces];
  if ([texture arrayLength] * numFaces <= slice)
  {
    [MTLDebugResourceStateCommandEncoder moveTextureMappingsFromTexture:texture sourceSlice:? sourceLevel:? sourceOrigin:? sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
  }

  if ([toTexture mipmapLevelCount] <= destinationLevel)
  {
    destinationLevelCopy = destinationLevel;
    mipmapLevelCount2 = [toTexture mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces2 = [toTexture numFaces];
  if ([toTexture arrayLength] * numFaces2 <= destinationSlice)
  {
    [MTLDebugResourceStateCommandEncoder moveTextureMappingsFromTexture:toTexture sourceSlice:? sourceLevel:? sourceOrigin:? sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
  }

  if ([toTexture firstMipmapInTail] < destinationLevel)
  {
    destinationLevelCopy2 = destinationLevel;
    firstMipmapInTail = [toTexture firstMipmapInTail];
    _MTLMessageContextPush_();
  }

  if ([texture firstMipmapInTail] < level)
  {
    [texture firstMipmapInTail];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v43 = *&origin->var0;
  var2 = size->var2;
  *v44 = origin->var2;
  *&v44[24] = var2;
  *&v44[8] = *&size->var0;
  v41 = v43;
  *v42 = *v44;
  *&v42[16] = *&v44[16];
  [(MTLDebugResourceStateCommandEncoder *)self validateTextureAccess:texture region:&v41 mipLevel:level slice:slice];
  v21 = *&destinationOrigin->var0;
  v22 = size->var2;
  *v42 = destinationOrigin->var2;
  *&v42[24] = v22;
  *&v42[8] = *&size->var0;
  v38 = v21;
  v39 = *v42;
  v40 = *&v42[16];
  v41 = v21;
  [(MTLDebugResourceStateCommandEncoder *)self validateTextureAccess:toTexture region:&v38 mipLevel:destinationLevel slice:destinationSlice];
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:texture retained:1 purgeable:1];
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:toTexture retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v38 = *&origin->var0;
  *&v39 = origin->var2;
  v36 = *&size->var0;
  v37 = size->var2;
  baseObject3 = [toTexture baseObject];
  v35 = *destinationOrigin;
  [baseObject moveTextureMappingsFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v38 sourceSize:&v36 toTexture:baseObject3 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v35];
  *(&self->hasEndedEncoding + 3) = 1;
}

- (void)updateFence:(id)fence
{
  fenceCopy = fence;
  std::deque<objc_object *>::push_back(&self->updatedFences.__map_.__first_, &fenceCopy);
  *(&self->hasEndedEncoding + 3) = 1;
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:fence retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)waitForFence:(id)fence
{
  p_updatedFences = &self->updatedFences;
  size = self->updatedFences.__size_;
  if (size)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if ((*(p_updatedFences->__map_.var0 + (((p_updatedFences->__start_ + v7) >> 6) & 0x3FFFFFFFFFFFFF8)))[(p_updatedFences->__start_ + v7) & 0x1FF] == fence)
      {
        MTLReportFailure();
        size = p_updatedFences->__size_;
      }

      v7 = v8;
    }

    while (size > v8++);
  }

  *(&self->hasEndedEncoding + 3) = 1;
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:fence retained:1 purgeable:0];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [fence baseObject];

  [baseObject waitForFence:baseObject2];
}

- (void)endEncoding
{
  if (*(&self->hasEndedEncoding + 4))
  {
    [MTLDebugResourceStateCommandEncoder endEncoding];
  }

  if (!*(&self->hasEndedEncoding + 3))
  {
    [MTLDebugResourceStateCommandEncoder endEncoding];
  }

  v3.receiver = self;
  v3.super_class = MTLDebugResourceStateCommandEncoder;
  [(MTLToolsCommandEncoder *)&v3 endEncoding];
  *(&self->hasEndedEncoding + 4) = 1;
  *(&self->hasEndedEncoding + 2) = 1;
  *(&self->hasEndedEncoding + 3) = 0;
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  if (*(&self->hasEndedEncoding + 4))
  {
    [MTLDebugResourceStateCommandEncoder barrierAfterQueueStages:beforeStages:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  return self;
}

- (uint64_t)validateTextureAccess:(void *)a1 region:mipLevel:slice:.cold.2(void *a1)
{
  v2 = [a1 mipmapLevelCount] - 1;
  if (v2 >= [a1 firstMipmapInTail])
  {
    [a1 firstMipmapInTail];
  }

  else
  {
    [a1 mipmapLevelCount];
  }

  return MTLReportFailure();
}

- (uint64_t)updateTextureMappings:(uint64_t *)a1 mode:(void *)a2 regions:mipLevels:slices:numRegions:.cold.4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  [a2 firstMipmapInTail];
  return MTLReportFailure();
}

- (uint64_t)moveTextureMappingsFromTexture:(void *)a1 sourceSlice:(void *)a2 sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:.cold.1(void *a1, void *a2)
{
  [a1 sampleCount];
  [a2 sampleCount];
  return _MTLMessageContextPush_();
}

- (uint64_t)moveTextureMappingsFromTexture:(void *)a1 sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:.cold.2(void *a1)
{
  [a1 numFaces];
  [a1 arrayLength];
  return _MTLMessageContextPush_();
}

- (uint64_t)moveTextureMappingsFromTexture:(void *)a1 sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:.cold.3(void *a1)
{
  [a1 numFaces];
  [a1 arrayLength];
  return _MTLMessageContextPush_();
}

@end