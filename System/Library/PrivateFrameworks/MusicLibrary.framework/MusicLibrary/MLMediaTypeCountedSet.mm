@interface MLMediaTypeCountedSet
- (id).cxx_construct;
- (id)description;
- (void)addMediaType:(unsigned int)a3 count:(unint64_t)a4;
- (void)enumerateMediaTypesWithBlock:(id)a3;
@end

@implementation MLMediaTypeCountedSet

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

- (void)enumerateMediaTypesWithBlock:(id)a3
{
  v4 = a3;
  if ([(MLMediaTypeCountedSet *)self count])
  {
    begin_node = self->_map.__tree_.__begin_node_;
    p_end_node = &self->_map.__tree_.__end_node_;
    if (begin_node != p_end_node)
    {
      do
      {
        v10 = 0;
        v4[2](v4, LODWORD(begin_node[4].__left_), begin_node[5].__left_, &v10);
        if (v10)
        {
          break;
        }

        left = begin_node[1].__left_;
        if (left)
        {
          do
          {
            v8 = left;
            left = left->__left_;
          }

          while (left);
        }

        else
        {
          do
          {
            v8 = begin_node[2].__left_;
            v9 = v8->__left_ == begin_node;
            begin_node = v8;
          }

          while (!v9);
        }

        begin_node = v8;
      }

      while (v8 != p_end_node);
    }
  }
}

- (void)addMediaType:(unsigned int)a3 count:(unint64_t)a4
{
  left = self->_map.__tree_.__end_node_.__left_;
  if (!left)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = left;
      v6 = *(left + 8);
      if (v6 <= a3)
      {
        break;
      }

      left = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (v6 >= a3)
    {
      break;
    }

    left = v5[1];
    if (!left)
    {
      goto LABEL_7;
    }
  }

  v5[5] = v5[5] + a4;
}

- (id)description
{
  if (self->_map.__tree_.__size_)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__MLMediaTypeCountedSet_description__block_invoke;
    v11[3] = &unk_278764028;
    v4 = v3;
    v12 = v4;
    [(MLMediaTypeCountedSet *)self enumerateMediaTypesWithBlock:v11];
    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"{ -empty- }";
  }

  v6 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MLMediaTypeCountedSet;
  v7 = [(MLMediaTypeCountedSet *)&v10 description];
  v8 = [v6 stringWithFormat:@"%@ types: %@", v7, v5];

  return v8;
}

void __36__MLMediaTypeCountedSet_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v5 = NSStringFromMLMediaType(a2);
  v6 = [v4 stringWithFormat:@"count[%@] %@", v7, v5];
  [v3 addObject:v6];
}

@end