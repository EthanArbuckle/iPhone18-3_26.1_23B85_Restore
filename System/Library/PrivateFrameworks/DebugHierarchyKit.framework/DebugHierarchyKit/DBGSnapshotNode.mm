@interface DBGSnapshotNode
+ (DBGSnapshotNode)nodeWithIdentifier:(id)identifier;
+ (DBGSnapshotNode)nodeWithUniqueIdentifier;
- (BOOL)hasPropertyWithName:(id)name;
- (DBGSnapshot)snapshot;
- (DBGSnapshotNode)initWithIdentifier:(id)identifier;
- (DBGSnapshotNode)parentNode;
- (NSString)displayName;
- (id)_describeTreeWithRoot:(id)root depth:(unint64_t)depth;
- (id)allProperties;
- (id)debugDescription;
- (id)debugDescriptionWithIndentationDepth:(unint64_t)depth prefix:(id)prefix includeProperties:(BOOL)properties;
- (id)groupWithID:(id)d;
- (id)propertiesMatchingPredicate:(id)predicate;
- (id)propertyWithName:(id)name;
- (id)rootLevelGroup;
- (id)valueForUndefinedKey:(id)key;
- (void)addAdditonalGroup:(id)group;
- (void)addProperties:(id)properties;
- (void)addProperty:(id)property;
- (void)addPropertyObserver:(id)observer;
- (void)didUpdateProperty:(id)property;
- (void)removePropertyObserver:(id)observer;
- (void)setChildGroup:(id)group;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation DBGSnapshotNode

+ (DBGSnapshotNode)nodeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy];

  return v5;
}

+ (DBGSnapshotNode)nodeWithUniqueIdentifier
{
  v2 = [self alloc];
  v3 = +[NSUUID UUID];
  uUIDString = [v3 UUIDString];
  v5 = [v2 initWithIdentifier:uUIDString];

  return v5;
}

- (DBGSnapshotNode)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = DBGSnapshotNode;
  v6 = [(DBGSnapshotNode *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
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
  runtimeType = [(DBGSnapshotNode *)self runtimeType];
  name = [runtimeType name];
  identifier = [(DBGSnapshotNode *)self identifier];
  v6 = [NSString stringWithFormat:@"%@ (%@)", name, identifier];

  return v6;
}

- (void)setChildGroup:(id)group
{
  objc_storeStrong(&self->_childGroup, group);
  groupCopy = group;
  snapshot = [(DBGSnapshotNode *)self snapshot];
  [(DBGSnapshotGroup *)self->_childGroup setSnapshot:snapshot];

  [(DBGSnapshotGroup *)self->_childGroup setParentNode:self];
}

- (void)addAdditonalGroup:(id)group
{
  groupCopy = group;
  snapshot = [(DBGSnapshotNode *)self snapshot];
  [groupCopy setSnapshot:snapshot];

  [groupCopy setParentNode:self];
  additionalGroups = [(DBGSnapshotNode *)self additionalGroups];

  if (additionalGroups)
  {
    additionalGroups2 = [(DBGSnapshotNode *)self additionalGroups];
    v8 = [additionalGroups2 arrayByAddingObject:groupCopy];
    [(DBGSnapshotNode *)self setAdditionalGroups:v8];
  }

  else
  {
    v9 = groupCopy;
    additionalGroups2 = [NSArray arrayWithObjects:&v9 count:1];
    [(DBGSnapshotNode *)self setAdditionalGroups:additionalGroups2];
  }
}

- (id)groupWithID:(id)d
{
  dCopy = d;
  childGroup = [(DBGSnapshotNode *)self childGroup];
  groupingIdentifier = [childGroup groupingIdentifier];
  v7 = [groupingIdentifier isEqualToString:dCopy];

  if (v7)
  {
    childGroup2 = [(DBGSnapshotNode *)self childGroup];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    additionalGroups = [(DBGSnapshotNode *)self additionalGroups];
    childGroup2 = [additionalGroups countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (childGroup2)
    {
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != childGroup2; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(additionalGroups);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          groupingIdentifier2 = [v12 groupingIdentifier];
          v14 = [groupingIdentifier2 isEqualToString:dCopy];

          if (v14)
          {
            childGroup2 = v12;
            goto LABEL_13;
          }
        }

        childGroup2 = [additionalGroups countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (childGroup2)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return childGroup2;
}

- (id)allProperties
{
  mutableProperties = [(DBGSnapshotNode *)self mutableProperties];
  v4 = [mutableProperties count];
  runtimeType = [(DBGSnapshotNode *)self runtimeType];
  instanceProperties = [runtimeType instanceProperties];
  v7 = [instanceProperties count];

  if (v4 != v7)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    runtimeType2 = [(DBGSnapshotNode *)self runtimeType];
    instanceProperties2 = [runtimeType2 instanceProperties];
    objectEnumerator = [instanceProperties2 objectEnumerator];

    v11 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          name = [*(*(&v20 + 1) + 8 * i) name];
          v16 = [(DBGSnapshotNode *)self propertyWithName:name];
        }

        v12 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }

  mutableProperties2 = [(DBGSnapshotNode *)self mutableProperties];
  allValues = [mutableProperties2 allValues];

  return allValues;
}

- (BOOL)hasPropertyWithName:(id)name
{
  nameCopy = name;
  mutableProperties = [(DBGSnapshotNode *)self mutableProperties];
  v6 = [mutableProperties objectForKeyedSubscript:nameCopy];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    runtimeType = [(DBGSnapshotNode *)self runtimeType];
    v9 = [runtimeType propertyWithName:nameCopy];
    v7 = v9 != 0;
  }

  return v7;
}

- (id)propertyWithName:(id)name
{
  nameCopy = name;
  mutableProperties = [(DBGSnapshotNode *)self mutableProperties];
  v6 = [mutableProperties objectForKeyedSubscript:nameCopy];

  if (!v6)
  {
    runtimeType = [(DBGSnapshotNode *)self runtimeType];
    v8 = [runtimeType propertyWithName:nameCopy];

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

- (id)propertiesMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  allProperties = [(DBGSnapshotNode *)self allProperties];
  v6 = [allProperties filteredArrayUsingPredicate:predicateCopy];

  return v6;
}

- (void)addProperty:(id)property
{
  propertyCopy = property;
  [propertyCopy setSnapshotNode:self];
  mutableProperties = [(DBGSnapshotNode *)self mutableProperties];
  name = [propertyCopy name];
  [mutableProperties setObject:propertyCopy forKey:name];
}

- (void)addProperties:(id)properties
{
  propertiesCopy = properties;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [propertiesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(propertiesCopy);
        }

        [(DBGSnapshotNode *)self addProperty:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [propertiesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)valueForUndefinedKey:(id)key
{
  v3 = [(DBGSnapshotNode *)self propertyWithName:key];
  value = [v3 value];

  return value;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = [(DBGSnapshotNode *)self propertyWithName:keyCopy];
  if (objc_opt_respondsToSelector())
  {
    [v7 setValue:valueCopy forKey:keyCopy];
  }
}

- (void)didUpdateProperty:(id)property
{
  propertyCopy = property;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  propertyObservers = [(DBGSnapshotNode *)self propertyObservers];
  v6 = [propertyObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(propertyObservers);
        }

        [*(*(&v10 + 1) + 8 * v9) snapshotNode:self didUpdateProperty:propertyCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [propertyObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addPropertyObserver:(id)observer
{
  observerCopy = observer;
  propertyObservers = [(DBGSnapshotNode *)self propertyObservers];
  allObjects = [propertyObservers allObjects];
  v6 = [allObjects containsObject:observerCopy];

  if ((v6 & 1) == 0)
  {
    propertyObservers2 = [(DBGSnapshotNode *)self propertyObservers];
    [propertyObservers2 addPointer:observerCopy];
  }
}

- (void)removePropertyObserver:(id)observer
{
  observerCopy = observer;
  propertyObservers = [(DBGSnapshotNode *)self propertyObservers];
  allObjects = [propertyObservers allObjects];
  v7 = [allObjects indexOfObject:observerCopy];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    propertyObservers2 = [(DBGSnapshotNode *)self propertyObservers];
    [propertyObservers2 removePointerAtIndex:v7];
  }
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = [(DBGSnapshotNode *)self identifier];
  runtimeType = [(DBGSnapshotNode *)self runtimeType];
  name = [runtimeType name];
  visibility = [(DBGSnapshotNode *)self visibility];
  if ((visibility - 1) > 7)
  {
    v9 = @"Unsupported Visibility";
  }

  else
  {
    v9 = *(&off_24338 + visibility - 1);
  }

  v10 = [NSString stringWithFormat:@"<%@: %p represents %@ (%@); visibility = %@>", v4, self, identifier, name, v9];;

  return v10;
}

- (id)debugDescriptionWithIndentationDepth:(unint64_t)depth prefix:(id)prefix includeProperties:(BOOL)properties
{
  propertiesCopy = properties;
  prefixCopy = prefix;
  v8 = [&stru_28750 stringByPaddingToLength:depth withString:@"-" startingAtIndex:0];
  if (prefixCopy)
  {
    v9 = prefixCopy;
  }

  else
  {
    v9 = &stru_28750;
  }

  v10 = prefixCopy;
  runtimeType = [(DBGSnapshotNode *)self runtimeType];
  name = [runtimeType name];
  identifier = [(DBGSnapshotNode *)self identifier];
  v14 = [NSString stringWithFormat:@"%@%@%@ represents %@ (%@)", v8, v9, self, name, identifier];

  if (propertiesCopy)
  {
    v24 = v8;
    v26 = v10;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    mutableProperties = [(DBGSnapshotNode *)self mutableProperties];
    allValues = [mutableProperties allValues];

    v17 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v22 = [(DBGSnapshotNode *)self _describeTreeWithRoot:*(*(&v27 + 1) + 8 * v20) depth:depth + 1];
          v14 = [NSString stringWithFormat:@"%@\n%@", v21, v22];

          v20 = v20 + 1;
          v21 = v14;
        }

        while (v18 != v20);
        v18 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    v8 = v24;
    v10 = v26;
  }

  return v14;
}

- (id)_describeTreeWithRoot:(id)root depth:(unint64_t)depth
{
  rootCopy = root;
  v7 = [&stru_28750 stringByPaddingToLength:depth withString:@"-" startingAtIndex:0];
  v8 = [rootCopy debugDescription];
  v18 = v7;
  v9 = [NSString stringWithFormat:@"%@%@", v7, v8];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = rootCopy;
  allSubproperties = [rootCopy allSubproperties];
  v11 = [allSubproperties countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allSubproperties);
        }

        v16 = [(DBGSnapshotNode *)self _describeTreeWithRoot:*(*(&v20 + 1) + 8 * v14) depth:depth + 1];
        v9 = [NSString stringWithFormat:@"%@\n%@", v15, v16];

        v14 = v14 + 1;
        v15 = v9;
      }

      while (v12 != v14);
      v12 = [allSubproperties countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)rootLevelGroup
{
  parentNode = [(DBGSnapshotNode *)self parentNode];
  childGroup = [parentNode childGroup];
  rootLevelGroup = [childGroup rootLevelGroup];

  return rootLevelGroup;
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