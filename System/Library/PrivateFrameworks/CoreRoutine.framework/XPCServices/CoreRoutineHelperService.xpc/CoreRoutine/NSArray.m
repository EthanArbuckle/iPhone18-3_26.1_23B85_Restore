@interface NSArray
- (id)flatten;
- (id)shuffle;
@end

@implementation NSArray

- (id)flatten
{
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(NSArray *)self copy];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = objc_opt_class();
        if ([v10 isSubclassOfClass:{objc_opt_class(), v16}])
        {
          v11 = [v9 flatten];
          [v3 addObjectsFromArray:v11];
LABEL_13:

          goto LABEL_14;
        }

        if (objc_opt_respondsToSelector())
        {
          v12 = [v9 allObjects];
LABEL_12:
          v11 = v12;
          v13 = [v12 flatten];
          [v3 addObjectsFromArray:v13];

          goto LABEL_13;
        }

        if (objc_opt_respondsToSelector())
        {
          v12 = [v9 allValues];
          goto LABEL_12;
        }

        [v3 addObject:v9];
LABEL_14:
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v14 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v6 = v14;
    }

    while (v14);
  }

  return v3;
}

- (id)shuffle
{
  v2 = [NSMutableArray arrayWithArray:self];
  v3 = [v2 count];
  if (v3 >= 2)
  {
    do
    {
      v4 = (v3 - 1);
      [v2 exchangeObjectAtIndex:v3 - 1 withObjectAtIndex:arc4random_uniform(v3)];
      v3 = v4;
    }

    while (v4 > 1);
  }

  return v2;
}

@end