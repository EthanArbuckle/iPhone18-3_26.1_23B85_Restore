@interface ECTwoObjectKeyCache
- (ECTwoObjectKeyCache)init;
- (id)objectForKey1:(id)a3 key2:(id)a4;
- (void)setObject:(id)a3 forKey1:(id)a4 key2:(id)a5;
@end

@implementation ECTwoObjectKeyCache

- (ECTwoObjectKeyCache)init
{
  v6.receiver = self;
  v6.super_class = ECTwoObjectKeyCache;
  v2 = [(ECTwoObjectKeyCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mCache = v2->mCache;
    v2->mCache = v3;
  }

  return v2;
}

- (id)objectForKey1:(id)a3 key2:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->mCache objectForKey:a3];
  v8 = [v7 objectForKey:v6];

  return v8;
}

- (void)setObject:(id)a3 forKey1:(id)a4 key2:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (v11 && v8)
  {
    v10 = [(NSMutableDictionary *)self->mCache objectForKey:v8];
    if (!v10)
    {
      v10 = +[ECPointerNilKeyDictionary dictionary];
      [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
    }

    [v10 setObject:v11 forKey:v9];
  }
}

@end