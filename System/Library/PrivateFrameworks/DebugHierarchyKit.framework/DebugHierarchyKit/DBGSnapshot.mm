@interface DBGSnapshot
- (DBGSnapshot)init;
- (DBGSnapshotManager)snapshotManager;
- (NSArray)rootLevelSnapshotGroups;
- (id)nodesKindOfRuntimeClass:(id)a3;
- (id)nodesMatchingPredicate:(id)a3;
- (id)rootLevelSnapshotGroupWithIdentifier:(id)a3;
- (void)addRootLevelGroup:(id)a3;
- (void)clearData;
@end

@implementation DBGSnapshot

- (DBGSnapshot)init
{
  v11.receiver = self;
  v11.super_class = DBGSnapshot;
  v2 = [(DBGSnapshot *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    rootLevelGroups = v2->_rootLevelGroups;
    v2->_rootLevelGroups = v3;

    v5 = +[NSMapTable strongToWeakObjectsMapTable];
    identifierToNodeMap = v2->_identifierToNodeMap;
    v2->_identifierToNodeMap = v5;

    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v8;
  }

  return v2;
}

- (void)addRootLevelGroup:(id)a3
{
  v4 = a3;
  [(DBGSnapshot *)self willChangeValueForKey:@"rootLevelSnapshotGroups"];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(DBGSnapshot *)self rootLevelGroups];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v14 + 1) + 8 * v9) groupingIdentifier];
      v11 = [v4 groupingIdentifier];
      v12 = [v10 isEqualToString:v11];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [v4 setSnapshot:self];
  v13 = [(DBGSnapshot *)self rootLevelGroups];
  [v13 addObject:v4];

  [(DBGSnapshot *)self didChangeValueForKey:@"rootLevelSnapshotGroups"];
}

- (void)clearData
{
  [(DBGSnapshot *)self willChangeValueForKey:@"rootLevelSnapshotGroups"];
  v3 = [(DBGSnapshot *)self rootLevelGroups];
  [v3 removeAllObjects];

  [(DBGSnapshot *)self didChangeValueForKey:@"rootLevelSnapshotGroups"];
}

- (id)nodesMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(DBGSnapshot *)self identifierToNodeMap];
  v7 = [v6 objectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v4 evaluateWithObject:v12])
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v5 copy];

  return v13;
}

- (id)nodesKindOfRuntimeClass:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(DBGSnapshot *)self identifierToNodeMap];
  v7 = [v6 objectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 runtimeType];
        v14 = [v13 isKindOfTypeWithName:v4];

        if (v14)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v5 copy];

  return v15;
}

- (id)rootLevelSnapshotGroupWithIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(DBGSnapshot *)self rootLevelSnapshotGroups];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v8 = *(*(&v15 + 1) + 8 * v10);

      v12 = [v8 groupingIdentifier];
      v13 = [v12 isEqualToString:v4];

      if (v13)
      {
        break;
      }

      v10 = v10 + 1;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  return v8;
}

- (NSArray)rootLevelSnapshotGroups
{
  v2 = [(DBGSnapshot *)self rootLevelGroups];
  v3 = [v2 copy];

  return v3;
}

- (DBGSnapshotManager)snapshotManager
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotManager);

  return WeakRetained;
}

@end