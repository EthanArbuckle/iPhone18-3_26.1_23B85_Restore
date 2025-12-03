@interface NRMiniUUIDSet
- (BOOL)hasCapability:(unsigned int)capability;
- (BOOL)hasUUID:(id)d;
- (NRMiniUUIDSet)initWithCoder:(id)coder;
- (NRMiniUUIDSet)initWithData:(id)data;
- (NRMiniUUIDSet)initWithUUIDSet:(id)set;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRMiniUUIDSet

- (id)description
{
  v3 = [@"Mini Capabilities: " mutableCopy];
  begin = self->_miniUUIDs.__begin_;
  if (self->_miniUUIDs.__end_ != begin)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        [v3 appendString:{@", "}];
        begin = self->_miniUUIDs.__begin_;
      }

      [v3 appendFormat:@"%X-", bswap32(begin[v5++])];
      begin = self->_miniUUIDs.__begin_;
    }

    while (v5 < self->_miniUUIDs.__end_ - begin);
  }

  return v3;
}

- (NRMiniUUIDSet)initWithUUIDSet:(id)set
{
  v47 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v44.receiver = self;
  v44.super_class = NRMiniUUIDSet;
  v5 = [(NRMiniUUIDSet *)&v44 init];
  if (v5)
  {
    v6 = [setCopy count];
    if (v6)
    {
      std::vector<unsigned int>::reserve((v5 + 8), v6);
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = setCopy;
      v7 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v7)
      {
        v8 = *v41;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v41 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v40 + 1) + 8 * i);
            v45[0] = 0;
            v45[1] = 0;
            [v10 getUUIDBytes:v45];
            v39 = v45[0];
            v12 = *(v5 + 1);
            v11 = *(v5 + 2);
            v13 = v11 - v12;
            if (v11 == v12)
            {
              v15 = *(v5 + 2);
            }

            else
            {
              v14 = v13 >> 2;
              v15 = *(v5 + 1);
              do
              {
                v16 = v14 >> 1;
                v17 = &v15[4 * (v14 >> 1)];
                v19 = *v17;
                v18 = v17 + 4;
                v14 += ~(v14 >> 1);
                if (LODWORD(v45[0]) < v19)
                {
                  v14 = v16;
                }

                else
                {
                  v15 = v18;
                }
              }

              while (v14);
            }

            v20 = *(v5 + 3);
            if (v11 >= v20)
            {
              v22 = (v13 >> 2) + 1;
              if (v22 >> 62)
              {
                std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
              }

              if ((v20 - v12) >> 1 > v22)
              {
                v22 = (v20 - v12) >> 1;
              }

              if (v20 - v12 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v23 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v22;
              }

              if (v23)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v23);
              }

              v24 = v15 - v12;
              v25 = (v15 - v12) >> 2;
              v26 = (4 * v25);
              if (!v25)
              {
                if (v24 < 1)
                {
                  v29 = v24 >> 1;
                  if (v15 == v12)
                  {
                    v30 = 1;
                  }

                  else
                  {
                    v30 = v29;
                  }

                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v30);
                }

                v26 = (v26 - (((v24 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL));
              }

              *v26 = v39;
              memcpy(v26 + 1, v15, *(v5 + 2) - v15);
              v31 = *(v5 + 1);
              v32 = v26 + *(v5 + 2) - v15 + 4;
              *(v5 + 2) = v15;
              v33 = v15 - v31;
              v34 = v26 - (v15 - v31);
              memcpy(v34, v31, v33);
              v35 = *(v5 + 1);
              *(v5 + 1) = v34;
              *(v5 + 2) = v32;
              *(v5 + 3) = 0;
              if (v35)
              {
                operator delete(v35);
              }
            }

            else if (v15 == v11)
            {
              *v11 = v45[0];
              *(v5 + 2) = v11 + 4;
            }

            else
            {
              if (v11 < 4)
              {
                v21 = *(v5 + 2);
              }

              else
              {
                *v11 = *(v11 - 1);
                v21 = (v11 + 4);
              }

              *(v5 + 2) = v21;
              if (v11 != v15 + 4)
              {
                memmove(v15 + 4, v15, v11 - (v15 + 4));
                v21 = *(v5 + 2);
              }

              v27 = v21 <= &v39 || v15 > &v39;
              v28 = 4;
              if (v27)
              {
                v28 = 0;
              }

              *v15 = *(&v39 + v28);
            }
          }

          v7 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v7);
      }
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NRMiniUUIDSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v6 = [(NRMiniUUIDSet *)self initWithData:v5];

  return v6;
}

- (NRMiniUUIDSet)initWithData:(id)data
{
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = NRMiniUUIDSet;
  v5 = [(NRMiniUUIDSet *)&v17 init];
  if (v5 && [dataCopy length] >= 4)
  {
    v6 = [dataCopy length] >> 2;
    std::vector<unsigned int>::reserve((v5 + 8), v6);
    v7 = *(v5 + 1);
    v8 = *(v5 + 2);
    v9 = (v8 - v7) >> 2;
    if (v6 <= v9)
    {
      if (v6 >= v9)
      {
LABEL_15:
        memcpy(v7, [dataCopy bytes], *(v5 + 3) - *(v5 + 1));
        goto LABEL_16;
      }

      v15 = &v7[4 * v6];
    }

    else
    {
      v10 = v6 - v9;
      v11 = *(v5 + 3);
      if (v10 > (v11 - v8) >> 2)
      {
        v12 = v11 - v7;
        v13 = v12 >> 1;
        if (v12 >> 1 <= v6)
        {
          v13 = v6;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v14);
      }

      bzero(*(v5 + 2), 4 * v10);
      v15 = (v8 + 4 * v10);
    }

    *(v5 + 2) = v15;
    goto LABEL_15;
  }

LABEL_16:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  begin = self->_miniUUIDs.__begin_;
  if (self->_miniUUIDs.__end_ != begin)
  {
    v7 = coderCopy;
    begin = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:begin length:self->_miniUUIDs.__cap_ - begin];
    [v7 encodeObject:begin forKey:@"data"];

    coderCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NRMiniUUIDSet);
  v5 = v4;
  if (v4 != self)
  {
    p_miniUUIDs = &v4->_miniUUIDs;
    begin = v4->_miniUUIDs.__begin_;
    v8 = self->_miniUUIDs.__begin_;
    end = self->_miniUUIDs.__end_;
    v10 = end - v8;
    cap = v4->_miniUUIDs.__cap_;
    if (cap - begin < (end - v8))
    {
      v12 = v10 >> 2;
      if (begin)
      {
        v4->_miniUUIDs.__end_ = begin;
        operator delete(begin);
        cap = 0;
        p_miniUUIDs->__begin_ = 0;
        v5->_miniUUIDs.__end_ = 0;
        v5->_miniUUIDs.__cap_ = 0;
      }

      if (!(v12 >> 62))
      {
        v13 = cap >> 1;
        if (cap >> 1 <= v12)
        {
          v13 = v10 >> 2;
        }

        if (cap >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (!(v14 >> 62))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v14);
        }
      }

      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v15 = v4->_miniUUIDs.__end_;
    v16 = v15 - begin;
    if (v15 - begin >= v10)
    {
      if (end != v8)
      {
        memmove(begin, v8, end - v8);
      }

      v18 = (begin + v10);
    }

    else
    {
      v17 = (v8 + v16);
      if (v15 != begin)
      {
        memmove(v4->_miniUUIDs.__begin_, v8, v16);
        v15 = v5->_miniUUIDs.__end_;
      }

      if (end != v17)
      {
        memmove(v15, v17, end - v17);
      }

      v18 = (v15 + end - v17);
    }

    v5->_miniUUIDs.__end_ = v18;
  }

  return v5;
}

- (BOOL)hasUUID:(id)d
{
  v15[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v15[0] = 0;
  v15[1] = 0;
  [dCopy getUUIDBytes:v15];
  begin = self->_miniUUIDs.__begin_;
  end = self->_miniUUIDs.__end_;
  if (end == begin)
  {
    goto LABEL_9;
  }

  v7 = end - begin;
  do
  {
    v8 = v7 >> 1;
    v9 = &begin[v7 >> 1];
    v11 = *v9;
    v10 = v9 + 1;
    v7 += ~(v7 >> 1);
    if (v11 < LODWORD(v15[0]))
    {
      begin = v10;
    }

    else
    {
      v7 = v8;
    }
  }

  while (v7);
  if (begin == end)
  {
LABEL_9:
    v12 = 0;
  }

  else
  {
    v12 = LODWORD(v15[0]) >= *begin;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)hasCapability:(unsigned int)capability
{
  begin = self->_miniUUIDs.__begin_;
  end = self->_miniUUIDs.__end_;
  if (end == begin)
  {
    return 0;
  }

  v5 = end - begin;
  do
  {
    v6 = v5 >> 1;
    v7 = &begin[v5 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v5 += ~(v5 >> 1);
    if (v9 < capability)
    {
      begin = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  return begin != end && *begin <= capability;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end