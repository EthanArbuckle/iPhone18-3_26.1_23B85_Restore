@interface FICompoundNodeIterator
- (BOOL)fullyPopulated;
- (id).cxx_construct;
- (id)first;
- (id)next;
- (unint64_t)estimatedSize;
@end

@implementation FICompoundNodeIterator

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (BOOL)fullyPopulated
{
  begin = self->_subIterators.__begin_;
  var0 = self->_subIterators.var0;
  if (begin == var0)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v4 = begin + 1;
    do
    {
      v5 = [(__cap_ *)*(v4 - 1) fullyPopulated];
      if (v5)
      {
        v6 = v4 == var0;
      }

      else
      {
        v6 = 1;
      }

      ++v4;
    }

    while (!v6);
  }

  return v5;
}

- (id)first
{
  self->fCurrentIterator = 0;
  begin = self->_subIterators.__begin_;
  var0 = self->_subIterators.var0;
  if (begin == var0)
  {
LABEL_4:
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v5 = *begin;
      v6 = [(__end_ *)v5 first];
      if (v6)
      {
        break;
      }

      ++self->fCurrentIterator;

      if (++begin == var0)
      {
        goto LABEL_4;
      }
    }
  }

  return v6;
}

- (id)next
{
  fCurrentIterator = self->fCurrentIterator;
  begin = self->_subIterators.__begin_;
  if (fCurrentIterator >= self->_subIterators.var0 - begin)
  {
LABEL_8:
    v8 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = begin[fCurrentIterator];
      v7 = v6;
      if (v5)
      {
        [(__end_ *)v6 first];
      }

      else
      {
        [(__end_ *)v6 next];
      }
      v8 = ;
      if (v8)
      {
        break;
      }

      ++self->fCurrentIterator;

      fCurrentIterator = self->fCurrentIterator;
      begin = self->_subIterators.__begin_;
      v5 = 1;
      if (fCurrentIterator >= self->_subIterators.var0 - begin)
      {
        goto LABEL_8;
      }
    }
  }

  return v8;
}

- (unint64_t)estimatedSize
{
  begin = self->_subIterators.__begin_;
  var0 = self->_subIterators.var0;
  if (begin == var0)
  {
    return 0;
  }

  LODWORD(v4) = 0;
  do
  {
    v5 = *begin++;
    v4 = v4 + [v5 estimatedSize];
  }

  while (begin != var0);
  return v4;
}

@end