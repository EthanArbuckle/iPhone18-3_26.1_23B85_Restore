@interface _NUContiguousImageLayout
- ($0AC6E346AE4835514AAA8AC86D8F4844)borderSize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)tileCounts;
- ($41299696D20B6C925B74A5D5E4D5CC87)contentRectForTileAtIndex:(SEL)index;
- (id)tileInfoAtIndex:(int64_t)index;
- (int64_t)tileIndexAtPoint:(id)point;
- (void)enumerateTilesForReadingInRect:(id *)rect withBlock:(id)block;
- (void)enumerateTilesForWritingInRect:(id *)rect withBlock:(id)block;
@end

@implementation _NUContiguousImageLayout

- ($0AC6E346AE4835514AAA8AC86D8F4844)tileCounts
{
  v2 = 1;
  v3 = 1;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)borderSize
{
  v2 = 0;
  v3 = 0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)enumerateTilesForWritingInRect:(id *)rect withBlock:(id)block
{
  var1 = rect->var1;
  v5[0] = rect->var0;
  v5[1] = var1;
  [(_NUContiguousImageLayout *)self enumerateTilesForReadingInRect:v5 withBlock:block];
}

- (void)enumerateTilesForReadingInRect:(id *)rect withBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy)
  {
    v12 = NUAssertLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2114;
        *&buf[14] = v21;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUContiguousImageLayout enumerateTilesForReadingInRect:withBlock:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", 232, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "block != nil");
  }

  *&v7 = [(NUImageLayout *)self imageSize];
  *(&v7 + 1) = v8;
  var0 = rect->var0;
  var1 = rect->var1;
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = v7;
  v29[0] = var0;
  v29[1] = var1;
  NU::RectT<long>::Intersection(v26, buf, v29);
  if (v27 && v28)
  {
    buf[0] = 0;
    v11 = [(_NUContiguousImageLayout *)self tileInfoAtIndex:0];
    blockCopy[2](blockCopy, v11, buf);
  }
}

- (int64_t)tileIndexAtPoint:(id)point
{
  var1 = point.var1;
  var0 = point.var0;
  imageSize = [(NUImageLayout *)self imageSize];
  if (var1 >= v6)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  if (var0 >= imageSize || (var0 | var1) < 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

- (id)tileInfoAtIndex:(int64_t)index
{
  v24 = *MEMORY[0x1E69E9840];
  if (index < 0 || [(_NUContiguousImageLayout *)self tileCount]<= index)
  {
    v7 = NUAssertLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "(tileIndex >= 0) && (tileIndex < self.tileCount)"];
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v14;
        *&buf[12] = 2114;
        *&buf[14] = v16;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUContiguousImageLayout tileInfoAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", 218, @"Invalid parameter not satisfying: %s", v17, v18, v19, v20, "(tileIndex >= 0) && (tileIndex < self.tileCount)");
  }

  memset(buf, 0, 32);
  [(_NUContiguousImageLayout *)self contentRectForTileAtIndex:index];
  v22[0] = *buf;
  v22[1] = *&buf[16];
  v21[0] = *buf;
  v21[1] = *&buf[16];
  v5 = [NUTileInfo tileInfoWithIndex:index size:*&buf[16] frameRect:v22 contentRect:v21];

  return v5;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)contentRectForTileAtIndex:(SEL)index
{
  v26 = *MEMORY[0x1E69E9840];
  if (a4 < 0 || [(_NUContiguousImageLayout *)self tileCount]<= a4)
  {
    v8 = NUAssertLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "(tileIndex >= 0) && (tileIndex < self.tileCount)"];
      *buf = 138543362;
      v23 = v9;
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
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v17 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v15;
        v24 = 2114;
        v25 = v17;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUContiguousImageLayout contentRectForTileAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", 213, @"Invalid parameter not satisfying: %s", v18, v19, v20, v21, "(tileIndex >= 0) && (tileIndex < self.tileCount)");
  }

  retstr->var0.var0 = 0;
  retstr->var0.var1 = 0;
  result = [(NUImageLayout *)self imageSize];
  retstr->var1.var0 = result;
  retstr->var1.var1 = v7;
  return result;
}

@end