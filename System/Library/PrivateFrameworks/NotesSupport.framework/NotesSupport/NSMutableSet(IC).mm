@interface NSMutableSet(IC)
- (uint64_t)ic_addNonEmptyString:()IC;
- (void)ic_addNonNilObject:()IC;
- (void)ic_addObjectsFromNonNilArray:()IC;
- (void)ic_removeNonNilObject:()IC;
- (void)ic_removeObjectsFromNonNilArray:()IC;
@end

@implementation NSMutableSet(IC)

- (void)ic_addNonNilObject:()IC
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

- (void)ic_removeNonNilObject:()IC
{
  if (a3)
  {
    return [a1 removeObject:?];
  }

  return a1;
}

- (void)ic_addObjectsFromNonNilArray:()IC
{
  if (a3)
  {
    return [a1 addObjectsFromArray:?];
  }

  return a1;
}

- (void)ic_removeObjectsFromNonNilArray:()IC
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [a1 removeObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (uint64_t)ic_addNonEmptyString:()IC
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if ([v4 length])
    {
      [a1 addObject:v6];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

@end