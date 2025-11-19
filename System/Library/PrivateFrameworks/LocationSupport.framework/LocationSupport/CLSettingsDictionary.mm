@interface CLSettingsDictionary
+ (id)settingsWithDictionary:(id)a3;
- (BOOL)BOOLForKey:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (CLSettingsDictionary)initWithDictionary:(id)a3;
- (double)doubleForKey:(id)a3 defaultValue:(double)a4;
- (float)floatForKey:(id)a3 defaultValue:(float)a4;
- (id)arrayForKey:(id)a3 defaultValue:(id)a4;
- (id)dictionaryForKey:(id)a3 defaultValue:(id)a4;
- (id)stringForKey:(id)a3 defaultValue:(id)a4;
- (int)intForKey:(id)a3 defaultValue:(int)a4;
- (int64_t)longForKey:(id)a3 defaultValue:(int64_t)a4;
- (signed)shortForKey:(id)a3 defaultValue:(signed __int16)a4;
- (void)dealloc;
@end

@implementation CLSettingsDictionary

+ (id)settingsWithDictionary:(id)a3
{
  v3 = [[a1 alloc] initWithDictionary:a3];

  return v3;
}

- (CLSettingsDictionary)initWithDictionary:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLSettingsDictionary;
  v4 = [(CLSettingsDictionary *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(CLSettingsDictionary *)v4 setDictionary:a3];
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

- (id)dictionaryForKey:(id)a3 defaultValue:(id)a4
{
  v5 = [self->_internal objectForKeyedSubscript:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a4;
  }

  return [CLSettingsDictionary settingsWithDictionary:v5];
}

- (BOOL)BOOLForKey:(id)a3 defaultValue:(BOOL)a4
{
  v5 = [self->_internal objectForKeyedSubscript:a3];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return a4;
  }

  return MEMORY[0x1EEE66B58](v5, sel_BOOLValue);
}

- (signed)shortForKey:(id)a3 defaultValue:(signed __int16)a4
{
  v5 = [self->_internal objectForKeyedSubscript:a3];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return a4;
  }

  return MEMORY[0x1EEE66B58](v5, sel_shortValue);
}

- (int)intForKey:(id)a3 defaultValue:(int)a4
{
  v5 = [self->_internal objectForKeyedSubscript:a3];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return a4;
  }

  return [v5 intValue];
}

- (int64_t)longForKey:(id)a3 defaultValue:(int64_t)a4
{
  v5 = [self->_internal objectForKeyedSubscript:a3];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return a4;
  }

  return MEMORY[0x1EEE66B58](v5, sel_longValue);
}

- (float)floatForKey:(id)a3 defaultValue:(float)a4
{
  v5 = [self->_internal objectForKeyedSubscript:a3];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return a4;
  }

  MEMORY[0x1EEE66B58](v5, sel_floatValue);
  return result;
}

- (double)doubleForKey:(id)a3 defaultValue:(double)a4
{
  v5 = [self->_internal objectForKeyedSubscript:a3];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return a4;
  }

  MEMORY[0x1EEE66B58](v5, sel_doubleValue);
  return result;
}

- (id)stringForKey:(id)a3 defaultValue:(id)a4
{
  v5 = [self->_internal objectForKey:a3];
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
    return a4;
  }
}

- (id)arrayForKey:(id)a3 defaultValue:(id)a4
{
  [self->_internal objectForKey:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a4;
  }

  v5 = MEMORY[0x1E695DEC8];

  return MEMORY[0x1EEE66B58](v5, sel_arrayWithArray_);
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  internal = self->_internal;
  v6 = [a3 dictionary];

  return [internal isEqual:v6];
}

@end