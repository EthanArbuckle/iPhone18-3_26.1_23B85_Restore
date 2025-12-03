@interface CNMutableOrderedDictionary
- (CNMutableOrderedDictionary)initWithDictionary:(id)dictionary orderedKeys:(id)keys;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation CNMutableOrderedDictionary

- (CNMutableOrderedDictionary)initWithDictionary:(id)dictionary orderedKeys:(id)keys
{
  dictionaryCopy = dictionary;
  keysCopy = keys;
  v12.receiver = self;
  v12.super_class = CNMutableOrderedDictionary;
  v8 = [(CNOrderedDictionary *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(NSMutableDictionary *)v8->super._dictionary addEntriesFromDictionary:dictionaryCopy];
    [(NSMutableArray *)v9->super._orderedKeys addObjectsFromArray:keysCopy];
    v10 = v9;
  }

  return v9;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = keyCopy;
  if (objectCopy)
  {
    [(NSMutableDictionary *)self->super._dictionary setObject:objectCopy forKey:keyCopy];
    if (([(NSMutableArray *)self->super._orderedKeys containsObject:v7]& 1) == 0)
    {
      [(NSMutableArray *)self->super._orderedKeys addObject:v7];
    }
  }

  else
  {
    [(CNMutableOrderedDictionary *)self removeObjectForKey:keyCopy];
  }
}

- (void)removeObjectForKey:(id)key
{
  dictionary = self->super._dictionary;
  keyCopy = key;
  [(NSMutableDictionary *)dictionary removeObjectForKey:keyCopy];
  [(NSMutableArray *)self->super._orderedKeys removeObject:keyCopy];
}

@end