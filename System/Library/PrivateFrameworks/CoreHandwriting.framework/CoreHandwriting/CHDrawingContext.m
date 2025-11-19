@interface CHDrawingContext
- (CHDrawingContext)initWithEdgeIndex:(unint64_t)a3 numberOfSubstrokes:(int64_t)a4 numberOfSegments:(int64_t)a5 classifiableDrawing:(id)a6 strokeGroup:()set<long;
- (id).cxx_construct;
- (set<long,)strokeGroup;
@end

@implementation CHDrawingContext

- (CHDrawingContext)initWithEdgeIndex:(unint64_t)a3 numberOfSubstrokes:(int64_t)a4 numberOfSegments:(int64_t)a5 classifiableDrawing:(id)a6 strokeGroup:()set<long
{
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CHDrawingContext;
  v14 = [(CHDrawingContext *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_edgeIndex = a3;
    v14->_numberOfSubstrokes = a4;
    v14->_numberOfSegments = a5;
    objc_storeStrong(&v14->_classifiableDrawing, a6);
    if (&v15->_strokeGroup != a7)
    {
      sub_1836DDAE4(&v15->_strokeGroup, a7->__tree_.__begin_node_, &a7->__tree_.__end_node_.__left_);
    }
  }

  return v15;
}

- (set<long,)strokeGroup
{
  retstr->__tree_.__end_node_.__left_ = 0;
  p_end_node = &retstr->__tree_.__end_node_;
  retstr->__tree_.__size_ = 0;
  retstr->__tree_.__begin_node_ = &retstr->__tree_.__end_node_;
  size = self[1].__tree_.__size_;
  v5 = self + 2;
  if (size != &self[2])
  {
    do
    {
      self = sub_18368D5C4(retstr, p_end_node, &v11, &v10, (size + 32));
      if (!self->__tree_.__begin_node_)
      {
        operator new();
      }

      begin_node = *(size + 8);
      if (begin_node)
      {
        do
        {
          v8 = begin_node;
          begin_node = begin_node->__tree_.__begin_node_;
        }

        while (begin_node);
      }

      else
      {
        do
        {
          v8 = *(size + 16);
          v9 = v8->__tree_.__begin_node_ == size;
          size = v8;
        }

        while (!v9);
      }

      size = v8;
    }

    while (v8 != v5);
  }

  return self;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 6) = 0;
  *(self + 5) = self + 48;
  return self;
}

@end