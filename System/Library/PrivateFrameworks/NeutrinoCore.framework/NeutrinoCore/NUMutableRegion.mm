@interface NUMutableRegion
- (id)copyWithZone:(_NSZone *)zone;
- (void)addRect:(id *)rect;
- (void)addRegion:(id)region;
- (void)clipToRect:(id *)rect;
- (void)clipToRegion:(id)region;
- (void)diffWithRect:(id *)rect;
- (void)diffWithRegion:(id)region;
- (void)flipInRect:(id *)rect;
- (void)growBy:(id)by;
- (void)growBy:(id)by inRect:(id *)rect;
- (void)removeRect:(id *)rect;
- (void)removeRegion:(id)region;
- (void)setRegion:(id)region;
- (void)shrinkBy:(id)by;
- (void)shrinkBy:(id)by inRect:(id *)rect;
@end

@implementation NUMutableRegion

- (void)shrinkBy:(id)by inRect:(id *)rect
{
  v21 = *MEMORY[0x1E69E9840];
  if (by.var0 < 0 || by.var1 < 0)
  {
    v6 = NUAssertLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "delta.x >= 0 && delta.y >= 0"];
      *buf = 138543362;
      *&buf[4] = v7;
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
        *&buf[4] = v13;
        *&buf[12] = 2114;
        *&buf[14] = v15;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableRegion shrinkBy:inRect:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Region/NURegion.mm", 1001, @"Invalid parameter not satisfying: %s", v16, v17, v18, v19, "delta.x >= 0 && delta.y >= 0");
  }

  imp = self->super._imp;
  var1 = rect->var1;
  *buf = rect->var0;
  *&buf[16] = var1;
  NU::Region::shrinkInRect(imp, by.var0, by.var1, buf);
}

- (void)shrinkBy:(id)by
{
  v22 = *MEMORY[0x1E69E9840];
  if (by.var0 < 0 || by.var1 < 0)
  {
    v4 = NUAssertLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "delta.x >= 0 && delta.y >= 0"];
      *buf = 138543362;
      v19 = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v19 = v11;
        v20 = 2114;
        v21 = v13;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v8)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v19 = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableRegion shrinkBy:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Region/NURegion.mm", 994, @"Invalid parameter not satisfying: %s", v14, v15, v16, v17, "delta.x >= 0 && delta.y >= 0");
  }

  imp = self->super._imp;

  NU::Region::shrink(imp, by.var0, by.var1);
}

- (void)growBy:(id)by inRect:(id *)rect
{
  v21 = *MEMORY[0x1E69E9840];
  if (by.var0 < 0 || by.var1 < 0)
  {
    v6 = NUAssertLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "delta.x >= 0 && delta.y >= 0"];
      *buf = 138543362;
      *&buf[4] = v7;
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
        *&buf[4] = v13;
        *&buf[12] = 2114;
        *&buf[14] = v15;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableRegion growBy:inRect:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Region/NURegion.mm", 987, @"Invalid parameter not satisfying: %s", v16, v17, v18, v19, "delta.x >= 0 && delta.y >= 0");
  }

  imp = self->super._imp;
  var1 = rect->var1;
  *buf = rect->var0;
  *&buf[16] = var1;
  NU::Region::grow(imp, by.var0, by.var1);
  NU::Region::clip(imp, buf);
}

- (void)growBy:(id)by
{
  v22 = *MEMORY[0x1E69E9840];
  if (by.var0 < 0 || by.var1 < 0)
  {
    v4 = NUAssertLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "delta.x >= 0 && delta.y >= 0"];
      *buf = 138543362;
      v19 = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v19 = v11;
        v20 = 2114;
        v21 = v13;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v8)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v19 = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableRegion growBy:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Region/NURegion.mm", 980, @"Invalid parameter not satisfying: %s", v14, v15, v16, v17, "delta.x >= 0 && delta.y >= 0");
  }

  imp = self->super._imp;

  NU::Region::grow(imp, by.var0, by.var1);
}

- (void)setRegion:(id)region
{
  regionCopy = region;
  v4 = regionCopy[1];
  imp = self->super._imp;
  if (imp != v4)
  {
    imp[8] = *(v4 + 32);
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<NU::RegionRect,void *> *>>(imp, *(v4 + 16));
  }
}

- (void)flipInRect:(id *)rect
{
  imp = self->super._imp;
  var1 = rect->var1;
  v5[0] = rect->var0;
  v5[1] = var1;
  NU::Region::flipInRect(imp, v5);
}

- (void)diffWithRegion:(id)region
{
  if (region)
  {
    NU::Region::diff(self->super._imp, *(region + 1));
  }
}

- (void)diffWithRect:(id *)rect
{
  imp = self->super._imp;
  var1 = rect->var1;
  v5[0] = rect->var0;
  v5[1] = var1;
  NU::Region::diff(imp, v5);
}

- (void)clipToRegion:(id)region
{
  if (region)
  {
    NU::Region::clip(self->super._imp, *(region + 1));
  }
}

- (void)clipToRect:(id *)rect
{
  imp = self->super._imp;
  var1 = rect->var1;
  v5[0] = rect->var0;
  v5[1] = var1;
  NU::Region::clip(imp, v5);
}

- (void)removeRegion:(id)region
{
  if (region)
  {
    imp = self->super._imp;
    NU::Region::breakRects(*(region + 1), imp);

    NU::Region::mergeRectsVertically(imp);
  }
}

- (void)addRegion:(id)region
{
  if (region)
  {
    NU::Region::add(self->super._imp, *(region + 1));
  }
}

- (void)removeRect:(id *)rect
{
  imp = self->super._imp;
  var1 = rect->var1;
  v5[0] = rect->var0;
  v5[1] = var1;
  NU::Region::remove(imp, v5);
}

- (void)addRect:(id *)rect
{
  imp = self->super._imp;
  var1 = rect->var1;
  v5[0] = rect->var0;
  v5[1] = var1;
  NU::Region::add(imp, v5);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NURegion allocWithZone:zone];

  return [(NURegion *)v4 initWithRegion:self];
}

@end