@interface DVTKtraceSymbolsInformation
- (id).cxx_construct;
- (id)getSymbolInfoForAddress:(unint64_t)a3;
- (void)addSymbolInfoForRange:(unint64_t)a3 length:(unint64_t)a4 symbolInfo:(id)a5;
@end

@implementation DVTKtraceSymbolsInformation

- (void)addSymbolInfoForRange:(unint64_t)a3 length:(unint64_t)a4 symbolInfo:(id)a5
{
  v7[0] = a3;
  v7[1] = a4;
  v8 = a5;
  v6 = v8;
  sub_247FABA7C(&self->_symbolInfos, v7);
}

- (id)getSymbolInfoForAddress:(unint64_t)a3
{
  if (!self->_symbolInfos.__tree_.__size_)
  {
    goto LABEL_23;
  }

  left = self->_symbolInfos.__tree_.__end_node_.__left_;
  if (!left)
  {
    p_end_node = &self->_symbolInfos.__tree_.__end_node_;
    do
    {
LABEL_16:
      v10 = p_end_node->_symbolInfos.__tree_.__end_node_.__left_;
      v11 = *v10 == p_end_node;
      p_end_node = v10;
    }

    while (v11);
    goto LABEL_20;
  }

  p_end_node = &self->_symbolInfos.__tree_.__end_node_;
  do
  {
    v5 = *(left + 4);
    v6 = v5 >= a3;
    v7 = v5 < a3;
    if (v6)
    {
      p_end_node = left;
    }

    left = *(left + v7);
  }

  while (left);
  if (p_end_node != &self->_symbolInfos.__tree_.__end_node_)
  {
    isa = p_end_node[1].super.isa;
    if (p_end_node == self->_symbolInfos.__tree_.__begin_node_ && isa > a3)
    {
      goto LABEL_23;
    }

    if (isa == a3)
    {
      v10 = p_end_node;
LABEL_22:
      v14 = *(v10 + 6);
      goto LABEL_24;
    }

    v16 = p_end_node->super.isa;
    if (p_end_node->super.isa)
    {
      do
      {
        v10 = v16;
        v16 = *(v16 + 1);
      }

      while (v16);
    }

    else
    {
      do
      {
        v10 = p_end_node->_symbolInfos.__tree_.__end_node_.__left_;
        v11 = *v10 == p_end_node;
        p_end_node = v10;
      }

      while (v11);
    }

    v13 = *(v10 + 4);
    if (v13 >= a3)
    {
      sub_24802E690();
    }

    goto LABEL_21;
  }

  v12 = p_end_node->super.isa;
  if (!p_end_node->super.isa)
  {
    goto LABEL_16;
  }

  do
  {
    v10 = v12;
    v12 = *(v12 + 1);
  }

  while (v12);
LABEL_20:
  v13 = *(v10 + 4);
LABEL_21:
  if (*(v10 + 5) + v13 > a3)
  {
    goto LABEL_22;
  }

LABEL_23:
  v14 = 0;
LABEL_24:

  return v14;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end