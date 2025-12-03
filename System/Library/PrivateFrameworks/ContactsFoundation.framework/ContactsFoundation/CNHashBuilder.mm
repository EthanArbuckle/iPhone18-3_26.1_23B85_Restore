@interface CNHashBuilder
+ (unint64_t)arrayHash:(id)hash;
+ (unint64_t)cgpointHash:(CGPoint)hash;
+ (unint64_t)cgrectHash:(CGRect)hash;
+ (unint64_t)cgsizeHash:(CGSize)hash;
+ (unint64_t)dictionaryHash:(id)hash;
+ (unint64_t)hashWithBlocks:(id)blocks;
+ (unint64_t)integerHash:(int64_t)hash;
+ (unint64_t)objectHash:(id)hash;
+ (unint64_t)orderedSetHash:(id)hash;
+ (unint64_t)setHash:(id)hash;
@end

@implementation CNHashBuilder

+ (unint64_t)hashWithBlocks:(id)blocks
{
  blocksCopy = blocks;
  v9 = &v10;
  if (!blocksCopy)
  {
    return 17;
  }

  v4 = blocksCopy;
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

+ (unint64_t)objectHash:(id)hash
{
  if (hash)
  {
    return [hash hash];
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)arrayHash:(id)hash
{
  v18 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  v5 = hashCopy;
  if (hashCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [hashCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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

          v9 = [self objectHash:*(*(&v13 + 1) + 8 * i)] - v9 + 32 * v9;
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

+ (unint64_t)setHash:(id)hash
{
  if (!hash)
  {
    return 0;
  }

  allObjects = [hash allObjects];
  v5 = [allObjects _cn_map:&__block_literal_global_44];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_3_0];

  v7 = [self arrayHash:v6];
  return v7;
}

uint64_t __25__CNHashBuilder_setHash___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 hash];

  return [v2 numberWithUnsignedInteger:v3];
}

+ (unint64_t)orderedSetHash:(id)hash
{
  if (!hash)
  {
    return 0;
  }

  array = [hash array];
  v5 = [self arrayHash:array];

  return v5;
}

+ (unint64_t)dictionaryHash:(id)hash
{
  hashCopy = hash;
  v5 = hashCopy;
  if (hashCopy)
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
    v8[5] = self;
    [hashCopy _cn_each:v8];
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

+ (unint64_t)integerHash:(int64_t)hash
{
  if (hash >= 0)
  {
    return hash;
  }

  else
  {
    return -hash;
  }
}

+ (unint64_t)cgpointHash:(CGPoint)hash
{
  y = hash.y;
  v5 = [self cgfloatHash:hash.x];
  return [self cgfloatHash:y] - v5 + 32 * v5 + 16337;
}

+ (unint64_t)cgsizeHash:(CGSize)hash
{
  height = hash.height;
  v5 = [self cgfloatHash:hash.width];
  return [self cgfloatHash:height] - v5 + 32 * v5 + 16337;
}

+ (unint64_t)cgrectHash:(CGRect)hash
{
  height = hash.size.height;
  width = hash.size.width;
  v6 = [self cgpointHash:{hash.origin.x, hash.origin.y}];
  return [self cgsizeHash:{width, height}] - v6 + 32 * v6 + 16337;
}

@end