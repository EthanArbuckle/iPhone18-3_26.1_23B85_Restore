@interface NSOrderedSet(PKSetAdditions)
- (id)pk_anyObjectPassingTest:()PKSetAdditions;
- (uint64_t)pk_hasObjectPassingTest:()PKSetAdditions;
@end

@implementation NSOrderedSet(PKSetAdditions)

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