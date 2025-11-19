@interface DBGSnapshotGroup
+ (id)strongObjectsGroupWithIdentifier:(id)a3;
+ (id)weakObjectsGroupWithIdentifier:(id)a3;
- (DBGSnapshot)snapshot;
- (DBGSnapshotGroup)initWithIdentifier:(id)a3 usingStrongChildNodeReferences:(BOOL)a4;
- (DBGSnapshotNode)parentNode;
- (NSArray)allObjects;
- (id)debugDescription;
- (id)displayName;
- (id)rootLevelGroup;
- (void)addObject:(id)a3;
@end

@implementation DBGSnapshotGroup

+ (id)strongObjectsGroupWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifier:v4 usingStrongChildNodeReferences:1];

  return v5;
}

+ (id)weakObjectsGroupWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifier:v4 usingStrongChildNodeReferences:0];

  return v5;
}

- (DBGSnapshotGroup)initWithIdentifier:(id)a3 usingStrongChildNodeReferences:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = DBGSnapshotGroup;
  v8 = [(DBGSnapshotGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_groupingIdentifier, a3);
    if (a4)
    {
      +[NSPointerArray strongObjectsPointerArray];
    }

    else
    {
      +[NSPointerArray weakObjectsPointerArray];
    }
    v10 = ;
    objects = v9->_objects;
    v9->_objects = v10;
  }

  return v9;
}

- (void)addObject:(id)a3
{
  v12 = a3;
  [(DBGSnapshotGroup *)self willChangeValueForKey:@"allObjects"];
  v4 = [(DBGSnapshotGroup *)self snapshot];
  v5 = [v4 identifierToNodeMap];
  v6 = [v12 identifier];
  [v5 setObject:v12 forKey:v6];

  v7 = [(DBGSnapshotGroup *)self snapshot];
  [v12 setSnapshot:v7];

  v8 = [(DBGSnapshotGroup *)self parentNode];
  v9 = [v8 childGroup];

  if (v9 == self)
  {
    v10 = [(DBGSnapshotGroup *)self parentNode];
    [v12 setParentNode:v10];
  }

  v11 = [(DBGSnapshotGroup *)self objects];
  [v11 dbg_addObject:v12];

  [(DBGSnapshotGroup *)self didChangeValueForKey:@"allObjects"];
}

- (NSArray)allObjects
{
  v2 = [(DBGSnapshotGroup *)self objects];
  v3 = [v2 allObjects];

  return v3;
}

- (id)displayName
{
  v3 = [(DBGSnapshotGroup *)self defaultDisplayName];
  if (!v3)
  {
    v4 = [(DBGSnapshotGroup *)self groupingIdentifier];
    v5 = [v4 componentsSeparatedByString:@"."];
    v3 = [v5 lastObject];
  }

  return v3;
}

- (id)debugDescription
{
  v3 = [(DBGSnapshotGroup *)self description];
  v4 = [(DBGSnapshotGroup *)self groupingIdentifier];
  v5 = [NSString stringWithFormat:@"%@ – %@", v3, v4];

  return v5;
}

- (id)rootLevelGroup
{
  v3 = [(DBGSnapshotGroup *)self parentNode];

  if (v3)
  {
    v4 = [(DBGSnapshotGroup *)self parentNode];
    v5 = [v4 rootLevelGroup];
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (DBGSnapshot)snapshot
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshot);

  return WeakRetained;
}

- (DBGSnapshotNode)parentNode
{
  WeakRetained = objc_loadWeakRetained(&self->_parentNode);

  return WeakRetained;
}

@end