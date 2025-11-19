@interface NUViewport
- (CGPoint)anchorPoint;
- (CGPoint)backingPosition;
- (CGPoint)position;
- (CGSize)backingSize;
- (CGSize)size;
- (NUViewport)init;
- (NUViewport)initWithSize:(CGSize)a3 backingScaleFactor:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NUViewport

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)backingPosition
{
  backingScaleFactor = self->_backingScaleFactor;
  v3 = self->_position.x * backingScaleFactor;
  v4 = backingScaleFactor * self->_position.y;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGSize)backingSize
{
  backingScaleFactor = self->_backingScaleFactor;
  v3 = self->_size.width * backingScaleFactor;
  v4 = backingScaleFactor * self->_size.height;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  *(result + 1) = self->_size;
  *(result + 1) = *&self->_backingScaleFactor;
  *(result + 2) = self->_position;
  *(result + 3) = self->_anchorPoint;
  return result;
}

- (NUViewport)initWithSize:(CGSize)a3 backingScaleFactor:(double)a4
{
  v44 = *MEMORY[0x277D85DE8];
  if (a3.width <= 0.0)
  {
    v8 = NUAssertLogger_821();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter not satisfying: %s", "size.width > 0.0"];
      *buf = 138543362;
      v41 = v9;
      _os_log_error_impl(&dword_25BD29000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v10 = MEMORY[0x277D2CF60];
    specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
    v12 = NUAssertLogger_821();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v26 = dispatch_get_specific(*v10);
        v27 = MEMORY[0x277CCACC8];
        v28 = v26;
        v10 = [v27 callStackSymbols];
        v29 = [v10 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v26;
        v42 = 2114;
        v43 = v29;
        _os_log_error_impl(&dword_25BD29000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x277CCACC8] callStackSymbols];
      v10 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = v10;
      _os_log_error_impl(&dword_25BD29000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v18 = _NUAssertFailHandler();
    goto LABEL_23;
  }

  height = a3.height;
  if (a3.height <= 0.0)
  {
    v15 = NUAssertLogger_821();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter not satisfying: %s", "size.height > 0.0"];
      *buf = 138543362;
      v41 = v16;
      _os_log_error_impl(&dword_25BD29000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v10 = MEMORY[0x277D2CF60];
    v17 = dispatch_get_specific(*MEMORY[0x277D2CF60]);
    v12 = NUAssertLogger_821();
    v18 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!v17)
    {
      if (v18)
      {
        v19 = [MEMORY[0x277CCACC8] callStackSymbols];
        v10 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v41 = v10;
        _os_log_error_impl(&dword_25BD29000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_25:

      v23 = _NUAssertFailHandler();
      goto LABEL_26;
    }

LABEL_23:
    if (v18)
    {
      v30 = dispatch_get_specific(*v10);
      v31 = MEMORY[0x277CCACC8];
      v32 = v30;
      v10 = [v31 callStackSymbols];
      v33 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v41 = v30;
      v42 = 2114;
      v43 = v33;
      _os_log_error_impl(&dword_25BD29000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (a4 <= 0.0)
  {
    v20 = NUAssertLogger_821();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter not satisfying: %s", "factor > 0.0"];
      *buf = 138543362;
      v41 = v21;
      _os_log_error_impl(&dword_25BD29000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v10 = MEMORY[0x277D2CF60];
    v22 = dispatch_get_specific(*MEMORY[0x277D2CF60]);
    v12 = NUAssertLogger_821();
    v23 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!v22)
    {
      if (v23)
      {
        v24 = [MEMORY[0x277CCACC8] callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v41 = v25;
        _os_log_error_impl(&dword_25BD29000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_28;
    }

LABEL_26:
    if (v23)
    {
      v34 = dispatch_get_specific(*v10);
      v35 = MEMORY[0x277CCACC8];
      v36 = v34;
      v37 = [v35 callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v41 = v34;
      v42 = 2114;
      v43 = v38;
      _os_log_error_impl(&dword_25BD29000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_28:

    _NUAssertFailHandler();
  }

  width = a3.width;
  v39.receiver = self;
  v39.super_class = NUViewport;
  result = [(NUViewport *)&v39 init];
  result->_size.width = width;
  result->_size.height = height;
  result->_backingScaleFactor = a4;
  return result;
}

- (NUViewport)init
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
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_838);
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
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_838);
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
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_838);
  }
}

@end