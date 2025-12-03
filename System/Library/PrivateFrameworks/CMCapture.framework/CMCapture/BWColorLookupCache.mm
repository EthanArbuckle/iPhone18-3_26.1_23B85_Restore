@interface BWColorLookupCache
- (BWColorLookupCache)init;
- (BWColorLookupCacheEntry)_colorLookupTablesForColorCubeFilter:(BWColorLookupCacheEntry *)result;
- (BWColorLookupCacheEntry)_colorLookupTablesForColorCubesWithMaskFilter:(BWColorLookupCacheEntry *)result;
- (id)blackColorLookupTable;
- (id)colorLookupTablesForFilter:(id)filter;
- (id)fetchColorLookupTablesForFilter:(id)filter;
- (id)identityColorLookupTable;
- (id)interpolatedColorLookupTableFromTable:(id)table toTable:(id)toTable fractionComplete:(float)complete;
- (id)whiteColorLookupTable;
- (void)dealloc;
@end

@implementation BWColorLookupCache

- (BWColorLookupCache)init
{
  v6.receiver = self;
  v6.super_class = BWColorLookupCache;
  v2 = [(BWColorLookupCache *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.bwgraph.color-lookup-cache", 0);
    v2->_coreImageCacheIsolationQueue = v3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__BWColorLookupCache_init__block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = v2;
    dispatch_sync(v3, block);
  }

  return v2;
}

id __26__BWColorLookupCache_init__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(*(a1 + 32) + 16) = result;
  return result;
}

- (void)dealloc
{
  coreImageCacheIsolationQueue = self->_coreImageCacheIsolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__BWColorLookupCache_dealloc__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(coreImageCacheIsolationQueue, block);

  v4.receiver = self;
  v4.super_class = BWColorLookupCache;
  [(BWColorLookupCache *)&v4 dealloc];
}

- (id)colorLookupTablesForFilter:(id)filter
{
  filterCopy = filter;
  if (filter)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__33;
    v14 = __Block_byref_object_dispose__33;
    v15 = 0;
    NSClassFromString(&cfstr_Cicolorcubesmi.isa);
    isKindOfClass = objc_opt_isKindOfClass();
    NSClassFromString(&cfstr_Cicolorcubewit.isa);
    if ((objc_opt_isKindOfClass() | isKindOfClass))
    {
      if (isKindOfClass)
      {
        v6 = [(BWColorLookupCache *)self _colorLookupTablesForColorCubesWithMaskFilter:filterCopy];
      }

      else
      {
        v6 = [(BWColorLookupCache *)self _colorLookupTablesForColorCubeFilter:filterCopy];
      }
    }

    else
    {
      coreImageCacheIsolationQueue = self->_coreImageCacheIsolationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__BWColorLookupCache_colorLookupTablesForFilter___block_invoke;
      block[3] = &unk_1E7999668;
      block[5] = filterCopy;
      block[6] = &v10;
      block[4] = self;
      dispatch_sync(coreImageCacheIsolationQueue, block);
      v6 = v11[5];
    }

    filterCopy = v6;
    _Block_object_dispose(&v10, 8);
  }

  return filterCopy;
}

id __49__BWColorLookupCache_colorLookupTablesForFilter___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) objectForKey:{objc_msgSend(*(a1 + 40), "name")}];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (id)fetchColorLookupTablesForFilter:(id)filter
{
  if (!filter)
  {
    return 0;
  }

  name = [filter name];
  NSClassFromString(&cfstr_Ciphotoeffect.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  NSClassFromString(&cfstr_Ciphotoeffect3_1.isa);
  v7 = objc_opt_isKindOfClass();
  NSClassFromString(&cfstr_Ciportraiteffe_8.isa);
  if (objc_opt_isKindOfClass())
  {
    v8 = 1;
  }

  else
  {
    NSClassFromString(&cfstr_Ciportraiteffe_9.isa);
    v8 = objc_opt_isKindOfClass();
  }

  NSClassFromString(&cfstr_Cicolorcubewit.isa);
  v10 = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    cubePath = [filter cubePath];
    v12 = 0;
    goto LABEL_13;
  }

  if (v7)
  {
    cubePath = [filter cubePath];
    backgroundCubePath = [filter backgroundCubePath];
LABEL_12:
    v12 = backgroundCubePath;
LABEL_13:
    v18 = 0;
    if (cubePath)
    {
      v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:cubePath options:2 error:&v18];
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v14 = 0;
      if (!v12)
      {
LABEL_18:
        if (v14 | v12)
        {
          v15 = [[BWColorLookupCacheEntry alloc] initWithForegroundColorLookupTable:v14 backgroundColorLookupTable:v12];
          coreImageCacheIsolationQueue = self->_coreImageCacheIsolationQueue;
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __54__BWColorLookupCache_fetchColorLookupTablesForFilter___block_invoke;
          v17[3] = &unk_1E798FD58;
          v17[4] = self;
          v17[5] = v15;
          v17[6] = name;
          dispatch_sync(coreImageCacheIsolationQueue, v17);
        }

        else
        {
          v15 = 0;
        }

        return v15;
      }
    }

    v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v12 options:2 error:&v18];
    goto LABEL_18;
  }

  if (v8)
  {
    cubePath = [filter previewCubePath];
    backgroundCubePath = [filter backgroundPreviewCubePath];
    goto LABEL_12;
  }

  if ((v10 & 1) == 0)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    goto LABEL_18;
  }

  return [(BWColorLookupCache *)self _colorLookupTablesForColorCubeFilter:filter];
}

- (id)identityColorLookupTable
{
  if (identityColorLookupTable_onceToken != -1)
  {
    [BWColorLookupCache identityColorLookupTable];
  }

  return identityColorLookupTable_identityColorLookupTable;
}

uint64_t __46__BWColorLookupCache_identityColorLookupTable__block_invoke()
{
  v0 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  v1 = 0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  v3.i64[0] = 0xFF000000FFLL;
  v3.i64[1] = 0xFF000000FFLL;
  __asm { FMOV            V18.2D, #31.0 }

  v9.i64[0] = 0x1000000010;
  v9.i64[1] = 0x1000000010;
  v10 = v0;
  do
  {
    v11 = 0;
    v12 = vdupq_n_s8(llround((255 * v1) / 31.0));
    v13 = v10;
    do
    {
      v14 = 0;
      v15 = vdupq_n_s8(llround((255 * v11) / 31.0));
      v16 = xmmword_1ACF06180;
      v17 = xmmword_1AD0564D0;
      v18 = xmmword_1AD0564C0;
      v19 = xmmword_1AD0564B0;
      do
      {
        v20 = vmulq_s32(v16, v3);
        v21 = vmulq_s32(v17, v3);
        v22 = vmulq_s32(v18, v3);
        v23 = vmulq_s32(v19, v3);
        v24.i64[0] = v23.u32[0];
        v24.i64[1] = v23.u32[1];
        v25 = vcvtq_f64_u64(v24);
        v24.i64[0] = v23.u32[2];
        v24.i64[1] = v23.u32[3];
        v26 = vcvtq_f64_u64(v24);
        v24.i64[0] = v22.u32[0];
        v24.i64[1] = v22.u32[1];
        v27 = vcvtq_f64_u64(v24);
        v24.i64[0] = v22.u32[2];
        v24.i64[1] = v22.u32[3];
        v28 = vcvtq_f64_u64(v24);
        v24.i64[0] = v21.u32[0];
        v24.i64[1] = v21.u32[1];
        v29 = vcvtq_f64_u64(v24);
        v24.i64[0] = v21.u32[2];
        v24.i64[1] = v21.u32[3];
        v30 = vcvtq_f64_u64(v24);
        v24.i64[0] = v20.u32[0];
        v24.i64[1] = v20.u32[1];
        v31 = vcvtq_f64_u64(v24);
        v24.i64[0] = v20.u32[2];
        v24.i64[1] = v20.u32[3];
        v32 = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(vdivq_f64(v31, _Q18))), vcvtq_s64_f64(vrndaq_f64(vdivq_f64(vcvtq_f64_u64(v24), _Q18)))), vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(vdivq_f64(v29, _Q18))), vcvtq_s64_f64(vrndaq_f64(vdivq_f64(v30, _Q18))))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(vdivq_f64(v27, _Q18))), vcvtq_s64_f64(vrndaq_f64(vdivq_f64(v28, _Q18)))), vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(vdivq_f64(v25, _Q18))), vcvtq_s64_f64(vrndaq_f64(vdivq_f64(v26, _Q18))))));
        v33 = &v13[v14];
        vst4q_s8(v33, *(&v2 - 3));
        v16 = vaddq_s32(v16, v9);
        v17 = vaddq_s32(v17, v9);
        v18 = vaddq_s32(v18, v9);
        v19 = vaddq_s32(v19, v9);
        v14 += 64;
      }

      while (v14 != 128);
      ++v11;
      v13 += 128;
    }

    while (v11 != 32);
    ++v1;
    v10 += 4096;
  }

  while (v1 != 32);
  result = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v0 length:0x20000 freeWhenDone:1];
  identityColorLookupTable_identityColorLookupTable = result;
  return result;
}

- (id)blackColorLookupTable
{
  if (blackColorLookupTable_onceToken != -1)
  {
    [BWColorLookupCache blackColorLookupTable];
  }

  return blackColorLookupTable_identityColorLookupTable;
}

uint64_t __43__BWColorLookupCache_blackColorLookupTable__block_invoke()
{
  v0 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  v1 = 0;
  *&v2 = 0xFF000000FF000000;
  *(&v2 + 1) = 0xFF000000FF000000;
  v3 = v0;
  do
  {
    v4 = 0;
    v5 = v3;
    do
    {
      for (i = 0; i != 128; i += 64)
      {
        v7 = &v5[i];
        *(v7 + 2) = v2;
        *(v7 + 3) = v2;
        *v7 = v2;
        *(v7 + 1) = v2;
      }

      ++v4;
      v5 += 128;
    }

    while (v4 != 32);
    ++v1;
    v3 += 4096;
  }

  while (v1 != 32);
  result = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v0 length:0x20000 freeWhenDone:1];
  blackColorLookupTable_identityColorLookupTable = result;
  return result;
}

- (id)whiteColorLookupTable
{
  if (whiteColorLookupTable_onceToken != -1)
  {
    [BWColorLookupCache whiteColorLookupTable];
  }

  return whiteColorLookupTable_identityColorLookupTable;
}

uint64_t __43__BWColorLookupCache_whiteColorLookupTable__block_invoke()
{
  v0 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  memset(v0, 255, 0x20000uLL);
  result = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v0 length:0x20000 freeWhenDone:1];
  whiteColorLookupTable_identityColorLookupTable = result;
  return result;
}

- (BWColorLookupCacheEntry)_colorLookupTablesForColorCubesWithMaskFilter:(BWColorLookupCacheEntry *)result
{
  if (result)
  {
    [a2 cubeDimension];
    if (v3 != 32.0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    v4 = -[BWColorLookupCacheEntry initWithForegroundColorLookupTable:backgroundColorLookupTable:]([BWColorLookupCacheEntry alloc], "initWithForegroundColorLookupTable:backgroundColorLookupTable:", [a2 cube0Data], objc_msgSend(a2, "cube1Data"));

    return v4;
  }

  return result;
}

- (BWColorLookupCacheEntry)_colorLookupTablesForColorCubeFilter:(BWColorLookupCacheEntry *)result
{
  if (result)
  {
    [a2 cubeDimension];
    if (v3 != 32.0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    v4 = -[BWColorLookupCacheEntry initWithForegroundColorLookupTable:backgroundColorLookupTable:]([BWColorLookupCacheEntry alloc], "initWithForegroundColorLookupTable:backgroundColorLookupTable:", [a2 cubeData], 0);

    return v4;
  }

  return result;
}

- (id)interpolatedColorLookupTableFromTable:(id)table toTable:(id)toTable fractionComplete:(float)complete
{
  if (!table || !toTable)
  {
    return 0;
  }

  v8 = cbrt(([table length] >> 2));
  if (v8 != cbrt(([toTable length] >> 2)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  bytes = [table bytes];
  bytes2 = [toTable bytes];
  v11 = 4 * v8 * v8 * v8;
  v12 = malloc_type_malloc(v11, 0x100004077774924uLL);
  v13 = v12;
  *&v14 = 1.0 - complete;
  if (complete <= 1.0)
  {
    if (v11)
    {
      v21 = v12;
      v22 = 4 * v8 * v8 * v8;
      do
      {
        v24 = *bytes++;
        v23 = v24;
        v25 = *bytes2++;
        *v21++ = llroundf((v25 * complete) + (v23 * *&v14));
        --v22;
      }

      while (v22);
    }
  }

  else if (v11)
  {
    v15 = v12;
    v16 = 4 * v8 * v8 * v8;
    do
    {
      v18 = *bytes++;
      v17 = v18;
      v19 = *bytes2++;
      v20 = roundf((v19 * complete) + (v17 * *&v14));
      if (v20 > 255.0)
      {
        v20 = 255.0;
      }

      if (v20 < 0.0)
      {
        v20 = 0.0;
      }

      *v15++ = v20;
      --v16;
    }

    while (v16);
  }

  v26 = MEMORY[0x1E695DEF0];

  return [v26 dataWithBytesNoCopy:v13 length:v11 freeWhenDone:{1, v14}];
}

@end