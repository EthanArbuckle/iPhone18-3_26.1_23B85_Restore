@interface MOVStreamSampleTimeRangeList
- ($B22509A9E1E897CB5DF0DB02A23A695A)timeRange;
- ($B22509A9E1E897CB5DF0DB02A23A695A)timeRangeAtIndex:(SEL)index;
- (BOOL)containsTimeRange:(id *)range;
- (MOVStreamSampleTimeRangeList)init;
- (MOVStreamSampleTimeRangeList)initWithTimeRange:(id *)range;
- (MOVStreamSampleTimeRangeList)initWithTimeRanges:(const void *)ranges;
- (id).cxx_construct;
- (int64_t)indexOfTimeRangeAtTime:(id *)time;
@end

@implementation MOVStreamSampleTimeRangeList

- (MOVStreamSampleTimeRangeList)initWithTimeRanges:(const void *)ranges
{
  v8.receiver = self;
  v8.super_class = MOVStreamSampleTimeRangeList;
  v4 = [(MOVStreamSampleTimeRangeList *)&v8 init];
  p_ranges = &v4->_ranges;
  if (v4)
  {
    v6 = p_ranges == ranges;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    std::vector<CMTimeRange>::__assign_with_size[abi:ne200100]<CMTimeRange*,CMTimeRange*>(p_ranges, *ranges, *(ranges + 1), 0xAAAAAAAAAAAAAAABLL * ((*(ranges + 1) - *ranges) >> 4));
  }

  return v4;
}

- (MOVStreamSampleTimeRangeList)initWithTimeRange:(id *)range
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *&range->var0.var3;
  v10[0] = *&range->var0.var0;
  v10[1] = v4;
  v10[2] = *&range->var1.var1;
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<CMTimeRange>::__init_with_size[abi:ne200100]<CMTimeRange const*,CMTimeRange const*>(&__p, v10, v11, 1uLL);
  v5 = [(MOVStreamSampleTimeRangeList *)self initWithTimeRanges:&__p];
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v5;
}

- (MOVStreamSampleTimeRangeList)init
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_257883000, v3, OS_LOG_TYPE_ERROR, "❌ ERROR: Do not call [%{public}@ init].", &v7, 0xCu);
  }

  return 0;
}

- (BOOL)containsTimeRange:(id *)range
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = *MEMORY[0x277CC08D0];
  v4 = *(MEMORY[0x277CC08D0] + 12);
  v23 = *(MEMORY[0x277CC08D0] + 8);
  v5 = *(MEMORY[0x277CC08D0] + 16);
  v6 = *(MEMORY[0x277CC08D0] + 32);
  v7 = *(MEMORY[0x277CC08D0] + 40);
  begin = self->_ranges.__begin_;
  v9 = self->_ranges.__end_ - begin;
  if (v9)
  {
    v18 = *(MEMORY[0x277CC08D0] + 32);
    v19 = *(MEMORY[0x277CC08D0] + 16);
    v11 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 4);
    do
    {
      v12 = (begin + 48 * (v11 >> 1));
      v13 = *v12;
      v14 = v12[2];
      *&range.start.epoch = v12[1];
      *&range.duration.timescale = v14;
      *&range.start.value = v13;
      CMTimeRangeGetEnd(&time1, &range);
      *&range.start.value = *&range->var0.var0;
      range.start.epoch = range->var0.var3;
      v15 = CMTimeCompare(&time1, &range.start);
      if (v15 < 0)
      {
        v11 += ~(v11 >> 1);
      }

      else
      {
        v11 >>= 1;
      }

      if (v15 < 0)
      {
        begin = (v12 + 3);
      }
    }

    while (v11);
    v6 = v18;
    v5 = v19;
    if (begin != self->_ranges.__end_)
    {
      v16 = *begin;
      v4 = *(begin + 3);
      v23 = *(begin + 2);
      v22 = v16;
      v5 = *(begin + 1);
      v6 = *(begin + 4);
      v7 = *(begin + 5);
    }
  }

  result = 0;
  if ((v4 & 1) != 0 && (v6 & 0x100000000) != 0 && !v7 && (*(&v5 + 1) & 0x8000000000000000) == 0)
  {
    range.start.value = v22;
    range.start.timescale = v23;
    range.start.flags = v4;
    *&range.start.epoch = v5;
    *&range.duration.timescale = v6;
    range.duration.epoch = 0;
    time1 = range->var0;
    return CMTimeRangeContainsTime(&range, &time1) != 0;
  }

  return result;
}

- ($B22509A9E1E897CB5DF0DB02A23A695A)timeRange
{
  v5 = MEMORY[0x277CC08D0];
  v6 = *(MEMORY[0x277CC08D0] + 16);
  *&retstr->var0.var0 = *MEMORY[0x277CC08D0];
  *&retstr->var0.var3 = v6;
  *&retstr->var1.var1 = *(v5 + 32);
  v8 = *&self->var0.var1;
  var3 = self->var0.var3;
  if (var3 != v8)
  {
    v15 = v3;
    v16 = v4;
    v9 = *v8;
    v10 = v8[2];
    *&range.start.epoch = v8[1];
    *&range.duration.timescale = v10;
    *&range.start.value = v9;
    v11 = *(var3 - 48);
    v12 = *(var3 - 16);
    *&v13.start.epoch = *(var3 - 32);
    *&v13.duration.timescale = v12;
    *&v13.start.value = v11;
    return CMTimeRangeGetUnion(retstr, &range, &v13);
  }

  return self;
}

- ($B22509A9E1E897CB5DF0DB02A23A695A)timeRangeAtIndex:(SEL)index
{
  v4 = *&self->var0.var1;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((self->var0.var3 - v4) >> 4);
  v6 = (v4 + 48 * a4);
  if (v5 <= a4)
  {
    v7 = MEMORY[0x277CC08D0];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7[1];
  *&retstr->var0.var0 = *v7;
  *&retstr->var0.var3 = v8;
  *&retstr->var1.var1 = v7[2];
  return self;
}

- (int64_t)indexOfTimeRangeAtTime:(id *)time
{
  v24 = *MEMORY[0x277D85DE8];
  memset(&v19, 0, sizeof(v19));
  start.start = *time;
  CMTimeMake(&duration, 1, 0x7FFFFFFF);
  CMTimeRangeMake(&v19, &start.start, &duration);
  v22 = *MEMORY[0x277CC08D0];
  v5 = *(MEMORY[0x277CC08D0] + 12);
  v23 = *(MEMORY[0x277CC08D0] + 8);
  v6 = *(MEMORY[0x277CC08D0] + 16);
  v7 = *(MEMORY[0x277CC08D0] + 32);
  v8 = *(MEMORY[0x277CC08D0] + 40);
  begin = self->_ranges.__begin_;
  end = self->_ranges.__end_;
  if (end == begin)
  {
    begin = self->_ranges.__end_;
  }

  else
  {
    v17 = *(MEMORY[0x277CC08D0] + 32);
    v18 = *(MEMORY[0x277CC08D0] + 16);
    v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 4);
    do
    {
      v12 = (begin + 48 * (v11 >> 1));
      v13 = *v12;
      v14 = v12[2];
      *&start.start.epoch = v12[1];
      *&start.duration.timescale = v14;
      *&start.start.value = v13;
      CMTimeRangeGetEnd(&duration, &start);
      *&start.start.value = *&v19.start.value;
      start.start.epoch = v19.start.epoch;
      v15 = CMTimeCompare(&duration, &start.start);
      if (v15 < 0)
      {
        v11 += ~(v11 >> 1);
      }

      else
      {
        v11 >>= 1;
      }

      if (v15 < 0)
      {
        begin = (v12 + 3);
      }
    }

    while (v11);
    end = self->_ranges.__end_;
    v7 = v17;
    v6 = v18;
  }

  if (end != begin)
  {
    v22 = *begin;
    v5 = *(begin + 3);
    v23 = *(begin + 2);
    v6 = *(begin + 1);
    v7 = *(begin + 4);
    v8 = *(begin + 5);
  }

  if ((v5 & 1) == 0)
  {
    return -1;
  }

  result = -1;
  if ((v7 & 0x100000000) != 0 && !v8 && (*(&v6 + 1) & 0x8000000000000000) == 0)
  {
    start.start.value = v22;
    start.start.timescale = v23;
    start.start.flags = v5;
    *&start.start.epoch = v6;
    *&start.duration.timescale = v7;
    duration = *time;
    if (!CMTimeRangeContainsTime(&start, &duration))
    {
      return -1;
    }

    return 0xAAAAAAAAAAAAAAABLL * ((begin - self->_ranges.__begin_) >> 4);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end