@interface _NUFixedTileSizeImageLayout
- ($0AC6E346AE4835514AAA8AC86D8F4844)borderSize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)tileCounts;
- ($0AC6E346AE4835514AAA8AC86D8F4844)tileSize;
- ($41299696D20B6C925B74A5D5E4D5CC87)contentRectForTileAtIndex:(SEL)a3;
- ($41299696D20B6C925B74A5D5E4D5CC87)frameRectForTileAtIndex:(SEL)a3;
- (BOOL)isEqualToLayout:(id)a3;
- (_NUFixedTileSizeImageLayout)initWithImageSize:(id)a3 tileSize:(id)a4 borderSize:(id)a5;
- (id)tileInfoAtIndex:(int64_t)a3;
@end

@implementation _NUFixedTileSizeImageLayout

- (BOOL)isEqualToLayout:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _NUFixedTileSizeImageLayout;
  v7 = [(NUImageLayout *)&v10 isEqualToLayout:v4]&& (self->_tileSize.width == v4[3] ? (v5 = self->_tileSize.height == v4[4]) : (v5 = 0), v5 && (self->_borderSize.width == v4[5] ? (v6 = self->_borderSize.height == v4[6]) : (v6 = 0), v6)) && self->_tileCounts.width == v4[7] && self->_tileCounts.height == v4[8];

  return v7;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)tileCounts
{
  p_tileCounts = &self->_tileCounts;
  width = self->_tileCounts.width;
  height = p_tileCounts->height;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)borderSize
{
  p_borderSize = &self->_borderSize;
  width = self->_borderSize.width;
  height = p_borderSize->height;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)tileSize
{
  p_tileSize = &self->_tileSize;
  width = self->_tileSize.width;
  height = p_tileSize->height;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (id)tileInfoAtIndex:(int64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3 < 0 || [(_NUFixedTileSizeImageLayout *)self tileCount]<= a3)
  {
    v8 = NUAssertLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "(tileIndex >= 0) && (tileIndex < self.tileCount)"];
      *buf = 138543362;
      *&buf[4] = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = [MEMORY[0x1E696AF00] callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v15;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUFixedTileSizeImageLayout tileInfoAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", 331, @"Invalid parameter not satisfying: %s", v18, v19, v20, v21, "(tileIndex >= 0) && (tileIndex < self.tileCount)");
  }

  memset(buf, 0, 32);
  [(_NUFixedTileSizeImageLayout *)self frameRectForTileAtIndex:a3];
  v5 = *&buf[16];
  v23[0] = *buf;
  v23[1] = *&buf[16];
  [(_NUFixedTileSizeImageLayout *)self contentRectForTileAtIndex:a3];
  v6 = [NUTileInfo tileInfoWithIndex:a3 size:v5 frameRect:v23 contentRect:v22];

  return v6;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)contentRectForTileAtIndex:(SEL)a3
{
  v44 = *MEMORY[0x1E69E9840];
  if (a4 < 0 || [(_NUFixedTileSizeImageLayout *)self tileCount]<= a4)
  {
    v23 = NUAssertLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "(tileIndex >= 0) && (tileIndex < self.tileCount)"];
      *buf = 138543362;
      v41 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = [MEMORY[0x1E696AF00] callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v30;
        v42 = 2114;
        v43 = v32;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUFixedTileSizeImageLayout contentRectForTileAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", 301, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "(tileIndex >= 0) && (tileIndex < self.tileCount)");
  }

  width = self->_tileCounts.width;
  v8 = a4 / width;
  v39 = a4 / width * width;
  v10 = self->_borderSize.width;
  height = self->_borderSize.height;
  v11 = self->_tileSize.width - 2 * v10;
  v38 = a4 % width;
  v12 = a4 % width + 1;
  v13 = self->_tileSize.height - 2 * height;
  v14 = a4 / width + 1;
  v15 = height + v13 * v14;
  if (v12 == width)
  {
    v37 = self->_tileSize.width - 2 * v10;
    result = [(NUImageLayout *)self imageSize];
    v11 = v37;
  }

  else
  {
    result = (v10 + v11 * v12);
  }

  if (v14 == self->_tileCounts.height)
  {
    v17 = result;
    v18 = self;
    v19 = v11;
    [(NUImageLayout *)v18 imageSize];
    result = v17;
    v11 = v19;
    v15 = v20;
  }

  v21 = height + v13 * v8;
  if (!v8)
  {
    v21 = 0;
  }

  v22 = v10 + v11 * v38;
  if (a4 == v39)
  {
    v22 = 0;
  }

  retstr->var0.var0 = v22;
  retstr->var0.var1 = v21;
  retstr->var1.var0 = result - v22;
  retstr->var1.var1 = v15 - v21;
  return result;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)frameRectForTileAtIndex:(SEL)a3
{
  v39 = *MEMORY[0x1E69E9840];
  if (a4 < 0 || [(_NUFixedTileSizeImageLayout *)self tileCount]<= a4)
  {
    v21 = NUAssertLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "(tileIndex >= 0) && (tileIndex < self.tileCount)"];
      *buf = 138543362;
      v36 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = [MEMORY[0x1E696AF00] callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v28;
        v37 = 2114;
        v38 = v30;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUFixedTileSizeImageLayout frameRectForTileAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", 286, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "(tileIndex >= 0) && (tileIndex < self.tileCount)");
  }

  width = self->_tileCounts.width;
  v8 = a4 / width;
  v9 = self->_tileSize.width;
  v10 = (v9 - 2 * self->_borderSize.width) * (a4 % width);
  v11 = v10 & ~(v10 >> 63);
  v12 = v11 + v9;
  v13 = [(NUImageLayout *)self imageSize];
  if (v13 < v12)
  {
    v12 = v13;
  }

  height = self->_tileSize.height;
  v15 = (height - 2 * self->_borderSize.height) * v8;
  v16 = v15 & ~(v15 >> 63);
  v17 = v16 + height;
  result = [(NUImageLayout *)self imageSize];
  if (v19 >= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  retstr->var0.var0 = v11;
  retstr->var0.var1 = v16;
  retstr->var1.var0 = v12 - v11;
  retstr->var1.var1 = v20 - v16;
  return result;
}

- (_NUFixedTileSizeImageLayout)initWithImageSize:(id)a3 tileSize:(id)a4 borderSize:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a4.var0 || (var1 = a4.var1) == 0)
  {
    v20 = NUAssertLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "!NUPixelSizeIsEmpty(tileSize)"];
      *buf = 138543362;
      v48 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = [MEMORY[0x1E696AF00] callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v33;
        v49 = 2114;
        v50 = v35;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v36 = "!NUPixelSizeIsEmpty(tileSize)";
    v37 = 269;
LABEL_24:

    _NUAssertFailHandler("[_NUFixedTileSizeImageLayout initWithImageSize:tileSize:borderSize:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", v37, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, v36);
  }

  var0 = a5.var0;
  v7 = a4.var0;
  if (a4.var0 <= 2 * a5.var0 || (v8 = a5.var1, v9 = a5.var1, v9 + v9 >= a4.var1))
  {
    v27 = NUAssertLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "tileSize.width > (2 * borderSize.width) && tileSize.height > (2.0 * borderSize.height)"];
      *buf = 138543362;
      v48 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger();
    v30 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v30)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = [MEMORY[0x1E696AF00] callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v38;
        v49 = 2114;
        v50 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v32;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v36 = "tileSize.width > (2 * borderSize.width) && tileSize.height > (2.0 * borderSize.height)";
    v37 = 270;
    goto LABEL_24;
  }

  v10 = a3.var1;
  v11 = a3.var0;
  v45 = a5.var1;
  v46.receiver = self;
  v46.super_class = _NUFixedTileSizeImageLayout;
  result = [(NUImageLayout *)&v46 initWithImageSize:a4.var1, v9 + v9];
  if (result)
  {
    result->_tileSize.width = v7;
    result->_tileSize.height = var1;
    result->_borderSize.width = var0;
    result->_borderSize.height = v8;
    v13.i64[0] = v11;
    v13.i64[1] = v10;
    v14.f64[0] = var0;
    v14.f64[1] = v45;
    __asm { FMOV            V3.2D, #-2.0 }

    result->_tileCounts = vcvtq_s64_f64(vrndpq_f64(vdivq_f64(vmaxnmq_f64(vmlaq_f64(vcvtq_f64_s64(v13), _Q3, v14), vdupq_n_s64(0x3FB999999999999AuLL)), vmlaq_f64(vcvtq_f64_s64(result->_tileSize), _Q3, v14))));
  }

  return result;
}

@end