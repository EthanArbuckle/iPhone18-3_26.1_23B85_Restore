@interface OAXTableStyleCache
- (OAXTableStyleCache)init;
- (_xmlNode)styleNodeForId:(id)a3;
- (void)setStyleNode:(_xmlNode *)a3 forId:(id)a4;
@end

@implementation OAXTableStyleCache

- (OAXTableStyleCache)init
{
  v6.receiver = self;
  v6.super_class = OAXTableStyleCache;
  v2 = [(OAXTableStyleCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mCache = v2->mCache;
    v2->mCache = v3;
  }

  return v2;
}

- (void)setStyleNode:(_xmlNode *)a3 forId:(id)a4
{
  v8 = a4;
  mCache = self->mCache;
  v7 = [MEMORY[0x277CCAE60] valueWithPointer:a3];
  [(NSMutableDictionary *)mCache setObject:v7 forKey:v8];
}

- (_xmlNode)styleNodeForId:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->mCache objectForKey:v4];
  v6 = [v5 pointerValue];

  if (!v6)
  {
    v7 = +[TCBundleResourceManager instance];
    v8 = [v4 length];
    if (v8 < 2)
    {
      v6 = 0;
    }

    else
    {
      v9 = [v4 substringWithRange:{1, v8 - 2}];

      v10 = [v7 xmlDocumentForResource:v9 ofType:@"xml" inPackage:@"DefaultTableStyles"];
      if (v10)
      {
        v6 = OCXGetRootElement(v10);
      }

      else
      {
        v6 = 0;
      }

      v4 = v9;
    }
  }

  return v6;
}

@end