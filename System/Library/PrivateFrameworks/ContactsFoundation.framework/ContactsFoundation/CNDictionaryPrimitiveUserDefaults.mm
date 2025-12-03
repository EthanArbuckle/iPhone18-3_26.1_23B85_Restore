@interface CNDictionaryPrimitiveUserDefaults
- (BOOL)primitiveBoolValueForKey:(id)key keyExists:(BOOL *)exists;
- (CNDictionaryPrimitiveUserDefaults)init;
- (int64_t)primitiveIntegerValueForKey:(id)key keyExists:(BOOL *)exists;
- (void)setPrimitiveObject:(id)object forKey:(id)key;
@end

@implementation CNDictionaryPrimitiveUserDefaults

- (CNDictionaryPrimitiveUserDefaults)init
{
  v7.receiver = self;
  v7.super_class = CNDictionaryPrimitiveUserDefaults;
  v2 = [(CNDictionaryPrimitiveUserDefaults *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    preferences = v2->_preferences;
    v2->_preferences = v3;

    v5 = v2;
  }

  return v2;
}

- (void)setPrimitiveObject:(id)object forKey:(id)key
{
  preferences = self->_preferences;
  if (object)
  {
    [(NSMutableDictionary *)preferences setObject:object forKey:key];
  }

  else
  {
    [(NSMutableDictionary *)preferences removeObjectForKey:key];
  }
}

- (BOOL)primitiveBoolValueForKey:(id)key keyExists:(BOOL *)exists
{
  v5 = [(NSMutableDictionary *)self->_preferences objectForKey:key];
  v6 = v5;
  if (exists)
  {
    *exists = v5 != 0;
  }

  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (int64_t)primitiveIntegerValueForKey:(id)key keyExists:(BOOL *)exists
{
  v5 = [(NSMutableDictionary *)self->_preferences objectForKey:key];
  v6 = v5;
  if (exists)
  {
    *exists = v5 != 0;
  }

  integerValue = [v5 integerValue];

  return integerValue;
}

@end