@interface EFMutableInt64Set
- (id)copyWithZone:(_NSZone *)a3;
- (void)addIndexes:(id)a3;
- (void)intersectIndexes:(id)a3;
- (void)removeAllIndexes;
- (void)removeIndexes:(id)a3;
@end

@implementation EFMutableInt64Set

- (void)removeAllIndexes
{
  p_end_node = &self->super._underlying.__tree_.__end_node_;
  std::__tree<long long>::destroy(&self->super._underlying, self->super._underlying.__tree_.__end_node_.__left_);
  p_end_node->__left_ = 0;
  p_end_node[1].__left_ = 0;
  p_end_node[-1].__left_ = p_end_node;
}

- (id)copyWithZone:(_NSZone *)a3
{
  memset(v5, 170, sizeof(v5));
  std::set<long long>::set[abi:ne200100](v5, &self->super._underlying);
  v3 = [[EFInt64Set alloc] _initWithUnderlyingSet:v5];
  std::__tree<long long>::destroy(v5, v5[1]);
  return v3;
}

- (void)addIndexes:(id)a3
{
  if (a3)
  {
    std::set<long long>::insert[abi:ne200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&self->super._underlying, *(a3 + 1), a3 + 2);
  }
}

- (void)removeIndexes:(id)a3
{
  v10 = a3;
  if (v10)
  {
    if (v10 == self)
    {
      left = self->super._underlying.__tree_.__end_node_.__left_;
      p_end_node = &self->super._underlying.__tree_.__end_node_;
      std::__tree<long long>::destroy(&p_end_node[-1], left);
      p_end_node->__left_ = 0;
      p_end_node[1].__left_ = 0;
      p_end_node[-1].__left_ = p_end_node;
    }

    else
    {
      begin_node = v10->super._underlying.__tree_.__begin_node_;
      if (begin_node != &v10->super._underlying.__tree_.__end_node_)
      {
        do
        {
          std::__tree<long long>::__erase_unique<long long>(&self->super._underlying, &begin_node[4]);
          v5 = begin_node[1].__left_;
          if (v5)
          {
            do
            {
              v6 = v5;
              v5 = v5->__left_;
            }

            while (v5);
          }

          else
          {
            do
            {
              v6 = begin_node[2].__left_;
              v7 = v6->__left_ == begin_node;
              begin_node = v6;
            }

            while (!v7);
          }

          begin_node = v6;
        }

        while (v6 != &v10->super._underlying.__tree_.__end_node_);
      }
    }
  }
}

- (void)intersectIndexes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && *(v4 + 3))
  {
    v11[0] = 0;
    v11[1] = 0;
    v10 = v11;
    begin_node = self->super._underlying.__tree_.__begin_node_;
    p_underlying = &self->super._underlying;
    std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::insert_iterator<std::set<long long>>>(begin_node, &p_underlying->__tree_.__end_node_.__left_, *(v4 + 1), v4 + 2, &v10, v11, v12);
    if (p_underlying != &v10)
    {
      std::__tree<long long>::__assign_multi<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(p_underlying, v10, v11);
    }

    std::__tree<long long>::destroy(&v10, v11[0]);
  }

  else
  {
    left = self->super._underlying.__tree_.__end_node_.__left_;
    p_end_node = &self->super._underlying.__tree_.__end_node_;
    std::__tree<long long>::destroy(&p_end_node[-1], left);
    p_end_node->__left_ = 0;
    p_end_node[1].__left_ = 0;
    p_end_node[-1].__left_ = p_end_node;
  }
}

@end