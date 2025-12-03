@interface MTInMemoryDefaults
- (MTInMemoryDefaults)init;
- (float)floatForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)objectForKey:(id)key defaultValue:(id)value;
- (void)removeObjectForKey:(id)key;
- (void)setFloat:(float)float forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation MTInMemoryDefaults

- (MTInMemoryDefaults)init
{
  v6.receiver = self;
  v6.super_class = MTInMemoryDefaults;
  v2 = [(MTInMemoryDefaults *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    storage = v2->_storage;
    v2->_storage = v3;
  }

  return v2;
}

- (id)objectForKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(MTInMemoryDefaults *)self objectForKey:key];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = valueCopy;
  }

  v10 = v9;

  return v9;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  storage = [(MTInMemoryDefaults *)self storage];
  v6 = [storage objectForKeyedSubscript:keyCopy];

  return v6;
}

- (float)floatForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  storage = [(MTInMemoryDefaults *)self storage];
  v6 = [storage objectForKeyedSubscript:keyCopy];

  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 floatValue];
  v10 = v9;

  return v10;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  storage = [(MTInMemoryDefaults *)self storage];
  [storage setObject:objectCopy forKeyedSubscript:keyCopy];
}

- (void)setFloat:(float)float forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  *&v8 = float;
  v10 = [v6 numberWithFloat:v8];
  storage = [(MTInMemoryDefaults *)self storage];
  [storage setObject:v10 forKeyedSubscript:keyCopy];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  storage = [(MTInMemoryDefaults *)self storage];
  [storage removeObjectForKey:keyCopy];
}

@end