@interface MTLToolsPerfCounterMailbox
- (id).cxx_construct;
- (id)extractDataAndNumSamples:(unint64_t *)a3 forRequester:(void *)a4 isLast:(BOOL *)a5;
- (void)insertData:(id)a3 andNumSamples:(unint64_t)a4 forRequester:(void *)a5;
@end

@implementation MTLToolsPerfCounterMailbox

- (void)insertData:(id)a3 andNumSamples:(unint64_t)a4 forRequester:(void *)a5
{
  self->_requester = a5;
  v7 = a3;
  end = self->_data.__end_;
  cap = self->_data.__cap_;
  if (end >= cap)
  {
    begin = self->_data.__begin_;
    v12 = end - begin;
    v13 = (end - begin) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
    }

    v15 = cap - begin;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
    v17 = 0xFFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<NSData *,unsigned long>>>(&self->_data, v17);
    }

    v18 = (16 * v13);
    *v18 = v7;
    v18[1] = a4;
    v10 = (16 * v13 + 16);
    memcpy(0, begin, v12);
    v19 = self->_data.__begin_;
    self->_data.__begin_ = 0;
    self->_data.__end_ = v10;
    self->_data.__cap_ = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *end = v7;
    *(end + 1) = a4;
    v10 = end + 16;
  }

  self->_data.__end_ = v10;
  self->_iterator.__i_ = self->_data.__begin_;
}

- (id)extractDataAndNumSamples:(unint64_t *)a3 forRequester:(void *)a4 isLast:(BOOL *)a5
{
  i = self->_iterator.__i_;
  result = *i;
  v8 = *(i + 1);
  i += 16;
  *a3 = v8;
  self->_iterator.__i_ = i;
  if (i == self->_data.__end_)
  {
    *a5 = 1;
    self->_data.__end_ = self->_data.__begin_;
    self->_requester = 0;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  return self;
}

@end