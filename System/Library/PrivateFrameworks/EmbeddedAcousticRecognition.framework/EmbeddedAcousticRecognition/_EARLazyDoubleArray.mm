@interface _EARLazyDoubleArray
- (id).cxx_construct;
- (id)_initWithDoubleVector:(const void *)a3;
- (id)objectAtIndex:(unint64_t)a3;
@end

@implementation _EARLazyDoubleArray

- (id)_initWithDoubleVector:(const void *)a3
{
  v8.receiver = self;
  v8.super_class = _EARLazyDoubleArray;
  v4 = [(_EARLazyDoubleArray *)&v8 init];
  v5 = v4;
  if (v4)
  {
    p_vec = &v4->_vec;
    if (&v5->_vec != a3)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(p_vec, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 3);
    }
  }

  return v5;
}

- (id)objectAtIndex:(unint64_t)a3
{
  p_vec = &self->_vec;
  begin = self->_vec.__begin_;
  v6 = self->_vec.__end_ - begin;
  if (v6 <= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"Requested index %zu out of bounds %zu", a3, v6}];
    begin = p_vec->__begin_;
  }

  v7 = MEMORY[0x1E696AD98];
  v8 = begin[a3];

  return [v7 numberWithDouble:v8];
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  return self;
}

@end