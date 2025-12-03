@interface NSArray(BRAdditions)
- (id)_br_minMaxWithMax:()BRAdditions comparator:;
- (id)br_copy_if:()BRAdditions;
- (id)br_firstItemOf:()BRAdditions;
- (id)br_transform:()BRAdditions keepNull:;
- (id)br_zipApplyWithArray:()BRAdditions applyBlock:;
- (uint64_t)br_all_of:()BRAdditions;
- (uint64_t)br_all_of_type:()BRAdditions;
- (uint64_t)br_any_of:()BRAdditions;
- (uint64_t)br_count_if:()BRAdditions;
- (uint64_t)br_lastIndexOfObject:()BRAdditions;
@end

@implementation NSArray(BRAdditions)

- (id)br_transform:()BRAdditions keepNull:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
  v9 = [selfCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(selfCopy);
        }

        v14 = v6[2](v6, *(*(&v20 + 1) + 8 * i), v11);
        v15 = v14;
        if (!a4 || v14)
        {
          if (!v14)
          {
            goto LABEL_12;
          }

          v17 = v7;
          v16 = v15;
        }

        else
        {
          v16 = objc_opt_class();
          v17 = v7;
        }

        [v17 addObject:{v16, v20}];
LABEL_12:
        ++v11;
      }

      v10 = [selfCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)br_copy_if:()BRAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (uint64_t)br_count_if:()BRAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 += v4[2](v4, *(*(&v13 + 1) + 8 * i));
      }

      v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (uint64_t)br_all_of:()BRAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (!v4[2](v4, *(*(&v13 + 1) + 8 * v9)))
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (uint64_t)br_any_of:()BRAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (v4[2](v4, *(*(&v11 + 1) + 8 * i)))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)br_all_of_type:()BRAdditions
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__NSArray_BRAdditions__br_all_of_type___block_invoke;
  v4[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v4[4] = a3;
  return [self br_all_of:v4];
}

- (id)_br_minMaxWithMax:()BRAdditions comparator:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  v21 = 0uLL;
  v22 = 0uLL;
  selfCopy = self;
  v9 = [selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(selfCopy);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (v11)
        {
          if (v6[2](v6, v11, *(*(&v19 + 1) + 8 * i)) == v7)
          {
            v15 = v11;
          }

          else
          {
            v15 = v14;
          }

          v16 = v15;

          v11 = v16;
        }

        else
        {
          v11 = v14;
        }
      }

      v10 = [selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)br_firstItemOf:()BRAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (uint64_t)br_lastIndexOfObject:()BRAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([self count])
  {
    v5 = [self count];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    reverseObjectEnumerator = [self reverseObjectEnumerator];
    v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        v10 = 0;
        v11 = v5 - v8;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          if ([*(*(&v15 + 1) + 8 * v10) isEqual:v4])
          {
            v12 = ~v10 + v5;
            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
        v5 = v11;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)br_zipApplyWithArray:()BRAdditions applyBlock:
{
  v6 = a3;
  v7 = a4;
  v8 = [self count];
  v9 = [v6 count];
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v13 = [self objectAtIndexedSubscript:i];
      v14 = [v6 objectAtIndexedSubscript:i];
      v15 = v7[2](v7, v13, v14);

      if (v15)
      {
        [v11 addObject:v15];
      }
    }
  }

  return v11;
}

@end