@interface CRKPointerSet
+ (CRKPointerSet)setWithArray:(id)a3;
+ (CRKPointerSet)setWithSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CRKPointerSet)init;
- (id)setByIntersectingSet:(id)a3;
- (id)setBySubtractingSet:(id)a3;
- (void)addObjectsFromArray:(id)a3;
@end

@implementation CRKPointerSet

+ (CRKPointerSet)setWithArray:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 addObjectsFromArray:v3];

  return v4;
}

+ (CRKPointerSet)setWithSet:(id)a3
{
  v4 = [a3 allObjects];
  v5 = [a1 setWithArray:v4];

  return v5;
}

- (CRKPointerSet)init
{
  v6.receiver = self;
  v6.super_class = CRKPointerSet;
  v2 = [(CRKPointerSet *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    mBackingStore = v2->mBackingStore;
    v2->mBackingStore = v3;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(NSHashTable *)self->mBackingStore isEqualToHashTable:v6[1]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addObjectsFromArray:(id)a3
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

        [(CRKPointerSet *)self addObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)setBySubtractingSet:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(NSHashTable *)self->mBackingStore copy];
  v7 = v5[1];
  v5[1] = v6;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v5 removeObject:{*(*(&v14 + 1) + 8 * i), v14}];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v5;
}

- (id)setByIntersectingSet:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(NSHashTable *)self->mBackingStore copy];
  v7 = v5[1];
  v5[1] = v6;

  v8 = v5[1];
  v9 = v4[1];

  [v8 intersectHashTable:v9];

  return v5;
}

@end