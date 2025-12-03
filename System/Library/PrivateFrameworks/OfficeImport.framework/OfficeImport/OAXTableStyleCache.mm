@interface OAXTableStyleCache
- (OAXTableStyleCache)init;
- (_xmlNode)styleNodeForId:(id)id;
- (void)setStyleNode:(_xmlNode *)node forId:(id)id;
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

- (void)setStyleNode:(_xmlNode *)node forId:(id)id
{
  idCopy = id;
  mCache = self->mCache;
  v7 = [MEMORY[0x277CCAE60] valueWithPointer:node];
  [(NSMutableDictionary *)mCache setObject:v7 forKey:idCopy];
}

- (_xmlNode)styleNodeForId:(id)id
{
  idCopy = id;
  v5 = [(NSMutableDictionary *)self->mCache objectForKey:idCopy];
  pointerValue = [v5 pointerValue];

  if (!pointerValue)
  {
    v7 = +[TCBundleResourceManager instance];
    v8 = [idCopy length];
    if (v8 < 2)
    {
      pointerValue = 0;
    }

    else
    {
      v9 = [idCopy substringWithRange:{1, v8 - 2}];

      v10 = [v7 xmlDocumentForResource:v9 ofType:@"xml" inPackage:@"DefaultTableStyles"];
      if (v10)
      {
        pointerValue = OCXGetRootElement(v10);
      }

      else
      {
        pointerValue = 0;
      }

      idCopy = v9;
    }
  }

  return pointerValue;
}

@end