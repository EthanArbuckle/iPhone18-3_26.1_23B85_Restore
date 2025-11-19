@interface NURegion
+ (NURegion)regionWithRect:(id *)a3;
+ (NURegion)regionWithRegion:(id)a3;
+ (id)region;
- ($41299696D20B6C925B74A5D5E4D5CC87)bounds;
- (BOOL)includesRect:(id *)a3;
- (BOOL)intersectsRect:(id *)a3;
- (BOOL)intersectsRegion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NURegion)init;
- (NURegion)initWithRect:(id *)a3;
- (NURegion)initWithRegion:(id)a3;
- (NURegion)regionWithSubregionsOfMinimumDensity:(double)a3;
- (double)area;
- (double)density;
- (id)convertImageRegion:(id)a3 fromRect:(id *)a4 toRect:(id *)a5;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)regionByAddingRect:(id *)a3;
- (id)regionByAddingRegion:(id)a3;
- (id)regionByApplyingAffineTransform:(CGAffineTransform *)a3 roundPolicy:(int64_t)a4;
- (id)regionByApplyingOrientation:(int64_t)a3 imageSize:(id)a4;
- (id)regionByClippingToRect:(id *)a3;
- (id)regionByClippingToRegion:(id)a3;
- (id)regionByExcludingRect:(id *)a3;
- (id)regionByExcludingRegion:(id)a3;
- (id)regionByFlippingInRect:(id *)a3;
- (id)regionByGrowingBy:(id)a3;
- (id)regionByGrowingBy:(id)a3 inRect:(id *)a4;
- (id)regionByRemovingRect:(id *)a3;
- (id)regionByRemovingRegion:(id)a3;
- (id)regionByScalingBy:(CGPoint)a3 withRounding:(int64_t)a4;
- (id)regionByShrinkingBy:(id)a3;
- (id)regionByShrinkingBy:(id)a3 inRect:(id *)a4;
- (id)regionByTranslatingBy:(id)a3;
- (void)dealloc;
- (void)enumerateRects:(id)a3;
@end

@implementation NURegion

- (double)density
{
  v3 = [(NURegion *)self isEmpty];
  result = 1.0;
  if (!v3)
  {
    [(NURegion *)self area];
    v6 = v5;
    [(NURegion *)self bounds:0];
    return v6 / 0;
  }

  return result;
}

- (double)area
{
  v2 = *(self->_imp + 2);
  if (!v2)
  {
    return 0.0;
  }

  result = 0.0;
  do
  {
    result = result + (v2[5] * v2[4]);
    v2 = *v2;
  }

  while (v2);
  return result;
}

- (BOOL)includesRect:(id *)a3
{
  imp = self->_imp;
  var1 = a3->var1;
  v6[0] = a3->var0;
  v6[1] = var1;
  return NU::Region::includes(imp, v6);
}

- (BOOL)intersectsRegion:(id)a3
{
  if (a3)
  {
    return NU::Region::intersects(self->_imp, *(a3 + 1));
  }

  else
  {
    return 0;
  }
}

- (BOOL)intersectsRect:(id *)a3
{
  imp = self->_imp;
  var1 = a3->var1;
  v6[0] = a3->var0;
  v6[1] = var1;
  return NU::Region::intersects(imp, v6);
}

- ($41299696D20B6C925B74A5D5E4D5CC87)bounds
{
  NU::Region::getBounds(self->_imp, v6);
  v5 = v6[1];
  retstr->var0 = v6[0];
  retstr->var1 = v5;
  return result;
}

- (void)enumerateRects:(id)a3
{
  v4 = a3;
  for (i = *(self->_imp + 2); i; i = *i)
  {
    v6 = *(i + 2);
    v7[0] = *(i + 1);
    v7[1] = v6;
    v4[2](v4, v7);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isEqualToRegion:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NUMutableRegion allocWithZone:a3];

  return [(NURegion *)v4 initWithRegion:self];
}

+ (NURegion)regionWithRegion:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithRegion:v4];

  return v5;
}

+ (NURegion)regionWithRect:(id *)a3
{
  v4 = [a1 alloc];
  var1 = a3->var1;
  v8[0] = a3->var0;
  v8[1] = var1;
  v6 = [v4 initWithRect:v8];

  return v6;
}

+ (id)region
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] array];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __23__NURegion_description__block_invoke;
  v11[3] = &unk_1E810B178;
  v4 = v3;
  v12 = v4;
  [(NURegion *)self enumerateRects:v11];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = [(NURegion *)self count];
  v8 = [v4 componentsJoinedByString:{@", "}];
  v9 = [v5 stringWithFormat:@"<%@:%p %lu rects: %@>", v6, self, v7, v8];

  return v9;
}

void __23__NURegion_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%ld, %ld}, {%lu, %lu}}", *a2, a2[1], a2[2], a2[3]];
  [*(a1 + 32) addObject:?];
}

- (void)dealloc
{
  imp = self->_imp;
  if (imp)
  {
    v4 = std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(imp);
    MEMORY[0x1C68D90D0](v4, 0x10A0C408EF24B1CLL);
  }

  v5.receiver = self;
  v5.super_class = NURegion;
  [(NURegion *)&v5 dealloc];
}

- (NURegion)initWithRegion:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = NUAssertLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "region != nil"];
      *buf = 138543362;
      v22 = v7;
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
        v22 = v13;
        v23 = 2114;
        v24 = v15;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURegion initWithRegion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Region/NURegion.mm", 756, @"Invalid parameter not satisfying: %s", v16, v17, v18, v19, "region != nil");
  }

  v20.receiver = self;
  v20.super_class = NURegion;
  if ([(NURegion *)&v20 init])
  {
    operator new();
  }

  return 0;
}

- (NURegion)initWithRect:(id *)a3
{
  v4.receiver = self;
  v4.super_class = NURegion;
  if ([(NURegion *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (NURegion)init
{
  v3.receiver = self;
  v3.super_class = NURegion;
  if ([(NURegion *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (NURegion)regionWithSubregionsOfMinimumDensity:(double)a3
{
  v51 = *MEMORY[0x1E69E9840];
  if (a3 < 0.0 || a3 > 1.0)
  {
    v29 = NUAssertLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "0.0 <= density && density <= 1.0"];
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = [MEMORY[0x1E696AF00] callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = v38;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURegion(Mutability) regionWithSubregionsOfMinimumDensity:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Region/NURegion.mm", 1193, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "0.0 <= density && density <= 1.0");
  }

  v6 = objc_alloc_init(NUMutableRegion);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = self;
  [v7 addObject:self];
  while ([v7 count])
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_130);
    }

    v8 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_debug_impl(&dword_1C0184000, v8, OS_LOG_TYPE_DEBUG, "Dense subregions: %@, result: %@", buf, 0x16u);
    }

    v9 = [v7 lastObject];
    [v7 removeLastObject];
    [v9 density];
    if (v10 >= a3)
    {
      if (v9)
      {
        [v9 bounds];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      [(NUMutableRegion *)v6 addRect:buf];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      if (v9)
      {
        [v9 bounds];
        v12 = *buf;
        v11 = *&buf[8];
        v13 = *&buf[16] / 2;
        v14 = *&buf[24] / 2;
      }

      else
      {
        v14 = 0;
        v13 = 0;
        v11 = 0;
        v12 = 0;
      }

      v46 = v12;
      v47 = v11;
      v48 = v13;
      v49 = v14;
      v15 = [v9 regionByClippingToRect:&v46];
      [v7 addObject:v15];

      v16 = v14 + v11;
      v17 = *&buf[24] - v14;
      v46 = v12;
      v47 = v16;
      v48 = v13;
      v49 = v17;
      v18 = [v9 regionByClippingToRect:&v46];
      [v7 addObject:v18];

      v19 = v13 + v12;
      v20 = *&buf[16] - v13;
      v46 = v19;
      v47 = v16;
      v48 = v20;
      v49 = v17;
      v21 = [v9 regionByClippingToRect:&v46];
      [v7 addObject:v21];

      v46 = v19;
      v47 = *&buf[8];
      v48 = v20;
      v49 = v16 - *&buf[8];
      v22 = [v9 regionByClippingToRect:&v46];
      [v7 addObject:v22];
    }
  }

  v23 = objc_alloc_init(NUMutableRegion);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __61__NURegion_Mutability__regionWithSubregionsOfMinimumDensity___block_invoke;
  v44[3] = &unk_1E810B1A0;
  v44[4] = v43;
  v24 = v23;
  v45 = v24;
  [(NURegion *)v6 enumerateRects:v44];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_130);
  }

  v25 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v24;
    _os_log_debug_impl(&dword_1C0184000, v25, OS_LOG_TYPE_DEBUG, "Dense subregions result: %@, optimized: %@", buf, 0x16u);
  }

  v26 = v45;
  v27 = v24;

  return v24;
}

void __61__NURegion_Mutability__regionWithSubregionsOfMinimumDensity___block_invoke(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v8 = *a2;
  v9 = v4;
  v5 = [v3 regionByClippingToRect:&v8];
  v6 = v5;
  v7 = *(a1 + 40);
  if (v5)
  {
    [v5 bounds];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  [v7 addRect:&v8];
}

- (id)convertImageRegion:(id)a3 fromRect:(id *)a4 toRect:(id *)a5
{
  var0 = a5->var1.var0;
  var1 = a5->var1.var1;
  v9 = a4->var1.var0;
  v10 = a4->var1.var1;
  v11 = [a3 mutableCopy];
  [v11 translateBy:{-a4->var0.var0, -a4->var0.var1}];
  [v11 scaleBy:2 withRounding:{var0 / v9, var1 / v10}];
  [v11 translateBy:{a5->var0.var0, a5->var0.var1}];

  return v11;
}

- (id)regionByFlippingInRect:(id *)a3
{
  v4 = [(NURegion *)self mutableCopy];
  var1 = a3->var1;
  v7[0] = a3->var0;
  v7[1] = var1;
  [v4 flipInRect:v7];

  return v4;
}

- (id)regionByApplyingAffineTransform:(CGAffineTransform *)a3 roundPolicy:(int64_t)a4
{
  v6 = [(NURegion *)self mutableCopy];
  v7 = *&a3->c;
  v9[0] = *&a3->a;
  v9[1] = v7;
  v9[2] = *&a3->tx;
  [v6 applyAffineTransform:v9 roundPolicy:a4];

  return v6;
}

- (id)regionByApplyingOrientation:(int64_t)a3 imageSize:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = [(NURegion *)self mutableCopy];
  [v7 applyOrientation:a3 imageSize:{var0, var1}];

  return v7;
}

- (id)regionByShrinkingBy:(id)a3 inRect:(id *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = [(NURegion *)self mutableCopy];
  v8 = a4->var1;
  v10[0] = a4->var0;
  v10[1] = v8;
  [v7 shrinkBy:var0 inRect:{var1, v10}];

  return v7;
}

- (id)regionByShrinkingBy:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(NURegion *)self mutableCopy];
  [v5 shrinkBy:{var0, var1}];

  return v5;
}

- (id)regionByGrowingBy:(id)a3 inRect:(id *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = [(NURegion *)self mutableCopy];
  v8 = a4->var1;
  v10[0] = a4->var0;
  v10[1] = v8;
  [v7 growBy:var0 inRect:{var1, v10}];

  return v7;
}

- (id)regionByGrowingBy:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(NURegion *)self mutableCopy];
  [v5 growBy:{var0, var1}];

  return v5;
}

- (id)regionByTranslatingBy:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(NURegion *)self mutableCopy];
  [v5 translateBy:{var0, var1}];

  return v5;
}

- (id)regionByScalingBy:(CGPoint)a3 withRounding:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(NURegion *)self mutableCopy];
  [v7 scaleBy:a4 withRounding:{x, y}];

  return v7;
}

- (id)regionByExcludingRegion:(id)a3
{
  v4 = a3;
  v5 = [(NURegion *)self mutableCopy];
  [v5 diffWithRegion:v4];

  return v5;
}

- (id)regionByExcludingRect:(id *)a3
{
  v4 = [(NURegion *)self mutableCopy];
  var1 = a3->var1;
  v7[0] = a3->var0;
  v7[1] = var1;
  [v4 diffWithRect:v7];

  return v4;
}

- (id)regionByClippingToRegion:(id)a3
{
  v4 = a3;
  v5 = [(NURegion *)self mutableCopy];
  [v5 clipToRegion:v4];

  return v5;
}

- (id)regionByClippingToRect:(id *)a3
{
  v4 = [(NURegion *)self mutableCopy];
  var1 = a3->var1;
  v7[0] = a3->var0;
  v7[1] = var1;
  [v4 clipToRect:v7];

  return v4;
}

- (id)regionByRemovingRegion:(id)a3
{
  v4 = a3;
  v5 = [(NURegion *)self mutableCopy];
  [v5 removeRegion:v4];

  return v5;
}

- (id)regionByRemovingRect:(id *)a3
{
  v4 = [(NURegion *)self mutableCopy];
  var1 = a3->var1;
  v7[0] = a3->var0;
  v7[1] = var1;
  [v4 removeRect:v7];

  return v4;
}

- (id)regionByAddingRegion:(id)a3
{
  v4 = a3;
  v5 = [(NURegion *)self mutableCopy];
  [v5 addRegion:v4];

  return v5;
}

- (id)regionByAddingRect:(id *)a3
{
  v4 = [(NURegion *)self mutableCopy];
  var1 = a3->var1;
  v7[0] = a3->var0;
  v7[1] = var1;
  [v4 addRect:v7];

  return v4;
}

@end