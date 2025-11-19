@interface CalDefaultDictionary
- (CalDefaultDictionary)initWithDefaultClass:(Class)a3;
- (id)_mutableCopyOfFinalDictionaryWithZone:(_NSZone *)a3 isDeepCopy:(BOOL)a4;
- (id)objectForKey:(id)a3;
@end

@implementation CalDefaultDictionary

- (CalDefaultDictionary)initWithDefaultClass:(Class)a3
{
  v9.receiver = self;
  v9.super_class = CalDefaultDictionary;
  v4 = [(CalDefaultDictionary *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_defaultClass = a3;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dict = v5->_dict;
    v5->_dict = v6;
  }

  return v5;
}

- (id)_mutableCopyOfFinalDictionaryWithZone:(_NSZone *)a3 isDeepCopy:(BOOL)a4
{
  if (a4)
  {
    v5 = [(CalDefaultDictionary *)self finalDictionary];
    v6 = [v5 CalMutableRecursiveCopy];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF90] allocWithZone:a3];
    v5 = [(CalDefaultDictionary *)self finalDictionary];
    v6 = [v7 initWithDictionary:v5];
  }

  v8 = v6;

  return v8;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_dict objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(self->_defaultClass);
    [(NSMutableDictionary *)self->_dict setObject:v5 forKey:v4];
  }

  return v5;
}

@end