@interface NSSet(PKSetAdditions)
- (id)pk_anyObjectPassingTest:()PKSetAdditions;
- (id)pk_mutableArrayCopy;
- (id)pk_setByApplyingBlock:()PKSetAdditions;
- (id)pk_setByRemovingObject:()PKSetAdditions;
- (id)pk_setBySafelyApplyingBlock:()PKSetAdditions;
- (uint64_t)pk_arrayCopy;
- (uint64_t)pk_hasObjectPassingTest:()PKSetAdditions;
@end

@implementation NSSet(PKSetAdditions)

- (uint64_t)pk_arrayCopy
{
  if (![self count])
  {
    return MEMORY[0x1E695E0F0];
  }

  pk_mutableArrayCopy = [self pk_mutableArrayCopy];
  v3 = [pk_mutableArrayCopy copy];

  return v3;
}

- (id)pk_mutableArrayCopy
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [self count];
  v3 = MEMORY[0x1E695DF70];
  if (v2)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    selfCopy = self;
    v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(selfCopy);
          }

          [v4 addObject:{*(*(&v11 + 1) + 8 * v9++), v11}];
        }

        while (v7 != v9);
        v7 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    return v4;
  }

  else
  {

    return objc_alloc_init(v3);
  }
}

- (id)pk_setByRemovingObject:()PKSetAdditions
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != %@", a3];
  v5 = [self filteredSetUsingPredicate:v4];

  return v5;
}

- (id)pk_setByApplyingBlock:()PKSetAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v5];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    selfCopy = self;
    v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(selfCopy);
          }

          v12 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
          [v6 addObject:{v12, v15}];
        }

        v9 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v13;
}

- (id)pk_setBySafelyApplyingBlock:()PKSetAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v5];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    selfCopy = self;
    v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(selfCopy);
          }

          v12 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
          if (v12)
          {
            [v6 addObject:{v12, v15}];
          }
        }

        v9 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v13;
}

- (uint64_t)pk_hasObjectPassingTest:()PKSetAdditions
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    selfCopy = self;
    v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(selfCopy);
          }

          if (v4[2](v4, *(*(&v10 + 1) + 8 * i)))
          {
            v6 = 1;
            goto LABEL_12;
          }
        }

        v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pk_anyObjectPassingTest:()PKSetAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    selfCopy = self;
    v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(selfCopy);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (v4[2](v4, v9))
          {
            v6 = v9;
            goto LABEL_12;
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

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end