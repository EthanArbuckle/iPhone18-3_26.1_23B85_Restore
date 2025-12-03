@interface NSMutableSet(EmailFoundationAdditions)
- (id)ef_uniquedObject:()EmailFoundationAdditions;
- (void)ef_addOptionalObject:()EmailFoundationAdditions;
- (void)ef_removeObjectsInArray:()EmailFoundationAdditions;
@end

@implementation NSMutableSet(EmailFoundationAdditions)

- (id)ef_uniquedObject:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [self member:v4];
  if (!v5)
  {
    v5 = [v4 copyWithZone:0];
    [self addObject:v5];
  }

  return v5;
}

- (void)ef_removeObjectsInArray:()EmailFoundationAdditions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [self removeObject:{*(*(&v9 + 1) + 8 * v7++), v9}];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)ef_addOptionalObject:()EmailFoundationAdditions
{
  v4 = a3;
  if (v4)
  {
    [self addObject:v4];
  }
}

@end