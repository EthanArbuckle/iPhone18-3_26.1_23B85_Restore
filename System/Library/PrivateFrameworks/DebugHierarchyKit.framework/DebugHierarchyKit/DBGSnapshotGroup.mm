@interface DBGSnapshotGroup
+ (id)strongObjectsGroupWithIdentifier:(id)identifier;
+ (id)weakObjectsGroupWithIdentifier:(id)identifier;
- (DBGSnapshot)snapshot;
- (DBGSnapshotGroup)initWithIdentifier:(id)identifier usingStrongChildNodeReferences:(BOOL)references;
- (DBGSnapshotNode)parentNode;
- (NSArray)allObjects;
- (id)debugDescription;
- (id)displayName;
- (id)rootLevelGroup;
- (void)addObject:(id)object;
@end

@implementation DBGSnapshotGroup

+ (id)strongObjectsGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy usingStrongChildNodeReferences:1];

  return v5;
}

+ (id)weakObjectsGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy usingStrongChildNodeReferences:0];

  return v5;
}

- (DBGSnapshotGroup)initWithIdentifier:(id)identifier usingStrongChildNodeReferences:(BOOL)references
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = DBGSnapshotGroup;
  v8 = [(DBGSnapshotGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_groupingIdentifier, identifier);
    if (references)
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

- (void)addObject:(id)object
{
  objectCopy = object;
  [(DBGSnapshotGroup *)self willChangeValueForKey:@"allObjects"];
  snapshot = [(DBGSnapshotGroup *)self snapshot];
  identifierToNodeMap = [snapshot identifierToNodeMap];
  identifier = [objectCopy identifier];
  [identifierToNodeMap setObject:objectCopy forKey:identifier];

  snapshot2 = [(DBGSnapshotGroup *)self snapshot];
  [objectCopy setSnapshot:snapshot2];

  parentNode = [(DBGSnapshotGroup *)self parentNode];
  childGroup = [parentNode childGroup];

  if (childGroup == self)
  {
    parentNode2 = [(DBGSnapshotGroup *)self parentNode];
    [objectCopy setParentNode:parentNode2];
  }

  objects = [(DBGSnapshotGroup *)self objects];
  [objects dbg_addObject:objectCopy];

  [(DBGSnapshotGroup *)self didChangeValueForKey:@"allObjects"];
}

- (NSArray)allObjects
{
  objects = [(DBGSnapshotGroup *)self objects];
  allObjects = [objects allObjects];

  return allObjects;
}

- (id)displayName
{
  defaultDisplayName = [(DBGSnapshotGroup *)self defaultDisplayName];
  if (!defaultDisplayName)
  {
    groupingIdentifier = [(DBGSnapshotGroup *)self groupingIdentifier];
    v5 = [groupingIdentifier componentsSeparatedByString:@"."];
    defaultDisplayName = [v5 lastObject];
  }

  return defaultDisplayName;
}

- (id)debugDescription
{
  v3 = [(DBGSnapshotGroup *)self description];
  groupingIdentifier = [(DBGSnapshotGroup *)self groupingIdentifier];
  v5 = [NSString stringWithFormat:@"%@ – %@", v3, groupingIdentifier];

  return v5;
}

- (id)rootLevelGroup
{
  parentNode = [(DBGSnapshotGroup *)self parentNode];

  if (parentNode)
  {
    parentNode2 = [(DBGSnapshotGroup *)self parentNode];
    selfCopy = [parentNode2 rootLevelGroup];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
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