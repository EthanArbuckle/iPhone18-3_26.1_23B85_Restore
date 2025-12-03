@interface CKMultiCache
- (CKMultiCache)init;
- (void)dealloc;
- (void)pushObject:(id)object forKey:(id)key;
- (void)removeAllObjects;
@end

@implementation CKMultiCache

- (CKMultiCache)init
{
  v8.receiver = self;
  v8.super_class = CKMultiCache;
  v2 = [(IMMultiDict *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CKMultiCache *)v2 setCacheEligibleForPrewarm:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAC8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAD8] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v3 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDC48] object:0];

    v3->_limit = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKMultiCache;
  [(CKMultiCache *)&v4 dealloc];
}

- (void)pushObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if ([(IMMultiDict *)self count]> self->_limit)
  {
    [(CKMultiCache *)self removeAllObjects];
  }

  v8.receiver = self;
  v8.super_class = CKMultiCache;
  [(IMMultiDict *)&v8 pushObject:objectCopy forKey:keyCopy];
}

- (void)removeAllObjects
{
  [(CKMultiCache *)self setCacheEligibleForPrewarm:1];
  v3.receiver = self;
  v3.super_class = CKMultiCache;
  [(IMMultiDict *)&v3 removeAllObjects];
}

@end