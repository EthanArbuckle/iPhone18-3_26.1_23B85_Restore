@interface ESDRoot
- (ESDRoot)initWithEshObject:(EshObject *)a3;
- (ESDRoot)initWithPbState:(id)a3;
- (id)initFromReader:(OcReader *)a3;
- (id)pbReferenceWithID:(unsigned int)a3;
- (void)addChild:(id)a3;
- (void)eshRoot;
- (void)writeToWriter:(OcWriter *)a3;
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

- (ESDRoot)initWithEshObject:(EshObject *)a3
{
  v7.receiver = self;
  v7.super_class = ESDRoot;
  v3 = [(ESDObject *)&v7 initWithEshObject:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mChildren = v3->mChildren;
    v3->mChildren = v4;
  }

  return v3;
}

- (id)initFromReader:(OcReader *)a3
{
  v4 = [(ESDRoot *)self init];
  v5 = v4;
  if (v4)
  {
    (*(a3->var0 + 15))(a3, [(ESDRoot *)v4 eshRoot]);
    [ESDContainer readChildrenOfObject:v5->super.mEshObject reader:a3 toArray:v5->mChildren];
  }

  return v5;
}

- (void)addChild:(id)a3
{
  v4 = a3;
  [(NSMutableArray *)self->mChildren addObject:?];
  EshRoot::appendChild(-[ESDRoot eshRoot](self, "eshRoot"), [v4 eshObject]);
}

- (void)writeToWriter:(OcWriter *)a3
{
  v8.receiver = self;
  v8.super_class = ESDRoot;
  [(ESDObject *)&v8 writeToWriter:?];
  v5 = [(NSMutableArray *)self->mChildren objectEnumerator];
  while (1)
  {
    v6 = [v5 nextObject];
    v7 = v6;
    if (!v6)
    {
      break;
    }

    [v6 writeToWriter:a3];
  }
}

- (ESDRoot)initWithPbState:(id)a3
{
  v4 = a3;
  v5 = [(ESDRoot *)self init];
  if (v5)
  {
    v6 = [v4 reader];
    (*(*v6 + 72))(v6, [(ESDRoot *)v5 eshRoot]);
    [ESDContainer pbReadChildrenOfObject:v5->super.mEshObject toArray:v5->mChildren state:v4];
  }

  return v5;
}

- (id)pbReferenceWithID:(unsigned int)a3
{
  v5 = [(ESDRoot *)self childCount];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(ESDRoot *)self childAt:v7];
      v9 = [v8 eshObject];
      if (v9)
      {
        if (v10)
        {
          v11 = v10;
          if ((*(*v10 + 16))(v10))
          {
            if ((*(*v11 + 32))(v11) == a3)
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