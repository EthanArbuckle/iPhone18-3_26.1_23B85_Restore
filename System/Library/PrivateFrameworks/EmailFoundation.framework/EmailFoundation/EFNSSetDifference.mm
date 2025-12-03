@interface EFNSSetDifference
- (BOOL)hasChanges;
- (EFNSSetDifference)initWithInsertedObjects:(id)objects removedObjects:(id)removedObjects;
@end

@implementation EFNSSetDifference

- (EFNSSetDifference)initWithInsertedObjects:(id)objects removedObjects:(id)removedObjects
{
  objectsCopy = objects;
  removedObjectsCopy = removedObjects;
  v14.receiver = self;
  v14.super_class = EFNSSetDifference;
  v8 = [(EFNSSetDifference *)&v14 init];
  if (v8)
  {
    if (objectsCopy)
    {
      v9 = objectsCopy;
    }

    else
    {
      v9 = [MEMORY[0x1E695DFD8] set];
    }

    insertions = v8->_insertions;
    v8->_insertions = v9;

    if (removedObjectsCopy)
    {
      v11 = removedObjectsCopy;
    }

    else
    {
      v11 = [MEMORY[0x1E695DFD8] set];
    }

    removals = v8->_removals;
    v8->_removals = v11;
  }

  return v8;
}

- (BOOL)hasChanges
{
  insertions = [(EFNSSetDifference *)self insertions];
  if ([insertions count])
  {
    v4 = 1;
  }

  else
  {
    removals = [(EFNSSetDifference *)self removals];
    v4 = [removals count] != 0;
  }

  return v4;
}

@end