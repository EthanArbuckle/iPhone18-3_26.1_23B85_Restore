@interface CNLazyArray
- (BOOL)consumeNextObject;
- (CNLazyArray)initWithArray:(id)a3;
- (CNLazyArray)initWithEnumerator:(id)a3;
- (CNLazyArray)initWithFastEnumeration:(id)a3;
- (CNLazyArray)initWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6;
- (CNLazyArray)initWithSource:(id)a3;
- (NSArray)allObjects;
- (id)all;
- (id)any;
- (id)compactMap;
- (id)contains;
- (id)distinct;
- (id)doOnNext;
- (id)filter;
- (id)firstObject;
- (id)flatMap;
- (id)lastObject;
- (id)map;
- (id)none;
- (id)reduce;
- (id)skip;
- (id)skipLast;
- (id)take;
- (id)takeLast;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)consumeAllObjects;
- (void)consumeToIndex:(unint64_t)a3;
@end

@implementation CNLazyArray

- (CNLazyArray)initWithArray:(id)a3
{
  v4 = [a3 objectEnumerator];
  v5 = [(CNLazyArray *)self initWithEnumerator:v4];

  return v5;
}

- (CNLazyArray)initWithEnumerator:(id)a3
{
  v4 = a3;
  v5 = [[_CNLazyArrayEnumeratorSource alloc] initWithEnumerator:v4];

  v6 = [(CNLazyArray *)self initWithSource:v5];
  return v6;
}

- (CNLazyArray)initWithFastEnumeration:(id)a3
{
  v4 = a3;
  v5 = [[_CNLazyArrayFastEnumerationSource alloc] initWithFastEnumeration:v4];

  v6 = [(CNLazyArray *)self initWithSource:v5];
  return v6;
}

- (CNLazyArray)initWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[_CNLazyArrayGeneratorSource alloc] initWithInitialState:v13 condition:v12 nextState:v11 resultSelector:v10];

  v15 = [(CNLazyArray *)self initWithSource:v14];
  return v15;
}

- (CNLazyArray)initWithSource:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CNLazyArray;
  v6 = [(CNLazyArray *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operationChain, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    output = v7->_output;
    v7->_output = v8;

    v10 = v7;
  }

  return v7;
}

- (NSArray)allObjects
{
  [(CNLazyArray *)self consumeAllObjects];
  output = self->_output;

  return output;
}

- (id)reduce
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __21__CNLazyArray_reduce__block_invoke;
  aBlock[3] = &unk_1E6ED73B8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __21__CNLazyArray_reduce__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v10 = v7;
  if (v9)
  {
    v11 = v9;
    v12 = *v18;
    v10 = v7;
    do
    {
      v13 = 0;
      v14 = v10;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v10 = v6[2](v6, v14, *(*(&v17 + 1) + 8 * v13));

        ++v13;
        v14 = v10;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)firstObject
{
  [(CNLazyArray *)self consumeToIndex:0];
  v3 = [(CNLazyArray *)self output];
  v4 = [v3 firstObject];

  return v4;
}

- (id)lastObject
{
  [(CNLazyArray *)self consumeAllObjects];
  v3 = [(CNLazyArray *)self output];
  v4 = [v3 lastObject];

  return v4;
}

- (id)filter
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __21__CNLazyArray_filter__block_invoke;
  aBlock[3] = &unk_1E6ED73E0;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __21__CNLazyArray_filter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_CNLazyArrayOperatorFilter alloc];
  v5 = [*(a1 + 32) operationChain];
  v6 = [(_CNLazyArrayOperatorFilter *)v4 initWithInput:v5 test:v3];

  [*(a1 + 32) setOperationChain:v6];
  v7 = *(a1 + 32);

  return v7;
}

- (id)map
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __18__CNLazyArray_map__block_invoke;
  aBlock[3] = &unk_1E6ED7408;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __18__CNLazyArray_map__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_CNLazyArrayOperatorMap alloc];
  v5 = [*(a1 + 32) operationChain];
  v6 = [(_CNLazyArrayOperatorMap *)v4 initWithInput:v5 transform:v3];

  [*(a1 + 32) setOperationChain:v6];
  v7 = *(a1 + 32);

  return v7;
}

- (id)compactMap
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __25__CNLazyArray_compactMap__block_invoke;
  aBlock[3] = &unk_1E6ED7408;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __25__CNLazyArray_compactMap__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_CNLazyArrayOperatorCompactMap alloc];
  v5 = [*(a1 + 32) operationChain];
  v6 = [(_CNLazyArrayOperatorCompactMap *)v4 initWithInput:v5 transform:v3];

  [*(a1 + 32) setOperationChain:v6];
  v7 = *(a1 + 32);

  return v7;
}

- (id)flatMap
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __22__CNLazyArray_flatMap__block_invoke;
  aBlock[3] = &unk_1E6ED7430;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __22__CNLazyArray_flatMap__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_CNLazyArrayOperatorFlatMap alloc];
  v5 = [*(a1 + 32) operationChain];
  v6 = [(_CNLazyArrayOperatorFlatMap *)v4 initWithInput:v5 transform:v3];

  [*(a1 + 32) setOperationChain:v6];
  v7 = *(a1 + 32);

  return v7;
}

- (id)all
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __18__CNLazyArray_all__block_invoke;
  aBlock[3] = &unk_1E6ED7458;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

uint64_t __18__CNLazyArray_all__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (!v3[2](v3, *(*(&v12 + 1) + 8 * v8)))
        {
          v9 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)any
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __18__CNLazyArray_any__block_invoke;
  aBlock[3] = &unk_1E6ED7458;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

uint64_t __18__CNLazyArray_any__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (v3[2](v3, *(*(&v10 + 1) + 8 * i)))
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)none
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __19__CNLazyArray_none__block_invoke;
  aBlock[3] = &unk_1E6ED7458;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

uint64_t __19__CNLazyArray_none__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (v3[2](v3, *(*(&v12 + 1) + 8 * v8)))
        {
          v9 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)contains
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __23__CNLazyArray_contains__block_invoke;
  aBlock[3] = &unk_1E6ED7480;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

uint64_t __23__CNLazyArray_contains__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqual:{v3, v10}])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)distinct
{
  v3 = [_CNLazyArrayOperatorDistinct alloc];
  v4 = [(CNLazyArray *)self operationChain];
  v5 = [(_CNLazyArrayOperatorDistinct *)v3 initWithInput:v4];
  [(CNLazyArray *)self setOperationChain:v5];

  return self;
}

- (id)skip
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __19__CNLazyArray_skip__block_invoke;
  aBlock[3] = &unk_1E6ED74A8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __19__CNLazyArray_skip__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [_CNLazyArrayOperatorSkip alloc];
    v5 = [*(a1 + 32) operationChain];
    v6 = [(_CNLazyArrayOperatorSkip *)v4 initWithInput:v5 limit:a2];
    [*(a1 + 32) setOperationChain:v6];
  }

  v7 = *(a1 + 32);

  return v7;
}

- (id)skipLast
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __23__CNLazyArray_skipLast__block_invoke;
  aBlock[3] = &unk_1E6ED74A8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __23__CNLazyArray_skipLast__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [_CNLazyArrayOperatorSkipLast alloc];
    v5 = [*(a1 + 32) operationChain];
    v6 = [(_CNLazyArrayOperatorSkipLast *)v4 initWithInput:v5 limit:a2];
    [*(a1 + 32) setOperationChain:v6];
  }

  v7 = *(a1 + 32);

  return v7;
}

- (id)take
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __19__CNLazyArray_take__block_invoke;
  aBlock[3] = &unk_1E6ED74A8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __19__CNLazyArray_take__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [_CNLazyArrayOperatorTake alloc];
    v5 = [*(a1 + 32) operationChain];
    v6 = [(_CNLazyArrayOperatorTake *)v4 initWithInput:v5 limit:a2];
  }

  else
  {
    v7 = [_CNLazyArrayEnumeratorSource alloc];
    v5 = [MEMORY[0x1E695E0F0] objectEnumerator];
    v6 = [(_CNLazyArrayEnumeratorSource *)v7 initWithEnumerator:v5];
  }

  v8 = v6;
  [*(a1 + 32) setOperationChain:v6];

  v9 = *(a1 + 32);

  return v9;
}

- (id)takeLast
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __23__CNLazyArray_takeLast__block_invoke;
  aBlock[3] = &unk_1E6ED74A8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __23__CNLazyArray_takeLast__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [_CNLazyArrayOperatorTakeLast alloc];
    v5 = [*(a1 + 32) operationChain];
    v6 = [(_CNLazyArrayOperatorTakeLast *)v4 initWithInput:v5 limit:a2];
  }

  else
  {
    v7 = [_CNLazyArrayEnumeratorSource alloc];
    v5 = [MEMORY[0x1E695E0F0] objectEnumerator];
    v6 = [(_CNLazyArrayEnumeratorSource *)v7 initWithEnumerator:v5];
  }

  v8 = v6;
  [*(a1 + 32) setOperationChain:v6];

  v9 = *(a1 + 32);

  return v9;
}

- (id)doOnNext
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __23__CNLazyArray_doOnNext__block_invoke;
  aBlock[3] = &unk_1E6ED74D0;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __23__CNLazyArray_doOnNext__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_CNLazyArrayActionOnNext alloc];
  v5 = [*(a1 + 32) operationChain];
  v6 = [(_CNLazyArrayActionOnNext *)v4 initWithInput:v5 action:v3];

  [*(a1 + 32) setOperationChain:v6];
  v7 = *(a1 + 32);

  return v7;
}

- (void)consumeToIndex:(unint64_t)a3
{
    ;
  }
}

- (void)consumeAllObjects
{
    ;
  }
}

- (BOOL)consumeNextObject
{
  v3 = [(CNLazyArray *)self operationChain];
  v4 = [v3 nextObject];

  if (v4)
  {
    [(NSMutableArray *)self->_output addObject:v4];
  }

  return v4 != 0;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  if (!var0)
  {
    a3->var2 = self;
    a3->var3[0] = [(NSMutableArray *)self->_output count:0];
    var0 = a3->var0;
  }

  [(CNLazyArray *)self consumeToIndex:var0, a4, a5];
  if ([(NSMutableArray *)self->_output count]<= a3->var0)
  {
    return 0;
  }

  v9 = [(NSMutableArray *)self->_output objectAtIndexedSubscript:?];
  *a4 = v9;
  ++a3->var0;
  a3->var1 = a4;

  return 1;
}

@end