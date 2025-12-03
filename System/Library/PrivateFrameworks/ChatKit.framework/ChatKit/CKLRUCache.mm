@interface CKLRUCache
- (CKLRUCache)initWithMaximumCapacity:(unint64_t)capacity;
- (void)dealloc;
@end

@implementation CKLRUCache

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKLRUCache;
  [(CPLRUDictionary *)&v4 dealloc];
}

- (CKLRUCache)initWithMaximumCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = CKLRUCache;
  v3 = [(CPLRUDictionary *)&v8 initWithMaximumCapacity:capacity];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAC8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAD8] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v3 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

@end