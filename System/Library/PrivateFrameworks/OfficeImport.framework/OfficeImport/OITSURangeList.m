@interface OITSURangeList
- (OITSURangeList)initWithRange:(_NSRange)a3;
- (OITSURangeList)initWithRangeList:(id)a3;
- (OITSURangeList)initWithString:(id)a3;
- (_NSRange)rangeAtIndex:(unint64_t)a3;
- (id).cxx_construct;
- (id)stringValue;
- (void)consolidate;
- (void)removeRangeAtIndex:(unint64_t)a3;
- (void)replaceWithRange:(_NSRange)a3 atIndex:(unint64_t)a4;
- (void)reverse;
@end

@implementation OITSURangeList

- (OITSURangeList)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(OITSURangeList *)self init];
  v6 = v5;
  if (v5)
  {
    std::vector<_NSRange>::resize(&v5->mRangeList.__begin_, 1uLL);
    begin = v6->mRangeList.__begin_;
    begin->location = location;
    begin->length = length;
  }

  return v6;
}

- (OITSURangeList)initWithRangeList:(id)a3
{
  v4 = [(OITSURangeList *)self init];
  if (v4)
  {
    std::vector<_NSRange>::resize(&v4->mRangeList.__begin_, [a3 count]);
    if ([a3 count])
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = [a3 rangeAtIndex:v6];
        v8 = &v4->mRangeList.__begin_[v5];
        v8->location = v7;
        v8->length = v9;
        ++v6;
        ++v5;
      }

      while (v6 < [a3 count]);
    }
  }

  return v4;
}

- (OITSURangeList)initWithString:(id)a3
{
  v4 = [(OITSURangeList *)self init];
  v5 = v4;
  if (a3 && v4 && [a3 length] >= 3 && objc_msgSend(a3, "length"))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      if ([a3 characterAtIndex:v7 - 1] == 123)
      {
        v6 = v7 - 1;
      }

      else if ([a3 characterAtIndex:v7 - 1] == 125)
      {
        v8 = [a3 substringWithRange:{v6, v7 - v6}];
        v11 = 0;
        v11 = NSRangeFromString(v8);
        std::vector<_NSRange>::push_back[abi:ne200100](&v5->mRangeList, &v11);
      }
    }

    while (v7++ < [a3 length]);
  }

  return v5;
}

- (void)removeRangeAtIndex:(unint64_t)a3
{
  begin = self->mRangeList.__begin_;
  end = self->mRangeList.__end_;
  v6 = &begin[a3];
  v7 = (end - &v6[1]);
  if (end != &v6[1])
  {
    memmove(&begin[a3], &v6[1], end - &v6[1]);
  }

  self->mRangeList.__end_ = &v7[v6];
}

- (void)replaceWithRange:(_NSRange)a3 atIndex:(unint64_t)a4
{
  begin = self->mRangeList.__begin_;
  v9 = self->mRangeList.__end_ - begin;
  if (v9 <= a4)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:@"IndexOutOfBound" reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"Getting object at %lu from an array with size %lu", a3.length, a4, v9, v5, v4, v6, v7), 0}]);
  }

  begin[a4] = a3;
}

- (void)reverse
{
  begin = self->mRangeList.__begin_;
  end = self->mRangeList.__end_;
  v4 = end - 1;
  if (begin != end && v4 > begin)
  {
    v6 = begin + 1;
    do
    {
      v7 = v6[-1];
      v6[-1] = *v4;
      *v4-- = v7;
    }

    while (v6++ < v4);
  }
}

- (_NSRange)rangeAtIndex:(unint64_t)a3
{
  begin = self->mRangeList.__begin_;
  v8 = self->mRangeList.__end_ - begin;
  if (v8 <= a3)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:@"IndexOutOfBound" reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"Getting object at %lu from an array with size %lu", a3, v8, v4, v3, v5, v6), 0}]);
  }

  p_location = &begin[a3].location;
  v10 = *p_location;
  v11 = p_location[1];
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)consolidate
{
  p_mRangeList = &self->mRangeList;
  begin = self->mRangeList.__begin_;
  end = p_mRangeList->__end_;
  v6 = (end - begin) >> 4;
  if (v6 < 2)
  {
    return;
  }

  v26 = p_sortFunction;
  v7 = 126 - 2 * __clz(v6);
  if (end == begin)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(_NSRange,_NSRange),_NSRange*,false>(begin, end, &v26, v8, 1);
  v10 = self->mRangeList.__begin_;
  v9 = self->mRangeList.__end_;
  v11 = v9 - v10;
  if (v11 >= 2)
  {
    v12 = 0;
    location = v10->location;
    v14 = 1;
    while (1)
    {
      if (v11 <= v14 + 1)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = v9 - v10;
      }

      p_length = &v10[v14].length;
      v17 = ~v14;
      v18 = v15 - v14;
      while (1)
      {
        v19 = *(p_length - 1);
        if (location != v19)
        {
          break;
        }

        p_length += 2;
        --v17;
        if (!--v18)
        {
          goto LABEL_21;
        }
      }

      v20 = &v10[v12];
      v21 = *p_length;
      v22 = v20->length + v20->location;
      if (v22 >= v19)
      {
        v23 = v21 + v19;
        if (v22 >= v23)
        {
          goto LABEL_19;
        }

        v21 = v23 - v20->location;
      }

      else
      {
        v20 = &v10[++v12];
        v20->location = v19;
      }

      v20->length = v21;
LABEL_19:
      v14 = -v17;
      if (-v17 < v11)
      {
        location = v19;
        if (v12 < v11)
        {
          continue;
        }
      }

LABEL_21:
      if (v12 < v11)
      {
        v24 = v12;
LABEL_25:
        v25 = &v10[v24 + 1];
        if (v25 != v9)
        {
          self->mRangeList.__end_ = v25;
        }
      }

      return;
    }
  }

  if (v9 != v10)
  {
    v24 = 0;
    goto LABEL_25;
  }
}

- (id)stringValue
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"["];
  if ([(OITSURangeList *)self count])
  {
    v4 = 0;
    v5 = 1;
    do
    {
      if (v5 != 1)
      {
        [v3 appendString:{@", "}];
      }

      v8.location = [(OITSURangeList *)self rangeAtIndex:v4];
      [v3 appendString:NSStringFromRange(v8)];
      v4 = v5;
    }

    while ([(OITSURangeList *)self count]> v5++);
  }

  [v3 appendString:@"]"];
  return v3;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end