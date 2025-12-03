@interface CVNLPLexiconCursors
- (CVNLPLexiconCursors)initWithSortedCursors:(void *)cursors;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)enumerateLexiconCursorsSortedByPriorityWithBlock:(id)block;
@end

@implementation CVNLPLexiconCursors

- (CVNLPLexiconCursors)initWithSortedCursors:(void *)cursors
{
  v22.receiver = self;
  v22.super_class = CVNLPLexiconCursors;
  v4 = [(CVNLPLexiconCursors *)&v22 init];
  v5 = v4;
  p_sortedCursors = &v4->_sortedCursors;
  if (v4)
  {
    v7 = p_sortedCursors == cursors;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *cursors;
    v9 = *(cursors + 1);
    v10 = &v9[-*cursors];
    cap = v4->_sortedCursors.__cap_;
    begin = v4->_sortedCursors.__begin_;
    if (cap - begin < v10)
    {
      v13 = v10 >> 3;
      if (begin)
      {
        v5->_sortedCursors.__end_ = begin;
        operator delete(begin);
        cap = 0;
        p_sortedCursors->__begin_ = 0;
        p_sortedCursors->__end_ = 0;
        p_sortedCursors->__cap_ = 0;
      }

      if (!(v13 >> 61))
      {
        v14 = cap >> 2;
        if (cap >> 2 <= v13)
        {
          v14 = v10 >> 3;
        }

        if (cap >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (!(v15 >> 61))
        {
          operator new();
        }
      }

      sub_1D9D84AB0();
    }

    end = v5->_sortedCursors.__end_;
    v17 = end - begin;
    if (end - begin >= v10)
    {
      if (v9 != v8)
      {
        v20 = v5->_sortedCursors.__begin_;
        memmove(begin, v8, v10);
        begin = v20;
      }

      v19 = (begin + v10);
    }

    else
    {
      v18 = &v8[v17];
      if (end != begin)
      {
        memmove(begin, v8, v17);
        end = v5->_sortedCursors.__end_;
      }

      if (v9 != v18)
      {
        memmove(end, v18, v9 - v18);
      }

      v19 = (end + v9 - v18);
    }

    v5->_sortedCursors.__end_ = v19;
  }

  return v5;
}

- (void)enumerateLexiconCursorsSortedByPriorityWithBlock:(id)block
{
  blockCopy = block;
  begin = self->_sortedCursors.__begin_;
  end = self->_sortedCursors.__end_;
  if (begin != end)
  {
    v7 = begin + 1;
    do
    {
      v8 = *(v7 - 1);
      v10 = 0;
      blockCopy[2](blockCopy, v8, &v10);
      if (v10)
      {
        break;
      }
    }

    while (v7++ != end);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  begin = self->_sortedCursors.__begin_;
  end = self->_sortedCursors.__end_;
  if (begin != end)
  {
    v5 = *begin;
    LXCursorCreateByAdvancing();
    operator new();
  }

  v6 = [CVNLPLexiconCursors alloc];
  result = objc_msgSend_initWithSortedCursors_(v6, v7, &__p, v8);
  if (__p)
  {
    v12 = __p;
    v10 = result;
    operator delete(__p);
    return v10;
  }

  return result;
}

- (void)dealloc
{
  begin = self->_sortedCursors.__begin_;
  end = self->_sortedCursors.__end_;
  while (begin != end)
  {
    if (*begin)
    {
      CFRelease(*begin);
    }

    ++begin;
  }

  v5.receiver = self;
  v5.super_class = CVNLPLexiconCursors;
  [(CVNLPLexiconCursors *)&v5 dealloc];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end