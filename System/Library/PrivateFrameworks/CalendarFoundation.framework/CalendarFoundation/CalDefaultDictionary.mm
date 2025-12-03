@interface CalDefaultDictionary
- (CalDefaultDictionary)initWithDefaultClass:(Class)class;
- (id)_mutableCopyOfFinalDictionaryWithZone:(_NSZone *)zone isDeepCopy:(BOOL)copy;
- (id)objectForKey:(id)key;
@end

@implementation CalDefaultDictionary

- (CalDefaultDictionary)initWithDefaultClass:(Class)class
{
  v9.receiver = self;
  v9.super_class = CalDefaultDictionary;
  v4 = [(CalDefaultDictionary *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_defaultClass = class;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dict = v5->_dict;
    v5->_dict = v6;
  }

  return v5;
}

- (id)_mutableCopyOfFinalDictionaryWithZone:(_NSZone *)zone isDeepCopy:(BOOL)copy
{
  if (copy)
  {
    finalDictionary = [(CalDefaultDictionary *)self finalDictionary];
    calMutableRecursiveCopy = [finalDictionary CalMutableRecursiveCopy];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF90] allocWithZone:zone];
    finalDictionary = [(CalDefaultDictionary *)self finalDictionary];
    calMutableRecursiveCopy = [v7 initWithDictionary:finalDictionary];
  }

  v8 = calMutableRecursiveCopy;

  return v8;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_dict objectForKey:keyCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(self->_defaultClass);
    [(NSMutableDictionary *)self->_dict setObject:v5 forKey:keyCopy];
  }

  return v5;
}

@end