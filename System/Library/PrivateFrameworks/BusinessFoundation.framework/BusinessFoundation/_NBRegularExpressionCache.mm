@interface _NBRegularExpressionCache
+ (id)sharedInstance;
- (_NBRegularExpressionCache)init;
- (id)regularExpressionForPattern:(id)a3 error:(id *)a4;
@end

@implementation _NBRegularExpressionCache

+ (id)sharedInstance
{
  if (qword_281346A08 != -1)
  {
    dispatch_once(&qword_281346A08, &__block_literal_global_1);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

- (_NBRegularExpressionCache)init
{
  v6.receiver = self;
  v6.super_class = _NBRegularExpressionCache;
  v2 = [(_NBRegularExpressionCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (id)regularExpressionForPattern:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(_NBRegularExpressionCache *)v7 cache];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v17 = 0;
    v11 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v6 options:0 error:&v17];
    v12 = v17;
    v13 = v12;
    if (!a4 || v11)
    {
      v15 = [(_NBRegularExpressionCache *)v7 cache];
      [v15 setObject:v11 forKey:v6];

      v10 = v11;
    }

    else
    {
      v14 = v12;
      v10 = 0;
      *a4 = v13;
    }
  }

  objc_sync_exit(v7);

  return v10;
}

@end