@interface NUAlphaHistogramCalculator
- ($C28CD4A45FD07A4F97CC9D5F91F25271)luminanceThresholds;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)luminanceWeights;
- (NUAlphaHistogramCalculator)init;
- (id)_computeAlphaHistogramForBufferBGRA8:(id)a8 error:(id *)error;
- (id)computeHistogramFromBuffer:(id)buffer error:(id *)error;
@end

@implementation NUAlphaHistogramCalculator

- ($C28CD4A45FD07A4F97CC9D5F91F25271)luminanceThresholds
{
  r = self->_luminanceThresholds.r;
  g = self->_luminanceThresholds.g;
  b = self->_luminanceThresholds.b;
  a = self->_luminanceThresholds.a;
  result.var3 = a;
  result.var2 = b;
  result.var1 = g;
  result.var0 = r;
  return result;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)luminanceWeights
{
  r = self->_luminanceWeights.r;
  g = self->_luminanceWeights.g;
  b = self->_luminanceWeights.b;
  a = self->_luminanceWeights.a;
  result.var3 = a;
  result.var2 = b;
  result.var1 = g;
  result.var0 = r;
  return result;
}

- (id)_computeAlphaHistogramForBufferBGRA8:(id)a8 error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  a8Copy = a8;
  if (!a8Copy)
  {
    v21 = NUAssertLogger_1900();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      *buf = 138543362;
      v66 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_1900();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols = [v36 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v35;
        v67 = 2114;
        v68 = v39;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAlphaHistogramCalculator _computeAlphaHistogramForBufferBGRA8:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogramCalculator.m", 344, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "buffer != nil");
  }

  if (!error)
  {
    v28 = NUAssertLogger_1900();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v66 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_1900();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        callStackSymbols3 = [v45 callStackSymbols];
        v48 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v44;
        v67 = 2114;
        v68 = v48;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAlphaHistogramCalculator _computeAlphaHistogramForBufferBGRA8:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogramCalculator.m", 345, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "error != NULL");
  }

  v7 = a8Copy;
  g = self->_luminanceWeights.g;
  b = self->_luminanceWeights.b;
  a = self->_luminanceWeights.a;
  v59 = ldexpf(self->_luminanceWeights.r, 10);
  v56 = ldexpf(g, 10);
  v54 = ldexpf(b, 10);
  v11 = ldexpf(a, 10);
  v12.i64[0] = __PAIR64__(LODWORD(v56), LODWORD(v59));
  v12.i64[1] = __PAIR64__(LODWORD(v11), LODWORD(v54));
  v60 = vmovl_s16(vmovn_s32(vcvtq_s32_f32(vrndxq_f32(v12))));
  v13 = self->_luminanceThresholds.g;
  v14 = self->_luminanceThresholds.b;
  v15 = self->_luminanceThresholds.a;
  v57 = ldexpf(self->_luminanceThresholds.r, 8);
  v55 = ldexpf(v13, 8);
  v53 = ldexpf(v14, 8);
  v16 = ldexpf(v15, 8);
  v17.i64[0] = __PAIR64__(LODWORD(v55), LODWORD(v57));
  v17.i64[1] = __PAIR64__(LODWORD(v16), LODWORD(v53));
  v58 = vmovl_s16(vmovn_s32(vcvtq_s32_f32(vrndxq_f32(v17))));
  v18 = objc_alloc_init(NUMutableImageHistogram);
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __73__NUAlphaHistogramCalculator__computeAlphaHistogramForBufferBGRA8_error___block_invoke;
  v61[3] = &unk_1E81096D8;
  v64 = v7;
  v62 = v60;
  v63 = v58;
  v19 = v7;
  [(NUMutableImageHistogram *)v18 write:v61];

  return v18;
}

uint64_t __73__NUAlphaHistogramCalculator__computeAlphaHistogramForBufferBGRA8_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [*(a1 + 64) size];
  v12 = v11;
  v13 = [*(a1 + 64) bytes];
  v14 = [*(a1 + 64) rowBytes];
  if (v12 < 1)
  {
    return 0;
  }

  v16 = 0;
  for (i = 0; i != v12; ++i)
  {
    if (v10 >= 1)
    {
      v18 = (v13 + i * v14);
      v19 = v10;
      do
      {
        v20 = *v18++;
        v15.i32[0] = v20;
        v21 = vmovl_u8(*v15.i8).u64[0];
        v22 = vrev32_s16(v21);
        v23 = vmovl_u16(vext_s8(v22, v22, 6uLL));
        v24 = *(a1 + 48);
        v25 = vaddvq_s32(vmulq_s32(*(a1 + 32), v23));
        v26 = v25 + 1535;
        v27 = v21.u16[3];
        *(a2 + 8 * v23.u32[0]) += v21.u8[6];
        if (v25 + 512 >= 0)
        {
          v26 = v25 + 512;
        }

        v28 = v26 >> 10;
        v23.i32[3] = v28;
        v15 = vcgeq_s32(v23, v24);
        *(a3 + 8 * v23.u32[1]) += v27;
        *(a4 + 8 * v23.u32[2]) += v27;
        if ((vminvq_u32(v15) & 0x80000000) == 0)
        {
          v29 = 0;
        }

        else
        {
          v29 = v27;
        }

        *(a5 + 8 * v28) += v29;
        v16 += v27;
        --v19;
      }

      while (v19);
    }
  }

  return v16;
}

- (id)computeHistogramFromBuffer:(id)buffer error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  if (!bufferCopy)
  {
    v17 = NUAssertLogger_1900();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      *buf = 138543362;
      v50 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_1900();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v31;
        v51 = 2114;
        v52 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAlphaHistogramCalculator computeHistogramFromBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogramCalculator.m", 309, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "buffer != nil");
  }

  if (!error)
  {
    v24 = NUAssertLogger_1900();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v50 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_1900();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v40;
        v51 = 2114;
        v52 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAlphaHistogramCalculator computeHistogramFromBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogramCalculator.m", 310, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "error != NULL");
  }

  v7 = bufferCopy;
  format = [bufferCopy format];
  v9 = +[NUPixelFormat BGRA8];
  v10 = [format isEqualToPixelFormat:v9];

  if (v10)
  {
    if ([(NUHistogramCalculator *)self binCount]== 256)
    {
      [(NUHistogramCalculator *)self range];
      if (v11 == 0.0)
      {
        [(NUHistogramCalculator *)self range];
        if (v12 == 1.0)
        {
          v13 = [(NUAlphaHistogramCalculator *)self _computeAlphaHistogramForBufferBGRA8:v7 error:error];
          goto LABEL_12;
        }
      }

      v15 = @"Unsupported histogram range for 8-bit image";
    }

    else
    {
      v15 = @"Unsupported histogram bin count for 8-bit image";
    }

    [NUError unsupportedError:v15 object:self];
    *error = v13 = 0;
  }

  else
  {
    format2 = [v7 format];
    *error = [NUError unsupportedError:@"Unsupported pixel format" object:format2];

    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (NUAlphaHistogramCalculator)init
{
  v3.receiver = self;
  v3.super_class = NUAlphaHistogramCalculator;
  result = [(NUHistogramCalculator *)&v3 init];
  result->_luminanceWeights = NUStandardLuminanceWeights;
  *&result->_luminanceThresholds.r = 0;
  *&result->_luminanceThresholds.b = 0;
  return result;
}

@end