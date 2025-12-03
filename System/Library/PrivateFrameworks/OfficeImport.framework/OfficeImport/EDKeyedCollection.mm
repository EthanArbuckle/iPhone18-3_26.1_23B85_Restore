@interface EDKeyedCollection
- (BOOL)isObjectInMap:(id)map;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)addObject:(id)object;
- (void)insertIntoMap:(id)map;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)removeAllObjects;
- (void)removeFromMap:(id)map;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
@end

@implementation EDKeyedCollection

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = EDKeyedCollection;
  v4 = [(EDCollection *)&v9 copyWithZone:zone];
  if (v4)
  {
    v5 = [(OITSUIntegerKeyDictionary *)self->mMap mutableCopy];
    v6 = v4[2];
    v4[2] = v5;

    v7 = v4;
  }

  return v4;
}

- (unint64_t)addObject:(id)object
{
  objectCopy = object;
  v7.receiver = self;
  v7.super_class = EDKeyedCollection;
  v5 = [(EDCollection *)&v7 addObject:objectCopy];
  if (v5 != -1)
  {
    [(EDKeyedCollection *)self insertIntoMap:objectCopy];
  }

  return v5;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  if ([(EDCollection *)self count]>= index)
  {
    v7.receiver = self;
    v7.super_class = EDKeyedCollection;
    [(EDCollection *)&v7 insertObject:objectCopy atIndex:index];
    [(EDKeyedCollection *)self insertIntoMap:objectCopy];
  }
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  if ([(EDCollection *)self count]>= index)
  {
    v7.receiver = self;
    v7.super_class = EDKeyedCollection;
    [(EDCollection *)&v7 replaceObjectAtIndex:index withObject:objectCopy];
    [(EDKeyedCollection *)self insertIntoMap:objectCopy];
  }
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  if ([(EDCollection *)self count]> index)
  {
    v5 = [(EDCollection *)self objectAtIndex:index];
    [(EDKeyedCollection *)self removeFromMap:v5];

    v6.receiver = self;
    v6.super_class = EDKeyedCollection;
    [(EDCollection *)&v6 removeObjectAtIndex:index];
  }
}

- (void)removeAllObjects
{
  mMap = self->mMap;
  self->mMap = 0;

  v4.receiver = self;
  v4.super_class = EDKeyedCollection;
  [(EDCollection *)&v4 removeAllObjects];
}

- (BOOL)isObjectInMap:(id)map
{
  mapCopy = map;
  v5 = -[EDKeyedCollection objectWithKey:](self, "objectWithKey:", [mapCopy key]);
  LOBYTE(self) = v5 != 0;

  return self;
}

- (void)insertIntoMap:(id)map
{
  mapCopy = map;
  v7 = mapCopy;
  if (!self->mMap)
  {
    v5 = objc_alloc_init(OITSUIntegerKeyDictionary);
    mMap = self->mMap;
    self->mMap = v5;

    mapCopy = v7;
  }

  -[OITSUIntegerKeyDictionary setObject:forKey:](self->mMap, "setObject:forKey:", v7, [mapCopy key]);
}

- (void)removeFromMap:(id)map
{
  mapCopy = map;
  -[OITSUIntegerKeyDictionary removeObjectForKey:](self->mMap, "removeObjectForKey:", [mapCopy key]);
}

@end