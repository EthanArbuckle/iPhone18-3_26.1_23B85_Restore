@interface ESDContainer
+ (void)pbReadChildrenOfObject:(EshObject *)a3 toArray:(id)a4 state:(id)a5;
+ (void)readChildrenOfObject:(EshObject *)a3 reader:(OcReader *)a4 toArray:(id)a5;
- (ESDContainer)initWithEshObject:(EshObject *)a3;
- (EshObject)addAtomChildOfType:(unsigned __int16)a3;
- (id)addChildOfType:(unsigned __int16)a3;
- (id)addEshChild:(EshObject *)a3;
- (id)addPptEshClientChildOfType:(unsigned __int16)a3;
- (id)childOfType:(unsigned __int16)a3 instance:(signed __int16)a4;
- (id)containerChildAt:(unint64_t)a3;
- (id)containerChildOfType:(unsigned __int16)a3 instance:(signed __int16)a4 mustExist:(BOOL)a5;
- (id)containerFromObject:(id)a3 mustExist:(BOOL)a4;
- (id)firstChildOfType:(unsigned __int16)a3;
- (id)firstChildOfType:(unsigned __int16)a3 afterChild:(id)a4;
- (id)firstChildOfType:(unsigned __int16)a3 afterIndex:(unint64_t)a4;
- (id)firstContainerChildOfType:(unsigned __int16)a3 mustExist:(BOOL)a4;
- (id)initForExcelBinaryWithType:(unsigned __int16)a3 version:(unsigned __int16)a4 state:(id)a5;
- (id)initFromReader:(OcReader *)a3 type:(unsigned __int16)a4 version:(unsigned __int16)a5;
- (id)initPBWithType:(unsigned __int16)a3 version:(unsigned __int16)a4 state:(id)a5;
- (id)insertEshChild:(EshObject *)a3 at:(unint64_t)a4;
- (unint64_t)indexOfFirstChildOfType:(unsigned __int16)a3 afterIndex:(unint64_t)a4;
- (void)addChild:(id)a3;
- (void)eshContainer;
- (void)eshGroup;
- (void)insertChild:(id)a3 at:(unint64_t)a4;
- (void)removeChild:(id)a3;
- (void)writeToWriter:(OcWriter *)a3;
@end

@implementation ESDContainer

- (void)eshContainer
{
  result = self->super.mEshObject;
  if (result)
  {
  }

  return result;
}

- (void)eshGroup
{
  if (![(ESDContainer *)self childCount])
  {
    goto LABEL_6;
  }

  v3 = [(ESDContainer *)self childAt:0];
  v4 = [v3 eshObject];
  if (!v4)
  {

LABEL_6:
    v7.receiver = self;
    v7.super_class = ESDContainer;
    return [(ESDObject *)&v7 eshGroup];
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  return v5;
}

- (ESDContainer)initWithEshObject:(EshObject *)a3
{
  v7.receiver = self;
  v7.super_class = ESDContainer;
  v3 = [(ESDObject *)&v7 initWithEshObject:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mChildren = v3->mChildren;
    v3->mChildren = v4;
  }

  return v3;
}

- (id)initFromReader:(OcReader *)a3 type:(unsigned __int16)a4 version:(unsigned __int16)a5
{
  v12.receiver = self;
  v12.super_class = ESDContainer;
  v6 = [(ESDObject *)&v12 initFromReader:a3 type:a4 version:a5];
  if (v6)
  {
    [objc_opt_class() readChildrenOfObject:*(v6 + 1) reader:a3 toArray:*(v6 + 4)];
    v7 = [*(v6 + 4) objectEnumerator];
    while (1)
    {
      v8 = [v7 nextObject];
      v9 = v8;
      if (!v8)
      {
        break;
      }

      objc_storeWeak((v8 + 16), v6);
    }
  }

  v10 = v6;

  return v10;
}

- (void)addChild:(id)a3
{
  v4 = a3;
  [(NSMutableArray *)self->mChildren addObject:?];
  objc_storeWeak(v4 + 2, self);
  EshContainer::addChild(-[ESDContainer eshContainer](self, "eshContainer"), [v4 eshObject]);
}

- (id)addEshChild:(EshObject *)a3
{
  (*(a3->var0 + 11))(a3, a2);
  v5 = [objc_alloc(objc_opt_class()) initWithEshObject:a3];
  [(ESDContainer *)self addChild:v5];

  return v5;
}

- (id)addChildOfType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = +[ESDObjectFactory threadLocalFactory];
  v6 = [v5 createObjectWithType:v3];

  return [(ESDContainer *)self addEshChild:v6];
}

- (EshObject)addAtomChildOfType:(unsigned __int16)a3
{
  v3 = [(ESDContainer *)self addChildOfType:a3];
  v4 = [v3 eshObject];

  return v4;
}

- (void)insertChild:(id)a3 at:(unint64_t)a4
{
  v5 = a3;
  [NSMutableArray insertObject:"insertObject:atIndex:" atIndex:?];
  objc_storeWeak(v5 + 2, self);
  EshContainer::insertChild(-[ESDContainer eshContainer](self, "eshContainer"), [v5 eshObject]);
}

- (id)insertEshChild:(EshObject *)a3 at:(unint64_t)a4
{
  (*(a3->var0 + 11))(a3, a2);
  v7 = [objc_alloc(objc_opt_class()) initWithEshObject:a3];
  [(NSMutableArray *)self->mChildren insertObject:v7 atIndex:a4];
  objc_storeWeak(v7 + 2, self);
  EshContainer::insertChild(-[ESDContainer eshContainer](self, "eshContainer"), [v7 eshObject]);
}

- (void)removeChild:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableArray *)self->mChildren indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->mChildren removeObjectAtIndex:v4];
    objc_storeWeak(v5 + 2, 0);
    EshContainer::removeChild([(ESDContainer *)self eshContainer], v4);
  }
}

- (id)firstChildOfType:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(NSMutableArray *)self->mChildren objectEnumerator];
  v5 = 0;
  do
  {
    v6 = [v4 nextObject];

    if (!v6)
    {
      break;
    }

    v7 = [v6 eshObject];
    v5 = v6;
  }

  while ((*(*v7 + 16))(v7) != v3);

  return v6;
}

- (id)firstChildOfType:(unsigned __int16)a3 afterChild:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(NSMutableArray *)self->mChildren objectEnumerator];
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = [v7 nextObject];

    if (!v10)
    {
      break;
    }

    if (v8)
    {
      v11 = [v10 eshObject];
      v8 = 1;
      v9 = v10;
      if ((*(*v11 + 16))(v11) == v4)
      {
        break;
      }
    }

    else
    {
      v8 = v10 == v6;
      v9 = v10;
    }
  }

  return v10;
}

- (id)firstChildOfType:(unsigned __int16)a3 afterIndex:(unint64_t)a4
{
  v5 = [(ESDContainer *)self indexOfFirstChildOfType:a3 afterIndex:a4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(ESDContainer *)self childAt:v5];
  }

  return v6;
}

- (unint64_t)indexOfFirstChildOfType:(unsigned __int16)a3 afterIndex:(unint64_t)a4
{
  v5 = a3;
  v7 = [(ESDContainer *)self childCount];
  while (++a4 < v7)
  {
    v8 = [(ESDContainer *)self childAt:a4];
    v9 = [v8 eshObject];
    v10 = (*(*v9 + 16))(v9);

    if (v10 == v5)
    {
      return a4;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)childOfType:(unsigned __int16)a3 instance:(signed __int16)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(NSMutableArray *)self->mChildren objectEnumerator];
  v7 = 0;
  while (1)
  {
    v8 = [v6 nextObject];

    if (!v8)
    {
      break;
    }

    v9 = [v8 eshObject];
    v7 = v8;
    if ((*(*v9 + 16))(v9) == v5)
    {
      if ((v5 - 2) < 0x1Bu)
      {
        break;
      }

      v7 = v8;
      if (EshRecord::getInstance(v10) == v4)
      {
        break;
      }
    }
  }

  return v8;
}

- (id)containerFromObject:(id)a3 mustExist:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      TCVerifyInputMeetsCondition(0);
    }

    v6 = v5;
  }

  else if (v4)
  {
    TCVerifyInputMeetsCondition(0);
  }

  return v5;
}

- (id)firstContainerChildOfType:(unsigned __int16)a3 mustExist:(BOOL)a4
{
  v4 = a4;
  v6 = [(ESDContainer *)self firstChildOfType:a3];
  v7 = [(ESDContainer *)self containerFromObject:v6 mustExist:v4];

  return v7;
}

- (id)containerChildOfType:(unsigned __int16)a3 instance:(signed __int16)a4 mustExist:(BOOL)a5
{
  v5 = a5;
  v7 = [(ESDContainer *)self childOfType:a3 instance:a4];
  v8 = [(ESDContainer *)self containerFromObject:v7 mustExist:v5];

  return v8;
}

- (id)containerChildAt:(unint64_t)a3
{
  v4 = [(ESDContainer *)self childAt:a3];
  v5 = [(ESDContainer *)self containerFromObject:v4 mustExist:1];

  return v5;
}

+ (void)readChildrenOfObject:(EshObject *)a3 reader:(OcReader *)a4 toArray:(id)a5
{
  v12 = a5;
  v7 = (*(a3->var0 + 5))(a3);
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = (*(a3->var0 + 6))(a3, v8);
      v10 = (*(a3->var0 + 7))(a3, v8);
      v11 = [objc_alloc(objc_opt_class()) initFromReader:a4 type:v9 version:v10];
      if (v11)
      {
        [v12 addObject:v11];
      }

      v8 = (v8 + 1);
    }

    while (v7 != v8);
  }
}

- (void)writeToWriter:(OcWriter *)a3
{
  v8.receiver = self;
  v8.super_class = ESDContainer;
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

- (id)initForExcelBinaryWithType:(unsigned __int16)a3 version:(unsigned __int16)a4 state:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [v8 xlReader];
  if (v9)
  {
    v10 = v9 + *(*v9 - 24);
  }

  else
  {
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = ESDContainer;
  v11 = [(ESDObject *)&v15 initFromReader:v10 type:v6 version:v5];
  v12 = v11;
  if (v11)
  {
    [EBEscher readChildrenOfObject:v11[1] toArray:v11[4] state:v8];
  }

  v13 = v12;

  return v13;
}

- (id)initPBWithType:(unsigned __int16)a3 version:(unsigned __int16)a4 state:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v15.receiver = self;
  v15.super_class = ESDContainer;
  v9 = [(ESDObject *)&v15 initPBWithType:v6 version:v5 state:v8];
  if (v9)
  {
    [objc_opt_class() pbReadChildrenOfObject:*(v9 + 1) toArray:*(v9 + 4) state:v8];
    v10 = [*(v9 + 4) objectEnumerator];
    while (1)
    {
      v11 = [v10 nextObject];
      v12 = v11;
      if (!v11)
      {
        break;
      }

      objc_storeWeak((v11 + 16), v9);
    }
  }

  v13 = v9;

  return v13;
}

+ (void)pbReadChildrenOfObject:(EshObject *)a3 toArray:(id)a4 state:(id)a5
{
  v19 = a4;
  v8 = a5;
  v9 = [v8 reader];
  v10 = (*(a3->var0 + 5))(a3);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = (*(a3->var0 + 6))(a3, v11);
      v13 = (*(a3->var0 + 7))(a3, v11);
      if (v14)
      {
        (*(*v9 + 56))(v9, v14, v11);
      }

      if (v12 == 1)
      {
        v15 = (*(*v9 + 216))(v9);
        Object = PptObjectFactory::createObject(v15, 1, v13);
        if (Object)
        {
        }

        else
        {
          v17 = 0;
        }

        (*(*v9 + 72))(v9, v17);
        [a1 pbReadChildrenOfObject:v17 toArray:v19 state:v8];
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      else
      {
        v18 = [objc_alloc(objc_opt_class()) initPBWithType:v12 version:v13 state:v8];
        if (v18)
        {
          [v19 addObject:v18];
        }
      }

      v11 = (v11 + 1);
    }

    while (v10 != v11);
  }
}

- (id)addPptEshClientChildOfType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = (*(self->super.mEshObject->var0 + 2))(self->super.mEshObject, a2);
  mEshObject = self->super.mEshObject;
  if (v5 == 7)
  {
    if (mEshObject)
    {
    }
  }

  else
  {
    v7 = (*(mEshObject->var0 + 2))(mEshObject);
    v8 = self->super.mEshObject;
    if (v7 == 6)
    {
      if (v8)
      {
      }
    }

    else if ((*(v8->var0 + 2))(v8) == 12)
    {
      v9 = self->super.mEshObject;
      if (v9)
      {
      }
    }
  }

  switch(v3)
  {
    case 61453:
      operator new();
    case 61457:
      operator new();
    case 61456:
      operator new();
  }

  return 0;
}

@end