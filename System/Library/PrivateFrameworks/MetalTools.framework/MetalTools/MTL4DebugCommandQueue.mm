@interface MTL4DebugCommandQueue
- (MTL4DebugCommandQueue)initWithBaseObject:(id)a3 parent:(id)a4;
- (void)addResidencySet:(id)a3;
- (void)addResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)commit:(const void *)a3 count:(unint64_t)a4;
- (void)commit:(const void *)a3 count:(unint64_t)a4 options:(id)a5;
- (void)copyBufferMappingsFromBuffer:(id)a3 toBuffer:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)copyTextureMappingsFromTexture:(id)a3 toTexture:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)dealloc;
- (void)removeResidencySet:(id)a3;
- (void)removeResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)signalDrawable:(id)a3;
- (void)signalEvent:(id)a3 value:(unint64_t)a4;
- (void)updateBufferMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)updateTextureMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)validateBufferAccess:(id)a3 range:(_NSRange)a4 resourceSparsePageSize:(int64_t)a5 context:(_MTLMessageContext *)a6;
- (void)validateBufferAccess:(id)a3 region:(id *)a4 resourceSparsePageSize:(int64_t)a5 context:(_MTLMessageContext *)a6;
- (void)validateCommitCommon:(_MTLMessageContext *)a3 commandBuffers:(const void *)a4 count:(unint64_t)a5;
- (void)validateHeapAccess:(id)a3 rangeOffset:(unint64_t)a4 tileRegions:(id *)a5 resourceSparsePageSize:(int64_t)a6 context:(_MTLMessageContext *)a7;
- (void)validateTextureAccess:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6 context:(_MTLMessageContext *)a7;
- (void)waitForDrawable:(id)a3;
- (void)waitForEvent:(id)a3 value:(unint64_t)a4;
@end

@implementation MTL4DebugCommandQueue

- (MTL4DebugCommandQueue)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTL4DebugCommandQueue;
  return [(MTL4ToolsCommandQueue *)&v5 initWithBaseObject:a3 parent:a4];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v2 dealloc];
}

- (void)commit:(const void *)a3 count:(unint64_t)a4
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugCommandQueue *)self validateCommitCommon:v9 commandBuffers:a3 count:a4];
  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v8 commit:a3 count:a4];
}

- (void)commit:(const void *)a3 count:(unint64_t)a4 options:(id)a5
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugCommandQueue *)self validateCommitCommon:v11 commandBuffers:a3 count:a4];
  if (a5)
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
  [(MTL4ToolsCommandQueue *)&v10 commit:a3 count:a4 options:a5];
}

- (void)signalEvent:(id)a3 value:(unint64_t)a4
{
  v9 = 0;
  memset(&v8[1], 0, 48);
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!a3 || ([a3 conformsToProtocol:&unk_2842371A8] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v8[0].receiver = self;
  v8[0].super_class = MTL4DebugCommandQueue;
  [(objc_super *)v8 signalEvent:a3 value:a4];
}

- (void)waitForEvent:(id)a3 value:(unint64_t)a4
{
  v9 = 0;
  memset(&v8[1], 0, 48);
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!a3 || ([a3 conformsToProtocol:&unk_2842371A8] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v8[0].receiver = self;
  v8[0].super_class = MTL4DebugCommandQueue;
  [(objc_super *)v8 waitForEvent:a3 value:a4];
}

- (void)signalDrawable:(id)a3
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!a3 || ![a3 conformsToProtocol:{&unk_284249EC0, 0, 0, 0, 0, 0, 0, 0}] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)waitForDrawable:(id)a3
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!a3 || ![a3 conformsToProtocol:{&unk_284249EC0, 0, 0, 0, 0, 0, 0, 0}] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)addResidencySet:(id)a3
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  device = self->super.super._device;
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

  _MTLMessageContextEnd();
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugCommandQueue;
  [(objc_super *)v6 addResidencySet:a3];
}

- (void)addResidencySets:(const void *)a3 count:(unint64_t)a4
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (a4)
  {
    v8 = 0;
    do
    {
      if (!a3[v8])
      {
        _MTLMessageContextPush_();
        v9 = a3[v8];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _MTLMessageContextPush_();
      }

      ++v8;
    }

    while (a4 != v8);
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v10 addResidencySets:a3 count:a4];
}

- (void)removeResidencySet:(id)a3
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  device = self->super.super._device;
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

  _MTLMessageContextEnd();
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugCommandQueue;
  [(objc_super *)v6 removeResidencySet:a3];
}

- (void)removeResidencySets:(const void *)a3 count:(unint64_t)a4
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (a4)
  {
    v8 = 0;
    do
    {
      if (!a3[v8])
      {
        _MTLMessageContextPush_();
        v9 = a3[v8];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _MTLMessageContextPush_();
      }

      ++v8;
    }

    while (a4 != v8);
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v10 removeResidencySets:a3 count:a4];
}

- (void)updateTextureMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (![a3 placementSparsePageSize])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 textureType] == 16)
  {
    _MTLMessageContextPush_();
    if (a4)
    {
      goto LABEL_5;
    }
  }

  else if (a4)
  {
LABEL_5:
    if ([a4 type] != 1)
    {
      _MTLMessageContextPush_();
    }

    if (!_MTLDebugIsValidSparsePageSize([a4 maxCompatiblePlacementSparsePageSize]))
    {
      [MTL4DebugCommandQueue updateTextureMappings:a4 heap:? operations:? count:?];
    }

    v12 = [a3 placementSparsePageSize];
    if (v12 > [a4 maxCompatiblePlacementSparsePageSize])
    {
      [MTL4DebugCommandQueue updateTextureMappings:a4 heap:a3 operations:? count:?];
    }

    goto LABEL_11;
  }

  if (a6)
  {
    v18 = 0;
    v19 = a5;
    do
    {
      var0 = v19->var0;
      ++v19;
      if (var0 != 1)
      {
        v21 = v18;
        _MTLMessageContextPush_();
      }

      ++v18;
    }

    while (a6 != v18);
  }

LABEL_11:
  if (_MTLDebugIsValidSparsePageSize([a3 placementSparsePageSize]))
  {
    if (!a6)
    {
      goto LABEL_19;
    }
  }

  else
  {
    [MTL4DebugCommandQueue updateTextureMappings:a3 heap:? operations:? count:?];
    if (!a6)
    {
      goto LABEL_19;
    }
  }

  v13 = 0;
  p_var4 = &a5->var4;
  do
  {
    v15 = *(p_var4 - 3);
    v24 = *(p_var4 - 4);
    v25 = v15;
    v26 = *(p_var4 - 2);
    [(MTL4DebugCommandQueue *)self validateTextureAccess:a3 region:&v24 mipLevel:*(p_var4 - 2) slice:*(p_var4 - 1) context:v27, v22];
    if (!*(p_var4 - 9))
    {
      if (a4)
      {
        v16 = *p_var4;
        v17 = *(p_var4 - 3);
        v24 = *(p_var4 - 4);
        v25 = v17;
        v26 = *(p_var4 - 2);
        -[MTL4DebugCommandQueue validateHeapAccess:rangeOffset:tileRegions:resourceSparsePageSize:context:](self, "validateHeapAccess:rangeOffset:tileRegions:resourceSparsePageSize:context:", a4, v16, &v24, [a3 placementSparsePageSize], v27);
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

  while (a6 != v13);
LABEL_19:
  if (!*&v27[0])
  {
    v23.receiver = self;
    v23.super_class = MTL4DebugCommandQueue;
    [(MTL4ToolsCommandQueue *)&v23 updateTextureMappings:a3 heap:a4 operations:a5 count:a6];
  }

  _MTLMessageContextEnd();
}

- (void)copyTextureMappingsFromTexture:(id)a3 toTexture:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (![a3 placementSparsePageSize])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 textureType] == 16)
  {
    _MTLMessageContextPush_();
  }

  if (![a4 placementSparsePageSize])
  {
    _MTLMessageContextPush_();
  }

  if ([a4 textureType] == 16)
  {
    _MTLMessageContextPush_();
    if (!a6)
    {
      goto LABEL_11;
    }
  }

  else if (!a6)
  {
    goto LABEL_11;
  }

  p_var1 = &a5->var1;
  v13 = a6;
  do
  {
    v14 = *(p_var1 - 2);
    v19 = *(p_var1 - 3);
    *v20 = v14;
    *&v20[16] = *(p_var1 - 1);
    [(MTL4DebugCommandQueue *)self validateTextureAccess:a3 region:&v19 mipLevel:*p_var1 slice:p_var1[1] context:v21];
    v15 = *(p_var1 + 1);
    v16 = p_var1[5];
    *v20 = p_var1[4];
    *&v20[24] = *(p_var1 - 1);
    *&v20[8] = *(p_var1 - 3);
    v18[0] = v15;
    v18[1] = *v20;
    v18[2] = *&v20[16];
    v19 = v15;
    [(MTL4DebugCommandQueue *)self validateTextureAccess:a4 region:v18 mipLevel:v16 slice:p_var1[6] context:v21];
    p_var1 += 13;
    --v13;
  }

  while (v13);
LABEL_11:
  if (!*&v21[0])
  {
    v17.receiver = self;
    v17.super_class = MTL4DebugCommandQueue;
    [(MTL4ToolsCommandQueue *)&v17 copyTextureMappingsFromTexture:a3 toTexture:a4 operations:a5 count:a6];
  }

  _MTLMessageContextEnd();
}

- (void)updateBufferMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if ([a3 placementSparsePageSize])
  {
    if (a4)
    {
LABEL_3:
      if ([a4 type] != 1)
      {
        _MTLMessageContextPush_();
      }

      if (!_MTLDebugIsValidSparsePageSize([a4 maxCompatiblePlacementSparsePageSize]))
      {
        [MTL4DebugCommandQueue updateTextureMappings:a4 heap:? operations:? count:?];
      }

      v12 = [a3 placementSparsePageSize];
      if (v12 > [a4 maxCompatiblePlacementSparsePageSize])
      {
        [MTL4DebugCommandQueue updateBufferMappings:a4 heap:a3 operations:? count:?];
      }

      goto LABEL_9;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (a4)
    {
      goto LABEL_3;
    }
  }

  if (a6)
  {
    v19 = 0;
    v20 = a5;
    do
    {
      var0 = v20->var0;
      ++v20;
      if (var0 != 1)
      {
        v22 = v19;
        _MTLMessageContextPush_();
      }

      ++v19;
    }

    while (a6 != v19);
  }

LABEL_9:
  if (_MTLDebugIsValidSparsePageSize([a3 placementSparsePageSize]))
  {
    if (!a6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    [MTL4DebugCommandQueue updateBufferMappings:a3 heap:? operations:? count:?];
    if (!a6)
    {
      goto LABEL_17;
    }
  }

  v13 = 0;
  v14 = 1;
  do
  {
    v15 = &a5[v13];
    -[MTL4DebugCommandQueue validateBufferAccess:range:resourceSparsePageSize:context:](self, "validateBufferAccess:range:resourceSparsePageSize:context:", a3, v15->var1.location, v15->var1.length, [a3 placementSparsePageSize], v27);
    if (!v15->var0)
    {
      if (a4)
      {
        location = v15->var1.location;
        length = v15->var1.length;
        var2 = v15->var2;
        v25[1] = 0;
        v25[2] = 0;
        v25[0] = location;
        v25[3] = length;
        v26 = vdupq_n_s64(1uLL);
        -[MTL4DebugCommandQueue validateHeapAccess:rangeOffset:tileRegions:resourceSparsePageSize:context:](self, "validateHeapAccess:rangeOffset:tileRegions:resourceSparsePageSize:context:", a4, var2, v25, [a3 placementSparsePageSize], v27);
      }

      else
      {
        v23 = v13;
        _MTLMessageContextPush_();
      }
    }

    v13 = v14++;
  }

  while (v13 < a6);
LABEL_17:
  if (!*&v27[0])
  {
    v24.receiver = self;
    v24.super_class = MTL4DebugCommandQueue;
    [(MTL4ToolsCommandQueue *)&v24 updateBufferMappings:a3 heap:a4 operations:a5 count:a6];
  }

  _MTLMessageContextEnd();
}

- (void)copyBufferMappingsFromBuffer:(id)a3 toBuffer:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (![a3 placementSparsePageSize])
  {
    _MTLMessageContextPush_();
  }

  if ([a4 placementSparsePageSize])
  {
    if (!a6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!a6)
    {
      goto LABEL_7;
    }
  }

  v12 = 0;
  v13 = 1;
  do
  {
    v14 = &a5[v12];
    -[MTL4DebugCommandQueue validateBufferAccess:range:resourceSparsePageSize:context:](self, "validateBufferAccess:range:resourceSparsePageSize:context:", a3, v14->var0.location, v14->var0.length, [a3 placementSparsePageSize], v16);
    -[MTL4DebugCommandQueue validateBufferAccess:range:resourceSparsePageSize:context:](self, "validateBufferAccess:range:resourceSparsePageSize:context:", a4, v14->var1, v14->var0.length, [a4 placementSparsePageSize], v16);
    v12 = v13++;
  }

  while (v12 < a6);
LABEL_7:
  if (!*&v16[0])
  {
    v15.receiver = self;
    v15.super_class = MTL4DebugCommandQueue;
    [(MTL4ToolsCommandQueue *)&v15 copyBufferMappingsFromBuffer:a3 toBuffer:a4 operations:a5 count:a6];
  }

  _MTLMessageContextEnd();
}

- (void)validateTextureAccess:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6 context:(_MTLMessageContext *)a7
{
  if (!a3)
  {
    [MTL4DebugCommandQueue validateTextureAccess:region:mipLevel:slice:context:];
LABEL_32:
    v23 = v10;
    v28 = [v8 arrayLength];
    _MTLMessageContextPush_();
    goto LABEL_8;
  }

  v10 = a6;
  v9 = a5;
  v8 = a3;
  v30 = a4;
  v32 = 0;
  v31 = 0u;
  v7 = 24;
  v29 = self;
  device = self->super.super._device;
  [a3 pixelFormat];
  [v8 width];
  [v8 height];
  [v8 depth];
  [v8 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  if ([v8 textureType] == 5)
  {
    v14 = 6;
  }

  else if ([v8 textureType] == 6)
  {
    v14 = 6;
  }

  else
  {
    v14 = 1;
  }

  v11 = a7;
  if ([v8 arrayLength] * v14 <= v10)
  {
    goto LABEL_32;
  }

LABEL_8:
  v15 = [v8 mipmapLevelCount] - 1;
  if (v15 >= [v8 firstMipmapInTail])
  {
    v16 = [v8 firstMipmapInTail];
  }

  else
  {
    v16 = [v8 mipmapLevelCount] - 1;
  }

  if (v16 < v9)
  {
    [MTLDebugBlitCommandEncoder validateTextureAccess:v8 region:? mipLevel:? slice:?];
  }

  if (v11->var0 <= 0)
  {
    v17 = [v8 device];
    v18 = [v8 textureType];
    v19 = [v8 pixelFormat];
    v20 = [v8 sampleCount];
    v21 = [v8 placementSparsePageSize];
    if (v17)
    {
      [v17 sparseTileSizeWithTextureType:v18 pixelFormat:v19 sampleCount:v20 sparsePageSize:v21];
    }

    if ([v8 firstMipmapInTail] == v9)
    {
      v22 = [*(&v29->super.super.super.isa + v7) sparseTileSizeInBytesForSparsePageSize:{objc_msgSend(v8, "placementSparsePageSize")}];
      if (v30->var1.var0 + v30->var0.var0 > (v22 + [v8 tailSizeInBytes] - 1) / v22)
      {
        [v8 firstMipmapInTail];
        _MTLMessageContextPush_();
      }

      if (v30->var0.var1)
      {
        [v8 firstMipmapInTail];
        _MTLMessageContextPush_();
      }

      if (v30->var1.var1 != 1)
      {
        [v8 firstMipmapInTail];
        _MTLMessageContextPush_();
      }

      if (v30->var1.var2 + v30->var0.var2 > (v32 - 1) / 0uLL)
      {
        v24 = v30->var1.var2 + v30->var0.var2;
LABEL_34:
        _MTLMessageContextPush_();
      }
    }

    else
    {
      if (v30->var1.var0 + v30->var0.var0 > (v31 - 1) / 0uLL)
      {
        v25 = v30->var1.var0 + v30->var0.var0;
        _MTLMessageContextPush_();
      }

      if (v30->var1.var1 + v30->var0.var1 > (*(&v31 + 1) - 1) / 0uLL)
      {
        v26 = v30->var1.var1 + v30->var0.var1;
        _MTLMessageContextPush_();
      }

      if (v30->var1.var2 + v30->var0.var2 > (v32 - 1) / 0uLL)
      {
        v27 = v30->var1.var2 + v30->var0.var2;
        goto LABEL_34;
      }
    }
  }
}

- (void)validateBufferAccess:(id)a3 region:(id *)a4 resourceSparsePageSize:(int64_t)a5 context:(_MTLMessageContext *)a6
{
  v8 = [(MTLToolsDevice *)self->super.super._device sparseTileSizeInBytesForSparsePageSize:a5];
  if (a4->var1.var0 + a4->var0.var0 > (v8 + [a3 length] - 1) / v8)
  {
    v9 = a4->var1.var0 + a4->var0.var0;
    _MTLMessageContextPush_();
  }
}

- (void)validateBufferAccess:(id)a3 range:(_NSRange)a4 resourceSparsePageSize:(int64_t)a5 context:(_MTLMessageContext *)a6
{
  length = a4.length;
  location = a4.location;
  v9 = [(MTLToolsDevice *)self->super.super._device sparseTileSizeInBytesForSparsePageSize:a5];
  if (location + length > (v9 + [a3 length] - 1) / v9)
  {
    _MTLMessageContextPush_();
  }
}

- (void)validateHeapAccess:(id)a3 rangeOffset:(unint64_t)a4 tileRegions:(id *)a5 resourceSparsePageSize:(int64_t)a6 context:(_MTLMessageContext *)a7
{
  v9 = a5->var1.var0 * [(MTLToolsDevice *)self->super.super._device sparseTileSizeInBytesForSparsePageSize:a6]* a5->var1.var1 * a5->var1.var2;
  if (v9 + a4 > [a3 size])
  {
    [a3 size];
    _MTLMessageContextPush_();
  }
}

- (void)validateCommitCommon:(_MTLMessageContext *)a3 commandBuffers:(const void *)a4 count:(unint64_t)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = MTL4DebugCommandQueue;
  v8 = [(MTL4ToolsCommandQueue *)&v51 addedResidencySets];
  if (!a5)
  {
    goto LABEL_52;
  }

  if (a3->var0 <= 0)
  {
    v9 = v8;
    v10 = 0;
    v39 = 0;
    v11 = 0;
    v12 = 0x2787B2000uLL;
    while (1)
    {
      v13 = a4[v11];
      if (!v13)
      {
        v34 = v11;
        _MTLMessageContextPush_();
      }

      v14 = v11 + 1;
      v15 = v11 + 1;
      if (v11 + 1 < a5)
      {
        do
        {
          if (v13 == a4[v15])
          {
            v34 = v11;
            v38 = v15;
            _MTLMessageContextPush_();
          }

          ++v15;
        }

        while (a5 != v15);
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
      if (v14 == a5)
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
    v17 = [v13 usedResidencySets];
    for (i = *([v13 attachmentSet] + 16); i; i = *i)
    {
      v19 = i[2];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v20 = [v17 countByEnumeratingWithState:&v47 objects:v53 count:{16, v35}];
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
            objc_enumerationMutation(v17);
          }

          if ([*(*(&v47 + 1) + 8 * v23) containsAllocation:v19])
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [v17 countByEnumeratingWithState:&v47 objects:v53 count:16];
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

    v28 = [v13 aggregatedEncoderMask];
    v29 = v28;
    if (v40)
    {
      v30 = v42;
      v14 = v41;
      if ((v28 & 8) != 0)
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
        v32 = [v13 currentState];
        v12 = 0x2787B2000;
        if (v32 == 1 || v32 == 3)
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
      if ((v28 & 8) == 0)
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