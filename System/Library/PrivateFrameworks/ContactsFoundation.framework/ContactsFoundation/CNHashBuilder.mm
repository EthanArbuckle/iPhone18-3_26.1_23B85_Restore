@interface CNHashBuilder
+ (unint64_t)arrayHash:(id)a3;
+ (unint64_t)cgpointHash:(CGPoint)a3;
+ (unint64_t)cgrectHash:(CGRect)a3;
+ (unint64_t)cgsizeHash:(CGSize)a3;
+ (unint64_t)dictionaryHash:(id)a3;
+ (unint64_t)hashWithBlocks:(id)a3;
+ (unint64_t)integerHash:(int64_t)a3;
+ (unint64_t)objectHash:(id)a3;
+ (unint64_t)orderedSetHash:(id)a3;
+ (unint64_t)setHash:(id)a3;
@end

@implementation CNHashBuilder

+ (unint64_t)hashWithBlocks:(id)a3
{
  v3 = a3;
  v9 = &v10;
  if (!v3)
  {
    return 17;
  }

  v4 = v3;
  v5 = 17;
  do
  {
    v5 = v4[2](v4) - v5 + 32 * v5;
    v6 = v9++;
    v7 = _Block_copy(*v6);

    v4 = v7;
  }

  while (v7);
  return v5;
}

+ (unint64_t)objectHash:(id)a3
{
  if (a3)
  {
    return [a3 hash];
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)arrayHash:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      v9 = 17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [a1 objectHash:*(*(&v13 + 1) + 8 * i)] - v9 + 32 * v9;
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 17;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (unint64_t)setHash:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 allObjects];
  v5 = [v4 _cn_map:&__block_literal_global_44];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_3_0];

  v7 = [a1 arrayHash:v6];
  return v7;
}

uint64_t __25__CNHashBuilder_setHash___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 hash];

  return [v2 numberWithUnsignedInteger:v3];
}

+ (unint64_t)orderedSetHash:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 array];
  v5 = [a1 arrayHash:v4];

  return v5;
}

+ (unint64_t)dictionaryHash:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 17;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__CNHashBuilder_dictionaryHash___block_invoke;
    v8[3] = &unk_1E6ED70E8;
    v8[4] = &v9;
    v8[5] = a1;
    [v4 _cn_each:v8];
    v6 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __32__CNHashBuilder_dictionaryHash___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [v5 objectHash:a2] - v6 + 32 * v6;
  v8 = *(*(*(a1 + 32) + 8) + 24);
  v9 = [*(a1 + 40) objectHash:v7];

  *(*(*(a1 + 32) + 8) + 24) = v9 - v8 + 32 * v8;
}

+ (unint64_t)integerHash:(int64_t)a3
{
  if (a3 >= 0)
  {
    return a3;
  }

  else
  {
    return -a3;
  }
}

+ (unint64_t)cgpointHash:(CGPoint)a3
{
  y = a3.y;
  v5 = [a1 cgfloatHash:a3.x];
  return [a1 cgfloatHash:y] - v5 + 32 * v5 + 16337;
}

+ (unint64_t)cgsizeHash:(CGSize)a3
{
  height = a3.height;
  v5 = [a1 cgfloatHash:a3.width];
  return [a1 cgfloatHash:height] - v5 + 32 * v5 + 16337;
}

+ (unint64_t)cgrectHash:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6 = [a1 cgpointHash:{a3.origin.x, a3.origin.y}];
  return [a1 cgsizeHash:{width, height}] - v6 + 32 * v6 + 16337;
}

@end