@interface CNMutableMultiDictionary
- (id)copyWithZone:(_NSZone *)zone;
- (void)addNonNilObject:(id)object forKey:(id)key;
- (void)addObject:(id)object forKey:(id)key;
- (void)removeObject:(id)object forKey:(id)key;
@end

@implementation CNMutableMultiDictionary

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNMultiDictionary alloc];
  entries = self->super._entries;

  return [(CNMultiDictionary *)v4 initWithEntries:entries];
}

- (void)addObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v8 = [(CNMultiDictionary *)self objectsForKey:keyCopy];
  v9 = [v8 arrayByAddingObject:objectCopy];

  [(NSMutableDictionary *)self->super._entries setObject:v9 forKey:keyCopy];
}

- (void)addNonNilObject:(id)object forKey:(id)key
{
  if (object)
  {
    [(CNMutableMultiDictionary *)self addObject:object forKey:key];
  }
}

- (void)removeObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v8 = [(CNMultiDictionary *)self objectsForKey:keyCopy];
  v9 = [v8 mutableCopy];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__CNMutableMultiDictionary_removeObject_forKey___block_invoke;
  v14[3] = &unk_1E6ED58A8;
  v10 = objectCopy;
  v15 = v10;
  v11 = [v9 indexesOfObjectsPassingTest:v14];
  [v9 removeObjectsAtIndexes:v11];
  v12 = [v9 count];
  entries = self->super._entries;
  if (v12)
  {
    [(NSMutableDictionary *)entries setObject:v9 forKey:keyCopy];
  }

  else
  {
    [(NSMutableDictionary *)entries removeObjectForKey:keyCopy];
  }
}

@end