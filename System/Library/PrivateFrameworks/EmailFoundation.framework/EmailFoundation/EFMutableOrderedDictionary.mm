@interface EFMutableOrderedDictionary
- (EFMutableOrderedDictionary)init;
- (EFMutableOrderedDictionary)initWithCapacity:(unint64_t)capacity;
- (id)_initWithOrderedKeys:(id)keys objectsByKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (void)moveObjectForKey:(id)key toIndex:(unint64_t)index;
- (void)removeAllObjects;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectsAtIndexes:(id)indexes;
- (void)removeObjectsForKeys:(id)keys;
- (void)replaceObject:(id)object atIndex:(unint64_t)index;
- (void)replaceObject:(id)object forKey:(id)key;
- (void)setOrAddObject:(id)object forKey:(id)key;
- (void)setOrInsertObject:(id)object forKey:(id)key atIndex:(unint64_t)index;
@end

@implementation EFMutableOrderedDictionary

- (EFMutableOrderedDictionary)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7.receiver = self;
  v7.super_class = EFMutableOrderedDictionary;
  v5 = [(EFOrderedDictionary *)&v7 _initWithOrderedKeys:v3 objectsByKey:v4];

  return v5;
}

- (EFMutableOrderedDictionary)initWithCapacity:(unint64_t)capacity
{
  v5 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:capacity];
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:capacity];
  v9.receiver = self;
  v9.super_class = EFMutableOrderedDictionary;
  v7 = [(EFOrderedDictionary *)&v9 _initWithOrderedKeys:v5 objectsByKey:v6];

  return v7;
}

- (id)_initWithOrderedKeys:(id)keys objectsByKey:(id)key
{
  keyCopy = key;
  v7 = [keys mutableCopy];
  v8 = [keyCopy mutableCopy];
  v11.receiver = self;
  v11.super_class = EFMutableOrderedDictionary;
  v9 = [(EFOrderedDictionary *)&v11 _initWithOrderedKeys:v7 objectsByKey:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [EFOrderedDictionary alloc];
  v5 = [(NSOrderedSet *)self->super._orderedKeys copy];
  v6 = [(NSDictionary *)self->super._objectsByKey copy];
  v7 = [(EFOrderedDictionary *)v4 _initWithOrderedKeys:v5 objectsByKey:v6];

  return v7;
}

- (void)setOrAddObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  [(NSOrderedSet *)self->super._orderedKeys addObject:keyCopy];
  [(NSDictionary *)self->super._objectsByKey setObject:objectCopy forKeyedSubscript:keyCopy];
}

- (void)setOrInsertObject:(id)object forKey:(id)key atIndex:(unint64_t)index
{
  objectCopy = object;
  keyCopy = key;
  [(NSOrderedSet *)self->super._orderedKeys insertObject:keyCopy atIndex:index];
  [(NSDictionary *)self->super._objectsByKey setObject:objectCopy forKeyedSubscript:keyCopy];
}

- (void)moveObjectForKey:(id)key toIndex:(unint64_t)index
{
  v5 = [(NSOrderedSet *)self->super._orderedKeys indexOfObject:key];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v5];
    [NSOrderedSet moveObjectsAtIndexes:"moveObjectsAtIndexes:toIndex:" toIndex:?];
  }
}

- (void)replaceObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  if ([(NSOrderedSet *)self->super._orderedKeys count]> index)
  {
    objectsByKey = self->super._objectsByKey;
    v7 = [(NSOrderedSet *)self->super._orderedKeys objectAtIndexedSubscript:index];
    [(NSDictionary *)objectsByKey setObject:objectCopy forKeyedSubscript:v7];
  }
}

- (void)replaceObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if ([(NSOrderedSet *)self->super._orderedKeys containsObject:keyCopy])
  {
    [(NSDictionary *)self->super._objectsByKey setObject:objectCopy forKeyedSubscript:keyCopy];
  }
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  if ([(NSOrderedSet *)self->super._orderedKeys count]> index)
  {
    objectsByKey = self->super._objectsByKey;
    v6 = [(NSOrderedSet *)self->super._orderedKeys objectAtIndexedSubscript:index];
    [(NSDictionary *)objectsByKey setObject:0 forKeyedSubscript:v6];

    orderedKeys = self->super._orderedKeys;

    [(NSOrderedSet *)orderedKeys removeObjectAtIndex:index];
  }
}

- (void)removeObjectsAtIndexes:(id)indexes
{
  v4 = [(NSOrderedSet *)self->super._orderedKeys objectsAtIndexes:indexes];
  [(EFMutableOrderedDictionary *)self removeObjectsForKeys:?];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  [(NSOrderedSet *)self->super._orderedKeys removeObject:?];
  [(NSDictionary *)self->super._objectsByKey setObject:0 forKeyedSubscript:keyCopy];
}

- (void)removeObjectsForKeys:(id)keys
{
  keysCopy = keys;
  [(NSOrderedSet *)self->super._orderedKeys removeObjectsInArray:?];
  [(NSDictionary *)self->super._objectsByKey removeObjectsForKeys:keysCopy];
}

- (void)removeAllObjects
{
  [(NSOrderedSet *)self->super._orderedKeys removeAllObjects];
  objectsByKey = self->super._objectsByKey;

  [(NSDictionary *)objectsByKey removeAllObjects];
}

@end