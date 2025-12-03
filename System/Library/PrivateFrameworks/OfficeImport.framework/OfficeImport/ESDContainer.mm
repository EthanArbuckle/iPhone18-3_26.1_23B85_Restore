@interface ESDContainer
+ (void)pbReadChildrenOfObject:(EshObject *)object toArray:(id)array state:(id)state;
+ (void)readChildrenOfObject:(EshObject *)object reader:(OcReader *)reader toArray:(id)array;
- (ESDContainer)initWithEshObject:(EshObject *)object;
- (EshObject)addAtomChildOfType:(unsigned __int16)type;
- (id)addChildOfType:(unsigned __int16)type;
- (id)addEshChild:(EshObject *)child;
- (id)addPptEshClientChildOfType:(unsigned __int16)type;
- (id)childOfType:(unsigned __int16)type instance:(signed __int16)instance;
- (id)containerChildAt:(unint64_t)at;
- (id)containerChildOfType:(unsigned __int16)type instance:(signed __int16)instance mustExist:(BOOL)exist;
- (id)containerFromObject:(id)object mustExist:(BOOL)exist;
- (id)firstChildOfType:(unsigned __int16)type;
- (id)firstChildOfType:(unsigned __int16)type afterChild:(id)child;
- (id)firstChildOfType:(unsigned __int16)type afterIndex:(unint64_t)index;
- (id)firstContainerChildOfType:(unsigned __int16)type mustExist:(BOOL)exist;
- (id)initForExcelBinaryWithType:(unsigned __int16)type version:(unsigned __int16)version state:(id)state;
- (id)initFromReader:(OcReader *)reader type:(unsigned __int16)type version:(unsigned __int16)version;
- (id)initPBWithType:(unsigned __int16)type version:(unsigned __int16)version state:(id)state;
- (id)insertEshChild:(EshObject *)child at:(unint64_t)at;
- (unint64_t)indexOfFirstChildOfType:(unsigned __int16)type afterIndex:(unint64_t)index;
- (void)addChild:(id)child;
- (void)eshContainer;
- (void)eshGroup;
- (void)insertChild:(id)child at:(unint64_t)at;
- (void)removeChild:(id)child;
- (void)writeToWriter:(OcWriter *)writer;
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
  eshObject = [v3 eshObject];
  if (!eshObject)
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

- (ESDContainer)initWithEshObject:(EshObject *)object
{
  v7.receiver = self;
  v7.super_class = ESDContainer;
  v3 = [(ESDObject *)&v7 initWithEshObject:object];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mChildren = v3->mChildren;
    v3->mChildren = v4;
  }

  return v3;
}

- (id)initFromReader:(OcReader *)reader type:(unsigned __int16)type version:(unsigned __int16)version
{
  v12.receiver = self;
  v12.super_class = ESDContainer;
  v6 = [(ESDObject *)&v12 initFromReader:reader type:type version:version];
  if (v6)
  {
    [objc_opt_class() readChildrenOfObject:*(v6 + 1) reader:reader toArray:*(v6 + 4)];
    objectEnumerator = [*(v6 + 4) objectEnumerator];
    while (1)
    {
      nextObject = [objectEnumerator nextObject];
      v9 = nextObject;
      if (!nextObject)
      {
        break;
      }

      objc_storeWeak((nextObject + 16), v6);
    }
  }

  v10 = v6;

  return v10;
}

- (void)addChild:(id)child
{
  childCopy = child;
  [(NSMutableArray *)self->mChildren addObject:?];
  objc_storeWeak(childCopy + 2, self);
  EshContainer::addChild(-[ESDContainer eshContainer](self, "eshContainer"), [childCopy eshObject]);
}

- (id)addEshChild:(EshObject *)child
{
  (*(child->var0 + 11))(child, a2);
  v5 = [objc_alloc(objc_opt_class()) initWithEshObject:child];
  [(ESDContainer *)self addChild:v5];

  return v5;
}

- (id)addChildOfType:(unsigned __int16)type
{
  typeCopy = type;
  v5 = +[ESDObjectFactory threadLocalFactory];
  v6 = [v5 createObjectWithType:typeCopy];

  return [(ESDContainer *)self addEshChild:v6];
}

- (EshObject)addAtomChildOfType:(unsigned __int16)type
{
  v3 = [(ESDContainer *)self addChildOfType:type];
  eshObject = [v3 eshObject];

  return eshObject;
}

- (void)insertChild:(id)child at:(unint64_t)at
{
  childCopy = child;
  [NSMutableArray insertObject:"insertObject:atIndex:" atIndex:?];
  objc_storeWeak(childCopy + 2, self);
  EshContainer::insertChild(-[ESDContainer eshContainer](self, "eshContainer"), [childCopy eshObject]);
}

- (id)insertEshChild:(EshObject *)child at:(unint64_t)at
{
  (*(child->var0 + 11))(child, a2);
  v7 = [objc_alloc(objc_opt_class()) initWithEshObject:child];
  [(NSMutableArray *)self->mChildren insertObject:v7 atIndex:at];
  objc_storeWeak(v7 + 2, self);
  EshContainer::insertChild(-[ESDContainer eshContainer](self, "eshContainer"), [v7 eshObject]);
}

- (void)removeChild:(id)child
{
  childCopy = child;
  v4 = [(NSMutableArray *)self->mChildren indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->mChildren removeObjectAtIndex:v4];
    objc_storeWeak(childCopy + 2, 0);
    EshContainer::removeChild([(ESDContainer *)self eshContainer], v4);
  }
}

- (id)firstChildOfType:(unsigned __int16)type
{
  typeCopy = type;
  objectEnumerator = [(NSMutableArray *)self->mChildren objectEnumerator];
  v5 = 0;
  do
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    eshObject = [nextObject eshObject];
    v5 = nextObject;
  }

  while ((*(*eshObject + 16))(eshObject) != typeCopy);

  return nextObject;
}

- (id)firstChildOfType:(unsigned __int16)type afterChild:(id)child
{
  typeCopy = type;
  childCopy = child;
  objectEnumerator = [(NSMutableArray *)self->mChildren objectEnumerator];
  v8 = 0;
  v9 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    if (v8)
    {
      eshObject = [nextObject eshObject];
      v8 = 1;
      v9 = nextObject;
      if ((*(*eshObject + 16))(eshObject) == typeCopy)
      {
        break;
      }
    }

    else
    {
      v8 = nextObject == childCopy;
      v9 = nextObject;
    }
  }

  return nextObject;
}

- (id)firstChildOfType:(unsigned __int16)type afterIndex:(unint64_t)index
{
  v5 = [(ESDContainer *)self indexOfFirstChildOfType:type afterIndex:index];
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

- (unint64_t)indexOfFirstChildOfType:(unsigned __int16)type afterIndex:(unint64_t)index
{
  typeCopy = type;
  childCount = [(ESDContainer *)self childCount];
  while (++index < childCount)
  {
    v8 = [(ESDContainer *)self childAt:index];
    eshObject = [v8 eshObject];
    v10 = (*(*eshObject + 16))(eshObject);

    if (v10 == typeCopy)
    {
      return index;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)childOfType:(unsigned __int16)type instance:(signed __int16)instance
{
  instanceCopy = instance;
  typeCopy = type;
  objectEnumerator = [(NSMutableArray *)self->mChildren objectEnumerator];
  v7 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    eshObject = [nextObject eshObject];
    v7 = nextObject;
    if ((*(*eshObject + 16))(eshObject) == typeCopy)
    {
      if ((typeCopy - 2) < 0x1Bu)
      {
        break;
      }

      v7 = nextObject;
      if (EshRecord::getInstance(v10) == instanceCopy)
      {
        break;
      }
    }
  }

  return nextObject;
}

- (id)containerFromObject:(id)object mustExist:(BOOL)exist
{
  existCopy = exist;
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      TCVerifyInputMeetsCondition(0);
    }

    v6 = objectCopy;
  }

  else if (existCopy)
  {
    TCVerifyInputMeetsCondition(0);
  }

  return objectCopy;
}

- (id)firstContainerChildOfType:(unsigned __int16)type mustExist:(BOOL)exist
{
  existCopy = exist;
  v6 = [(ESDContainer *)self firstChildOfType:type];
  v7 = [(ESDContainer *)self containerFromObject:v6 mustExist:existCopy];

  return v7;
}

- (id)containerChildOfType:(unsigned __int16)type instance:(signed __int16)instance mustExist:(BOOL)exist
{
  existCopy = exist;
  v7 = [(ESDContainer *)self childOfType:type instance:instance];
  v8 = [(ESDContainer *)self containerFromObject:v7 mustExist:existCopy];

  return v8;
}

- (id)containerChildAt:(unint64_t)at
{
  v4 = [(ESDContainer *)self childAt:at];
  v5 = [(ESDContainer *)self containerFromObject:v4 mustExist:1];

  return v5;
}

+ (void)readChildrenOfObject:(EshObject *)object reader:(OcReader *)reader toArray:(id)array
{
  arrayCopy = array;
  v7 = (*(object->var0 + 5))(object);
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = (*(object->var0 + 6))(object, v8);
      v10 = (*(object->var0 + 7))(object, v8);
      v11 = [objc_alloc(objc_opt_class()) initFromReader:reader type:v9 version:v10];
      if (v11)
      {
        [arrayCopy addObject:v11];
      }

      v8 = (v8 + 1);
    }

    while (v7 != v8);
  }
}

- (void)writeToWriter:(OcWriter *)writer
{
  v8.receiver = self;
  v8.super_class = ESDContainer;
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

- (id)initForExcelBinaryWithType:(unsigned __int16)type version:(unsigned __int16)version state:(id)state
{
  versionCopy = version;
  typeCopy = type;
  stateCopy = state;
  xlReader = [stateCopy xlReader];
  if (xlReader)
  {
    v10 = xlReader + *(*xlReader - 24);
  }

  else
  {
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = ESDContainer;
  v11 = [(ESDObject *)&v15 initFromReader:v10 type:typeCopy version:versionCopy];
  v12 = v11;
  if (v11)
  {
    [EBEscher readChildrenOfObject:v11[1] toArray:v11[4] state:stateCopy];
  }

  v13 = v12;

  return v13;
}

- (id)initPBWithType:(unsigned __int16)type version:(unsigned __int16)version state:(id)state
{
  versionCopy = version;
  typeCopy = type;
  stateCopy = state;
  v15.receiver = self;
  v15.super_class = ESDContainer;
  v9 = [(ESDObject *)&v15 initPBWithType:typeCopy version:versionCopy state:stateCopy];
  if (v9)
  {
    [objc_opt_class() pbReadChildrenOfObject:*(v9 + 1) toArray:*(v9 + 4) state:stateCopy];
    objectEnumerator = [*(v9 + 4) objectEnumerator];
    while (1)
    {
      nextObject = [objectEnumerator nextObject];
      v12 = nextObject;
      if (!nextObject)
      {
        break;
      }

      objc_storeWeak((nextObject + 16), v9);
    }
  }

  v13 = v9;

  return v13;
}

+ (void)pbReadChildrenOfObject:(EshObject *)object toArray:(id)array state:(id)state
{
  arrayCopy = array;
  stateCopy = state;
  reader = [stateCopy reader];
  v10 = (*(object->var0 + 5))(object);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = (*(object->var0 + 6))(object, v11);
      v13 = (*(object->var0 + 7))(object, v11);
      if (v14)
      {
        (*(*reader + 56))(reader, v14, v11);
      }

      if (v12 == 1)
      {
        v15 = (*(*reader + 216))(reader);
        Object = PptObjectFactory::createObject(v15, 1, v13);
        if (Object)
        {
        }

        else
        {
          v17 = 0;
        }

        (*(*reader + 72))(reader, v17);
        [self pbReadChildrenOfObject:v17 toArray:arrayCopy state:stateCopy];
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      else
      {
        v18 = [objc_alloc(objc_opt_class()) initPBWithType:v12 version:v13 state:stateCopy];
        if (v18)
        {
          [arrayCopy addObject:v18];
        }
      }

      v11 = (v11 + 1);
    }

    while (v10 != v11);
  }
}

- (id)addPptEshClientChildOfType:(unsigned __int16)type
{
  typeCopy = type;
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

  switch(typeCopy)
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