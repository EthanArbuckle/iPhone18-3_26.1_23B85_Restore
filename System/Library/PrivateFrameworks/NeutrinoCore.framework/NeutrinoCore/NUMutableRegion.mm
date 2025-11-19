@interface NUMutableRegion
- (id)copyWithZone:(_NSZone *)a3;
- (void)addRect:(id *)a3;
- (void)addRegion:(id)a3;
- (void)clipToRect:(id *)a3;
- (void)clipToRegion:(id)a3;
- (void)diffWithRect:(id *)a3;
- (void)diffWithRegion:(id)a3;
- (void)flipInRect:(id *)a3;
- (void)growBy:(id)a3;
- (void)growBy:(id)a3 inRect:(id *)a4;
- (void)removeRect:(id *)a3;
- (void)removeRegion:(id)a3;
- (void)setRegion:(id)a3;
- (void)shrinkBy:(id)a3;
- (void)shrinkBy:(id)a3 inRect:(id *)a4;
@end

@implementation NUMutableRegion

- (void)shrinkBy:(id)a3 inRect:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3.var0 < 0 || a3.var1 < 0)
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
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v13;
        *&buf[12] = 2114;
        *&buf[14] = v15;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableRegion shrinkBy:inRect:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Region/NURegion.mm", 1001, @"Invalid parameter not satisfying: %s", v16, v17, v18, v19, "delta.x >= 0 && delta.y >= 0");
  }

  imp = self->super._imp;
  var1 = a4->var1;
  *buf = a4->var0;
  *&buf[16] = var1;
  NU::Region::shrinkInRect(imp, a3.var0, a3.var1, buf);
}

- (void)shrinkBy:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3.var0 < 0 || a3.var1 < 0)
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
        v12 = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [v12 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v19 = v11;
        v20 = 2114;
        v21 = v13;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v8)
    {
      v9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [v9 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v19 = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableRegion shrinkBy:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Region/NURegion.mm", 994, @"Invalid parameter not satisfying: %s", v14, v15, v16, v17, "delta.x >= 0 && delta.y >= 0");
  }

  imp = self->super._imp;

  NU::Region::shrink(imp, a3.var0, a3.var1);
}

- (void)growBy:(id)a3 inRect:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3.var0 < 0 || a3.var1 < 0)
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
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v13;
        *&buf[12] = 2114;
        *&buf[14] = v15;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableRegion growBy:inRect:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Region/NURegion.mm", 987, @"Invalid parameter not satisfying: %s", v16, v17, v18, v19, "delta.x >= 0 && delta.y >= 0");
  }

  imp = self->super._imp;
  var1 = a4->var1;
  *buf = a4->var0;
  *&buf[16] = var1;
  NU::Region::grow(imp, a3.var0, a3.var1);
  NU::Region::clip(imp, buf);
}

- (void)growBy:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3.var0 < 0 || a3.var1 < 0)
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
        v12 = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [v12 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v19 = v11;
        v20 = 2114;
        v21 = v13;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v8)
    {
      v9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [v9 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v19 = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableRegion growBy:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Region/NURegion.mm", 980, @"Invalid parameter not satisfying: %s", v14, v15, v16, v17, "delta.x >= 0 && delta.y >= 0");
  }

  imp = self->super._imp;

  NU::Region::grow(imp, a3.var0, a3.var1);
}

- (void)setRegion:(id)a3
{
  v6 = a3;
  v4 = v6[1];
  imp = self->super._imp;
  if (imp != v4)
  {
    imp[8] = *(v4 + 32);
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<NU::RegionRect,void *> *>>(imp, *(v4 + 16));
  }
}

- (void)flipInRect:(id *)a3
{
  imp = self->super._imp;
  var1 = a3->var1;
  v5[0] = a3->var0;
  v5[1] = var1;
  NU::Region::flipInRect(imp, v5);
}

- (void)diffWithRegion:(id)a3
{
  if (a3)
  {
    NU::Region::diff(self->super._imp, *(a3 + 1));
  }
}

- (void)diffWithRect:(id *)a3
{
  imp = self->super._imp;
  var1 = a3->var1;
  v5[0] = a3->var0;
  v5[1] = var1;
  NU::Region::diff(imp, v5);
}

- (void)clipToRegion:(id)a3
{
  if (a3)
  {
    NU::Region::clip(self->super._imp, *(a3 + 1));
  }
}

- (void)clipToRect:(id *)a3
{
  imp = self->super._imp;
  var1 = a3->var1;
  v5[0] = a3->var0;
  v5[1] = var1;
  NU::Region::clip(imp, v5);
}

- (void)removeRegion:(id)a3
{
  if (a3)
  {
    imp = self->super._imp;
    NU::Region::breakRects(*(a3 + 1), imp);

    NU::Region::mergeRectsVertically(imp);
  }
}

- (void)addRegion:(id)a3
{
  if (a3)
  {
    NU::Region::add(self->super._imp, *(a3 + 1));
  }
}

- (void)removeRect:(id *)a3
{
  imp = self->super._imp;
  var1 = a3->var1;
  v5[0] = a3->var0;
  v5[1] = var1;
  NU::Region::remove(imp, v5);
}

- (void)addRect:(id *)a3
{
  imp = self->super._imp;
  var1 = a3->var1;
  v5[0] = a3->var0;
  v5[1] = var1;
  NU::Region::add(imp, v5);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NURegion allocWithZone:a3];

  return [(NURegion *)v4 initWithRegion:self];
}

@end