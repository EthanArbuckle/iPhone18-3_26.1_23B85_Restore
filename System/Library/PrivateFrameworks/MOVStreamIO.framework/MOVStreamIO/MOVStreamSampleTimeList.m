@interface MOVStreamSampleTimeList
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeAtIndex:(SEL)a3;
- ($B22509A9E1E897CB5DF0DB02A23A695A)timeRangeFrom:(SEL)a3 to:(unint64_t)a4;
- (MOVStreamSampleTimeList)init;
- (MOVStreamSampleTimeList)initWithTimes:(const void *)a3;
- (NSArray)cmtimes;
- (NSArray)times;
- (_NSRange)frameRangeFrom:(id *)a3 to:(id *)a4;
- (id).cxx_construct;
- (id)description;
@end

@implementation MOVStreamSampleTimeList

- (MOVStreamSampleTimeList)initWithTimes:(const void *)a3
{
  v8.receiver = self;
  v8.super_class = MOVStreamSampleTimeList;
  v4 = [(MOVStreamSampleTimeList *)&v8 init];
  p_times = &v4->_times;
  if (v4)
  {
    v6 = p_times == a3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    std::vector<CMTime>::__assign_with_size[abi:ne200100]<CMTime*,CMTime*>(p_times, *a3, *(a3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3));
  }

  return v4;
}

- (MOVStreamSampleTimeList)init
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

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:4];
  begin = self->_times.__begin_;
  end = self->_times.__end_;
  if (begin == end)
  {
    v9 = self->_times.__begin_;
  }

  else
  {
    v6 = 1;
    do
    {
      if (v6 != 1)
      {
        [v3 appendString:{@", "}];
        if (v6 > 4)
        {
          break;
        }
      }

      v7 = *begin;
      time.epoch = *(begin + 2);
      *&time.value = v7;
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:CMTimeGetSeconds(&time)];
      [v3 appendFormat:@"%@", v8];

      begin = (begin + 24);
      ++v6;
    }

    while (begin != end);
    begin = self->_times.__begin_;
    v9 = self->_times.__end_;
  }

  v10 = [(MOVStreamSampleTimeList *)self name];
  if ([v10 length])
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [(MOVStreamSampleTimeList *)self name];
    v13 = [v11 stringWithFormat:@" name=%@", v12];
  }

  else
  {
    v13 = &stru_2868CF868;
  }

  v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - begin) >> 3);

  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v14];
  v19 = [v3 copy];
  if (v14 < 5)
  {
    v21 = [v15 stringWithFormat:@"<%@: %p%@ sampleCount=%@ samples=[%@]>", v17, self, v13, v18, v19];
  }

  else
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v14 - 4];
    v21 = [v15 stringWithFormat:@"<%@: %p%@ sampleCount=%@ samples=[%@... and %@ more]>", v17, self, v13, v18, v19, v20];
  }

  return v21;
}

- (_NSRange)frameRangeFrom:(id *)a3 to:(id *)a4
{
  begin = self->_times.__begin_;
  end = self->_times.__end_;
  if (end == begin)
  {
    v14 = self->_times.__end_;
    v13 = v14;
  }

  else
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    do
    {
      v10 = begin + 24 * (v9 >> 1);
      v11 = *v10;
      time1.epoch = *(v10 + 2);
      *&time1.value = v11;
      v22 = *a3;
      v12 = CMTimeCompare(&time1, &v22);
      if (v12 < 0)
      {
        v9 += ~(v9 >> 1);
      }

      else
      {
        v9 >>= 1;
      }

      if (v12 < 0)
      {
        begin = (v10 + 24);
      }
    }

    while (v9);
    v13 = begin;
    begin = self->_times.__begin_;
    end = self->_times.__end_;
    v14 = end;
  }

  if (v14 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - begin) >> 3);
  }

  if (v14 != begin)
  {
    v16 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    do
    {
      v17 = begin + 24 * (v16 >> 1);
      time1 = *a4;
      v18 = *v17;
      v22.var3 = *(v17 + 2);
      *&v22.var0 = v18;
      v19 = CMTimeCompare(&time1, &v22);
      if (v19 < 0)
      {
        v16 >>= 1;
      }

      else
      {
        v16 += ~(v16 >> 1);
      }

      if (v19 >= 0)
      {
        begin = (v17 + 24);
      }
    }

    while (v16);
    v14 = self->_times.__end_;
    end = begin;
  }

  if (v14 == end)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = 0xAAAAAAAAAAAAAAABLL * ((end - v13) >> 3);
  }

  v21 = v15;
  result.length = v20;
  result.location = v21;
  return result;
}

- ($B22509A9E1E897CB5DF0DB02A23A695A)timeRangeFrom:(SEL)a3 to:(unint64_t)a4
{
  v7 = MEMORY[0x277CC08D0];
  v8 = *(MEMORY[0x277CC08D0] + 16);
  *&retstr->var0.var0 = *MEMORY[0x277CC08D0];
  *&retstr->var0.var3 = v8;
  *&retstr->var1.var1 = *(v7 + 32);
  v9 = *&self->var0.var1;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((self->var0.var3 - v9) >> 3);
  if (v10 > a4)
  {
    v18 = v5;
    v19 = v6;
    if (v10 <= a5)
    {
      v11 = v10 - 1;
    }

    else
    {
      v11 = a5;
    }

    v12 = (v9 + 24 * a4);
    v13 = *v12;
    start.epoch = *(v12 + 2);
    *&start.value = v13;
    v14 = (v9 + 24 * v11);
    v15 = *v14;
    v16.epoch = *(v14 + 2);
    *&v16.value = v15;
    return CMTimeRangeFromTimeToTime(retstr, &start, &v16);
  }

  return self;
}

- (NSArray)times
{
  cached_times = self->_cached_times;
  if (!cached_times)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((self->_times.__end_ - self->_times.__begin_) >> 3)];
    begin = self->_times.__begin_;
    for (i = self->_times.__end_; begin != i; begin = (begin + 24))
    {
      v7 = *begin;
      v12.epoch = *(begin + 2);
      *&v12.value = v7;
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:CMTimeGetSeconds(&v12)];
      [v4 addObject:v8];
    }

    v9 = [v4 copy];
    v10 = self->_cached_times;
    self->_cached_times = v9;

    cached_times = self->_cached_times;
  }

  return cached_times;
}

- (NSArray)cmtimes
{
  cached_cmtimes = self->_cached_cmtimes;
  if (!cached_cmtimes)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((self->_times.__end_ - self->_times.__begin_) >> 3)];
    begin = self->_times.__begin_;
    for (i = self->_times.__end_; begin != i; begin = (begin + 24))
    {
      v7 = [MEMORY[0x277CCAE60] value:begin withObjCType:"{?=qiIq}"];
      if (v7)
      {
        [v4 addObject:v7];
      }
    }

    v8 = [v4 copy];
    v9 = self->_cached_cmtimes;
    self->_cached_cmtimes = v8;

    cached_cmtimes = self->_cached_cmtimes;
  }

  return cached_cmtimes;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeAtIndex:(SEL)a3
{
  v4 = *&self->var1;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((self->var3 - v4) >> 3);
  v6 = (v4 + 24 * a4);
  if (v5 <= a4)
  {
    v7 = MEMORY[0x277CC0890];
  }

  else
  {
    v7 = v6;
  }

  *retstr = *v7;
  return self;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end