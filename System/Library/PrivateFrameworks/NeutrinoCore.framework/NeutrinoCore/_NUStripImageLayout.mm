@interface _NUStripImageLayout
- ($0AC6E346AE4835514AAA8AC86D8F4844)borderSize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)tileCounts;
- ($0AC6E346AE4835514AAA8AC86D8F4844)tileSize;
- ($41299696D20B6C925B74A5D5E4D5CC87)contentRectForTileAtIndex:(SEL)index;
- (BOOL)isEqualToLayout:(id)layout;
- (_NUStripImageLayout)initWithImageSize:(id)size stripHeight:(int64_t)height;
- (id)tileInfoAtIndex:(int64_t)index;
@end

@implementation _NUStripImageLayout

- (BOOL)isEqualToLayout:(id)layout
{
  layoutCopy = layout;
  v7.receiver = self;
  v7.super_class = _NUStripImageLayout;
  v5 = [(NUImageLayout *)&v7 isEqualToLayout:layoutCopy]&& self->_stripHeight == layoutCopy[3] && self->_stripCount == layoutCopy[4];

  return v5;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)tileCounts
{
  stripCount = self->_stripCount;
  v3 = 1;
  result.var1 = stripCount;
  result.var0 = v3;
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

- ($0AC6E346AE4835514AAA8AC86D8F4844)tileSize
{
  imageSize = [(NUImageLayout *)self imageSize];
  stripHeight = self->_stripHeight;
  result.var1 = stripHeight;
  result.var0 = imageSize;
  return result;
}

- (id)tileInfoAtIndex:(int64_t)index
{
  v8 = 0u;
  v9 = 0u;
  [(_NUStripImageLayout *)self contentRectForTileAtIndex:?];
  v7[0] = v8;
  v7[1] = v9;
  v6[0] = v8;
  v6[1] = v9;
  v4 = [NUTileInfo tileInfoWithIndex:index size:v9 frameRect:v7 contentRect:v6];

  return v4;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)contentRectForTileAtIndex:(SEL)index
{
  v33 = *MEMORY[0x1E69E9840];
  if (a4 < 0 || [(_NUStripImageLayout *)self tileCount]<= a4)
  {
    v15 = NUAssertLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "(tileIndex >= 0) && (tileIndex < self.tileCount)"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v22;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUStripImageLayout contentRectForTileAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", 385, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "(tileIndex >= 0) && (tileIndex < self.tileCount)");
  }

  retstr->var0 = 0u;
  retstr->var1 = 0u;
  result = [(_NUStripImageLayout *)self tileCount];
  if (result > a4)
  {
    *&v8 = [(NUImageLayout *)self imageSize];
    *(&v8 + 1) = v9;
    v29 = v8;
    v10 = self->_stripHeight * a4;
    imageSize = [(NUImageLayout *)self imageSize];
    *&v12 = 0;
    *(&v12 + 1) = v10;
    *&v13 = imageSize;
    *(&v13 + 1) = self->_stripHeight;
    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = v29;
    v31[0] = v12;
    v31[1] = v13;
    NU::RectT<long>::Intersection(v30, buf, v31);
    v14 = v30[1];
    retstr->var0 = v30[0];
    retstr->var1 = v14;
  }

  return result;
}

- (_NUStripImageLayout)initWithImageSize:(id)size stripHeight:(int64_t)height
{
  var1 = size.var1;
  v8.receiver = self;
  v8.super_class = _NUStripImageLayout;
  result = [(NUImageLayout *)&v8 initWithImageSize:size.var0];
  if (result)
  {
    result->_stripHeight = height;
    v7 = var1 / height;
    if (var1 != var1 / height * height)
    {
      ++v7;
    }

    result->_stripCount = v7;
  }

  return result;
}

@end