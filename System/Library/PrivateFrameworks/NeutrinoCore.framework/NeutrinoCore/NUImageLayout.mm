@interface NUImageLayout
+ (id)contiguousLayoutForImageSize:(id)a3;
+ (id)overlappingTiledLayoutForImageSize:(id)a3 tileSize:(id)a4 borderSize:(id)a5;
+ (id)stripLayoutForImageSize:(id)a3 stripHeight:(int64_t)a4;
+ (id)tiledLayoutForImageSize:(id)a3 tileSize:(id)a4;
- ($0AC6E346AE4835514AAA8AC86D8F4844)borderSize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)imageSize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)tileCounts;
- ($41299696D20B6C925B74A5D5E4D5CC87)contentRectForTileAtIndex:(SEL)a3;
- ($41299696D20B6C925B74A5D5E4D5CC87)frameRectForTileAtIndex:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLayout:(id)a3;
- (NUImageLayout)initWithImageSize:(id)a3;
- (id)tileInfoAtIndex:(int64_t)a3;
- (int64_t)tileCount;
- (int64_t)tileIndexAtPoint:(id)a3;
- (unint64_t)hash;
- (void)enumerateTilesForReadingInRect:(id *)a3 withBlock:(id)a4;
- (void)enumerateTilesForWritingInRect:(id *)a3 withBlock:(id)a4;
@end

@implementation NUImageLayout

- ($0AC6E346AE4835514AAA8AC86D8F4844)imageSize
{
  height = self->_imageSize.height;
  width = self->_imageSize.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (BOOL)isEqualToLayout:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(NUImageLayout *)self imageSize];
    v8 = v7;
    v11 = v6 == [(NUImageLayout *)v5 imageSize]&& v8 == v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 == self || [(NUImageLayout *)self isEqualToLayout:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = 0x1BB0CD58560A4FLL * [(NUImageLayout *)self imageSize];
  [(NUImageLayout *)self imageSize];
  return (0xF972516339251 * v4) ^ v3;
}

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

- (void)enumerateTilesForWritingInRect:(id *)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = [(NUImageLayout *)self tileCount];
  v20 = 0;
  v8 = v7 - 1;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [(NUImageLayout *)self tileInfoAtIndex:v9, v18, v19];
      v11 = v10;
      if (v10)
      {
        [v10 frameRect];
        v13 = v18;
        v12 = v19;
      }

      else
      {
        v12 = 0uLL;
        v18 = 0u;
        v19 = 0u;
        v13 = 0uLL;
      }

      var0 = a3->var0;
      var1 = a3->var1;
      v25[0] = v13;
      v25[1] = v12;
      v24[0] = var0;
      v24[1] = var1;
      NU::RectT<long>::Intersection(v21, v25, v24);
      if (v22 && v23)
      {
        v6[2](v6, v11, &v20);
      }

      v16 = v20;

      if (v16)
      {
        break;
      }
    }

    while (v8 != v9++);
  }
}

- (void)enumerateTilesForReadingInRect:(id *)a3 withBlock:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!v6)
  {
    v19 = NUAssertLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = [MEMORY[0x1E696AF00] callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageLayout enumerateTilesForReadingInRect:withBlock:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", 115, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "block != nil");
  }

  v7 = [(NUImageLayout *)self tileCount];
  v35 = 0;
  v8 = v7 - 1;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [(NUImageLayout *)self tileInfoAtIndex:v9];
      v11 = v10;
      if (v10)
      {
        [v10 contentRect];
        v13 = v33;
        v12 = v34;
      }

      else
      {
        v12 = 0uLL;
        v33 = 0u;
        v34 = 0u;
        v13 = 0uLL;
      }

      var0 = a3->var0;
      var1 = a3->var1;
      *buf = v13;
      *&buf[16] = v12;
      v39[0] = var0;
      v39[1] = var1;
      NU::RectT<long>::Intersection(v36, buf, v39);
      if (v37 && v38)
      {
        v6[2](v6, v11, &v35);
      }

      v16 = v35;

      v18 = v8 == v9++;
    }

    while (((v16 | v18) & 1) == 0);
  }
}

- (id)tileInfoAtIndex:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_8543);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v21 = v7;
    _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_8543);
    }

    v8 = _NUAssertLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_8543);
    }

    v8 = _NUAssertLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [v9 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v10;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  _NUAssertFailHandler("[NUImageLayout tileInfoAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", 110, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v16, v17, v18, v19, v15);
}

- (int64_t)tileIndexAtPoint:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v6[0] = a3;
  v6[1] = vdupq_n_s64(1uLL);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__NUImageLayout_tileIndexAtPoint___block_invoke;
  v5[3] = &unk_1E8109F58;
  v5[4] = &v7;
  [(NUImageLayout *)self enumerateTilesForReadingInRect:v6 withBlock:v5];
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __34__NUImageLayout_tileIndexAtPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 index];
}

- ($41299696D20B6C925B74A5D5E4D5CC87)contentRectForTileAtIndex:(SEL)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_8543);
  }

  v4 = _NUAssertLogger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v7];
    *buf = 138543362;
    v22 = v8;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_8543);
    }

    v9 = _NUAssertLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_8543);
    }

    v9 = _NUAssertLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v11;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  _NUAssertFailHandler("[NUImageLayout contentRectForTileAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", 97, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v17, v18, v19, v20, v16);
}

- ($41299696D20B6C925B74A5D5E4D5CC87)frameRectForTileAtIndex:(SEL)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_8543);
  }

  v4 = _NUAssertLogger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v7];
    *buf = 138543362;
    v22 = v8;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_8543);
    }

    v9 = _NUAssertLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_8543);
    }

    v9 = _NUAssertLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v11;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  _NUAssertFailHandler("[NUImageLayout frameRectForTileAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", 93, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v17, v18, v19, v20, v16);
}

- (int64_t)tileCount
{
  v23 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_8543);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v5];
    *buf = 138543362;
    v20 = v6;
    _os_log_error_impl(&dword_1C0184000, v2, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_8543);
    }

    v7 = _NUAssertLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_8543);
    }

    v7 = _NUAssertLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v20 = v9;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  _NUAssertFailHandler("[NUImageLayout tileCount]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", 89, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v15, v16, v17, v18, v14);
}

- (NUImageLayout)initWithImageSize:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3.var0 || (var1 = a3.var1) == 0)
  {
    v6 = NUAssertLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image size must not be empty"];
      *buf = 138543362;
      v23 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v13;
        v24 = 2114;
        v25 = v15;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUImageLayout initWithImageSize:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageLayout.mm", 80, @"Image size must not be empty", v16, v17, v18, v19, v20);
  }

  var0 = a3.var0;
  v21.receiver = self;
  v21.super_class = NUImageLayout;
  result = [(NUImageLayout *)&v21 init];
  if (result)
  {
    result->_imageSize.width = var0;
    result->_imageSize.height = var1;
  }

  return result;
}

+ (id)stripLayoutForImageSize:(id)a3 stripHeight:(int64_t)a4
{
  v4 = [[_NUStripImageLayout alloc] initWithImageSize:a3.var0 stripHeight:a3.var1, a4];

  return v4;
}

+ (id)overlappingTiledLayoutForImageSize:(id)a3 tileSize:(id)a4 borderSize:(id)a5
{
  v5 = [[_NUFixedTileSizeImageLayout alloc] initWithImageSize:a3.var0 tileSize:a3.var1 borderSize:a4.var0, a4.var1, a5.var0, a5.var1];

  return v5;
}

+ (id)tiledLayoutForImageSize:(id)a3 tileSize:(id)a4
{
  v4 = [[_NUFixedTileSizeImageLayout alloc] initWithImageSize:a3.var0 tileSize:a3.var1 borderSize:a4.var0, a4.var1, 0, 0];

  return v4;
}

+ (id)contiguousLayoutForImageSize:(id)a3
{
  v3 = [(NUImageLayout *)[_NUContiguousImageLayout alloc] initWithImageSize:a3.var0, a3.var1];

  return v3;
}

@end