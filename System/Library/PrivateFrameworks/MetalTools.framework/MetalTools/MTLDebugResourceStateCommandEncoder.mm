@interface MTLDebugResourceStateCommandEncoder
- (MTLDebugResourceStateCommandEncoder)initWithResourceStateCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5;
- (id).cxx_construct;
- (void)_setDefaults;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4;
- (void)dealloc;
- (void)endEncoding;
- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)updateFence:(id)a3;
- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 indirectBuffer:(id)a5 indirectBufferOffset:(unint64_t)a6;
- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7;
- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8;
- (void)validateSparseTextureMappingMode:(unint64_t)a3;
- (void)validateTextureAccess:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6;
- (void)waitForFence:(id)a3;
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

- (MTLDebugResourceStateCommandEncoder)initWithResourceStateCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5
{
  v11.receiver = self;
  v11.super_class = MTLDebugResourceStateCommandEncoder;
  v7 = [MTLToolsResourceStateCommandEncoder initWithResourceStateCommandEncoder:sel_initWithResourceStateCommandEncoder_parent_descriptor_ parent:a3 descriptor:?];
  v8 = v7;
  if (v7)
  {
    [(MTLDebugResourceStateCommandEncoder *)v7 _setDefaults];
    if (a5)
    {
      for (i = 0; i != 4; ++i)
      {
        [a4 addObject:objc_msgSend(objc_msgSend(objc_msgSend(a5 retained:"sampleBufferAttachments") purgeable:{"objectAtIndexedSubscript:", i), "sampleBuffer"), 1, 0}];
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

- (void)validateSparseTextureMappingMode:(unint64_t)a3
{
  if (a3 >= 2)
  {
    [MTLDebugResourceStateCommandEncoder validateSparseTextureMappingMode:];
  }
}

- (void)validateTextureAccess:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6
{
  v9 = a3;
  v11 = [a3 arrayLength];
  v12 = [v9 textureType];
  v13 = 6;
  if ((v12 - 5) >= 2)
  {
    v13 = 1;
  }

  if (v13 * v11 <= a6)
  {
    [MTLDebugResourceStateCommandEncoder validateTextureAccess:v9 region:? mipLevel:? slice:?];
  }

  v14 = [v9 mipmapLevelCount] - 1;
  if (v14 >= [v9 firstMipmapInTail])
  {
    v15 = [v9 firstMipmapInTail];
  }

  else
  {
    v15 = [v9 mipmapLevelCount] - 1;
  }

  if (v15 < a5)
  {
    [MTLDebugResourceStateCommandEncoder validateTextureAccess:v9 region:? mipLevel:? slice:?];
  }

  device = self->super.super.super._device;
  [v9 pixelFormat];
  [v9 width];
  [v9 height];
  [v9 depth];
  [v9 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  if (v9)
  {
    if ([v9 placementSparsePageSize])
    {
      v17 = [v9 device];
      v18 = [v9 textureType];
      v19 = [v9 pixelFormat];
      v20 = [v9 sampleCount];
      v21 = [v9 placementSparsePageSize];
      if (v17)
      {
        [v17 sparseTileSizeWithTextureType:v18 pixelFormat:v19 sampleCount:v20 sparsePageSize:v21];
LABEL_16:
        v27 = v31;
        v26 = v32;
        v9 = v33;
        goto LABEL_18;
      }
    }

    else
    {
      v22 = [v9 device];
      v23 = [v9 textureType];
      v24 = [v9 pixelFormat];
      v25 = [v9 sampleCount];
      if (v22)
      {
        [v22 sparseTileSizeWithTextureType:v23 pixelFormat:v24 sampleCount:v25];
        goto LABEL_16;
      }
    }

    v9 = 0;
    v26 = 0;
    v27 = 0;
LABEL_18:
    device = v9 - 1;
    a5 = (v26 - 1) / v26;
    if (a4->var1.var0 + a4->var0.var0 <= (v27 - 1) / v27)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  [MTLDebugResourceStateCommandEncoder validateTextureAccess:region:mipLevel:slice:];
LABEL_25:
  MTLReportFailure();
LABEL_19:
  v28 = device / v9;
  if (a4->var1.var1 + a4->var0.var1 > a5)
  {
    v29 = a4->var1.var1 + a4->var0.var1;
    MTLReportFailure();
  }

  if (a4->var1.var2 + a4->var0.var2 > v28)
  {
    v30 = a4->var1.var2 + a4->var0.var2;
    MTLReportFailure();
  }
}

- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8
{
  if (![(MTLDebugResourceStateCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMappings:mode:regions:mipLevels:slices:numRegions:];
  }

  if (([a3 isSparse] & 1) == 0)
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMappings:mode:regions:mipLevels:slices:numRegions:];
  }

  if ([a3 placementSparsePageSize])
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMappings:mode:regions:mipLevels:slices:numRegions:];
    if (!a8)
    {
      goto LABEL_13;
    }
  }

  else if (!a8)
  {
    goto LABEL_13;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = &a6[v14];
    v17 = *v16;
    if (v17 > [a3 firstMipmapInTail])
    {
      [MTLDebugResourceStateCommandEncoder updateTextureMappings:a3 mode:? regions:? mipLevels:? slices:? numRegions:?];
    }

    v18 = &a5[v14];
    v19 = *&v18->var0.var2;
    v21[0] = *&v18->var0.var0;
    v21[1] = v19;
    v21[2] = *&v18->var1.var1;
    [(MTLDebugResourceStateCommandEncoder *)self validateTextureAccess:a3 region:v21 mipLevel:*v16 slice:a7[v14]];
    [(MTLDebugResourceStateCommandEncoder *)self validateSparseTextureMappingMode:a4];
    v14 = ++v15;
  }

  while (v15 < a8);
LABEL_13:
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  *(&self->hasEndedEncoding + 3) = 1;
}

- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7
{
  if (![(MTLDebugResourceStateCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:mode:region:mipLevel:slice:];
  }

  if (([a3 isSparse] & 1) == 0)
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:mode:region:mipLevel:slice:];
  }

  if ([a3 placementSparsePageSize])
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:mode:region:mipLevel:slice:];
  }

  if ([a3 firstMipmapInTail] < a6)
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:a3 mode:? region:? mipLevel:? slice:?];
  }

  v13 = *&a5->var0.var2;
  v17 = *&a5->var0.var0;
  v18 = v13;
  v19 = *&a5->var1.var1;
  [(MTLDebugResourceStateCommandEncoder *)self validateTextureAccess:a3 region:&v17 mipLevel:a6 slice:a7];
  [(MTLDebugResourceStateCommandEncoder *)self validateSparseTextureMappingMode:a4];
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:a3 retained:1 purgeable:1];
  v14 = [(MTLToolsObject *)self baseObject];
  v15 = [a3 baseObject];
  v16 = *&a5->var0.var2;
  v17 = *&a5->var0.var0;
  v18 = v16;
  v19 = *&a5->var1.var1;
  [v14 updateTextureMapping:v15 mode:a4 region:&v17 mipLevel:a6 slice:a7];
  *(&self->hasEndedEncoding + 3) = 1;
}

- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 indirectBuffer:(id)a5 indirectBufferOffset:(unint64_t)a6
{
  if (![(MTLDebugResourceStateCommandEncoder *)self checkEncoderState])
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:mode:indirectBuffer:indirectBufferOffset:];
  }

  if (([a3 isSparse] & 1) == 0)
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:mode:indirectBuffer:indirectBufferOffset:];
  }

  if ([a3 placementSparsePageSize])
  {
    [MTLDebugResourceStateCommandEncoder updateTextureMapping:mode:indirectBuffer:indirectBufferOffset:];
  }

  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:a3 retained:1 purgeable:1];
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:a5 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  *(&self->hasEndedEncoding + 3) = 1;
}

- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
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

  if (([a3 isSparse] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (([a8 isSparse] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v15 = [a8 pixelFormat];
  if (v15 != [a3 pixelFormat])
  {
    _MTLMessageContextPush_();
  }

  v16 = [a3 heap];
  if (v16 != [a8 heap])
  {
    _MTLMessageContextPush_();
  }

  v17 = [a3 sampleCount];
  if (v17 != [a8 sampleCount])
  {
    [MTLDebugResourceStateCommandEncoder moveTextureMappingsFromTexture:a3 sourceSlice:a8 sourceLevel:? sourceOrigin:? sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
  }

  if ([a3 mipmapLevelCount] <= a5)
  {
    v26 = a5;
    v29 = [a3 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v18 = [a3 numFaces];
  if ([a3 arrayLength] * v18 <= a4)
  {
    [MTLDebugResourceStateCommandEncoder moveTextureMappingsFromTexture:a3 sourceSlice:? sourceLevel:? sourceOrigin:? sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
  }

  if ([a8 mipmapLevelCount] <= a10)
  {
    v27 = a10;
    v30 = [a8 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v19 = [a8 numFaces];
  if ([a8 arrayLength] * v19 <= a9)
  {
    [MTLDebugResourceStateCommandEncoder moveTextureMappingsFromTexture:a8 sourceSlice:? sourceLevel:? sourceOrigin:? sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
  }

  if ([a8 firstMipmapInTail] < a10)
  {
    v28 = a10;
    v31 = [a8 firstMipmapInTail];
    _MTLMessageContextPush_();
  }

  if ([a3 firstMipmapInTail] < a5)
  {
    [a3 firstMipmapInTail];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v43 = *&a6->var0;
  var2 = a7->var2;
  *v44 = a6->var2;
  *&v44[24] = var2;
  *&v44[8] = *&a7->var0;
  v41 = v43;
  *v42 = *v44;
  *&v42[16] = *&v44[16];
  [(MTLDebugResourceStateCommandEncoder *)self validateTextureAccess:a3 region:&v41 mipLevel:a5 slice:a4];
  v21 = *&a11->var0;
  v22 = a7->var2;
  *v42 = a11->var2;
  *&v42[24] = v22;
  *&v42[8] = *&a7->var0;
  v38 = v21;
  v39 = *v42;
  v40 = *&v42[16];
  v41 = v21;
  [(MTLDebugResourceStateCommandEncoder *)self validateTextureAccess:a8 region:&v38 mipLevel:a10 slice:a9];
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:a3 retained:1 purgeable:1];
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:a8 retained:1 purgeable:1];
  v23 = [(MTLToolsObject *)self baseObject];
  v24 = [a3 baseObject];
  v38 = *&a6->var0;
  *&v39 = a6->var2;
  v36 = *&a7->var0;
  v37 = a7->var2;
  v25 = [a8 baseObject];
  v35 = *a11;
  [v23 moveTextureMappingsFromTexture:v24 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v38 sourceSize:&v36 toTexture:v25 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v35];
  *(&self->hasEndedEncoding + 3) = 1;
}

- (void)updateFence:(id)a3
{
  v5 = a3;
  std::deque<objc_object *>::push_back(&self->updatedFences.__map_.__first_, &v5);
  *(&self->hasEndedEncoding + 3) = 1;
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:a3 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)waitForFence:(id)a3
{
  p_updatedFences = &self->updatedFences;
  size = self->updatedFences.__size_;
  if (size)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if ((*(p_updatedFences->__map_.var0 + (((p_updatedFences->__start_ + v7) >> 6) & 0x3FFFFFFFFFFFFF8)))[(p_updatedFences->__start_ + v7) & 0x1FF] == a3)
      {
        MTLReportFailure();
        size = p_updatedFences->__size_;
      }

      v7 = v8;
    }

    while (size > v8++);
  }

  *(&self->hasEndedEncoding + 3) = 1;
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addObject:a3 retained:1 purgeable:0];
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];

  [v10 waitForFence:v11];
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

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4
{
  if (*(&self->hasEndedEncoding + 4))
  {
    [MTLDebugResourceStateCommandEncoder barrierAfterQueueStages:beforeStages:];
  }

  v7 = [(MTLToolsObject *)self baseObject];

  [v7 barrierAfterQueueStages:a3 beforeStages:a4];
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