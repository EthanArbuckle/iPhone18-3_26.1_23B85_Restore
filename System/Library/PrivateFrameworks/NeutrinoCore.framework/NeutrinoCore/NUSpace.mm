@interface NUSpace
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transformTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transformTime:(SEL)a3 toSpace:(id *)a4;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transformTimeBackward:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSpace:(id)a3;
- (CGPoint)transformPoint:(CGPoint)a3 toSpace:(id)a4;
- (CGPoint)transformPointBackward:(CGPoint)a3;
- (CGPoint)transformPointForward:(CGPoint)a3;
- (NUSpace)initWithTransformStack:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)appendTransform:(id)a3;
@end

@implementation NUSpace

- (BOOL)isEqualToSpace:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v8 = NUAssertLogger_34();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "other != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_34();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSpace isEqualToSpace:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUSpace.m", 147, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "other != nil");
  }

  v5 = v4;
  v6 = [(NSArray *)self->_transformStack isEqual:*(v4 + 1)];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUSpace *)self isEqualToSpace:v4];

  return v5;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transformTimeBackward:(SEL)a3
{
  v22 = *MEMORY[0x1E69E9840];
  *retstr = *a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(NSArray *)self->_transformStack reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * i) inverseTransform];
        v11 = v10;
        if (v10)
        {
          v13 = *&retstr->var0;
          var3 = retstr->var3;
          [v10 transformTime:&v13];
        }

        else
        {
          v15 = 0uLL;
          v16 = 0;
        }

        *&retstr->var0 = v15;
        retstr->var3 = v16;
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transformTime:(SEL)a3 toSpace:(id *)a4
{
  v8 = a5;
  memset(&v10[1], 0, sizeof($3CC8671D27C23BF42ADDB32F2B5E48AE));
  v10[0] = *a4;
  [(NUSpace *)self transformTime:v10];
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  if (v8)
  {
    v10[0] = v10[1];
    [v8 transformTimeBackward:v10];
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transformTime:(SEL)a3
{
  v21 = *MEMORY[0x1E69E9840];
  *retstr = *a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_transformStack;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (v10)
        {
          v12 = *&retstr->var0;
          var3 = retstr->var3;
          [v10 transformTime:&v12];
        }

        else
        {
          v14 = 0uLL;
          v15 = 0;
        }

        *&retstr->var0 = v14;
        retstr->var3 = v15;
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return result;
}

- (CGPoint)transformPointBackward:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NSArray *)self->_transformStack reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) inverseTransform];
        [v10 transformPoint:{x, y}];
        x = v11;
        y = v12;

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)transformPointForward:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_transformStack;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v14 + 1) + 8 * v9) transformPoint:{x, y, v14}];
        x = v10;
        y = v11;
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = x;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)transformPoint:(CGPoint)a3 toSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(NUSpace *)self transformPointForward:x, y];
  [v7 transformPointBackward:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if ([(NSArray *)self->_transformStack count])
  {
    transformStack = self->_transformStack;
  }

  else
  {
    transformStack = @"{}";
  }

  return [v3 stringWithFormat:@"<%@:%p :: transforms: %@>", v4, self, transformStack];
}

- (void)appendTransform:(id)a3
{
  self->_transformStack = [(NSArray *)self->_transformStack arrayByAddingObject:a3];

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NUSpace allocWithZone:a3];
  v5 = [(NSArray *)self->_transformStack copy];
  v6 = [(NUSpace *)v4 initWithTransformStack:v5];

  return v6;
}

- (NUSpace)initWithTransformStack:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_34();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "transformStack != nil"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_34();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSpace initWithTransformStack:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUSpace.m", 32, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "transformStack != nil");
  }

  v5 = v4;
  v25.receiver = self;
  v25.super_class = NUSpace;
  v6 = [(NUSpace *)&v25 init];
  transformStack = v6->_transformStack;
  v6->_transformStack = v5;

  return v6;
}

@end