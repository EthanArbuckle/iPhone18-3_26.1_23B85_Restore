@interface CRTTMergeableStringSelection
- (BOOL)isEqual:(id)a3;
- (id).cxx_construct;
- (id)description;
- (unint64_t)hash;
- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4;
@end

@implementation CRTTMergeableStringSelection

- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  begin = self->_selectionRanges.__begin_;
  for (i = self->_selectionRanges.__end_; begin != i; begin += 6)
  {
    Coherence_namespace::updateTopoID(begin, &a3->charID, a4, &v10);
    v8 = v10;
    begin[2] = v11;
    *begin = v8;
    Coherence_namespace::updateTopoID((begin + 3), &a3->charID, a4, &v10);
    *(begin + 3) = v10;
    begin[5] = v11;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 selectionRanges];
    begin = self->_selectionRanges.__begin_;
    end = self->_selectionRanges.__end_;
    if (v6[1] - *v6 == end - begin)
    {
      if (end == begin)
      {
LABEL_14:
        v17 = [(CRTTMergeableStringSelection *)self selectionAffinity];
        v18 = v17 == [v5 selectionAffinity];
LABEL_17:

        goto LABEL_18;
      }

      v9 = 0;
      if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 4) <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 4);
      }

      while (1)
      {
        v11 = *v6;
        v12 = *v6 + v9;
        v13 = self->_selectionRanges.__begin_;
        v14 = &v13[v9];
        if (*(v12 + 20) != *&v13[v9 + 20])
        {
          break;
        }

        if (*(v12 + 16) != *(v14 + 4))
        {
          break;
        }

        if (uuid_compare(v12, v14))
        {
          break;
        }

        v15 = v11 + v9;
        v16 = &v13[v9];
        if (*(v11 + v9 + 44) != *&v13[v9 + 44] || *(v15 + 40) != *(v16 + 10) || uuid_compare((v15 + 24), v16 + 24))
        {
          break;
        }

        v9 += 48;
        if (!--v10)
        {
          goto LABEL_14;
        }
      }
    }

    v18 = 0;
    goto LABEL_17;
  }

  v18 = 0;
LABEL_18:

  return v18;
}

- (unint64_t)hash
{
  v2 = self->_selectionRanges.__end_ - self->_selectionRanges.__begin_;
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 4);
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  do
  {
    v8 = CFHashBytes();
    v9 = *(self->_selectionRanges.__begin_ + v4 + 20);
    v5 ^= v8 ^ CFHashBytes() ^ v9 ^ *(self->_selectionRanges.__begin_ + v4 + 44);
    v4 += 48;
    --v7;
  }

  while (v7);
  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<CRTTMergeableStringSelection %p ", self];
  begin = self->_selectionRanges.__begin_;
  end = self->_selectionRanges.__end_;
  if (begin != end)
  {
    v6 = begin + 24;
    do
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6 - 24];
      v8 = [v7 Coherence_shortDescription];
      [v3 appendFormat:@" %@.%d:%d", v8, *(v6 - 2), *(v6 - 1)];

      v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
      v10 = [MEMORY[0x1E696AFB0] Coherence_zero];
      if ([v9 isEqual:v10])
      {
        v11 = *(v6 + 5);

        if (!v11)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
      v13 = [v12 Coherence_shortDescription];
      [v3 appendFormat:@"-%@.%d:%d", v13, *(v6 + 4), *(v6 + 5)];

LABEL_8:
      v14 = v6 + 24;
      v6 += 48;
    }

    while (v14 != end);
  }

  [v3 appendFormat:@">"];

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