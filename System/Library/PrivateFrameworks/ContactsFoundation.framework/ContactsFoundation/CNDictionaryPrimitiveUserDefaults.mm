@interface CNDictionaryPrimitiveUserDefaults
- (BOOL)primitiveBoolValueForKey:(id)a3 keyExists:(BOOL *)a4;
- (CNDictionaryPrimitiveUserDefaults)init;
- (int64_t)primitiveIntegerValueForKey:(id)a3 keyExists:(BOOL *)a4;
- (void)setPrimitiveObject:(id)a3 forKey:(id)a4;
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

- (void)setPrimitiveObject:(id)a3 forKey:(id)a4
{
  preferences = self->_preferences;
  if (a3)
  {
    [(NSMutableDictionary *)preferences setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)preferences removeObjectForKey:a4];
  }
}

- (BOOL)primitiveBoolValueForKey:(id)a3 keyExists:(BOOL *)a4
{
  v5 = [(NSMutableDictionary *)self->_preferences objectForKey:a3];
  v6 = v5;
  if (a4)
  {
    *a4 = v5 != 0;
  }

  v7 = [v5 BOOLValue];

  return v7;
}

- (int64_t)primitiveIntegerValueForKey:(id)a3 keyExists:(BOOL *)a4
{
  v5 = [(NSMutableDictionary *)self->_preferences objectForKey:a3];
  v6 = v5;
  if (a4)
  {
    *a4 = v5 != 0;
  }

  v7 = [v5 integerValue];

  return v7;
}

@end