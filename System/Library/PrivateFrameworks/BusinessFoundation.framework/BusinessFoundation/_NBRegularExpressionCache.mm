@interface _NBRegularExpressionCache
+ (id)sharedInstance;
- (_NBRegularExpressionCache)init;
- (id)regularExpressionForPattern:(id)pattern error:(id *)error;
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

- (id)regularExpressionForPattern:(id)pattern error:(id *)error
{
  patternCopy = pattern;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(_NBRegularExpressionCache *)selfCopy cache];
  v9 = [cache objectForKey:patternCopy];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v17 = 0;
    v11 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:patternCopy options:0 error:&v17];
    v12 = v17;
    v13 = v12;
    if (!error || v11)
    {
      cache2 = [(_NBRegularExpressionCache *)selfCopy cache];
      [cache2 setObject:v11 forKey:patternCopy];

      v10 = v11;
    }

    else
    {
      v14 = v12;
      v10 = 0;
      *error = v13;
    }
  }

  objc_sync_exit(selfCopy);

  return v10;
}

@end