@interface GKResourceCache
- (BOOL)evictsObjectsWhenApplicationEntersBackground;
- (BOOL)isGroupMember;
- (GKResourceCache)initWithGroupOfCache:(id)cache;
- (id)resourcesForKey:(id)key;
- (unint64_t)limit;
- (void)addResource:(id)resource forKey:(id)key;
- (void)dealloc;
- (void)removeAllResources;
- (void)removeResourcesForKey:(id)key;
- (void)replaceResourcesForKey:(id)key withResource:(id)resource;
- (void)setEvictsObjectsWhenApplicationEntersBackground:(BOOL)background;
- (void)setLimit:(unint64_t)limit;
@end

@implementation GKResourceCache

- (GKResourceCache)initWithGroupOfCache:(id)cache
{
  cacheCopy = cache;
  v11.receiver = self;
  v11.super_class = GKResourceCache;
  v5 = [(GKResourceCache *)&v11 init];
  if (v5)
  {
    if (cacheCopy)
    {
      group = [cacheCopy group];
    }

    else
    {
      group = objc_alloc_init(_GKASKResourceCacheGroup);
    }

    group = v5->_group;
    v5->_group = group;

    makeMemberContents = [(_GKASKResourceCacheGroup *)v5->_group makeMemberContents];
    contents = v5->_contents;
    v5->_contents = makeMemberContents;
  }

  return v5;
}

- (void)dealloc
{
  group = [(GKResourceCache *)self group];
  contents = [(GKResourceCache *)self contents];
  [group discardMemberContents:contents];

  v5.receiver = self;
  v5.super_class = GKResourceCache;
  [(GKResourceCache *)&v5 dealloc];
}

- (BOOL)isGroupMember
{
  group = [(GKResourceCache *)self group];
  hasMultipleMembers = [group hasMultipleMembers];

  return hasMultipleMembers;
}

- (unint64_t)limit
{
  contents = [(GKResourceCache *)self contents];
  countLimit = [contents countLimit];

  return countLimit;
}

- (void)setLimit:(unint64_t)limit
{
  contents = [(GKResourceCache *)self contents];
  [contents setCountLimit:limit];
}

- (BOOL)evictsObjectsWhenApplicationEntersBackground
{
  contents = [(GKResourceCache *)self contents];
  evictsObjectsWhenApplicationEntersBackground = [contents evictsObjectsWhenApplicationEntersBackground];

  return evictsObjectsWhenApplicationEntersBackground;
}

- (void)setEvictsObjectsWhenApplicationEntersBackground:(BOOL)background
{
  backgroundCopy = background;
  contents = [(GKResourceCache *)self contents];
  [contents setEvictsObjectsWhenApplicationEntersBackground:backgroundCopy];
}

- (id)resourcesForKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  group = [(GKResourceCache *)self group];
  hasMultipleMembers = [group hasMultipleMembers];

  if (hasMultipleMembers)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    group2 = [(GKResourceCache *)self group];
    snapshotMemberContents = [group2 snapshotMemberContents];

    v9 = [snapshotMemberContents countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(snapshotMemberContents);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) objectForKey:keyCopy];
          if (v14)
          {
            if (v11)
            {
              [v11 addObjectsFromArray:v14];
            }

            else
            {
              v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v14];
            }
          }
        }

        v10 = [snapshotMemberContents countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    group3 = [(GKResourceCache *)self group];
    onlyMemberContents = [group3 onlyMemberContents];

    v11 = [onlyMemberContents objectForKey:keyCopy];
  }

  return v11;
}

- (void)addResource:(id)resource forKey:(id)key
{
  resourceCopy = resource;
  keyCopy = key;
  contents = [(GKResourceCache *)self contents];
  v8 = [contents objectForKey:keyCopy];

  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    contents2 = [(GKResourceCache *)self contents];
    [contents2 setObject:v8 forKey:keyCopy];
  }

  [v8 addObject:resourceCopy];
}

- (void)replaceResourcesForKey:(id)key withResource:(id)resource
{
  resourceCopy = resource;
  keyCopy = key;
  contents = [(GKResourceCache *)self contents];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{resourceCopy, 0}];

  [contents setObject:v8 forKey:keyCopy];
}

- (void)removeResourcesForKey:(id)key
{
  keyCopy = key;
  contents = [(GKResourceCache *)self contents];
  [contents removeObjectForKey:keyCopy];
}

- (void)removeAllResources
{
  contents = [(GKResourceCache *)self contents];
  [contents removeAllObjects];
}

@end