@interface XRIndexSet
+ (id)indexSetWithIndex:(unint64_t)a3;
+ (id)indexSetWithIndexesInRange:(_XRIndexRange)a3;
- (BOOL)countEquals:(unint64_t)a3;
- (XRIndexSet)initWithIndex:(unint64_t)a3;
- (XRIndexSet)initWithIndexes:(_XRIndexRange)a3;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)count;
- (unint64_t)firstIndex;
- (unint64_t)lastIndex;
- (void)enumerateIndexesUsingBlock:(id)a3;
- (void)enumerateRangesUsingBlock:(id)a3;
@end

@implementation XRIndexSet

- (XRIndexSet)initWithIndex:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = XRIndexSet;
  v4 = [(XRIndexSet *)&v6 init];
  if (v4)
  {
    v7[0] = a3;
    v7[1] = a3;
    sub_24808FECC(&v4->_impl, v7);
  }

  return 0;
}

- (XRIndexSet)initWithIndexes:(_XRIndexRange)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v8.receiver = self;
  v8.super_class = XRIndexSet;
  v5 = [(XRIndexSet *)&v8 init];
  v6 = v5;
  if (v5)
  {
    if (var1)
    {
      v9[0] = var0;
      v9[1] = var0 + var1 - 1;
      sub_24808FECC(&v5->_impl, v9);
    }

    sub_24808EFF4(&v5->_impl);
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(XRMutableIndexSet);
  v5 = sub_24808F164(v4, self);
  return v4;
}

+ (id)indexSetWithIndex:(unint64_t)a3
{
  v4 = [XRIndexSet alloc];
  v8 = objc_msgSend_initWithIndex_(v4, v5, a3, v6, v7);

  return v8;
}

+ (id)indexSetWithIndexesInRange:(_XRIndexRange)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [XRIndexSet alloc];
  v8 = objc_msgSend_initWithIndexes_(v5, v6, var0, var1, v7);

  return v8;
}

- (unint64_t)count
{
  p_end_node = &self->_impl._ranges.__tree_.__end_node_;
  begin_node = self->_impl._ranges.__tree_.__begin_node_;
  if (begin_node == &self->_impl._ranges.__tree_.__end_node_)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = begin_node->_impl._ranges.__tree_.__begin_node_;
    v6 = begin_node;
    if (v5)
    {
      do
      {
        left = v5;
        v5 = v5->__left_;
      }

      while (v5);
    }

    else
    {
      do
      {
        left = v6->_impl._ranges.__tree_.__end_node_.__left_;
        v8 = left->__left_ == v6;
        v6 = left;
      }

      while (!v8);
    }

    result = result + begin_node->_impl._cache.__elems_[0].last - begin_node->_impl._cache.__elems_[0].first + 1;
    begin_node = left;
  }

  while (left != p_end_node);
  return result;
}

- (BOOL)countEquals:(unint64_t)a3
{
  begin_node = self->_impl._ranges.__tree_.__begin_node_;
  if (begin_node == &self->_impl._ranges.__tree_.__end_node_)
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = 0;
    do
    {
      v4 = v4 + begin_node->_impl._cache.__elems_[0].last - begin_node->_impl._cache.__elems_[0].first + 1;
      v5 = v4 <= a3;
      if (v4 > a3)
      {
        break;
      }

      isa = begin_node->_impl._ranges.__tree_.__begin_node_;
      if (isa)
      {
        do
        {
          left = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          left = begin_node->_impl._ranges.__tree_.__end_node_.__left_;
          v8 = left->super.isa == begin_node;
          begin_node = left;
        }

        while (!v8);
      }

      begin_node = left;
    }

    while (left != &self->_impl._ranges.__tree_.__end_node_);
  }

  return v4 == a3 && v5;
}

- (unint64_t)firstIndex
{
  if (!self->_impl._ranges.__tree_.__size_)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2, v3, v4);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"XRIndexSet.mm", 91, @"firstIndex called on empty index set");
  }

  return *(self->_impl._ranges.__tree_.__begin_node_ + 4);
}

- (unint64_t)lastIndex
{
  if (!self->_impl._ranges.__tree_.__size_)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2, v3, v4);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"XRIndexSet.mm", 96, @"lastIndex called on empty index set");
  }

  return sub_24808F4B4(&self->_impl);
}

- (void)enumerateIndexesUsingBlock:(id)a3
{
  v4 = a3;
  v10 = 0;
  begin_node = self->_impl._ranges.__tree_.__begin_node_;
  v8[0] = begin_node;
  v8[1] = &self->_impl._ranges.__tree_.__end_node_;
  if (begin_node == &self->_impl._ranges.__tree_.__end_node_)
  {
    first = 0;
  }

  else
  {
    first = begin_node->_impl._cache.__elems_[0].first;
  }

  v9 = first;
  while (v8[0] != &self->_impl._ranges.__tree_.__end_node_ || v9 != 0)
  {
    v4[2](v4);
    if (v10)
    {
      break;
    }

    sub_24808F72C(v8);
  }
}

- (void)enumerateRangesUsingBlock:(id)a3
{
  v4 = a3;
  begin_node = self->_impl._ranges.__tree_.__begin_node_;
  if (begin_node != &self->_impl._ranges.__tree_.__end_node_)
  {
    do
    {
      v6 = begin_node->_impl._cache.__elems_[0].last - begin_node->_impl._cache.__elems_[0].first;
      v4[2](v4);
      isa = begin_node->_impl._ranges.__tree_.__begin_node_;
      if (isa)
      {
        do
        {
          left = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          left = begin_node->_impl._ranges.__tree_.__end_node_.__left_;
          v9 = left->super.isa == begin_node;
          begin_node = left;
        }

        while (!v9);
      }

      begin_node = left;
    }

    while (left != &self->_impl._ranges.__tree_.__end_node_);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 96) = 0;
  return self;
}

@end