@interface EFMutableOrderedDictionary
- (EFMutableOrderedDictionary)init;
- (EFMutableOrderedDictionary)initWithCapacity:(unint64_t)a3;
- (id)_initWithOrderedKeys:(id)a3 objectsByKey:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)moveObjectForKey:(id)a3 toIndex:(unint64_t)a4;
- (void)removeAllObjects;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectsAtIndexes:(id)a3;
- (void)removeObjectsForKeys:(id)a3;
- (void)replaceObject:(id)a3 atIndex:(unint64_t)a4;
- (void)replaceObject:(id)a3 forKey:(id)a4;
- (void)setOrAddObject:(id)a3 forKey:(id)a4;
- (void)setOrInsertObject:(id)a3 forKey:(id)a4 atIndex:(unint64_t)a5;
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

- (EFMutableOrderedDictionary)initWithCapacity:(unint64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:a3];
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a3];
  v9.receiver = self;
  v9.super_class = EFMutableOrderedDictionary;
  v7 = [(EFOrderedDictionary *)&v9 _initWithOrderedKeys:v5 objectsByKey:v6];

  return v7;
}

- (id)_initWithOrderedKeys:(id)a3 objectsByKey:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  v8 = [v6 mutableCopy];
  v11.receiver = self;
  v11.super_class = EFMutableOrderedDictionary;
  v9 = [(EFOrderedDictionary *)&v11 _initWithOrderedKeys:v7 objectsByKey:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [EFOrderedDictionary alloc];
  v5 = [(NSOrderedSet *)self->super._orderedKeys copy];
  v6 = [(NSDictionary *)self->super._objectsByKey copy];
  v7 = [(EFOrderedDictionary *)v4 _initWithOrderedKeys:v5 objectsByKey:v6];

  return v7;
}

- (void)setOrAddObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(NSOrderedSet *)self->super._orderedKeys addObject:v6];
  [(NSDictionary *)self->super._objectsByKey setObject:v7 forKeyedSubscript:v6];
}

- (void)setOrInsertObject:(id)a3 forKey:(id)a4 atIndex:(unint64_t)a5
{
  v9 = a3;
  v8 = a4;
  [(NSOrderedSet *)self->super._orderedKeys insertObject:v8 atIndex:a5];
  [(NSDictionary *)self->super._objectsByKey setObject:v9 forKeyedSubscript:v8];
}

- (void)moveObjectForKey:(id)a3 toIndex:(unint64_t)a4
{
  v5 = [(NSOrderedSet *)self->super._orderedKeys indexOfObject:a3];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v5];
    [NSOrderedSet moveObjectsAtIndexes:"moveObjectsAtIndexes:toIndex:" toIndex:?];
  }
}

- (void)replaceObject:(id)a3 atIndex:(unint64_t)a4
{
  v8 = a3;
  if ([(NSOrderedSet *)self->super._orderedKeys count]> a4)
  {
    objectsByKey = self->super._objectsByKey;
    v7 = [(NSOrderedSet *)self->super._orderedKeys objectAtIndexedSubscript:a4];
    [(NSDictionary *)objectsByKey setObject:v8 forKeyedSubscript:v7];
  }
}

- (void)replaceObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(NSOrderedSet *)self->super._orderedKeys containsObject:v6])
  {
    [(NSDictionary *)self->super._objectsByKey setObject:v7 forKeyedSubscript:v6];
  }
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  if ([(NSOrderedSet *)self->super._orderedKeys count]> a3)
  {
    objectsByKey = self->super._objectsByKey;
    v6 = [(NSOrderedSet *)self->super._orderedKeys objectAtIndexedSubscript:a3];
    [(NSDictionary *)objectsByKey setObject:0 forKeyedSubscript:v6];

    orderedKeys = self->super._orderedKeys;

    [(NSOrderedSet *)orderedKeys removeObjectAtIndex:a3];
  }
}

- (void)removeObjectsAtIndexes:(id)a3
{
  v4 = [(NSOrderedSet *)self->super._orderedKeys objectsAtIndexes:a3];
  [(EFMutableOrderedDictionary *)self removeObjectsForKeys:?];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  [(NSOrderedSet *)self->super._orderedKeys removeObject:?];
  [(NSDictionary *)self->super._objectsByKey setObject:0 forKeyedSubscript:v4];
}

- (void)removeObjectsForKeys:(id)a3
{
  v4 = a3;
  [(NSOrderedSet *)self->super._orderedKeys removeObjectsInArray:?];
  [(NSDictionary *)self->super._objectsByKey removeObjectsForKeys:v4];
}

- (void)removeAllObjects
{
  [(NSOrderedSet *)self->super._orderedKeys removeAllObjects];
  objectsByKey = self->super._objectsByKey;

  [(NSDictionary *)objectsByKey removeAllObjects];
}

@end