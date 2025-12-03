@interface NURegion
+ (NURegion)regionWithRect:(id *)rect;
+ (NURegion)regionWithRegion:(id)region;
+ (id)region;
- ($41299696D20B6C925B74A5D5E4D5CC87)bounds;
- (BOOL)includesRect:(id *)rect;
- (BOOL)intersectsRect:(id *)rect;
- (BOOL)intersectsRegion:(id)region;
- (BOOL)isEqual:(id)equal;
- (NURegion)init;
- (NURegion)initWithRect:(id *)rect;
- (NURegion)initWithRegion:(id)region;
- (NURegion)regionWithSubregionsOfMinimumDensity:(double)density;
- (double)area;
- (double)density;
- (id)convertImageRegion:(id)region fromRect:(id *)rect toRect:(id *)toRect;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)regionByAddingRect:(id *)rect;
- (id)regionByAddingRegion:(id)region;
- (id)regionByApplyingAffineTransform:(CGAffineTransform *)transform roundPolicy:(int64_t)policy;
- (id)regionByApplyingOrientation:(int64_t)orientation imageSize:(id)size;
- (id)regionByClippingToRect:(id *)rect;
- (id)regionByClippingToRegion:(id)region;
- (id)regionByExcludingRect:(id *)rect;
- (id)regionByExcludingRegion:(id)region;
- (id)regionByFlippingInRect:(id *)rect;
- (id)regionByGrowingBy:(id)by;
- (id)regionByGrowingBy:(id)by inRect:(id *)rect;
- (id)regionByRemovingRect:(id *)rect;
- (id)regionByRemovingRegion:(id)region;
- (id)regionByScalingBy:(CGPoint)by withRounding:(int64_t)rounding;
- (id)regionByShrinkingBy:(id)by;
- (id)regionByShrinkingBy:(id)by inRect:(id *)rect;
- (id)regionByTranslatingBy:(id)by;
- (void)dealloc;
- (void)enumerateRects:(id)rects;
@end

@implementation NURegion

- (double)density
{
  isEmpty = [(NURegion *)self isEmpty];
  result = 1.0;
  if (!isEmpty)
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

- (BOOL)includesRect:(id *)rect
{
  imp = self->_imp;
  var1 = rect->var1;
  v6[0] = rect->var0;
  v6[1] = var1;
  return NU::Region::includes(imp, v6);
}

- (BOOL)intersectsRegion:(id)region
{
  if (region)
  {
    return NU::Region::intersects(self->_imp, *(region + 1));
  }

  else
  {
    return 0;
  }
}

- (BOOL)intersectsRect:(id *)rect
{
  imp = self->_imp;
  var1 = rect->var1;
  v6[0] = rect->var0;
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

- (void)enumerateRects:(id)rects
{
  rectsCopy = rects;
  for (i = *(self->_imp + 2); i; i = *i)
  {
    v6 = *(i + 2);
    v7[0] = *(i + 1);
    v7[1] = v6;
    rectsCopy[2](rectsCopy, v7);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy isEqualToRegion:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NUMutableRegion allocWithZone:zone];

  return [(NURegion *)v4 initWithRegion:self];
}

+ (NURegion)regionWithRegion:(id)region
{
  regionCopy = region;
  v5 = [[self alloc] initWithRegion:regionCopy];

  return v5;
}

+ (NURegion)regionWithRect:(id *)rect
{
  v4 = [self alloc];
  var1 = rect->var1;
  v8[0] = rect->var0;
  v8[1] = var1;
  v6 = [v4 initWithRect:v8];

  return v6;
}

+ (id)region
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)description
{
  array = [MEMORY[0x1E695DF70] array];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __23__NURegion_description__block_invoke;
  v11[3] = &unk_1E810B178;
  v4 = array;
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

- (NURegion)initWithRegion:(id)region
{
  v25 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  if (!regionCopy)
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
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v13;
        v23 = 2114;
        v24 = v15;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

- (NURegion)initWithRect:(id *)rect
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

- (NURegion)regionWithSubregionsOfMinimumDensity:(double)density
{
  v51 = *MEMORY[0x1E69E9840];
  if (density < 0.0 || density > 1.0)
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
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = v38;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURegion(Mutability) regionWithSubregionsOfMinimumDensity:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Region/NURegion.mm", 1193, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "0.0 <= density && density <= 1.0");
  }

  v6 = objc_alloc_init(NUMutableRegion);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
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

    lastObject = [v7 lastObject];
    [v7 removeLastObject];
    [lastObject density];
    if (v10 >= density)
    {
      if (lastObject)
      {
        [lastObject bounds];
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
      if (lastObject)
      {
        [lastObject bounds];
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
      v15 = [lastObject regionByClippingToRect:&v46];
      [v7 addObject:v15];

      v16 = v14 + v11;
      v17 = *&buf[24] - v14;
      v46 = v12;
      v47 = v16;
      v48 = v13;
      v49 = v17;
      v18 = [lastObject regionByClippingToRect:&v46];
      [v7 addObject:v18];

      v19 = v13 + v12;
      v20 = *&buf[16] - v13;
      v46 = v19;
      v47 = v16;
      v48 = v20;
      v49 = v17;
      v21 = [lastObject regionByClippingToRect:&v46];
      [v7 addObject:v21];

      v46 = v19;
      v47 = *&buf[8];
      v48 = v20;
      v49 = v16 - *&buf[8];
      v22 = [lastObject regionByClippingToRect:&v46];
      [v7 addObject:v22];
    }
  }

  v23 = objc_alloc_init(NUMutableRegion);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __61__NURegion_Mutability__regionWithSubregionsOfMinimumDensity___block_invoke;
  v44[3] = &unk_1E810B1A0;
  v44[4] = selfCopy;
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

- (id)convertImageRegion:(id)region fromRect:(id *)rect toRect:(id *)toRect
{
  var0 = toRect->var1.var0;
  var1 = toRect->var1.var1;
  v9 = rect->var1.var0;
  v10 = rect->var1.var1;
  v11 = [region mutableCopy];
  [v11 translateBy:{-rect->var0.var0, -rect->var0.var1}];
  [v11 scaleBy:2 withRounding:{var0 / v9, var1 / v10}];
  [v11 translateBy:{toRect->var0.var0, toRect->var0.var1}];

  return v11;
}

- (id)regionByFlippingInRect:(id *)rect
{
  v4 = [(NURegion *)self mutableCopy];
  var1 = rect->var1;
  v7[0] = rect->var0;
  v7[1] = var1;
  [v4 flipInRect:v7];

  return v4;
}

- (id)regionByApplyingAffineTransform:(CGAffineTransform *)transform roundPolicy:(int64_t)policy
{
  v6 = [(NURegion *)self mutableCopy];
  v7 = *&transform->c;
  v9[0] = *&transform->a;
  v9[1] = v7;
  v9[2] = *&transform->tx;
  [v6 applyAffineTransform:v9 roundPolicy:policy];

  return v6;
}

- (id)regionByApplyingOrientation:(int64_t)orientation imageSize:(id)size
{
  var1 = size.var1;
  var0 = size.var0;
  v7 = [(NURegion *)self mutableCopy];
  [v7 applyOrientation:orientation imageSize:{var0, var1}];

  return v7;
}

- (id)regionByShrinkingBy:(id)by inRect:(id *)rect
{
  var1 = by.var1;
  var0 = by.var0;
  v7 = [(NURegion *)self mutableCopy];
  v8 = rect->var1;
  v10[0] = rect->var0;
  v10[1] = v8;
  [v7 shrinkBy:var0 inRect:{var1, v10}];

  return v7;
}

- (id)regionByShrinkingBy:(id)by
{
  var1 = by.var1;
  var0 = by.var0;
  v5 = [(NURegion *)self mutableCopy];
  [v5 shrinkBy:{var0, var1}];

  return v5;
}

- (id)regionByGrowingBy:(id)by inRect:(id *)rect
{
  var1 = by.var1;
  var0 = by.var0;
  v7 = [(NURegion *)self mutableCopy];
  v8 = rect->var1;
  v10[0] = rect->var0;
  v10[1] = v8;
  [v7 growBy:var0 inRect:{var1, v10}];

  return v7;
}

- (id)regionByGrowingBy:(id)by
{
  var1 = by.var1;
  var0 = by.var0;
  v5 = [(NURegion *)self mutableCopy];
  [v5 growBy:{var0, var1}];

  return v5;
}

- (id)regionByTranslatingBy:(id)by
{
  var1 = by.var1;
  var0 = by.var0;
  v5 = [(NURegion *)self mutableCopy];
  [v5 translateBy:{var0, var1}];

  return v5;
}

- (id)regionByScalingBy:(CGPoint)by withRounding:(int64_t)rounding
{
  y = by.y;
  x = by.x;
  v7 = [(NURegion *)self mutableCopy];
  [v7 scaleBy:rounding withRounding:{x, y}];

  return v7;
}

- (id)regionByExcludingRegion:(id)region
{
  regionCopy = region;
  v5 = [(NURegion *)self mutableCopy];
  [v5 diffWithRegion:regionCopy];

  return v5;
}

- (id)regionByExcludingRect:(id *)rect
{
  v4 = [(NURegion *)self mutableCopy];
  var1 = rect->var1;
  v7[0] = rect->var0;
  v7[1] = var1;
  [v4 diffWithRect:v7];

  return v4;
}

- (id)regionByClippingToRegion:(id)region
{
  regionCopy = region;
  v5 = [(NURegion *)self mutableCopy];
  [v5 clipToRegion:regionCopy];

  return v5;
}

- (id)regionByClippingToRect:(id *)rect
{
  v4 = [(NURegion *)self mutableCopy];
  var1 = rect->var1;
  v7[0] = rect->var0;
  v7[1] = var1;
  [v4 clipToRect:v7];

  return v4;
}

- (id)regionByRemovingRegion:(id)region
{
  regionCopy = region;
  v5 = [(NURegion *)self mutableCopy];
  [v5 removeRegion:regionCopy];

  return v5;
}

- (id)regionByRemovingRect:(id *)rect
{
  v4 = [(NURegion *)self mutableCopy];
  var1 = rect->var1;
  v7[0] = rect->var0;
  v7[1] = var1;
  [v4 removeRect:v7];

  return v4;
}

- (id)regionByAddingRegion:(id)region
{
  regionCopy = region;
  v5 = [(NURegion *)self mutableCopy];
  [v5 addRegion:regionCopy];

  return v5;
}

- (id)regionByAddingRect:(id *)rect
{
  v4 = [(NURegion *)self mutableCopy];
  var1 = rect->var1;
  v7[0] = rect->var0;
  v7[1] = var1;
  [v4 addRect:v7];

  return v4;
}

@end