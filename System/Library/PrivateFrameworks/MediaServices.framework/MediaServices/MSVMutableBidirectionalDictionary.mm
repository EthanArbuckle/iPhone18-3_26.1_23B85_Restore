@interface MSVMutableBidirectionalDictionary
- (MSVMutableBidirectionalDictionary)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)removeAllObjects;
- (void)removeKeyForObject:(id)object;
- (void)removeObjectForKey:(id)key;
- (void)setKey:(id)key forObject:(id)object;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation MSVMutableBidirectionalDictionary

- (void)removeKeyForObject:(id)object
{
  objectCopy = object;
  v4 = self->super._keyToObjectDictionary;
  v5 = self->super._objectToKeyDictionary;
  v6 = [(NSDictionary *)v5 objectForKeyedSubscript:objectCopy];
  if (v6)
  {
    [(NSDictionary *)v4 setObject:0 forKeyedSubscript:v6];
    [(NSDictionary *)v5 setObject:0 forKeyedSubscript:objectCopy];
  }
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  v4 = self->super._keyToObjectDictionary;
  v5 = self->super._objectToKeyDictionary;
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:keyCopy];
  if (v6)
  {
    [(NSDictionary *)v4 setObject:0 forKeyedSubscript:keyCopy];
    [(NSDictionary *)v5 setObject:0 forKeyedSubscript:v6];
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  v11 = self->super._keyToObjectDictionary;
  v7 = self->super._objectToKeyDictionary;
  keyCopy = key;
  objectCopy = object;
  v10 = [(NSDictionary *)v11 objectForKeyedSubscript:keyCopy];
  if (v10)
  {
    [(NSDictionary *)v7 setObject:0 forKeyedSubscript:v10];
  }

  [(NSDictionary *)v11 setObject:objectCopy forKeyedSubscript:keyCopy];
  [(NSDictionary *)v7 setObject:keyCopy forKeyedSubscript:objectCopy];
}

- (void)setKey:(id)key forObject:(id)object
{
  v11 = self->super._keyToObjectDictionary;
  v7 = self->super._objectToKeyDictionary;
  objectCopy = object;
  keyCopy = key;
  v10 = [(NSDictionary *)v7 objectForKeyedSubscript:objectCopy];
  if (v10)
  {
    [(NSDictionary *)v11 setObject:0 forKeyedSubscript:v10];
  }

  [(NSDictionary *)v11 setObject:objectCopy forKeyedSubscript:keyCopy];
  [(NSDictionary *)v7 setObject:keyCopy forKeyedSubscript:objectCopy];
}

- (void)removeAllObjects
{
  keyToObjectDictionary = self->super._keyToObjectDictionary;
  v3 = self->super._objectToKeyDictionary;
  v4 = keyToObjectDictionary;
  [(NSDictionary *)v4 removeAllObjects];
  [(NSDictionary *)v3 removeAllObjects];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MSVBidirectionalDictionary alloc];
  keyToObjectDictionary = self->super._keyToObjectDictionary;

  return [(MSVBidirectionalDictionary *)v4 initWithDictionary:keyToObjectDictionary];
}

- (MSVMutableBidirectionalDictionary)initWithDictionary:(id)dictionary
{
  v13.receiver = self;
  v13.super_class = MSVMutableBidirectionalDictionary;
  v3 = [(MSVBidirectionalDictionary *)&v13 initWithDictionary:dictionary];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E695E0F8];
    if (v3->super._keyToObjectDictionary)
    {
      keyToObjectDictionary = v3->super._keyToObjectDictionary;
    }

    else
    {
      keyToObjectDictionary = MEMORY[0x1E695E0F8];
    }

    v7 = [(NSDictionary *)keyToObjectDictionary mutableCopy];
    v8 = v4->super._keyToObjectDictionary;
    v4->super._keyToObjectDictionary = v7;

    if (v4->super._objectToKeyDictionary)
    {
      objectToKeyDictionary = v4->super._objectToKeyDictionary;
    }

    else
    {
      objectToKeyDictionary = v5;
    }

    v10 = [(NSDictionary *)objectToKeyDictionary mutableCopy];
    v11 = v4->super._objectToKeyDictionary;
    v4->super._objectToKeyDictionary = v10;
  }

  return v4;
}

@end