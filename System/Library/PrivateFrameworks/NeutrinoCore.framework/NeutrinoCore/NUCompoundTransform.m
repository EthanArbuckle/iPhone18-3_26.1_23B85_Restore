@interface NUCompoundTransform
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transformTime:(SEL)a3;
- (CGPoint)transformPoint:(CGPoint)a3;
- (NUCompoundTransform)initWithSrcTransforms:(id)a3 dstTransforms:(id)a4;
- (NUCompoundTransform)initWithTransforms:(id)a3;
- (id)inverseTransform;
- (void)transformMatrix:(_OWORD *)a3@<X8>;
@end

@implementation NUCompoundTransform

- (void)transformMatrix:(_OWORD *)a3@<X8>
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a2[5];
  a3[4] = a2[4];
  a3[5] = v4;
  v5 = a2[7];
  a3[6] = a2[6];
  a3[7] = v5;
  v6 = a2[1];
  *a3 = *a2;
  a3[1] = v6;
  v7 = a2[3];
  a3[2] = a2[2];
  a3[3] = v7;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = *(a1 + 8);
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        if (v13)
        {
          v14 = a3[5];
          v22[4] = a3[4];
          v22[5] = v14;
          v15 = a3[7];
          v22[6] = a3[6];
          v22[7] = v15;
          v16 = a3[1];
          v22[0] = *a3;
          v22[1] = v16;
          v17 = a3[3];
          v22[2] = a3[2];
          v22[3] = v17;
          [v13 transformMatrix:v22];
        }

        else
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
        }

        v18 = v28;
        a3[4] = v27;
        a3[5] = v18;
        v19 = v30;
        a3[6] = v29;
        a3[7] = v19;
        v20 = v24;
        *a3 = v23;
        a3[1] = v20;
        v21 = v26;
        ++v12;
        a3[2] = v25;
        a3[3] = v21;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transformTime:(SEL)a3
{
  v21 = *MEMORY[0x1E69E9840];
  *retstr = *a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_transforms;
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

- (CGPoint)transformPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_transforms;
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

- (id)inverseTransform
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_transforms, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSArray *)self->_transforms reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) inverseTransform];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [[NUCompoundTransform alloc] initWithTransforms:v3];

  return v10;
}

- (NUCompoundTransform)initWithTransforms:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v10 = NUAssertLogger_24020();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "transforms != nil"];
      *buf = 138543362;
      v28 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_24020();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompoundTransform initWithTransforms:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/transforms/NUCompoundTransform.m", 36, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "transforms != nil");
  }

  v5 = v4;
  v26.receiver = self;
  v26.super_class = NUCompoundTransform;
  v6 = [(NUCompoundTransform *)&v26 init];
  v7 = [v5 copy];
  transforms = v6->_transforms;
  v6->_transforms = v7;

  return v6;
}

- (NUCompoundTransform)initWithSrcTransforms:(id)a3 dstTransforms:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v6];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v7 reverseObjectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * v13) inverseTransform];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [(NUCompoundTransform *)self initWithTransforms:v8];
  return v15;
}

@end