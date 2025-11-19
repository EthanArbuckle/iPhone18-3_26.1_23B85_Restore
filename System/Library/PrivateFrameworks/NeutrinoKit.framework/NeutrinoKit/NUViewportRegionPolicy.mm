@interface NUViewportRegionPolicy
- (NUViewportRegionPolicy)init;
- (NUViewportRegionPolicy)initWithViewport:(id)a3;
- (id)regionForGeometry:(id)a3;
@end

@implementation NUViewportRegionPolicy

- (id)regionForGeometry:(id)a3
{
  v4 = a3;
  [v4 scaledExtent];
  v6 = v5;
  v8 = v7;
  [(NUViewport *)self->_viewport anchorPoint];
  NUAbsolutePointInRect();
  v10 = v9;
  v12 = v11;
  [(NUViewport *)self->_viewport backingPosition];
  v14 = v10 - v13;
  v16 = v12 - v15;
  [(NUViewport *)self->_viewport backingSize];
  v23.size.width = v17;
  v23.size.height = v18;
  v23.origin.x = v14;
  v23.origin.y = v16;
  CGRectOffset(v23, -v6, -v8);
  [v4 roundingPolicy];
  NUPixelRectFromCGRect();
  [v4 scaledSize];

  NUPixelRectIntersection();
  NUPixelRectFlipYOrigin();
  memset(v21, 0, sizeof(v21));
  v19 = [MEMORY[0x277D2D008] regionWithRect:v21];

  return v19;
}

- (NUViewportRegionPolicy)initWithViewport:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v10 = NUAssertLogger_873();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter not satisfying: %s", "viewport != nil"];
      *buf = 138543362;
      v25 = v11;
      _os_log_error_impl(&dword_25BD29000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x277D2CF60];
    specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
    v14 = NUAssertLogger_873();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(*v12);
        v19 = MEMORY[0x277CCACC8];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v18;
        v26 = 2114;
        v27 = v22;
        _os_log_error_impl(&dword_25BD29000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x277CCACC8] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v17;
      _os_log_error_impl(&dword_25BD29000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = v4;
  v23.receiver = self;
  v23.super_class = NUViewportRegionPolicy;
  v6 = [(NUViewportRegionPolicy *)&v23 init];
  v7 = [v5 copy];
  viewport = v6->_viewport;
  v6->_viewport = v7;

  return v6;
}

- (NUViewportRegionPolicy)init
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2D078];
  if (*MEMORY[0x277D2D078] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = MEMORY[0x277D2D070];
    v5 = *MEMORY[0x277D2D070];
    if (os_log_type_enabled(*MEMORY[0x277D2D070], OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = v5;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_25BD29000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v12 = *v3;
      if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
      {
        if (v12 != -1)
        {
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_888);
        }

LABEL_11:
        v18 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
          v20 = MEMORY[0x277CCACC8];
          v21 = specific;
          v22 = v18;
          v23 = [v20 callStackSymbols];
          v24 = [v23 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v27 = specific;
          v28 = 2114;
          v29 = v24;
          _os_log_error_impl(&dword_25BD29000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_888);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
    {
      goto LABEL_11;
    }

    v13 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x277CCACC8];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v17;
      _os_log_error_impl(&dword_25BD29000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v25 = objc_opt_class();
    NSStringFromClass(v25);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_888);
  }
}

@end