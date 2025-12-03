@interface NSMutableSet(ITK)
+ (id)itk_setFromNonNilArray:()ITK;
- (void)itk_addNonNilObject:()ITK;
- (void)itk_addObjectsFromNonNilArray:()ITK;
- (void)itk_removeNonNilObject:()ITK;
- (void)itk_removeObjectsFromNonNilArray:()ITK;
@end

@implementation NSMutableSet(ITK)

+ (id)itk_setFromNonNilArray:()ITK
{
  v4 = MEMORY[0x277CBEBF8];
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v6 = [self setWithArray:v5];

  return v6;
}

- (void)itk_addNonNilObject:()ITK
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

- (void)itk_removeNonNilObject:()ITK
{
  if (a3)
  {
    return [self removeObject:?];
  }

  return self;
}

- (void)itk_addObjectsFromNonNilArray:()ITK
{
  if (a3)
  {
    return [self addObjectsFromArray:?];
  }

  return self;
}

- (void)itk_removeObjectsFromNonNilArray:()ITK
{
  v14 = *MEMORY[0x277D85DE8];
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

        [self removeObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end