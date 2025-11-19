@interface MSVDefaultDictionary
+ (id)dictionaryWithCapacity:(unint64_t)a3 defaultValue:(id)a4;
+ (id)dictionaryWithDefaultValue:(id)a3;
+ (id)dictionaryWithDictionary:(id)a3 defaultValue:(id)a4;
- (MSVDefaultDictionary)initWithCapacity:(unint64_t)a3 defaultValue:(id)a4;
- (MSVDefaultDictionary)initWithDefaultValue:(id)a3;
- (MSVDefaultDictionary)initWithDictionary:(id)a3 defaultValue:(id)a4;
- (MSVDefaultDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
- (id)objectForKey:(id)a3;
- (void)setDefaultValue:(id)a3;
@end

@implementation MSVDefaultDictionary

- (void)setDefaultValue:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = &__block_literal_global_39;
  }

  v7 = v4;
  v5 = MEMORY[0x1B26EC6C0]();
  defaultValue = self->_defaultValue;
  self->_defaultValue = v5;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKey:v4];
  if (!v5)
  {
    v5 = (*(self->_defaultValue + 2))();
    [(NSMutableDictionary *)self->_storage setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (MSVDefaultDictionary)initWithDictionary:(id)a3 defaultValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MSVDefaultDictionary;
  v8 = [(MSVDefaultDictionary *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
    storage = v8->_storage;
    v8->_storage = v9;

    v11 = MEMORY[0x1B26EC6C0](v7);
    defaultValue = v8->_defaultValue;
    v8->_defaultValue = v11;
  }

  return v8;
}

- (MSVDefaultDictionary)initWithCapacity:(unint64_t)a3 defaultValue:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = MSVDefaultDictionary;
  v7 = [(MSVDefaultDictionary *)&v13 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:a3];
    storage = v7->_storage;
    v7->_storage = v8;

    v10 = MEMORY[0x1B26EC6C0](v6);
    defaultValue = v7->_defaultValue;
    v7->_defaultValue = v10;
  }

  return v7;
}

- (MSVDefaultDictionary)initWithDefaultValue:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MSVDefaultDictionary;
  v5 = [(MSVDefaultDictionary *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    storage = v5->_storage;
    v5->_storage = v6;

    v8 = MEMORY[0x1B26EC6C0](v4);
    defaultValue = v5->_defaultValue;
    v5->_defaultValue = v8;
  }

  return v5;
}

- (MSVDefaultDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v13.receiver = self;
  v13.super_class = MSVDefaultDictionary;
  v8 = [(MSVDefaultDictionary *)&v13 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjects:a3 forKeys:a4 count:a5];
    storage = v8->_storage;
    v8->_storage = v9;

    defaultValue = v8->_defaultValue;
    v8->_defaultValue = &__block_literal_global_36;
  }

  return v8;
}

+ (id)dictionaryWithDictionary:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithDictionary:v7 defaultValue:v6];

  return v8;
}

+ (id)dictionaryWithCapacity:(unint64_t)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithCapacity:a3 defaultValue:v6];

  return v7;
}

+ (id)dictionaryWithDefaultValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDefaultValue:v4];

  return v5;
}

@end