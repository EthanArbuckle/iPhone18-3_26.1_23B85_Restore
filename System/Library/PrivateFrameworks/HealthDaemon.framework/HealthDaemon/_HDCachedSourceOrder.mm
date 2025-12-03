@interface _HDCachedSourceOrder
- (BOOL)isEqual:(id)equal;
- (_HDCachedSourceOrder)init;
- (char)initWithSources:(char)sources userOrdered:(char)ordered isDefaultOrder:;
- (id).cxx_construct;
- (id)description;
- (id)sources;
- (void)orderedSources;
@end

@implementation _HDCachedSourceOrder

- (id)sources
{
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(self + 24) - *(self + 16)) >> 3)];
    v4 = *(self + 16);
    v3 = *(self + 24);
    while (v4 != v3)
    {
      [v2 addObject:*v4];
      v4 += 3;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (char)initWithSources:(char)sources userOrdered:(char)ordered isDefaultOrder:
{
  if (!self)
  {
    return 0;
  }

  v25.receiver = self;
  v25.super_class = _HDCachedSourceOrder;
  v7 = objc_msgSendSuper2(&v25, sel_init);
  v8 = v7;
  if (v7)
  {
    if (v7 + 16 != a2)
    {
      v10 = *a2;
      v9 = a2[1];
      v11 = v9 - v10;
      v12 = *(v7 + 2);
      if (*(v7 + 4) - v12 < (v9 - v10))
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
        std::vector<_HDWrappedSource>::__vdeallocate(v7 + 2);
        if (v13 <= 0xAAAAAAAAAAAAAAALL)
        {
          v14 = 0x5555555555555556 * ((*(v8 + 4) - *(v8 + 2)) >> 3);
          if (v14 <= v13)
          {
            v14 = v13;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(v8 + 4) - *(v8 + 2)) >> 3) >= 0x555555555555555)
          {
            v15 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v15 = v14;
          }

          std::vector<_HDWrappedSource>::__vallocate[abi:ne200100]((v8 + 16), v15);
        }

        std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
      }

      v16 = *(v7 + 3) - v12;
      if (v16 >= v11)
      {
        v21 = std::__copy_impl::operator()[abi:ne200100]<_HDWrappedSource *,_HDWrappedSource *,_HDWrappedSource *>(v10, v9, v12);
        for (i = *(v8 + 3); i != v21; i -= 3)
        {
          v23 = *(i - 3);
        }

        *(v8 + 3) = v21;
      }

      else
      {
        v17 = v10 + v16;
        std::__copy_impl::operator()[abi:ne200100]<_HDWrappedSource *,_HDWrappedSource *,_HDWrappedSource *>(v10, v10 + v16, v12);
        v18 = *(v8 + 3);
        if (v17 != v9)
        {
          v19 = *(v8 + 3);
          do
          {
            *v19 = *v17;
            v20 = *(v17 + 16);
            *(v19 + 8) = *(v17 + 8);
            *(v19 + 16) = v20;
            v17 += 24;
            v19 += 24;
            v18 += 24;
          }

          while (v17 != v9);
        }

        *(v8 + 3) = v18;
      }
    }

    v8[8] = sources;
    v8[9] = ordered;
  }

  return v8;
}

- (void)orderedSources
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    return std::vector<_HDWrappedSource>::__init_with_size[abi:ne200100]<_HDWrappedSource*,_HDWrappedSource*>(result, *(a2 + 16), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 16)) >> 3));
  }

  return result;
}

- (_HDCachedSourceOrder)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = NSStringFromSelector(a2);
  [v3 raise:*MEMORY[0x277CBE660] format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((self->_orderedSources.__end_ - self->_orderedSources.__begin_) >> 3)];
  begin = self->_orderedSources.__begin_;
  end = self->_orderedSources.__end_;
  while (begin != end)
  {
    bundleIdentifier = [*begin bundleIdentifier];
    [v3 addObject:bundleIdentifier];

    begin += 3;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  userOrdered = self->_userOrdered;
  v10 = [v3 componentsJoinedByString:{@", "}];
  v11 = v10;
  v12 = "NO";
  if (userOrdered)
  {
    v12 = "YES";
  }

  v13 = [v7 stringWithFormat:@"<%@:%p> userOrder:%s sources:%@", v8, self, v12, v10];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_userOrdered == *(equalCopy + 8) && self->_isDefaultSourceOrder == *(equalCopy + 9))
  {
    begin = self->_orderedSources.__begin_;
    end = self->_orderedSources.__end_;
    v7 = equalCopy[2];
    if (end - begin == equalCopy[3] - v7)
    {
      if (begin == end)
      {
        v8 = 1;
        goto LABEL_13;
      }

      while ((*begin == *v7 || *v7 && [*begin isEqual:?]) && *(begin + 1) == *(v7 + 8))
      {
        begin = (begin + 24);
        v7 += 24;
        v8 = 1;
        if (begin == end)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end