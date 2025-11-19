@interface NUMutableDataSet
- (NUMutableDataSet)initWithCapacity:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addValue:(double)a3;
- (void)appendDataSet:(id)a3;
@end

@implementation NUMutableDataSet

- (void)appendDataSet:(id)a3
{
  v5 = a3;
  v28 = v5;
  if (!v5)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"NUDataSet.mm" lineNumber:402 description:{@"Invalid parameter not satisfying: %@", @"dataSet != nil"}];

    v5 = 0;
  }

  v7 = v5[14];
  v6 = v5[15];
  v8 = v6 - v7;
  v9 = (v6 - v7) >> 3;
  if (v9 >= 1)
  {
    end = self->super._data._values.__end_;
    cap = self->super._data._values.__cap_;
    if (cap - end >= v8)
    {
      while (v7 != v6)
      {
        v17 = *v7;
        v7 += 8;
        *end++ = v17;
      }

      self->super._data._values.__end_ = end;
    }

    else
    {
      begin = self->super._data._values.__begin_;
      v13 = v9 + end - begin;
      if (v13 >> 61)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v14 = cap - begin;
      v15 = (cap - begin) >> 2;
      if (v15 > v13)
      {
        v13 = v15;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v13;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v16);
      }

      v18 = 8 * (end - begin);
      v19 = (v18 + v8);
      v20 = v18;
      do
      {
        v21 = *v7;
        v7 += 8;
        *v20++ = v21;
        v8 -= 8;
      }

      while (v8);
      memcpy(v19, end, self->super._data._values.__end_ - end);
      v22 = self->super._data._values.__begin_;
      v23 = &v19[(self->super._data._values.__end_ - end)];
      self->super._data._values.__end_ = end;
      v24 = end - v22;
      v25 = (v18 - (end - v22));
      memcpy(v25, v22, v24);
      v26 = self->super._data._values.__begin_;
      self->super._data._values.__begin_ = v25;
      self->super._data._values.__end_ = v23;
      self->super._data._values.__cap_ = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }
  }

  [(NUDataSet *)self _resetStats];
}

- (void)addValue:(double)a3
{
  end = self->super._data._values.__end_;
  cap = self->super._data._values.__cap_;
  if (end >= cap)
  {
    begin = self->super._data._values.__begin_;
    v8 = end - begin;
    v9 = end - begin;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v11 = cap - begin;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v12);
    }

    v13 = end - begin;
    v14 = (8 * v9);
    v15 = (8 * v9 - 8 * v13);
    *v14 = a3;
    v6 = v14 + 1;
    memcpy(v15, begin, v8);
    v16 = self->super._data._values.__begin_;
    self->super._data._values.__begin_ = v15;
    self->super._data._values.__end_ = v6;
    self->super._data._values.__cap_ = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *end = a3;
    v6 = end + 1;
  }

  self->super._data._values.__end_ = v6;

  [(NUDataSet *)self _resetStats];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NUDataSet allocWithZone:a3];

  return [(NUDataSet *)v4 initWithDataSet:self];
}

- (NUMutableDataSet)initWithCapacity:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
  {
    v5 = NUAssertLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "capacity >= 0"];
      *buf = 138543362;
      v21 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v13 = [MEMORY[0x1E696AF00] callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v12;
        v22 = 2114;
        v23 = v14;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutableDataSet initWithCapacity:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Statistics/NUDataSet.mm", 371, @"Invalid parameter not satisfying: %s", v15, v16, v17, v18, "capacity >= 0");
  }

  v19.receiver = self;
  v19.super_class = NUMutableDataSet;
  result = [(NUDataSet *)&v19 init];
  if (result && a3 > (result->super._data._values.__cap_ - result->super._data._values.__begin_))
  {
    if (!(a3 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

@end