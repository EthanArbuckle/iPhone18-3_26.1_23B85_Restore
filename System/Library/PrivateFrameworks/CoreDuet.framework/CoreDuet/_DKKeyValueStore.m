@interface _DKKeyValueStore
+ (id)standardUserDefaultsKeyValueStore;
- (BOOL)BOOLForKey:(id)a3;
- (_DKKeyValueStore)initWithSimpleKeyValueStore:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)dataForKey:(id)a3;
- (id)dateForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)numberForKey:(id)a3;
- (id)objectForKey:(id)a3 havingClass:(Class)a4;
- (id)stringForKey:(id)a3;
@end

@implementation _DKKeyValueStore

- (_DKKeyValueStore)initWithSimpleKeyValueStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DKKeyValueStore;
  v6 = [(_DKKeyValueStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

+ (id)standardUserDefaultsKeyValueStore
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [[_DKKeyValueStore alloc] initWithSimpleKeyValueStore:v2];

  return v3;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(_DKKeyValueStore *)self objectForKey:v4 havingClass:objc_opt_class()];

  return v5;
}

- (BOOL)BOOLForKey:(id)a3
{
  v3 = [(_DKKeyValueStore *)self numberForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataForKey:(id)a3
{
  v4 = a3;
  v5 = [(_DKKeyValueStore *)self objectForKey:v4 havingClass:objc_opt_class()];

  return v5;
}

- (id)dateForKey:(id)a3
{
  v4 = a3;
  v5 = [(_DKKeyValueStore *)self objectForKey:v4 havingClass:objc_opt_class()];

  return v5;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(_DKKeyValueStore *)self objectForKey:v4 havingClass:objc_opt_class()];

  return v5;
}

- (id)numberForKey:(id)a3
{
  v4 = a3;
  v5 = [(_DKKeyValueStore *)self objectForKey:v4 havingClass:objc_opt_class()];

  return v5;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(_DKKeyValueStore *)self objectForKey:v4 havingClass:objc_opt_class()];

  return v5;
}

- (id)objectForKey:(id)a3 havingClass:(Class)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_DKSimpleKeyValueStore *)self->_store objectForKey:v6];
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = objc_opt_class();
    }

    else
    {
      v8 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 138413058;
      v12 = objc_opt_class();
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = a4;
      _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@: Object %@ of wrong class, found %@ instead of %@", &v11, 0x2Au);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

@end