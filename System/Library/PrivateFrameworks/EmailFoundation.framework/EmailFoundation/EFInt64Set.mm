@interface EFInt64Set
+ (id)indexSet;
+ (id)indexSetWithIndexesInRange:(_EFInt64Range)a3;
- (BOOL)containsIndex:(int64_t)a3;
- (EFInt64Set)init;
- (NSString)commaSeparatedString;
- (NSString)description;
- (NSString)ef_SQLExpression;
- (_EFInt64Range)_lastRange;
- (id).cxx_construct;
- (id)_initWithIndexesInRange:(_EFInt64Range)a3;
- (id)_initWithUnderlyingSet:(const void *)a3;
- (id)lowestIndexesInRange:(_EFInt64Range)a3 maxCount:(unint64_t)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)firstIndex;
- (int64_t)indexGreaterThanIndex:(int64_t)a3;
- (int64_t)lastIndex;
- (unint64_t)_enumerateIndexesInRange:(_EFInt64Range *)a3 maxCount:(unint64_t)a4 withBlock:(id)a5;
- (unint64_t)getIndexes:(int64_t *)a3 maxCount:(unint64_t)a4 inIndexRange:(_EFInt64Range *)a5;
- (void)_appendRange:(_EFInt64Range)a3 toString:(id)a4 withSeparator:(BOOL)a5;
- (void)ef_renderSQLExpressionInto:(id)a3 conjoiner:(id)a4;
- (void)enumerateIndexesUsingBlock:(id)a3;
@end

@implementation EFInt64Set

- (EFInt64Set)init
{
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  v2 = [(EFInt64Set *)self _initWithUnderlyingSet:&v4];
  std::__tree<long long>::destroy(&v4, v5[0]);
  return v2;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

- (id)_initWithUnderlyingSet:(const void *)a3
{
  v8.receiver = self;
  v8.super_class = EFInt64Set;
  v4 = [(EFInt64Set *)&v8 init];
  p_underlying = &v4->_underlying;
  if (v4)
  {
    v6 = p_underlying == a3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    std::__tree<long long>::__assign_multi<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(p_underlying, *a3, a3 + 1);
  }

  return v4;
}

- (id)_initWithIndexesInRange:(_EFInt64Range)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(EFInt64Set *)self init];
  if (v5)
  {
    v6 = var0 + var1;
    for (i = var0; i < v6; ++i)
    {
      std::__tree<long long>::__emplace_unique_key_args<long long,long long const&>(&v5->_underlying, &i);
    }
  }

  return v5;
}

+ (id)indexSet
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)indexSetWithIndexesInRange:(_EFInt64Range)a3
{
  v3 = [[a1 alloc] _initWithIndexesInRange:{a3.var0, a3.var1}];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  memset(v5, 170, sizeof(v5));
  std::set<long long>::set[abi:ne200100](v5, &self->_underlying);
  v3 = [(EFInt64Set *)[EFMutableInt64Set alloc] _initWithUnderlyingSet:v5];
  std::__tree<long long>::destroy(v5, v5[1]);
  return v3;
}

- (BOOL)containsIndex:(int64_t)a3
{
  left = self->_underlying.__tree_.__end_node_.__left_;
  p_end_node = &self->_underlying.__tree_.__end_node_;
  v4 = left;
  if (!left)
  {
    goto LABEL_8;
  }

  v6 = p_end_node;
  do
  {
    if (v4[4].__left_ >= a3)
    {
      v6 = v4;
    }

    v4 = v4[v4[4].__left_ < a3].__left_;
  }

  while (v4);
  if (v6 == p_end_node || v6[4].__left_ > a3)
  {
LABEL_8:
    v6 = p_end_node;
  }

  return v6 != p_end_node;
}

- (int64_t)firstIndex
{
  begin_node = self->_underlying.__tree_.__begin_node_;
  if (begin_node == &self->_underlying.__tree_.__end_node_)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return begin_node[4].__left_;
  }
}

- (int64_t)lastIndex
{
  p_end_node = &self->_underlying.__tree_.__end_node_;
  if (&self->_underlying.__tree_.__end_node_ == self->_underlying.__tree_.__begin_node_)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  left = p_end_node->__left_;
  if (p_end_node->__left_)
  {
    do
    {
      v4 = left;
      left = left[1];
    }

    while (left);
  }

  else
  {
    do
    {
      v4 = p_end_node[2].__left_;
      v5 = *v4 == p_end_node;
      p_end_node = v4;
    }

    while (v5);
  }

  return v4[4];
}

- (unint64_t)getIndexes:(int64_t *)a3 maxCount:(unint64_t)a4 inIndexRange:(_EFInt64Range *)a5
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__EFInt64Set_getIndexes_maxCount_inIndexRange___block_invoke;
  v10[3] = &__block_descriptor_40_e11_v24__0Q8q16l;
  v10[4] = a3;
  result = [(EFInt64Set *)self _enumerateIndexesInRange:a5 maxCount:a4 withBlock:v10];
  if (a5)
  {
    if (result)
    {
      v8 = a3[result - 1];
      v9 = a5->var0 + a5->var1 + ~v8;
      a5->var0 = v8 + 1;
      a5->var1 = v9;
    }
  }

  return result;
}

- (id)lowestIndexesInRange:(_EFInt64Range)a3 maxCount:(unint64_t)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v20 = a3;
  if ([(EFInt64Set *)self count]> a4 || var0 > [(EFInt64Set *)self firstIndex]|| (var1 + var0) <= [(EFInt64Set *)self lastIndex])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x4812000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    v17 = &unk_1C61D722D;
    v19[0] = 0;
    v19[1] = 0;
    v18 = v19;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__EFInt64Set_lowestIndexesInRange_maxCount___block_invoke;
    v11[3] = &unk_1E8248CA0;
    v11[4] = &v12;
    [(EFInt64Set *)self _enumerateIndexesInRange:&v20 maxCount:a4 withBlock:v11];
    v9 = [EFInt64Set alloc];
    v8 = [(EFInt64Set *)v9 _initWithUnderlyingSet:v13 + 6];
    _Block_object_dispose(&v12, 8);
    std::__tree<long long>::destroy(&v18, v19[0]);
  }

  else
  {
    v8 = [(EFInt64Set *)self copy];
  }

  return v8;
}

- (unint64_t)_enumerateIndexesInRange:(_EFInt64Range *)a3 maxCount:(unint64_t)a4 withBlock:(id)a5
{
  v8 = a5;
  if (a3)
  {
    var1 = a3->var1;
    if (!var1)
    {
LABEL_18:
      v22 = 0;
      goto LABEL_19;
    }

    var0 = a3->var0;
    v11 = a3->var0 + var1 - 1;
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFELL;
    var0 = 0x8000000000000000;
  }

  left = self->_underlying.__tree_.__end_node_.__left_;
  p_end_node = &self->_underlying.__tree_.__end_node_;
  v12 = left;
  if (!left)
  {
    goto LABEL_18;
  }

  v15 = p_end_node;
  v16 = v12;
  do
  {
    if (v16[4].__left_ >= var0)
    {
      v15 = v16;
    }

    v16 = v16[v16[4].__left_ < var0].__left_;
  }

  while (v16);
  do
  {
    v17 = v12[4].__left_;
    v18 = v11 < v17;
    v19 = v11 >= v17;
    if (v18)
    {
      p_end_node = v12;
    }

    v12 = v12[v19].__left_;
  }

  while (v12);
  v20 = v15 == p_end_node || a4 == 0;
  if (v20)
  {
    goto LABEL_18;
  }

  v22 = 0;
  do
  {
    (v8)[2](v8, v22, v15[4].__left_);
    v23 = v15[1].__left_;
    if (v23)
    {
      do
      {
        v24 = v23;
        v23 = v23->__left_;
      }

      while (v23);
    }

    else
    {
      do
      {
        v24 = v15[2].__left_;
        v20 = v24->__left_ == v15;
        v15 = v24;
      }

      while (!v20);
    }

    ++v22;
    if (v24 == p_end_node)
    {
      break;
    }

    v15 = v24;
  }

  while (v22 < a4);
LABEL_19:

  return v22;
}

- (int64_t)indexGreaterThanIndex:(int64_t)a3
{
  left = self->_underlying.__tree_.__end_node_.__left_;
  p_end_node = &self->_underlying.__tree_.__end_node_;
  v4 = left;
  if (!left)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = p_end_node;
  do
  {
    if (v4[4].__left_ >= a3)
    {
      v6 = v4;
    }

    v4 = v4[v4[4].__left_ < a3].__left_;
  }

  while (v4);
  if (v6 == p_end_node)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v7 = v6[4].__left_;
    if (v7 != a3)
    {
      break;
    }

    v8 = v6[1].__left_;
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = v8->__left_;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v6[2].__left_;
        v10 = v9->__left_ == v6;
        v6 = v9;
      }

      while (!v10);
    }

    v6 = v9;
    if (v9 == p_end_node)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

- (void)enumerateIndexesUsingBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"EFInt64Set.mm" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v12 = 0;
  begin_node = self->_underlying.__tree_.__begin_node_;
  p_end_node = &self->_underlying.__tree_.__end_node_;
  if (begin_node != p_end_node)
  {
    do
    {
      v5[2](v5, begin_node[4].__left_, &v12);
      if (v12)
      {
        break;
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v9 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v9 = begin_node[2].__left_;
          v10 = v9->__left_ == begin_node;
          begin_node = v9;
        }

        while (!v10);
      }

      begin_node = v9;
    }

    while (v9 != p_end_node);
  }
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
  begin_node = self->_underlying.__tree_.__begin_node_;
  if (begin_node == &self->_underlying.__tree_.__end_node_)
  {
    goto LABEL_38;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  while (1)
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    if ((v5 + v6) != begin_node[1].super.isa)
    {
      break;
    }

    ++v6;
LABEL_16:
    isa = begin_node->_underlying.__tree_.__begin_node_;
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
        left = begin_node->_underlying.__tree_.__end_node_.__left_;
        v11 = left->super.isa == begin_node;
        begin_node = left;
      }

      while (!v11);
    }

    ++v7;
    begin_node = left;
    if (left == &self->_underlying.__tree_.__end_node_)
    {
      if (!v6)
      {
        goto LABEL_38;
      }

      if (v5 < 1)
      {
        if (v6 > -v5 && ((v5 + v6) & 0x8000000000000000) != 0)
        {
          v12 = [MEMORY[0x1E696AAA8] currentHandler];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"EFInt64Range EFMakeInt64Range(int64_t, uint64_t)"}];
          [v12 handleFailureInFunction:v13 file:@"EFInt64Set.h" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"(uint64_t)loc + len <= INT64_MAX"}];
LABEL_42:
        }
      }

      else
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          v20 = [MEMORY[0x1E696AAA8] currentHandler];
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"EFInt64Range EFMakeInt64Range(int64_t, uint64_t)"}];
          [v20 handleFailureInFunction:v21 file:@"EFInt64Set.h" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"len <= INT64_MAX"}];
        }

        if ((v6 ^ 0x7FFFFFFFFFFFFFFFLL) < v5)
        {
          v12 = [MEMORY[0x1E696AAA8] currentHandler];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"EFInt64Range EFMakeInt64Range(int64_t, uint64_t)"}];
          [v12 handleFailureInFunction:v13 file:@"EFInt64Set.h" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"INT64_MAX - (int64_t)len >= loc"}];
          goto LABEL_42;
        }
      }

      [(EFInt64Set *)self _appendRange:v5 toString:v6 withSeparator:v3, (v8 ^ 1) & 1];
      goto LABEL_38;
    }
  }

  if (v5 < 1)
  {
    if (v6 > -v5 && ((v5 + v6) & 0x8000000000000000) != 0)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"EFInt64Range EFMakeInt64Range(int64_t, uint64_t)"}];
      [v24 handleFailureInFunction:v22 file:@"EFInt64Set.h" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"(uint64_t)loc + len <= INT64_MAX"}];
      goto LABEL_24;
    }
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"EFInt64Range EFMakeInt64Range(int64_t, uint64_t)"}];
      [v25 handleFailureInFunction:v23 file:@"EFInt64Set.h" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"len <= INT64_MAX"}];
    }

    if ((v6 ^ 0x7FFFFFFFFFFFFFFFLL) < v5)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"EFInt64Range EFMakeInt64Range(int64_t, uint64_t)"}];
      [v24 handleFailureInFunction:v22 file:@"EFInt64Set.h" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"INT64_MAX - (int64_t)len >= loc"}];
LABEL_24:
    }
  }

  [(EFInt64Set *)self _appendRange:v5 toString:v6 withSeparator:v3, (v8 & 1) == 0];
  if ([v3 length] <= 0x45)
  {
    v8 = 0;
LABEL_15:
    v5 = begin_node[1].super.isa;
    v6 = 1;
    goto LABEL_16;
  }

  v14 = [(EFInt64Set *)self _lastRange];
  v16 = v15;
  if (v15)
  {
    v17 = v14;
    v18 = self->_underlying.__tree_.__size_ - (v15 + v7);
    if (v18)
    {
      [v3 appendFormat:@", ...(%llu more)...", v18];
    }

    [(EFInt64Set *)self _appendRange:v17 toString:v16 withSeparator:v3, 1];
  }

LABEL_38:
  [v3 appendString:@"]"];

  return v3;
}

- (void)_appendRange:(_EFInt64Range)a3 toString:(id)a4 withSeparator:(BOOL)a5
{
  v5 = a5;
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = a4;
  if (var1)
  {
    if (v5)
    {
      [v8 appendString:{@", "}];
    }

    if (var1 == 1)
    {
      [v8 appendFormat:@"%lld", var0];
    }

    else
    {
      [v8 appendFormat:@"%lld:%lld", var0, var1 + var0 - 1];
    }
  }
}

- (_EFInt64Range)_lastRange
{
  p_end_node = &self->_underlying.__tree_.__end_node_;
  begin_node = self->_underlying.__tree_.__begin_node_;
  if (&self->_underlying.__tree_.__end_node_ == begin_node)
  {
    v7 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_36;
  }

  left = p_end_node->__left_;
  if (p_end_node->__left_)
  {
    v5 = p_end_node->__left_;
    do
    {
      v6 = v5;
      v5 = v5[1];
    }

    while (v5);
  }

  else
  {
    v9 = &self->_underlying.__tree_.__end_node_;
    do
    {
      v6 = v9[2].__left_;
      v10 = *v6 == v9;
      v9 = v6;
    }

    while (v10);
  }

  v8 = v6[4];
  if (left)
  {
    do
    {
      v11 = left;
      left = left[1].__left_;
    }

    while (left);
  }

  else
  {
    do
    {
      v11 = p_end_node[2].__left_;
      v10 = v11->__left_ == p_end_node;
      p_end_node = v11;
    }

    while (v10);
  }

  v7 = 1;
  if (v11 == begin_node)
  {
    if (v8 > 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    do
    {
      v12 = v11->__left_;
      v13 = v11->__left_;
      v14 = v11;
      if (v11->__left_)
      {
        do
        {
          v15 = v13;
          v13 = v13[1];
        }

        while (v13);
      }

      else
      {
        do
        {
          v15 = v14[2].__left_;
          v10 = *v15 == v14;
          v14 = v15;
        }

        while (v10);
      }

      if (v15[4] != (v8 - 1))
      {
        break;
      }

      v16 = v11->__left_;
      v17 = v11;
      if (v12)
      {
        do
        {
          v18 = v16;
          v16 = v16[1];
        }

        while (v16);
      }

      else
      {
        do
        {
          v18 = v17[2].__left_;
          v10 = *v18 == v17;
          v17 = v18;
        }

        while (v10);
      }

      if (v12)
      {
        do
        {
          v19 = v12;
          v12 = v12->_underlying.__tree_.__begin_node_;
        }

        while (v12);
      }

      else
      {
        do
        {
          v19 = v11[2].__left_;
          v10 = v19->super.isa == v11;
          v11 = v19;
        }

        while (v10);
      }

      v8 = v18[4];
      ++v7;
      v11 = v19;
    }

    while (v19 != begin_node);
    if (v8 > 0)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"EFInt64Range EFMakeInt64Range(int64_t, uint64_t)"}];
        [v20 handleFailureInFunction:v21 file:@"EFInt64Set.h" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"len <= INT64_MAX"}];
      }

LABEL_32:
      if ((v7 ^ 0x7FFFFFFFFFFFFFFFLL) < v8)
      {
        v22 = [MEMORY[0x1E696AAA8] currentHandler];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"EFInt64Range EFMakeInt64Range(int64_t, uint64_t)"}];
        [v22 handleFailureInFunction:v23 file:@"EFInt64Set.h" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"INT64_MAX - (int64_t)len >= loc"}];
LABEL_38:

        goto LABEL_36;
      }

      goto LABEL_36;
    }
  }

  if (v7 > -v8 && ((v7 + v8) & 0x8000000000000000) != 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"EFInt64Range EFMakeInt64Range(int64_t, uint64_t)"}];
    [v22 handleFailureInFunction:v23 file:@"EFInt64Set.h" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"(uint64_t)loc + len <= INT64_MAX"}];
    goto LABEL_38;
  }

LABEL_36:
  v24 = v8;
  v25 = v7;
  result.var1 = v25;
  result.var0 = v24;
  return result;
}

- (NSString)commaSeparatedString
{
  begin_node = self->_underlying.__tree_.__begin_node_;
  p_end_node = &self->_underlying.__tree_.__end_node_;
  if (begin_node == &self->_underlying.__tree_.__end_node_)
  {
    v4 = &stru_1F459BF68;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"%lld", begin_node[1].super.isa];
    isa = begin_node->_underlying.__tree_.__begin_node_;
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
        left = begin_node->_underlying.__tree_.__end_node_.__left_;
        v7 = left->super.isa == begin_node;
        begin_node = left;
      }

      while (!v7);
    }

    if (left != p_end_node)
    {
      do
      {
        [(__CFString *)v4 appendFormat:@", %lld", left[1].super.isa];
        v8 = left->_underlying.__tree_.__begin_node_;
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = v8->__left_;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = left->_underlying.__tree_.__end_node_.__left_;
            v7 = v9->__left_ == left;
            left = v9;
          }

          while (!v7);
        }

        left = v9;
      }

      while (v9 != p_end_node);
    }
  }

  return v4;
}

- (NSString)ef_SQLExpression
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(EFInt64Set *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (void)ef_renderSQLExpressionInto:(id)a3 conjoiner:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__EFInt64Set_EFSQLExpressable__ef_renderSQLExpressionInto_conjoiner___block_invoke;
  v10[3] = &unk_1E8249CC0;
  v12 = v7;
  v13 = v14;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  [(EFInt64Set *)self enumerateIndexesUsingBlock:v10];

  _Block_object_dispose(v14, 8);
}

uint64_t __69__EFInt64Set_EFSQLExpressable__ef_renderSQLExpressionInto_conjoiner___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 24) == 1)
  {
    [*(a1 + 32) appendString:*(a1 + 40)];
  }

  else
  {
    *(v4 + 24) = 1;
  }

  return [*(a1 + 32) appendFormat:@"%lld", a2];
}

@end