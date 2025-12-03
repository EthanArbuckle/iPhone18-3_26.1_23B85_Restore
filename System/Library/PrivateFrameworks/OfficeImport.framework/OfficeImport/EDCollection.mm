@interface EDCollection
+ (EDCollection)collectionWithObject:(id)object;
+ (id)collection;
- (BOOL)isEqual:(id)equal;
- (EDCollection)init;
- (EDCollection)initWithObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)addObject:(id)object;
- (unint64_t)addOrEquivalentObject:(id)object;
- (unint64_t)indexOfObject:(id)object;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
@end

@implementation EDCollection

- (EDCollection)init
{
  v6.receiver = self;
  v6.super_class = EDCollection;
  v2 = [(EDCollection *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mObjects = v2->mObjects;
    v2->mObjects = v3;
  }

  return v2;
}

+ (id)collection
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (EDCollection)initWithObject:(id)object
{
  objectCopy = object;
  v5 = [(EDCollection *)self init];
  v6 = v5;
  if (v5)
  {
    [(NSMutableArray *)v5->mObjects addObject:objectCopy];
  }

  return v6;
}

+ (EDCollection)collectionWithObject:(id)object
{
  objectCopy = object;
  v4 = [objc_alloc(objc_opt_class()) initWithObject:objectCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5 && (v6 = [(NSMutableArray *)self->mObjects mutableCopyWithZone:zone], v7 = v5[1], v5[1] = v6, v7, v5[1]))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDCollection *)self isEqualToCollection:v5];
  }

  return v6;
}

- (id)objectAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->mObjects count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->mObjects objectAtIndex:index];
  }

  return v5;
}

- (unint64_t)addObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    [(NSMutableArray *)self->mObjects addObject:objectCopy];
    if ([objectCopy conformsToProtocol:&unk_286FA7348])
    {
      [objectCopy setDoNotModify:1];
    }

    v5 = [(NSMutableArray *)self->mObjects count]- 1;
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (unint64_t)addOrEquivalentObject:(id)object
{
  objectCopy = object;
  v5 = [(EDCollection *)self indexOfObject:objectCopy];
  if (v5 == -1)
  {
    v5 = [(EDCollection *)self addObject:objectCopy];
  }

  return v5;
}

- (unint64_t)indexOfObject:(id)object
{
  result = [(NSMutableArray *)self->mObjects indexOfObject:object];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->mObjects count]> index)
  {
    mObjects = self->mObjects;

    [(NSMutableArray *)mObjects removeObjectAtIndex:index];
  }
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  if ([(NSMutableArray *)self->mObjects count]>= index)
  {
    [(NSMutableArray *)self->mObjects insertObject:objectCopy atIndex:index];
  }
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  if ([(NSMutableArray *)self->mObjects count]>= index)
  {
    [(NSMutableArray *)self->mObjects replaceObjectAtIndex:index withObject:objectCopy];
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDCollection;
  v2 = [(EDCollection *)&v4 description];

  return v2;
}

@end