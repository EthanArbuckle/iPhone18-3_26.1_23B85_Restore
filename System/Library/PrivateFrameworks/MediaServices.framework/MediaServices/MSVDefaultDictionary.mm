@interface MSVDefaultDictionary
+ (id)dictionaryWithCapacity:(unint64_t)capacity defaultValue:(id)value;
+ (id)dictionaryWithDefaultValue:(id)value;
+ (id)dictionaryWithDictionary:(id)dictionary defaultValue:(id)value;
- (MSVDefaultDictionary)initWithCapacity:(unint64_t)capacity defaultValue:(id)value;
- (MSVDefaultDictionary)initWithDefaultValue:(id)value;
- (MSVDefaultDictionary)initWithDictionary:(id)dictionary defaultValue:(id)value;
- (MSVDefaultDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (id)objectForKey:(id)key;
- (void)setDefaultValue:(id)value;
@end

@implementation MSVDefaultDictionary

- (void)setDefaultValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    valueCopy = &__block_literal_global_39;
  }

  v7 = valueCopy;
  v5 = MEMORY[0x1B26EC6C0]();
  defaultValue = self->_defaultValue;
  self->_defaultValue = v5;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_storage objectForKey:keyCopy];
  if (!v5)
  {
    v5 = (*(self->_defaultValue + 2))();
    [(NSMutableDictionary *)self->_storage setObject:v5 forKeyedSubscript:keyCopy];
  }

  return v5;
}

- (MSVDefaultDictionary)initWithDictionary:(id)dictionary defaultValue:(id)value
{
  dictionaryCopy = dictionary;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = MSVDefaultDictionary;
  v8 = [(MSVDefaultDictionary *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictionaryCopy];
    storage = v8->_storage;
    v8->_storage = v9;

    v11 = MEMORY[0x1B26EC6C0](valueCopy);
    defaultValue = v8->_defaultValue;
    v8->_defaultValue = v11;
  }

  return v8;
}

- (MSVDefaultDictionary)initWithCapacity:(unint64_t)capacity defaultValue:(id)value
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = MSVDefaultDictionary;
  v7 = [(MSVDefaultDictionary *)&v13 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:capacity];
    storage = v7->_storage;
    v7->_storage = v8;

    v10 = MEMORY[0x1B26EC6C0](valueCopy);
    defaultValue = v7->_defaultValue;
    v7->_defaultValue = v10;
  }

  return v7;
}

- (MSVDefaultDictionary)initWithDefaultValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = MSVDefaultDictionary;
  v5 = [(MSVDefaultDictionary *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    storage = v5->_storage;
    v5->_storage = v6;

    v8 = MEMORY[0x1B26EC6C0](valueCopy);
    defaultValue = v5->_defaultValue;
    v5->_defaultValue = v8;
  }

  return v5;
}

- (MSVDefaultDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v13.receiver = self;
  v13.super_class = MSVDefaultDictionary;
  v8 = [(MSVDefaultDictionary *)&v13 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjects:objects forKeys:keys count:count];
    storage = v8->_storage;
    v8->_storage = v9;

    defaultValue = v8->_defaultValue;
    v8->_defaultValue = &__block_literal_global_36;
  }

  return v8;
}

+ (id)dictionaryWithDictionary:(id)dictionary defaultValue:(id)value
{
  valueCopy = value;
  dictionaryCopy = dictionary;
  v8 = [[self alloc] initWithDictionary:dictionaryCopy defaultValue:valueCopy];

  return v8;
}

+ (id)dictionaryWithCapacity:(unint64_t)capacity defaultValue:(id)value
{
  valueCopy = value;
  v7 = [[self alloc] initWithCapacity:capacity defaultValue:valueCopy];

  return v7;
}

+ (id)dictionaryWithDefaultValue:(id)value
{
  valueCopy = value;
  v5 = [[self alloc] initWithDefaultValue:valueCopy];

  return v5;
}

@end