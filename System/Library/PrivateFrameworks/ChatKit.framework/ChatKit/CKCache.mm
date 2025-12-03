@interface CKCache
- (CKCache)init;
- (id)objectForKey:(id)key;
- (void)dealloc;
- (void)removeAllObjects;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation CKCache

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKCache;
  [(CKCache *)&v4 dealloc];
}

- (CKCache)init
{
  v8.receiver = self;
  v8.super_class = CKCache;
  v2 = [(CKCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKCache *)v2 setDictionary:v3];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAC8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAD8] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v2;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  dictionary = [(CKCache *)self dictionary];
  v6 = [dictionary objectForKey:keyCopy];

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  if (object && key)
  {
    keyCopy = key;
    objectCopy = object;
    dictionary = [(CKCache *)self dictionary];
    [dictionary setObject:objectCopy forKey:keyCopy];
  }
}

- (void)removeAllObjects
{
  dictionary = [(CKCache *)self dictionary];
  [dictionary removeAllObjects];
}

@end