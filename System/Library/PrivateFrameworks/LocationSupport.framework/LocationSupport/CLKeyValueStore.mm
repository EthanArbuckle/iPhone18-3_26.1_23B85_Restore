@interface CLKeyValueStore
+ (id)store;
+ (id)storeWithDictionary:(id)dictionary;
- (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value;
- (BOOL)isEqual:(id)equal;
- (CLKeyValueStore)initWithDictionary:(id)dictionary;
- (double)doubleForKey:(id)key defaultValue:(double)value;
- (float)floatForKey:(id)key defaultValue:(float)value;
- (id)arrayForKey:(id)key defaultValue:(id)value;
- (id)dataForKey:(id)key defaultValue:(id)value;
- (id)dictionary;
- (id)dictionaryForKey:(id)key defaultValue:(id)value;
- (id)storeForKey:(id)key defaultValue:(id)value;
- (id)stringForKey:(id)key defaultValue:(id)value;
- (int)intForKey:(id)key defaultValue:(int)value;
- (int64_t)longForKey:(id)key defaultValue:(int64_t)value;
- (signed)shortForKey:(id)key defaultValue:(signed __int16)value;
- (void)dealloc;
@end

@implementation CLKeyValueStore

- (void)dealloc
{
  [(CLKeyValueStore *)self setUnderlyingDictionary:0];
  v3.receiver = self;
  v3.super_class = CLKeyValueStore;
  [(CLKeyValueStore *)&v3 dealloc];
}

- (id)dictionary
{
  v2 = MEMORY[0x1E695DF20];
  underlyingDictionary = [(CLKeyValueStore *)self underlyingDictionary];

  return [v2 dictionaryWithDictionary:underlyingDictionary];
}

+ (id)store
{
  v2 = [self alloc];
  v3 = [v2 initWithDictionary:MEMORY[0x1E695E0F8]];

  return v3;
}

+ (id)storeWithDictionary:(id)dictionary
{
  v3 = [[self alloc] initWithDictionary:dictionary];

  return v3;
}

- (CLKeyValueStore)initWithDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = CLKeyValueStore;
  v4 = [(CLKeyValueStore *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(CLKeyValueStore *)v4 setUnderlyingDictionary:dictionary];
  }

  return v5;
}

- (id)storeForKey:(id)key defaultValue:(id)value
{
  [self->_internal objectForKeyedSubscript:key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return value;
  }

  return MEMORY[0x1EEE66B58](CLKeyValueStore, sel_storeWithDictionary_);
}

- (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value
{
  v5 = [self->_internal objectForKeyedSubscript:key];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  return MEMORY[0x1EEE66B58](v5, sel_BOOLValue);
}

- (signed)shortForKey:(id)key defaultValue:(signed __int16)value
{
  v5 = [self->_internal objectForKeyedSubscript:key];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  return MEMORY[0x1EEE66B58](v5, sel_shortValue);
}

- (int)intForKey:(id)key defaultValue:(int)value
{
  v5 = [self->_internal objectForKeyedSubscript:key];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  return [v5 intValue];
}

- (int64_t)longForKey:(id)key defaultValue:(int64_t)value
{
  v5 = [self->_internal objectForKeyedSubscript:key];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  return MEMORY[0x1EEE66B58](v5, sel_longValue);
}

- (float)floatForKey:(id)key defaultValue:(float)value
{
  v5 = [self->_internal objectForKeyedSubscript:key];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  MEMORY[0x1EEE66B58](v5, sel_floatValue);
  return result;
}

- (double)doubleForKey:(id)key defaultValue:(double)value
{
  v5 = [self->_internal objectForKeyedSubscript:key];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  MEMORY[0x1EEE66B58](v5, sel_doubleValue);
  return result;
}

- (id)stringForKey:(id)key defaultValue:(id)value
{
  v5 = [self->_internal objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E696AEC0];

    return MEMORY[0x1EEE66B58](v6, sel_stringWithString_);
  }

  else if (objc_opt_respondsToSelector())
  {

    return MEMORY[0x1EEE66B58](v5, sel_stringValue);
  }

  else
  {
    return value;
  }
}

- (id)arrayForKey:(id)key defaultValue:(id)value
{
  [self->_internal objectForKey:key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return value;
  }

  v5 = MEMORY[0x1E695DEC8];

  return MEMORY[0x1EEE66B58](v5, sel_arrayWithArray_);
}

- (id)dictionaryForKey:(id)key defaultValue:(id)value
{
  v5 = [self->_internal objectForKey:key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return value;
  }

  v6 = MEMORY[0x1E695DF20];

  return [v6 dictionaryWithDictionary:v5];
}

- (id)dataForKey:(id)key defaultValue:(id)value
{
  [self->_internal objectForKey:key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return value;
  }

  v5 = MEMORY[0x1E695DEF0];

  return MEMORY[0x1EEE66B58](v5, sel_dataWithData_);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  internal = self->_internal;
  underlyingDictionary = [equal underlyingDictionary];

  return [internal isEqual:underlyingDictionary];
}

@end