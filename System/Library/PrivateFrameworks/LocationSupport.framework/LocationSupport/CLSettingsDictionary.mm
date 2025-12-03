@interface CLSettingsDictionary
+ (id)settingsWithDictionary:(id)dictionary;
- (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value;
- (BOOL)isEqual:(id)equal;
- (CLSettingsDictionary)initWithDictionary:(id)dictionary;
- (double)doubleForKey:(id)key defaultValue:(double)value;
- (float)floatForKey:(id)key defaultValue:(float)value;
- (id)arrayForKey:(id)key defaultValue:(id)value;
- (id)dictionaryForKey:(id)key defaultValue:(id)value;
- (id)stringForKey:(id)key defaultValue:(id)value;
- (int)intForKey:(id)key defaultValue:(int)value;
- (int64_t)longForKey:(id)key defaultValue:(int64_t)value;
- (signed)shortForKey:(id)key defaultValue:(signed __int16)value;
- (void)dealloc;
@end

@implementation CLSettingsDictionary

+ (id)settingsWithDictionary:(id)dictionary
{
  v3 = [[self alloc] initWithDictionary:dictionary];

  return v3;
}

- (CLSettingsDictionary)initWithDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = CLSettingsDictionary;
  v4 = [(CLSettingsDictionary *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(CLSettingsDictionary *)v4 setDictionary:dictionary];
  }

  return v5;
}

- (void)dealloc
{
  [(CLSettingsDictionary *)self setDictionary:0];
  v3.receiver = self;
  v3.super_class = CLSettingsDictionary;
  [(CLSettingsDictionary *)&v3 dealloc];
}

- (id)dictionaryForKey:(id)key defaultValue:(id)value
{
  v5 = [self->_internal objectForKeyedSubscript:key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return value;
  }

  return [CLSettingsDictionary settingsWithDictionary:v5];
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
  dictionary = [equal dictionary];

  return [internal isEqual:dictionary];
}

@end