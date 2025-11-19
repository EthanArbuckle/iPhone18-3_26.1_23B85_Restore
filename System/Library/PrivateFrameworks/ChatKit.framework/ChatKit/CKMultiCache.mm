@interface CKMultiCache
- (CKMultiCache)init;
- (void)dealloc;
- (void)pushObject:(id)a3 forKey:(id)a4;
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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAC8] object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v3 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAD8] object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v3 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDC48] object:0];

    v3->_limit = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKMultiCache;
  [(CKMultiCache *)&v4 dealloc];
}

- (void)pushObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IMMultiDict *)self count]> self->_limit)
  {
    [(CKMultiCache *)self removeAllObjects];
  }

  v8.receiver = self;
  v8.super_class = CKMultiCache;
  [(IMMultiDict *)&v8 pushObject:v6 forKey:v7];
}

- (void)removeAllObjects
{
  [(CKMultiCache *)self setCacheEligibleForPrewarm:1];
  v3.receiver = self;
  v3.super_class = CKMultiCache;
  [(IMMultiDict *)&v3 removeAllObjects];
}

@end