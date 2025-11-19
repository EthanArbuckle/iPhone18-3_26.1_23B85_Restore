@interface GKResourceCache
- (BOOL)evictsObjectsWhenApplicationEntersBackground;
- (BOOL)isGroupMember;
- (GKResourceCache)initWithGroupOfCache:(id)a3;
- (id)resourcesForKey:(id)a3;
- (unint64_t)limit;
- (void)addResource:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)removeAllResources;
- (void)removeResourcesForKey:(id)a3;
- (void)replaceResourcesForKey:(id)a3 withResource:(id)a4;
- (void)setEvictsObjectsWhenApplicationEntersBackground:(BOOL)a3;
- (void)setLimit:(unint64_t)a3;
@end

@implementation GKResourceCache

- (GKResourceCache)initWithGroupOfCache:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GKResourceCache;
  v5 = [(GKResourceCache *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 group];
    }

    else
    {
      v6 = objc_alloc_init(_GKASKResourceCacheGroup);
    }

    group = v5->_group;
    v5->_group = v6;

    v8 = [(_GKASKResourceCacheGroup *)v5->_group makeMemberContents];
    contents = v5->_contents;
    v5->_contents = v8;
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(GKResourceCache *)self group];
  v4 = [(GKResourceCache *)self contents];
  [v3 discardMemberContents:v4];

  v5.receiver = self;
  v5.super_class = GKResourceCache;
  [(GKResourceCache *)&v5 dealloc];
}

- (BOOL)isGroupMember
{
  v2 = [(GKResourceCache *)self group];
  v3 = [v2 hasMultipleMembers];

  return v3;
}

- (unint64_t)limit
{
  v2 = [(GKResourceCache *)self contents];
  v3 = [v2 countLimit];

  return v3;
}

- (void)setLimit:(unint64_t)a3
{
  v4 = [(GKResourceCache *)self contents];
  [v4 setCountLimit:a3];
}

- (BOOL)evictsObjectsWhenApplicationEntersBackground
{
  v2 = [(GKResourceCache *)self contents];
  v3 = [v2 evictsObjectsWhenApplicationEntersBackground];

  return v3;
}

- (void)setEvictsObjectsWhenApplicationEntersBackground:(BOOL)a3
{
  v3 = a3;
  v4 = [(GKResourceCache *)self contents];
  [v4 setEvictsObjectsWhenApplicationEntersBackground:v3];
}

- (id)resourcesForKey:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKResourceCache *)self group];
  v6 = [v5 hasMultipleMembers];

  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(GKResourceCache *)self group];
    v8 = [v7 snapshotMemberContents];

    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v8);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) objectForKey:v4];
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

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
    v15 = [(GKResourceCache *)self group];
    v16 = [v15 onlyMemberContents];

    v11 = [v16 objectForKey:v4];
  }

  return v11;
}

- (void)addResource:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(GKResourceCache *)self contents];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v9 = [(GKResourceCache *)self contents];
    [v9 setObject:v8 forKey:v6];
  }

  [v8 addObject:v10];
}

- (void)replaceResourcesForKey:(id)a3 withResource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(GKResourceCache *)self contents];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v6, 0}];

  [v9 setObject:v8 forKey:v7];
}

- (void)removeResourcesForKey:(id)a3
{
  v4 = a3;
  v5 = [(GKResourceCache *)self contents];
  [v5 removeObjectForKey:v4];
}

- (void)removeAllResources
{
  v2 = [(GKResourceCache *)self contents];
  [v2 removeAllObjects];
}

@end