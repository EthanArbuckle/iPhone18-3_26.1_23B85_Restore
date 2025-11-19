@interface IOGPUMetalBlitCommandEncoder
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10;
- (void)copyFromTexture:(id)a3 toTexture:(id)a4;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8;
@end

@implementation IOGPUMetalBlitCommandEncoder

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  v16 = [a3 pixelFormat];
  v17 = *&a6->var0.var2;
  v18[0] = *&a6->var0.var0;
  v18[1] = v17;
  v18[2] = *&a6->var1.var1;
  [(IOGPUMetalBlitCommandEncoder *)self fillTexture:a3 level:a4 slice:a5 region:v18 color:v16 pixelFormat:var0, var1, var2, var3];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = a7;
  v13 = MTLPackColor();
  v14 = *&a6->var0.var2;
  v16[0] = *&a6->var0.var0;
  v16[1] = v14;
  v16[2] = *&a6->var1.var1;
  [(IOGPUMetalBlitCommandEncoder *)self fillTexture:a3 level:a4 slice:a5 region:v16 bytes:v18 length:v13];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10
{
  v14 = [a3 width];
  v15 = [a3 height];
  v16 = [a3 depth];
  if (a10)
  {
    v17 = 0;
    v18.i64[0] = v14;
    v18.i64[1] = v15;
    v19 = vshlq_u64(v18, vnegq_s64(vdupq_n_s64(a5)));
    v20 = vdupq_n_s64(1uLL);
    if (v16 >> a5 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v16 >> a5;
    }

    v22 = vcgtq_u64(v19, v20);
    v23 = vsubq_s64(vandq_s8(v19, v22), vmvnq_s8(v22));
    do
    {
      if (a9)
      {
        v24 = a7;
        v25 = a4;
        v26 = a9;
        v31 = v23;
        do
        {
          memset(v35, 0, 24);
          memset(v34, 0, sizeof(v34));
          v32 = v23;
          v33 = v21;
          [(IOGPUMetalBlitCommandEncoder *)self copyFromTexture:a3 sourceSlice:v25 sourceLevel:v17 + a5 sourceOrigin:v35 sourceSize:&v32 toTexture:a6 destinationSlice:v24 destinationLevel:v17 + a8 destinationOrigin:v34];
          v23 = v31;
          ++v24;
          ++v25;
          --v26;
        }

        while (v26);
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

    while (v17 != a10);
  }
}

- (void)copyFromTexture:(id)a3 toTexture:(id)a4
{
  v7 = [a3 width];
  v8 = v7;
  v9 = [a3 height];
  v10 = [a3 depth];
  v45 = v10;
  v46 = v9;
  v11 = [a4 width];
  v12 = [a4 height];
  v13 = [a4 depth];
  v43 = v13;
  v44 = v12;
  v41 = 0;
  v42 = 0;
  if (v7 <= v11 && v9 <= v12 && v10 <= v13)
  {
    v14 = &v41;
    v15 = &v42;
    v16 = &v46;
    v17 = &v45;
    v18 = v7;
    v19 = v13;
    v20 = v12;
    v8 = v11;
  }

  else
  {
    v14 = &v42;
    v15 = &v41;
    v16 = &v44;
    v17 = &v43;
    v18 = v11;
    v19 = v10;
    v20 = v9;
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
  v25 = v7 >> v42;
  if (v7 >> v42 <= 1)
  {
    v25 = 1;
  }

  v26 = v41;
  v27 = v11 >> v41;
  if (v11 >> v41 <= 1)
  {
    v27 = 1;
  }

  if (v25 != v27)
  {
    goto LABEL_40;
  }

  v28 = v9 >> v42;
  if (v9 >> v42 <= 1)
  {
    v28 = 1;
  }

  v29 = v12 >> v41;
  if (v12 >> v41 <= 1)
  {
    v29 = 1;
  }

  if (v28 != v29)
  {
    goto LABEL_40;
  }

  v30 = v10 >> v42;
  if (v10 >> v42 <= 1)
  {
    v30 = 1;
  }

  v31 = v13 >> v41;
  if (v13 >> v41 <= 1)
  {
    v31 = 1;
  }

  if (v30 != v31 || v42 && v41)
  {
LABEL_40:
    [IOGPUMetalBlitCommandEncoder copyFromTexture:toTexture:];
  }

  v32 = [a3 mipmapLevelCount] - v24;
  v33 = [a4 mipmapLevelCount];
  if (v32 >= v33 - v26)
  {
    v34 = v33 - v26;
  }

  else
  {
    v34 = v32;
  }

  v35 = [a3 arrayLength];
  if (([a3 textureType] - 5) >= 2)
  {
    v36 = 1;
  }

  else
  {
    v36 = 6;
  }

  v37 = v36 * v35;
  v38 = [a4 arrayLength];
  if (([a4 textureType] - 5) >= 2)
  {
    v39 = 1;
  }

  else
  {
    v39 = 6;
  }

  v40 = v39 * v38;
  if (v37 < v40)
  {
    v40 = v37;
  }

  [(IOGPUMetalBlitCommandEncoder *)self copyFromTexture:a3 sourceSlice:0 sourceLevel:v24 toTexture:a4 destinationSlice:0 destinationLevel:v26 sliceCount:v40 levelCount:v34];
}

@end