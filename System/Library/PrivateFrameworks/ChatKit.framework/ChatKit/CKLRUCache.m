@interface CKLRUCache
- (CKLRUCache)initWithMaximumCapacity:(unint64_t)a3;
- (void)dealloc;
@end

@implementation CKLRUCache

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKLRUCache;
  [(CPLRUDictionary *)&v4 dealloc];
}

- (CKLRUCache)initWithMaximumCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = CKLRUCache;
  v3 = [(CPLRUDictionary *)&v8 initWithMaximumCapacity:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAC8] object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v3 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAD8] object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v3 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

@end