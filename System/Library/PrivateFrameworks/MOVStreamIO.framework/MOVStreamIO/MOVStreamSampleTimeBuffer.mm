@interface MOVStreamSampleTimeBuffer
- (MOVStreamSampleTimeBuffer)initWithCapacity:(unint64_t)capacity;
- (id).cxx_construct;
- (id)description;
- (id)timeline;
- (void)appendTime:(id *)time;
@end

@implementation MOVStreamSampleTimeBuffer

- (MOVStreamSampleTimeBuffer)initWithCapacity:(unint64_t)capacity
{
  v7.receiver = self;
  v7.super_class = MOVStreamSampleTimeBuffer;
  v4 = [(MOVStreamSampleTimeBuffer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::vector<CMTime>::reserve(&v4->_times.__begin_, 100 * (capacity / 0x64) + 100);
  }

  return v5;
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

  name = [(MOVStreamSampleTimeBuffer *)self name];
  if ([name length])
  {
    v11 = MEMORY[0x277CCACA8];
    name2 = [(MOVStreamSampleTimeBuffer *)self name];
    v13 = [v11 stringWithFormat:@" name=%@", name2];
  }

  else
  {
    v13 = &stru_2868CF868;
  }

  v14 = MEMORY[0x277CCAB68];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = 0xAAAAAAAAAAAAAAABLL * ((v9 - begin) >> 3);
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v17];
  v19 = [v3 copy];
  v20 = [v14 stringWithFormat:@"<%@: %p%@ sampleCount=%@ samples=[%@", v16, self, v13, v18, v19];

  if (v17 < 5)
  {
    [v20 appendString:@"]>"];
  }

  else
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v17 - 4];
    [v20 appendFormat:@"... and %@ more]>", v21];
  }

  v22 = [v20 copy];

  return v22;
}

- (void)appendTime:(id *)time
{
  end = self->_times.__end_;
  cap = self->_times.__cap_;
  if (end >= cap)
  {
    begin = self->_times.__begin_;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::allocator<CMTime>::allocate_at_least[abi:ne200100](&self->_times, v12);
    }

    v13 = 24 * v9;
    v14 = *&time->var0;
    *(v13 + 16) = time->var3;
    *v13 = v14;
    v7 = (24 * v9 + 24);
    v15 = self->_times.__begin_;
    v16 = (self->_times.__end_ - v15);
    v17 = (v13 - v16);
    memcpy((v13 - v16), v15, v16);
    v18 = self->_times.__begin_;
    self->_times.__begin_ = v17;
    self->_times.__end_ = v7;
    self->_times.__cap_ = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *&time->var0;
    *(end + 2) = time->var3;
    *end = v6;
    v7 = (end + 24);
  }

  self->_times.__end_ = v7;
}

- (id)timeline
{
  v2 = [[MOVStreamSampleTimeList alloc] initWithTimes:&self->_times];

  return v2;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end