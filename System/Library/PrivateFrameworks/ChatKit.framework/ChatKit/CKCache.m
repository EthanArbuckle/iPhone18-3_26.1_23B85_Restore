@interface CKCache
- (CKCache)init;
- (id)objectForKey:(id)a3;
- (void)dealloc;
- (void)removeAllObjects;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation CKCache

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAC8] object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAD8] object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v2 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v2;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(CKCache *)self dictionary];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(CKCache *)self dictionary];
    [v8 setObject:v7 forKey:v6];
  }
}

- (void)removeAllObjects
{
  v2 = [(CKCache *)self dictionary];
  [v2 removeAllObjects];
}

@end