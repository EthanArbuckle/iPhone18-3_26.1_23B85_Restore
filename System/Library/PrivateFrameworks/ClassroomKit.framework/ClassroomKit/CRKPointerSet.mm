@interface CRKPointerSet
+ (CRKPointerSet)setWithArray:(id)array;
+ (CRKPointerSet)setWithSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (CRKPointerSet)init;
- (id)setByIntersectingSet:(id)set;
- (id)setBySubtractingSet:(id)set;
- (void)addObjectsFromArray:(id)array;
@end

@implementation CRKPointerSet

+ (CRKPointerSet)setWithArray:(id)array
{
  arrayCopy = array;
  v4 = objc_opt_new();
  [v4 addObjectsFromArray:arrayCopy];

  return v4;
}

+ (CRKPointerSet)setWithSet:(id)set
{
  allObjects = [set allObjects];
  v5 = [self setWithArray:allObjects];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (void)addObjectsFromArray:(id)array
{
  v14 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [arrayCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(arrayCopy);
        }

        [(CRKPointerSet *)self addObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [arrayCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)setBySubtractingSet:(id)set
{
  v19 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v5 = objc_opt_new();
  v6 = [(NSHashTable *)self->mBackingStore copy];
  v7 = v5[1];
  v5[1] = v6;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = setCopy;
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

- (id)setByIntersectingSet:(id)set
{
  setCopy = set;
  v5 = objc_opt_new();
  v6 = [(NSHashTable *)self->mBackingStore copy];
  v7 = v5[1];
  v5[1] = v6;

  v8 = v5[1];
  v9 = setCopy[1];

  [v8 intersectHashTable:v9];

  return v5;
}

@end