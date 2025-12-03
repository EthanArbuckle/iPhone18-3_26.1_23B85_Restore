@interface NSMapTable(TSUAdditions)
- (OITSUNoCopyDictionary)tsu_noCopyDictionaryRepresentation;
- (id)tsu_allKeys;
@end

@implementation NSMapTable(TSUAdditions)

- (id)tsu_allKeys
{
  keyEnumerator = [self keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  return allObjects;
}

- (OITSUNoCopyDictionary)tsu_noCopyDictionaryRepresentation
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(OITSUNoCopyDictionary);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [selfCopy objectForKey:{v8, v11}];
        [(OITSUNoCopyDictionary *)v2 setObject:v9 forUncopiedKey:v8];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

@end