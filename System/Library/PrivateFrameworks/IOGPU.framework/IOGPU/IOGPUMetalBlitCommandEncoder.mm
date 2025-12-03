@interface IOGPUMetalBlitCommandEncoder
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format;
@end

@implementation IOGPUMetalBlitCommandEncoder

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  pixelFormat = [texture pixelFormat];
  v17 = *&region->var0.var2;
  v18[0] = *&region->var0.var0;
  v18[1] = v17;
  v18[2] = *&region->var1.var1;
  [(IOGPUMetalBlitCommandEncoder *)self fillTexture:texture level:level slice:slice region:v18 color:pixelFormat pixelFormat:var0, var1, var2, var3];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  v19 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v13 = MTLPackColor();
  v14 = *&region->var0.var2;
  v16[0] = *&region->var0.var0;
  v16[1] = v14;
  v16[2] = *&region->var1.var1;
  [(IOGPUMetalBlitCommandEncoder *)self fillTexture:texture level:level slice:slice region:v16 bytes:v18 length:v13];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0
{
  width = [texture width];
  height = [texture height];
  depth = [texture depth];
  if (levelCount)
  {
    v17 = 0;
    v18.i64[0] = width;
    v18.i64[1] = height;
    v19 = vshlq_u64(v18, vnegq_s64(vdupq_n_s64(level)));
    v20 = vdupq_n_s64(1uLL);
    if (depth >> level <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = depth >> level;
    }

    v22 = vcgtq_u64(v19, v20);
    v23 = vsubq_s64(vandq_s8(v19, v22), vmvnq_s8(v22));
    do
    {
      if (count)
      {
        destinationSliceCopy = destinationSlice;
        sliceCopy = slice;
        countCopy = count;
        v31 = v23;
        do
        {
          memset(v35, 0, 24);
          memset(v34, 0, sizeof(v34));
          v32 = v23;
          v33 = v21;
          [(IOGPUMetalBlitCommandEncoder *)self copyFromTexture:texture sourceSlice:sliceCopy sourceLevel:v17 + level sourceOrigin:v35 sourceSize:&v32 toTexture:toTexture destinationSlice:destinationSliceCopy destinationLevel:v17 + destinationLevel destinationOrigin:v34];
          v23 = v31;
          ++destinationSliceCopy;
          ++sliceCopy;
          --countCopy;
        }

        while (countCopy);
      }

      v27 = vcgtq_u64(v23, vdupq_n_s64(1uLL));
      v23 = vsubq_s64(vandq_s8(vshrq_n_u64(v23, 1uLL), v27), vmvnq_s8(v27));
      if (v21 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 >>= 1;
      }

      ++v17;
    }

    while (v17 != levelCount);
  }
}

- (void)copyFromTexture:(id)texture toTexture:(id)toTexture
{
  width = [texture width];
  v8 = width;
  height = [texture height];
  depth = [texture depth];
  v45 = depth;
  v46 = height;
  width2 = [toTexture width];
  height2 = [toTexture height];
  depth2 = [toTexture depth];
  v43 = depth2;
  v44 = height2;
  v41 = 0;
  v42 = 0;
  if (width <= width2 && height <= height2 && depth <= depth2)
  {
    v14 = &v41;
    v15 = &v42;
    v16 = &v46;
    v17 = &v45;
    v18 = width;
    v19 = depth2;
    v20 = height2;
    v8 = width2;
  }

  else
  {
    v14 = &v42;
    v15 = &v41;
    v16 = &v44;
    v17 = &v43;
    v18 = width2;
    v19 = depth;
    v20 = height;
  }

  v21 = 0;
  v22 = *v16;
  v23 = *v17;
  while (v8 > v18 || v20 > v22 || v19 > v23)
  {
    v8 >>= 1;
    v20 >>= 1;
    ++v21;
    v19 >>= 1;
  }

  *v15 = 0;
  *v14 = v21;
  v24 = v42;
  v25 = width >> v42;
  if (width >> v42 <= 1)
  {
    v25 = 1;
  }

  v26 = v41;
  v27 = width2 >> v41;
  if (width2 >> v41 <= 1)
  {
    v27 = 1;
  }

  if (v25 != v27)
  {
    goto LABEL_40;
  }

  v28 = height >> v42;
  if (height >> v42 <= 1)
  {
    v28 = 1;
  }

  v29 = height2 >> v41;
  if (height2 >> v41 <= 1)
  {
    v29 = 1;
  }

  if (v28 != v29)
  {
    goto LABEL_40;
  }

  v30 = depth >> v42;
  if (depth >> v42 <= 1)
  {
    v30 = 1;
  }

  v31 = depth2 >> v41;
  if (depth2 >> v41 <= 1)
  {
    v31 = 1;
  }

  if (v30 != v31 || v42 && v41)
  {
LABEL_40:
    [IOGPUMetalBlitCommandEncoder copyFromTexture:toTexture:];
  }

  v32 = [texture mipmapLevelCount] - v24;
  mipmapLevelCount = [toTexture mipmapLevelCount];
  if (v32 >= mipmapLevelCount - v26)
  {
    v34 = mipmapLevelCount - v26;
  }

  else
  {
    v34 = v32;
  }

  arrayLength = [texture arrayLength];
  if (([texture textureType] - 5) >= 2)
  {
    v36 = 1;
  }

  else
  {
    v36 = 6;
  }

  v37 = v36 * arrayLength;
  arrayLength2 = [toTexture arrayLength];
  if (([toTexture textureType] - 5) >= 2)
  {
    v39 = 1;
  }

  else
  {
    v39 = 6;
  }

  v40 = v39 * arrayLength2;
  if (v37 < v40)
  {
    v40 = v37;
  }

  [(IOGPUMetalBlitCommandEncoder *)self copyFromTexture:texture sourceSlice:0 sourceLevel:v24 toTexture:toTexture destinationSlice:0 destinationLevel:v26 sliceCount:v40 levelCount:v34];
}

@end