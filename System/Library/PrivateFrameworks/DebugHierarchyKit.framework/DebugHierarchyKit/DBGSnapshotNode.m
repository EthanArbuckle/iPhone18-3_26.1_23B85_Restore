@interface DBGSnapshotNode
+ (DBGSnapshotNode)nodeWithIdentifier:(id)a3;
+ (DBGSnapshotNode)nodeWithUniqueIdentifier;
- (BOOL)hasPropertyWithName:(id)a3;
- (DBGSnapshot)snapshot;
- (DBGSnapshotNode)initWithIdentifier:(id)a3;
- (DBGSnapshotNode)parentNode;
- (NSString)displayName;
- (id)_describeTreeWithRoot:(id)a3 depth:(unint64_t)a4;
- (id)allProperties;
- (id)debugDescription;
- (id)debugDescriptionWithIndentationDepth:(unint64_t)a3 prefix:(id)a4 includeProperties:(BOOL)a5;
- (id)groupWithID:(id)a3;
- (id)propertiesMatchingPredicate:(id)a3;
- (id)propertyWithName:(id)a3;
- (id)rootLevelGroup;
- (id)valueForUndefinedKey:(id)a3;
- (void)addAdditonalGroup:(id)a3;
- (void)addProperties:(id)a3;
- (void)addProperty:(id)a3;
- (void)addPropertyObserver:(id)a3;
- (void)didUpdateProperty:(id)a3;
- (void)removePropertyObserver:(id)a3;
- (void)setChildGroup:(id)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation DBGSnapshotNode

+ (DBGSnapshotNode)nodeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifier:v4];

  return v5;
}

+ (DBGSnapshotNode)nodeWithUniqueIdentifier
{
  v2 = [a1 alloc];
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 initWithIdentifier:v4];

  return v5;
}

- (DBGSnapshotNode)initWithIdentifier:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = DBGSnapshotNode;
  v6 = [(DBGSnapshotNode *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v8 = +[NSMutableDictionary dictionary];
    mutableProperties = v7->_mutableProperties;
    v7->_mutableProperties = v8;

    v7->_visibility = 1;
    v10 = +[NSPointerArray weakObjectsPointerArray];
    propertyObservers = v7->_propertyObservers;
    v7->_propertyObservers = v10;
  }

  return v7;
}

- (NSString)displayName
{
  v3 = [(DBGSnapshotNode *)self runtimeType];
  v4 = [v3 name];
  v5 = [(DBGSnapshotNode *)self identifier];
  v6 = [NSString stringWithFormat:@"%@ (%@)", v4, v5];

  return v6;
}

- (void)setChildGroup:(id)a3
{
  objc_storeStrong(&self->_childGroup, a3);
  v6 = a3;
  v5 = [(DBGSnapshotNode *)self snapshot];
  [(DBGSnapshotGroup *)self->_childGroup setSnapshot:v5];

  [(DBGSnapshotGroup *)self->_childGroup setParentNode:self];
}

- (void)addAdditonalGroup:(id)a3
{
  v4 = a3;
  v5 = [(DBGSnapshotNode *)self snapshot];
  [v4 setSnapshot:v5];

  [v4 setParentNode:self];
  v6 = [(DBGSnapshotNode *)self additionalGroups];

  if (v6)
  {
    v7 = [(DBGSnapshotNode *)self additionalGroups];
    v8 = [v7 arrayByAddingObject:v4];
    [(DBGSnapshotNode *)self setAdditionalGroups:v8];
  }

  else
  {
    v9 = v4;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
    [(DBGSnapshotNode *)self setAdditionalGroups:v7];
  }
}

- (id)groupWithID:(id)a3
{
  v4 = a3;
  v5 = [(DBGSnapshotNode *)self childGroup];
  v6 = [v5 groupingIdentifier];
  v7 = [v6 isEqualToString:v4];

  if (v7)
  {
    v8 = [(DBGSnapshotNode *)self childGroup];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(DBGSnapshotNode *)self additionalGroups];
    v8 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v12 groupingIdentifier];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            v8 = v12;
            goto LABEL_13;
          }
        }

        v8 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v8;
}

- (id)allProperties
{
  v3 = [(DBGSnapshotNode *)self mutableProperties];
  v4 = [v3 count];
  v5 = [(DBGSnapshotNode *)self runtimeType];
  v6 = [v5 instanceProperties];
  v7 = [v6 count];

  if (v4 != v7)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [(DBGSnapshotNode *)self runtimeType];
    v9 = [v8 instanceProperties];
    v10 = [v9 objectEnumerator];

    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v20 + 1) + 8 * i) name];
          v16 = [(DBGSnapshotNode *)self propertyWithName:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }

  v17 = [(DBGSnapshotNode *)self mutableProperties];
  v18 = [v17 allValues];

  return v18;
}

- (BOOL)hasPropertyWithName:(id)a3
{
  v4 = a3;
  v5 = [(DBGSnapshotNode *)self mutableProperties];
  v6 = [v5 objectForKeyedSubscript:v4];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(DBGSnapshotNode *)self runtimeType];
    v9 = [v8 propertyWithName:v4];
    v7 = v9 != 0;
  }

  return v7;
}

- (id)propertyWithName:(id)a3
{
  v4 = a3;
  v5 = [(DBGSnapshotNode *)self mutableProperties];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(DBGSnapshotNode *)self runtimeType];
    v8 = [v7 propertyWithName:v4];

    if (v8)
    {
      v6 = [DBGSnapshotProperty propertyWithDebugHierarchyProperty:v8];
      [(DBGSnapshotNode *)self addProperty:v6];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)propertiesMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = [(DBGSnapshotNode *)self allProperties];
  v6 = [v5 filteredArrayUsingPredicate:v4];

  return v6;
}

- (void)addProperty:(id)a3
{
  v4 = a3;
  [v4 setSnapshotNode:self];
  v6 = [(DBGSnapshotNode *)self mutableProperties];
  v5 = [v4 name];
  [v6 setObject:v4 forKey:v5];
}

- (void)addProperties:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(DBGSnapshotNode *)self addProperty:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)valueForUndefinedKey:(id)a3
{
  v3 = [(DBGSnapshotNode *)self propertyWithName:a3];
  v4 = [v3 value];

  return v4;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(DBGSnapshotNode *)self propertyWithName:v6];
  if (objc_opt_respondsToSelector())
  {
    [v7 setValue:v8 forKey:v6];
  }
}

- (void)didUpdateProperty:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(DBGSnapshotNode *)self propertyObservers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) snapshotNode:self didUpdateProperty:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addPropertyObserver:(id)a3
{
  v8 = a3;
  v4 = [(DBGSnapshotNode *)self propertyObservers];
  v5 = [v4 allObjects];
  v6 = [v5 containsObject:v8];

  if ((v6 & 1) == 0)
  {
    v7 = [(DBGSnapshotNode *)self propertyObservers];
    [v7 addPointer:v8];
  }
}

- (void)removePropertyObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBGSnapshotNode *)self propertyObservers];
  v6 = [v5 allObjects];
  v7 = [v6 indexOfObject:v4];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(DBGSnapshotNode *)self propertyObservers];
    [v8 removePointerAtIndex:v7];
  }
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGSnapshotNode *)self identifier];
  v6 = [(DBGSnapshotNode *)self runtimeType];
  v7 = [v6 name];
  v8 = [(DBGSnapshotNode *)self visibility];
  if ((v8 - 1) > 7)
  {
    v9 = @"Unsupported Visibility";
  }

  else
  {
    v9 = *(&off_24338 + v8 - 1);
  }

  v10 = [NSString stringWithFormat:@"<%@: %p represents %@ (%@); visibility = %@>", v4, self, v5, v7, v9];;

  return v10;
}

- (id)debugDescriptionWithIndentationDepth:(unint64_t)a3 prefix:(id)a4 includeProperties:(BOOL)a5
{
  v25 = a5;
  v7 = a4;
  v8 = [&stru_28750 stringByPaddingToLength:a3 withString:@"-" startingAtIndex:0];
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_28750;
  }

  v10 = v7;
  v11 = [(DBGSnapshotNode *)self runtimeType];
  v12 = [v11 name];
  v13 = [(DBGSnapshotNode *)self identifier];
  v14 = [NSString stringWithFormat:@"%@%@%@ represents %@ (%@)", v8, v9, self, v12, v13];

  if (v25)
  {
    v24 = v8;
    v26 = v10;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = [(DBGSnapshotNode *)self mutableProperties];
    v16 = [v15 allValues];

    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        v20 = 0;
        v21 = v14;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = [(DBGSnapshotNode *)self _describeTreeWithRoot:*(*(&v27 + 1) + 8 * v20) depth:a3 + 1];
          v14 = [NSString stringWithFormat:@"%@\n%@", v21, v22];

          v20 = v20 + 1;
          v21 = v14;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    v8 = v24;
    v10 = v26;
  }

  return v14;
}

- (id)_describeTreeWithRoot:(id)a3 depth:(unint64_t)a4
{
  v6 = a3;
  v7 = [&stru_28750 stringByPaddingToLength:a4 withString:@"-" startingAtIndex:0];
  v8 = [v6 debugDescription];
  v18 = v7;
  v9 = [NSString stringWithFormat:@"%@%@", v7, v8];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = v6;
  v10 = [v6 allSubproperties];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      v15 = v9;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [(DBGSnapshotNode *)self _describeTreeWithRoot:*(*(&v20 + 1) + 8 * v14) depth:a4 + 1];
        v9 = [NSString stringWithFormat:@"%@\n%@", v15, v16];

        v14 = v14 + 1;
        v15 = v9;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)rootLevelGroup
{
  v2 = [(DBGSnapshotNode *)self parentNode];
  v3 = [v2 childGroup];
  v4 = [v3 rootLevelGroup];

  return v4;
}

- (DBGSnapshotNode)parentNode
{
  WeakRetained = objc_loadWeakRetained(&self->_parentNode);

  return WeakRetained;
}

- (DBGSnapshot)snapshot
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshot);

  return WeakRetained;
}

@end