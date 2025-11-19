@interface MOVStreamSampleTimeRangeBuffer
- (MOVStreamSampleTimeRangeBuffer)initWithCapacity:(unint64_t)a3;
- (id).cxx_construct;
- (id)timeRangeList;
- (void)appendTimeRange:(id *)a3;
@end

@implementation MOVStreamSampleTimeRangeBuffer

- (MOVStreamSampleTimeRangeBuffer)initWithCapacity:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = MOVStreamSampleTimeRangeBuffer;
  v4 = [(MOVStreamSampleTimeRangeBuffer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::vector<CMTimeRange>::reserve(&v4->_ranges.__begin_, 100 * (a3 / 0x64) + 100);
  }

  return v5;
}

- (void)appendTimeRange:(id *)a3
{
  end = self->_ranges.__end_;
  cap = self->_ranges.__cap_;
  if (end >= cap)
  {
    begin = self->_ranges.__begin_;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 4);
    v11 = v10 + 1;
    if (v10 + 1 > 0x555555555555555)
    {
      std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::allocator<CMTimeRange>::allocate_at_least[abi:ne200100](&self->_ranges, v13);
    }

    v14 = 48 * v10;
    v15 = *&a3->var0.var0;
    v16 = *&a3->var1.var1;
    *(v14 + 16) = *&a3->var0.var3;
    *(v14 + 32) = v16;
    *v14 = v15;
    v8 = (48 * v10 + 48);
    v17 = self->_ranges.__begin_;
    v18 = (self->_ranges.__end_ - v17);
    v19 = (v14 - v18);
    memcpy((v14 - v18), v17, v18);
    v20 = self->_ranges.__begin_;
    self->_ranges.__begin_ = v19;
    self->_ranges.__end_ = v8;
    self->_ranges.__cap_ = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *&a3->var0.var0;
    v7 = *&a3->var1.var1;
    *(end + 1) = *&a3->var0.var3;
    *(end + 2) = v7;
    *end = v6;
    v8 = (end + 48);
  }

  self->_ranges.__end_ = v8;
}

- (id)timeRangeList
{
  v2 = [[MOVStreamSampleTimeRangeList alloc] initWithTimeRanges:&self->_ranges];

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