@interface NUHistogramCalculator
- ($46ED5D845D7CE1E0F0FD877A143EA26B)colorMatrix;
- ($F24F406B2B787EFB06265DBA3D28CBD5)range;
- (NUHistogramCalculator)init;
- (id)_computeHistogramForBufferBGRA8:(id)a3 error:(id *)a4;
- (id)_computeHistogramForBufferRGBAhHLG:(id)a3 error:(id *)a4;
- (id)computeHistogramFromBuffer:(id)a3 error:(id *)a4;
- (id)computeHistogramFromMatte:(id)a3;
- (id)computeHistogramFromMatteBuffer:(id)a3;
- (void)setColorMatrix:(id *)a3;
@end

@implementation NUHistogramCalculator

- (void)setColorMatrix:(id *)a3
{
  var0 = a3->var0;
  var1 = a3->var1;
  var3 = a3->var3;
  self->_colorMatrix.b = a3->var2;
  self->_colorMatrix.a = var3;
  self->_colorMatrix.r = var0;
  self->_colorMatrix.g = var1;
}

- ($46ED5D845D7CE1E0F0FD877A143EA26B)colorMatrix
{
  var3 = self->var3;
  retstr->var0 = self->var2;
  retstr->var1 = var3;
  var1 = self[1].var1;
  retstr->var2 = self[1].var0;
  retstr->var3 = var1;
  return self;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)range
{
  min = self->_range.min;
  max = self->_range.max;
  result.var1 = max;
  result.var0 = min;
  return result;
}

- (id)computeHistogramFromMatte:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 extent], !CGRectIsEmpty(v46)))
  {
    v8 = [MEMORY[0x1E695F648] areaHistogramFilter];
    [v8 setInputImage:v5];
    [v5 extent];
    [v8 setExtent:?];
    [v8 setCount:{-[NUHistogramCalculator binCount](self, "binCount")}];
    LODWORD(v9) = 1.0;
    [v8 setScale:v9];
    v10 = [v8 outputImage];
    if (!v10)
    {
      v22 = NUAssertLogger_1900();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to produce histogram for matte image"];
        *buf = 138543362;
        v41 = v23;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v25 = NUAssertLogger_1900();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v26)
        {
          v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v30 = MEMORY[0x1E696AF00];
          v31 = v29;
          v32 = [v30 callStackSymbols];
          v33 = [v32 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v41 = v29;
          v42 = 2114;
          v43 = v33;
          _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v26)
      {
        v27 = [MEMORY[0x1E696AF00] callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v41 = v28;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUHistogramCalculator computeHistogramFromMatte:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogramCalculator.m", 270, @"Failed to produce histogram for matte image", v34, v35, v36, v37, v38);
    }

    v11 = v10;
    v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{4 * -[NUHistogramCalculator binCount](self, "binCount")}];
    v13 = [MEMORY[0x1E695F620] context];
    v14 = [v12 mutableBytes];
    v15 = [v12 length];
    [v11 extent];
    [v13 render:v11 toBitmap:v14 rowBytes:v15 bounds:*MEMORY[0x1E695F928] format:0 colorSpace:?];
    v16 = [v12 bytes];
    [v5 extent];
    v19 = v17 * v18;
    v20 = [(NUHistogramCalculator *)self binCount];
    v7 = [(NUHistogram *)[NUMutableHistogram alloc] initWithBinCount:v20 range:0.0, 1.0];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __51__NUHistogramCalculator_computeHistogramFromMatte___block_invoke;
    v39[3] = &__block_descriptor_56_e12_q24__0_q8q16l;
    v39[4] = v20;
    v39[5] = v16;
    *&v39[6] = v19;
    [(NUMutableHistogram *)v7 write:v39];
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_103);
    }

    v6 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Matte is empty", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

uint64_t __51__NUHistogramCalculator_computeHistogramFromMatte___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  do
  {
    v6 = v5 * *(v4 + 4 * v2);
    *(a2 + 8 * v2) = v6;
    v3 += v6;
    ++v2;
  }

  while (v2 < *(a1 + 32));
  return v3;
}

- (id)computeHistogramFromMatteBuffer:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695F658] imageWithNUImageBuffer:?];
    v5 = [(NUHistogramCalculator *)self computeHistogramFromMatte:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_computeHistogramForBufferRGBAhHLG:(id)a3 error:(id *)a4
{
  v98 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v39 = NUAssertLogger_1900();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      matrix = 5.8381e-34;
      v86 = v40;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &matrix, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v42 = NUAssertLogger_1900();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v43)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        v56 = [v54 callStackSymbols];
        v57 = [v56 componentsJoinedByString:@"\n"];
        matrix = 5.8382e-34;
        v86 = v53;
        *v87 = 2114;
        *&v87[2] = v57;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &matrix, 0x16u);
      }
    }

    else if (v43)
    {
      v44 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [v44 componentsJoinedByString:@"\n"];
      matrix = 5.8381e-34;
      v86 = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &matrix, 0xCu);
    }

    _NUAssertFailHandler("[NUHistogramCalculator _computeHistogramForBufferRGBAhHLG:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogramCalculator.m", 169, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "buffer != nil");
  }

  if (!a4)
  {
    v46 = NUAssertLogger_1900();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      matrix = 5.8381e-34;
      v86 = v47;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &matrix, 0xCu);
    }

    v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v49 = NUAssertLogger_1900();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    if (v48)
    {
      if (v50)
      {
        v62 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v63 = MEMORY[0x1E696AF00];
        v64 = v62;
        v65 = [v63 callStackSymbols];
        v66 = [v65 componentsJoinedByString:@"\n"];
        matrix = 5.8382e-34;
        v86 = v62;
        *v87 = 2114;
        *&v87[2] = v66;
        _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &matrix, 0x16u);
      }
    }

    else if (v50)
    {
      v51 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [v51 componentsJoinedByString:@"\n"];
      matrix = 5.8381e-34;
      v86 = v52;
      _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &matrix, 0xCu);
    }

    _NUAssertFailHandler("[NUHistogramCalculator _computeHistogramForBufferRGBAhHLG:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogramCalculator.m", 170, @"Invalid parameter not satisfying: %s", v67, v68, v69, v70, "error != NULL");
  }

  v7 = v6;
  min = self->_range.min;
  max = self->_range.max;
  v10 = [(NUImageHistogram *)[NUMutableImageHistogram alloc] initWithBinCount:self->_binCount range:min, max];
  src.data = [v7 bytes];
  [v7 size];
  src.height = v11;
  src.width = 4 * ([v7 size] & 0x3FFFFFFF);
  src.rowBytes = [v7 rowBytes];
  v12 = objc_alloc(MEMORY[0x1E695DF88]);
  [v7 size];
  v14 = [v12 initWithLength:{16 * v13 * objc_msgSend(v7, "size")}];
  dest.data = [v14 mutableBytes];
  [v7 size];
  dest.height = v15;
  dest.width = 4 * ([v7 size] & 0x3FFFFFFF);
  dest.rowBytes = 16 * [v7 size];
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
  if (v80[3])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithLong:?];
    *a4 = [NUError failureError:@"vImageConvert_Planar16FtoPlanarF failed" object:v16];

    v17 = 0;
  }

  else
  {
    v18 = v14;
    v78.data = [v14 mutableBytes];
    [v7 size];
    v78.height = v19;
    v78.width = [v7 size];
    v78.rowBytes = 16 * [v7 size];
    v20 = v14;
    v77.data = [v14 mutableBytes];
    [v7 size];
    v77.height = v21;
    v77.width = [v7 size];
    v22 = [v7 size];
    g = self->_colorMatrix.a.g;
    r = self->_colorMatrix.r.r;
    v25 = self->_colorMatrix.r.g;
    matrix = self->_colorMatrix.a.r;
    *&v86 = r;
    v26 = self->_colorMatrix.g.g;
    v27 = self->_colorMatrix.b.r;
    v28 = self->_colorMatrix.b.g;
    HIDWORD(v86) = LODWORD(self->_colorMatrix.g.r);
    *v87 = v27;
    *&v87[4] = g;
    *&v87[8] = v25;
    v88 = v26;
    v89 = v28;
    a = self->_colorMatrix.a.a;
    b = self->_colorMatrix.r.b;
    v31 = self->_colorMatrix.r.a;
    v90 = self->_colorMatrix.a.b;
    v91 = b;
    v32 = self->_colorMatrix.g.a;
    v33 = self->_colorMatrix.b.b;
    v34 = self->_colorMatrix.b.a;
    v92 = self->_colorMatrix.g.b;
    v93 = v33;
    v94 = a;
    v95 = v31;
    v77.rowBytes = 16 * v22;
    v96 = v32;
    v97 = v34;
    v35 = vImageMatrixMultiply_ARGBFFFF(&v78, &v77, &matrix, 0, 0, 0);
    v80[3] = v35;
    if (v35)
    {
      v36 = [MEMORY[0x1E696AD98] numberWithLong:v35];
      [NUError failureError:@"vImageMatrixMultiply_ARGBFFFF failed" object:v36];
      *a4 = v17 = 0;
    }

    else
    {
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __66__NUHistogramCalculator__computeHistogramForBufferRGBAhHLG_error___block_invoke;
      v71[3] = &unk_1E8109690;
      v73 = &v79;
      v74 = v77;
      v75 = min;
      v76 = max;
      v72 = v7;
      [(NUMutableImageHistogram *)v10 write:v71];
      if (v80[3])
      {
        v37 = [MEMORY[0x1E696AD98] numberWithLong:?];
        *a4 = [NUError failureError:@"vImageHistogramCalculation_ARGBFFFF failed" object:v37];

        v17 = 0;
      }

      else
      {
        v17 = v10;
      }

      v36 = v72;
    }
  }

  _Block_object_dispose(&v79, 8);

  return v17;
}

uint64_t __66__NUHistogramCalculator__computeHistogramForBufferRGBAhHLG_error___block_invoke(uint64_t a1, vImagePixelCount *a2, vImagePixelCount *a3, vImagePixelCount *a4, vImagePixelCount *a5, unsigned int histogram_entries)
{
  v12 = *MEMORY[0x1E69E9840];
  histogram[0] = a5;
  histogram[1] = a2;
  histogram[2] = a3;
  histogram[3] = a4;
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  *(*(*(a1 + 40) + 8) + 24) = vImageHistogramCalculation_ARGBFFFF((a1 + 48), histogram, histogram_entries, v7, v8, 0);
  [*(a1 + 32) size];
  return [*(a1 + 32) size] * v9;
}

- (id)_computeHistogramForBufferBGRA8:(id)a3 error:(id *)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v24 = NUAssertLogger_1900();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &src, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_1900();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v38;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v42;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    _NUAssertFailHandler("[NUHistogramCalculator _computeHistogramForBufferBGRA8:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogramCalculator.m", 114, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "buffer != nil");
  }

  if (!a4)
  {
    v31 = NUAssertLogger_1900();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &src, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_1900();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        v50 = [v48 callStackSymbols];
        v51 = [v50 componentsJoinedByString:@"\n"];
        LODWORD(src.data) = 138543618;
        *(&src.data + 4) = v47;
        WORD2(src.height) = 2114;
        *(&src.height + 6) = v51;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &src, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      LODWORD(src.data) = 138543362;
      *(&src.data + 4) = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &src, 0xCu);
    }

    _NUAssertFailHandler("[NUHistogramCalculator _computeHistogramForBufferBGRA8:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogramCalculator.m", 115, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, "error != NULL");
  }

  v7 = v6;
  v8 = objc_alloc_init(NUMutableImageHistogram);
  src.data = [v7 bytes];
  [v7 size];
  src.height = v9;
  src.width = [v7 size];
  src.rowBytes = [v7 rowBytes];
  v10 = objc_alloc(MEMORY[0x1E695DF88]);
  [v7 size];
  v12 = [v10 initWithLength:{v11 * objc_msgSend(v7, "rowBytes")}];
  dest.data = [v12 mutableBytes];
  [v7 size];
  dest.height = v13;
  dest.width = [v7 size];
  dest.rowBytes = [v7 rowBytes];
  v68 = ldexpf(self->_colorMatrix.a.b, 10);
  v66 = ldexpf(self->_colorMatrix.r.b, 10);
  v64 = ldexpf(self->_colorMatrix.g.b, 10);
  v62 = ldexpf(self->_colorMatrix.b.b, 10);
  v60 = ldexpf(self->_colorMatrix.a.g, 10);
  v58 = ldexpf(self->_colorMatrix.r.g, 10);
  v56 = ldexpf(self->_colorMatrix.g.g, 10);
  v14 = ldexpf(self->_colorMatrix.b.g, 10);
  v15.i64[0] = __PAIR64__(LODWORD(v58), LODWORD(v60));
  v15.i64[1] = __PAIR64__(LODWORD(v14), LODWORD(v56));
  v16.i64[0] = __PAIR64__(LODWORD(v66), LODWORD(v68));
  v16.i64[1] = __PAIR64__(LODWORD(v62), LODWORD(v64));
  *matrix = vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(v16)), vcvtq_s32_f32(vrndxq_f32(v15)));
  v69 = ldexpf(self->_colorMatrix.a.r, 10);
  v67 = ldexpf(self->_colorMatrix.r.r, 10);
  v65 = ldexpf(self->_colorMatrix.g.r, 10);
  v63 = ldexpf(self->_colorMatrix.b.r, 10);
  v61 = ldexpf(self->_colorMatrix.a.a, 10);
  v59 = ldexpf(self->_colorMatrix.r.a, 10);
  v57 = ldexpf(self->_colorMatrix.g.a, 10);
  v17 = ldexpf(self->_colorMatrix.b.a, 10);
  v18.i64[0] = __PAIR64__(LODWORD(v59), LODWORD(v61));
  v18.i64[1] = __PAIR64__(LODWORD(v17), LODWORD(v57));
  v19.i64[0] = __PAIR64__(LODWORD(v67), LODWORD(v69));
  v19.i64[1] = __PAIR64__(LODWORD(v63), LODWORD(v65));
  v80 = vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(v19)), vcvtq_s32_f32(vrndxq_f32(v18)));
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = vImageMatrixMultiply_ARGB8888(&src, &dest, matrix, 1024, 0, 0, 0);
  if (v75[3])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithLong:?];
    [NUError failureError:@"vImageMatrixMultiply_ARGB8888 failed" object:v20];
    *a4 = v21 = 0;
  }

  else
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __63__NUHistogramCalculator__computeHistogramForBufferBGRA8_error___block_invoke;
    v70[3] = &unk_1E8109668;
    v72 = &v74;
    v73 = dest;
    v71 = v7;
    [(NUMutableImageHistogram *)v8 write:v70];
    if (v75[3])
    {
      v22 = [MEMORY[0x1E696AD98] numberWithLong:?];
      *a4 = [NUError failureError:@"vImageHistogramCalculation_ARGB8888 failed" object:v22];

      v21 = 0;
    }

    else
    {
      v21 = v8;
    }

    v20 = v71;
  }

  _Block_object_dispose(&v74, 8);

  return v21;
}

uint64_t __63__NUHistogramCalculator__computeHistogramForBufferBGRA8_error___block_invoke(uint64_t a1, vImagePixelCount *a2, vImagePixelCount *a3, vImagePixelCount *a4, vImagePixelCount *a5)
{
  v9 = *MEMORY[0x1E69E9840];
  histogram[0] = a5;
  histogram[1] = a2;
  histogram[2] = a3;
  histogram[3] = a4;
  *(*(*(a1 + 40) + 8) + 24) = vImageHistogramCalculation_ARGB8888((a1 + 48), histogram, 0);
  [*(a1 + 32) size];
  return [*(a1 + 32) size] * v6;
}

- (id)computeHistogramFromBuffer:(id)a3 error:(id *)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v19 = NUAssertLogger_1900();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      *buf = 138543362;
      v52 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_1900();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v33;
        v53 = 2114;
        v54 = v37;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHistogramCalculator computeHistogramFromBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogramCalculator.m", 58, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "buffer != nil");
  }

  if (!a4)
  {
    v26 = NUAssertLogger_1900();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v52 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_1900();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        v45 = [v43 callStackSymbols];
        v46 = [v45 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v42;
        v53 = 2114;
        v54 = v46;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUHistogramCalculator computeHistogramFromBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Histogram/NUHistogramCalculator.m", 59, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "error != NULL");
  }

  v7 = v6;
  v8 = [v6 format];
  v9 = +[NUPixelFormat BGRA8];
  v10 = [v8 isEqualToPixelFormat:v9];

  if (!v10)
  {
    v12 = [v7 format];
    v13 = +[NUPixelFormat RGBAh];
    v14 = [v12 isEqualToPixelFormat:v13];

    if (!v14)
    {
      v16 = [v7 format];
      *a4 = [NUError unsupportedError:@"Unsupported pixel format" object:v16];

      v17 = 0;
      goto LABEL_17;
    }

    if (self->_binCount >= 1)
    {
      if (self->_range.min >= 0.0 && self->_range.max <= 12.0)
      {
        v11 = [(NUHistogramCalculator *)self _computeHistogramForBufferRGBAhHLG:v7 error:a4];
        goto LABEL_21;
      }

      v15 = @"Unsupported histogram range for half float HDR image";
LABEL_16:
      [NUError unsupportedError:v15 object:self];
      *a4 = v17 = 0;
      goto LABEL_17;
    }

LABEL_13:
    v15 = @"Unsupported histogram bin count for 8-bit image";
    goto LABEL_16;
  }

  if (self->_binCount != 256)
  {
    goto LABEL_13;
  }

  if (self->_range.min != 0.0 || self->_range.max != 1.0)
  {
    v15 = @"Unsupported histogram range for 8-bit image";
    goto LABEL_16;
  }

  v11 = [(NUHistogramCalculator *)self _computeHistogramForBufferBGRA8:v7 error:a4];
LABEL_21:
  v17 = v11;
LABEL_17:

  return v17;
}

- (NUHistogramCalculator)init
{
  v3.receiver = self;
  v3.super_class = NUHistogramCalculator;
  result = [(NUHistogramCalculator *)&v3 init];
  result->_range = xmmword_1C03C2760;
  result->_colorMatrix.r = NUStandardLuminanceColorMatrix;
  result->_colorMatrix.g = unk_1C03C4250;
  result->_colorMatrix.b = xmmword_1C03C4260;
  result->_binCount = 256;
  result->_colorMatrix.a = unk_1C03C4270;
  return result;
}

@end