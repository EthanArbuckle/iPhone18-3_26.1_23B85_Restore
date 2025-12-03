@interface BBAssociationSet
+ (id)setWithStrongAssociation;
+ (id)setWithWeakAssociation;
- (id)_initWithMemoryPointerFunction:(unint64_t)function;
- (id)associatedObjectsForObject:(id)object;
- (void)associateObject:(id)object withObject:(id)withObject;
- (void)copyAssociationsForObject:(id)object toObject:(id)toObject;
@end

@implementation BBAssociationSet

+ (id)setWithStrongAssociation
{
  v2 = [[self alloc] _initWithMemoryPointerFunction:0];

  return v2;
}

+ (id)setWithWeakAssociation
{
  v2 = [[self alloc] _initWithMemoryPointerFunction:5];

  return v2;
}

- (id)_initWithMemoryPointerFunction:(unint64_t)function
{
  v11.receiver = self;
  v11.super_class = BBAssociationSet;
  v4 = [(BBAssociationSet *)&v11 init];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v8 = [v5 stringWithFormat:@"%@%@", @"_associationSet", uUIDString];
    associationSetKey = v4->_associationSetKey;
    v4->_associationSetKey = v8;

    v4->_associatedObjectMemoryPointerFunction = function;
  }

  return v4;
}

- (void)associateObject:(id)object withObject:(id)withObject
{
  objectCopy = object;
  withObjectCopy = withObject;
  objc_sync_enter(withObjectCopy);
  v7 = [(NSString *)self->_associationSetKey cStringUsingEncoding:1];
  0x200 = objc_getAssociatedObject(withObjectCopy, v7);
  if (!0x200)
  {
    0x200 = [MEMORY[0x277CCAA50] hashTableWithOptions:self->_associatedObjectMemoryPointerFunction | 0x200];
    objc_setAssociatedObject(withObjectCopy, v7, 0x200, 0x301);
  }

  objc_sync_exit(withObjectCopy);

  v9 = 0x200;
  objc_sync_enter(v9);
  [v9 addObject:objectCopy];
  objc_sync_exit(v9);
}

- (id)associatedObjectsForObject:(id)object
{
  objectCopy = object;
  objc_sync_enter(objectCopy);
  v5 = [(NSString *)self->_associationSetKey cStringUsingEncoding:1];
  v6 = objc_getAssociatedObject(objectCopy, v5);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    objc_sync_enter(v8);
    setRepresentation = [v8 setRepresentation];
    if (![setRepresentation count])
    {
      objc_setAssociatedObject(objectCopy, v5, 0, 0x301);

      setRepresentation = 0;
    }

    objc_sync_exit(v8);
  }

  else
  {
    setRepresentation = 0;
  }

  objc_sync_exit(objectCopy);

  return setRepresentation;
}

- (void)copyAssociationsForObject:(id)object toObject:(id)toObject
{
  v18 = *MEMORY[0x277D85DE8];
  toObjectCopy = toObject;
  v7 = [(BBAssociationSet *)self associatedObjectsForObject:object];
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

        [(BBAssociationSet *)self associateObject:*(*(&v13 + 1) + 8 * v11++) withObject:toObjectCopy];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end