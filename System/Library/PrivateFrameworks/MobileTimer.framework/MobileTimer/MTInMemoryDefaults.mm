@interface MTInMemoryDefaults
- (MTInMemoryDefaults)init;
- (float)floatForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKey:(id)a3 defaultValue:(id)a4;
- (void)removeObjectForKey:(id)a3;
- (void)setFloat:(float)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
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

- (id)objectForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(MTInMemoryDefaults *)self objectForKey:a3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v9;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTInMemoryDefaults *)self storage];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (float)floatForKey:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(MTInMemoryDefaults *)self storage];
  v6 = [v5 objectForKeyedSubscript:v4];

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

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTInMemoryDefaults *)self storage];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (void)setFloat:(float)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  *&v8 = a3;
  v10 = [v6 numberWithFloat:v8];
  v9 = [(MTInMemoryDefaults *)self storage];
  [v9 setObject:v10 forKeyedSubscript:v7];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(MTInMemoryDefaults *)self storage];
  [v5 removeObjectForKey:v4];
}

@end