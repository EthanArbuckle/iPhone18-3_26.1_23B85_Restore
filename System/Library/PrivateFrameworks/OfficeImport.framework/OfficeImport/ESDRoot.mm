@interface ESDRoot
- (ESDRoot)initWithEshObject:(EshObject *)object;
- (ESDRoot)initWithPbState:(id)state;
- (id)initFromReader:(OcReader *)reader;
- (id)pbReferenceWithID:(unsigned int)d;
- (void)addChild:(id)child;
- (void)eshRoot;
- (void)writeToWriter:(OcWriter *)writer;
@end

@implementation ESDRoot

- (void)eshRoot
{
  result = self->super.mEshObject;
  if (result)
  {
  }

  return result;
}

- (ESDRoot)initWithEshObject:(EshObject *)object
{
  v7.receiver = self;
  v7.super_class = ESDRoot;
  v3 = [(ESDObject *)&v7 initWithEshObject:object];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mChildren = v3->mChildren;
    v3->mChildren = v4;
  }

  return v3;
}

- (id)initFromReader:(OcReader *)reader
{
  v4 = [(ESDRoot *)self init];
  v5 = v4;
  if (v4)
  {
    (*(reader->var0 + 15))(reader, [(ESDRoot *)v4 eshRoot]);
    [ESDContainer readChildrenOfObject:v5->super.mEshObject reader:reader toArray:v5->mChildren];
  }

  return v5;
}

- (void)addChild:(id)child
{
  childCopy = child;
  [(NSMutableArray *)self->mChildren addObject:?];
  EshRoot::appendChild(-[ESDRoot eshRoot](self, "eshRoot"), [childCopy eshObject]);
}

- (void)writeToWriter:(OcWriter *)writer
{
  v8.receiver = self;
  v8.super_class = ESDRoot;
  [(ESDObject *)&v8 writeToWriter:?];
  objectEnumerator = [(NSMutableArray *)self->mChildren objectEnumerator];
  while (1)
  {
    nextObject = [objectEnumerator nextObject];
    v7 = nextObject;
    if (!nextObject)
    {
      break;
    }

    [nextObject writeToWriter:writer];
  }
}

- (ESDRoot)initWithPbState:(id)state
{
  stateCopy = state;
  v5 = [(ESDRoot *)self init];
  if (v5)
  {
    reader = [stateCopy reader];
    (*(*reader + 72))(reader, [(ESDRoot *)v5 eshRoot]);
    [ESDContainer pbReadChildrenOfObject:v5->super.mEshObject toArray:v5->mChildren state:stateCopy];
  }

  return v5;
}

- (id)pbReferenceWithID:(unsigned int)d
{
  childCount = [(ESDRoot *)self childCount];
  if (childCount)
  {
    v6 = childCount;
    v7 = 0;
    while (1)
    {
      v8 = [(ESDRoot *)self childAt:v7];
      eshObject = [v8 eshObject];
      if (eshObject)
      {
        if (v10)
        {
          v11 = v10;
          if ((*(*v10 + 16))(v10))
          {
            if ((*(*v11 + 32))(v11) == d)
            {
              break;
            }
          }
        }
      }

      if (v6 == ++v7)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

  return v8;
}

@end