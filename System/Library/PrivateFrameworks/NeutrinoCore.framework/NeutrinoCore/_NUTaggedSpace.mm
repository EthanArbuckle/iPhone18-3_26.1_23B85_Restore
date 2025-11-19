@interface _NUTaggedSpace
- (BOOL)hasTransform;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTaggedImageSpace:(id)a3;
- (_NUTaggedSpace)init;
- (_NUTaggedSpace)initWithSpace:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)tagNodes;
- (unint64_t)hash;
- (void)mergeSpace:(id)a3;
@end

@implementation _NUTaggedSpace

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_tagNodes, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_tagNodes;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) name];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x1E696AEC0];
  space = self->_space;
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v10 stringWithFormat:@"%@  :: tags : {%@}", space, v12, v15];

  return v13;
}

- (BOOL)isEqualToTaggedImageSpace:(id)a3
{
  v4 = a3;
  space = self->_space;
  v6 = [v4 space];
  if ([(NUSpace *)space isEqual:v6])
  {
    tagNodes = self->_tagNodes;
    v8 = [v4 tagNodes];
    v9 = [(NSMutableArray *)tagNodes isEqualToArray:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_NUTaggedSpace *)self isEqualToTaggedImageSpace:v4];

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _NUTaggedSpace;
  return [(_NUTaggedSpace *)&v3 hash];
}

- (void)mergeSpace:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v7 = NUAssertLogger_9883();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "space != nil"];
      *buf = 138543362;
      v25 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_9883();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v14;
        v26 = 2114;
        v27 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUTaggedSpace mergeSpace:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 98, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "space != nil");
  }

  tagNodes = self->_tagNodes;
  v23 = v4;
  v6 = [v4 tagNodes];
  [(NSMutableArray *)tagNodes addObjectsFromArray:v6];
}

- (id)tagNodes
{
  v2 = [(NSMutableArray *)self->_tagNodes copy];

  return v2;
}

- (BOOL)hasTransform
{
  v2 = [(NUSpace *)self->_space transformStack];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(NUSpace *)self->_space copy];
  v6 = [[_NUTaggedSpace allocWithZone:?], "initWithSpace:", v5];
  [(_NUTaggedSpace *)v6 addTagNodes:self->_tagNodes];

  return v6;
}

- (_NUTaggedSpace)initWithSpace:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v12 = NUAssertLogger_9883();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "space"];
      *buf = 138543362;
      v30 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_9883();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v19;
        v31 = 2114;
        v32 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUTaggedSpace initWithSpace:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 54, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "space");
  }

  v6 = v5;
  v28.receiver = self;
  v28.super_class = _NUTaggedSpace;
  v7 = [(_NUTaggedSpace *)&v28 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_space, a3);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    tagNodes = v8->_tagNodes;
    v8->_tagNodes = v9;
  }

  return v8;
}

- (_NUTaggedSpace)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_9896);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_9896);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_9896);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    v21 = [v18 callStackSymbols];
    v22 = [v21 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[_NUTaggedSpace init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 49, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end