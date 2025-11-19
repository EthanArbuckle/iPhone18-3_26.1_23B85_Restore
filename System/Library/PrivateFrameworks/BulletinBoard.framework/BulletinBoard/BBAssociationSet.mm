@interface BBAssociationSet
+ (id)setWithStrongAssociation;
+ (id)setWithWeakAssociation;
- (id)_initWithMemoryPointerFunction:(unint64_t)a3;
- (id)associatedObjectsForObject:(id)a3;
- (void)associateObject:(id)a3 withObject:(id)a4;
- (void)copyAssociationsForObject:(id)a3 toObject:(id)a4;
@end

@implementation BBAssociationSet

+ (id)setWithStrongAssociation
{
  v2 = [[a1 alloc] _initWithMemoryPointerFunction:0];

  return v2;
}

+ (id)setWithWeakAssociation
{
  v2 = [[a1 alloc] _initWithMemoryPointerFunction:5];

  return v2;
}

- (id)_initWithMemoryPointerFunction:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = BBAssociationSet;
  v4 = [(BBAssociationSet *)&v11 init];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = [v6 UUIDString];
    v8 = [v5 stringWithFormat:@"%@%@", @"_associationSet", v7];
    associationSetKey = v4->_associationSetKey;
    v4->_associationSetKey = v8;

    v4->_associatedObjectMemoryPointerFunction = a3;
  }

  return v4;
}

- (void)associateObject:(id)a3 withObject:(id)a4
{
  v10 = a3;
  v6 = a4;
  objc_sync_enter(v6);
  v7 = [(NSString *)self->_associationSetKey cStringUsingEncoding:1];
  v8 = objc_getAssociatedObject(v6, v7);
  if (!v8)
  {
    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:self->_associatedObjectMemoryPointerFunction | 0x200];
    objc_setAssociatedObject(v6, v7, v8, 0x301);
  }

  objc_sync_exit(v6);

  v9 = v8;
  objc_sync_enter(v9);
  [v9 addObject:v10];
  objc_sync_exit(v9);
}

- (id)associatedObjectsForObject:(id)a3
{
  v4 = a3;
  objc_sync_enter(v4);
  v5 = [(NSString *)self->_associationSetKey cStringUsingEncoding:1];
  v6 = objc_getAssociatedObject(v4, v5);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    objc_sync_enter(v8);
    v9 = [v8 setRepresentation];
    if (![v9 count])
    {
      objc_setAssociatedObject(v4, v5, 0, 0x301);

      v9 = 0;
    }

    objc_sync_exit(v8);
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v4);

  return v9;
}

- (void)copyAssociationsForObject:(id)a3 toObject:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(BBAssociationSet *)self associatedObjectsForObject:a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(BBAssociationSet *)self associateObject:*(*(&v13 + 1) + 8 * v11++) withObject:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end