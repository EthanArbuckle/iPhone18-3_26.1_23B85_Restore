@interface DebugHierarchyRuntimeType
+ (id)typeWithDictionaryRepresentation:(id)representation;
+ (id)typeWithName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKindOfTypeWithName:(id)name;
- (DebugHierarchyRuntimeType)initWithDictionaryRepresentation:(id)representation;
- (DebugHierarchyRuntimeType)initWithName:(id)name;
- (DebugHierarchyRuntimeType)parentType;
- (NSMutableDictionary)instanceProperties;
- (id)closestTypeVendingAChildGroupingID;
- (id)debugDescription;
- (id)dictionaryRepresentation;
- (id)namesOfInheritanceChain;
- (id)propertyWithName:(id)name;
- (int64_t)sourceLanguage;
- (void)addInstanceProperty:(id)property;
- (void)addSubtype:(id)subtype;
@end

@implementation DebugHierarchyRuntimeType

+ (id)typeWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [[self alloc] initWithDictionaryRepresentation:representationCopy];

  return v5;
}

- (DebugHierarchyRuntimeType)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v33.receiver = self;
  v33.super_class = DebugHierarchyRuntimeType;
  v5 = [(DebugHierarchyRuntimeType *)&v33 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"className"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"typeAndModuleName"];
    nameIncludingModules = v5->_nameIncludingModules;
    v5->_nameIncludingModules = v8;

    v10 = [representationCopy objectForKeyedSubscript:@"moduleName"];
    moduleName = v5->_moduleName;
    v5->_moduleName = v10;

    v12 = [representationCopy objectForKeyedSubscript:@"subclasses"];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        v16 = 0;
        do
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [[DebugHierarchyRuntimeType alloc] initWithDictionaryRepresentation:*(*(&v29 + 1) + 8 * v16)];
          [(DebugHierarchyRuntimeType *)v5 addSubtype:v17];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v14);
    }

    v18 = [representationCopy objectForKeyedSubscript:@"instanceProperties"];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        v22 = 0;
        do
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [[DebugHierarchyProperty alloc] initWithPropertyDescription:*(*(&v25 + 1) + 8 * v22)];
          [(DebugHierarchyRuntimeType *)v5 addInstanceProperty:v23];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v20);
    }
  }

  return v5;
}

+ (id)typeWithName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initWithName:nameCopy];

  return v5;
}

- (DebugHierarchyRuntimeType)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = DebugHierarchyRuntimeType;
  v6 = [(DebugHierarchyRuntimeType *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (void)addSubtype:(id)subtype
{
  subtypeCopy = subtype;
  subtypes = [(DebugHierarchyRuntimeType *)self subtypes];
  v6 = subtypes;
  if (subtypes)
  {
    v7 = subtypes;
  }

  else
  {
    v7 = +[NSSet set];
  }

  v9 = v7;

  v8 = [v9 setByAddingObject:subtypeCopy];
  [(DebugHierarchyRuntimeType *)self setSubtypes:v8];

  [subtypeCopy setParentType:self];
}

- (BOOL)isKindOfTypeWithName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  if (selfCopy)
  {
    v6 = selfCopy;
    do
    {
      name = [v6 name];
      v8 = [name isEqualToString:nameCopy];

      if (v8)
      {
        break;
      }

      parentType = [v6 parentType];

      v6 = parentType;
    }

    while (parentType);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)propertyWithName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  if (selfCopy)
  {
    do
    {
      v6 = selfCopy;
      instanceProperties = [(DebugHierarchyRuntimeType *)selfCopy instanceProperties];
      v8 = [instanceProperties objectForKeyedSubscript:nameCopy];

      selfCopy = [(DebugHierarchyRuntimeType *)v6 parentType];
    }

    while (!v8 && selfCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)namesOfInheritanceChain
{
  selfCopy = self;
  v3 = +[NSMutableArray array];
  if (selfCopy)
  {
    do
    {
      name = [(DebugHierarchyRuntimeType *)selfCopy name];
      [v3 addObject:name];

      parentType = [(DebugHierarchyRuntimeType *)selfCopy parentType];

      selfCopy = parentType;
    }

    while (parentType);
  }

  v6 = [v3 copy];

  return v6;
}

- (id)closestTypeVendingAChildGroupingID
{
  selfCopy = self;
  childGroupingID = [(DebugHierarchyRuntimeType *)selfCopy childGroupingID];

  if (selfCopy && !childGroupingID)
  {
    do
    {
      v4 = selfCopy;
      selfCopy = [(DebugHierarchyRuntimeType *)selfCopy parentType];

      childGroupingID2 = [(DebugHierarchyRuntimeType *)selfCopy childGroupingID];
    }

    while (selfCopy && !childGroupingID2);
  }

  return selfCopy;
}

- (NSMutableDictionary)instanceProperties
{
  instanceProperties = self->_instanceProperties;
  if (!instanceProperties)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = self->_instanceProperties;
    self->_instanceProperties = v4;

    instanceProperties = self->_instanceProperties;
  }

  return instanceProperties;
}

- (void)addInstanceProperty:(id)property
{
  propertyCopy = property;
  instanceProperties = [(DebugHierarchyRuntimeType *)self instanceProperties];
  name = [propertyCopy name];
  [instanceProperties setObject:propertyCopy forKeyedSubscript:name];
}

- (int64_t)sourceLanguage
{
  moduleName = [(DebugHierarchyRuntimeType *)self moduleName];
  if ([moduleName length])
  {
    v4 = 2;
  }

  else
  {
    name = [(DebugHierarchyRuntimeType *)self name];
    if ([name containsString:@"."])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)dictionaryRepresentation
{
  subtypes = [(DebugHierarchyRuntimeType *)self subtypes];
  v4 = [subtypes count];

  if (v4)
  {
    subtypes2 = [(DebugHierarchyRuntimeType *)self subtypes];
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [subtypes2 count]);

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    subtypes3 = [(DebugHierarchyRuntimeType *)self subtypes];
    v8 = [subtypes3 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(subtypes3);
          }

          dictionaryRepresentation = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [subtypes3 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = [NSMutableDictionary dictionaryWithCapacity:4];
  name = [(DebugHierarchyRuntimeType *)self name];
  [v13 setObject:name forKeyedSubscript:@"className"];

  nameIncludingModules = [(DebugHierarchyRuntimeType *)self nameIncludingModules];

  if (nameIncludingModules)
  {
    nameIncludingModules2 = [(DebugHierarchyRuntimeType *)self nameIncludingModules];
    [v13 setObject:nameIncludingModules2 forKeyedSubscript:@"typeAndModuleName"];
  }

  moduleName = [(DebugHierarchyRuntimeType *)self moduleName];

  if (moduleName)
  {
    moduleName2 = [(DebugHierarchyRuntimeType *)self moduleName];
    [v13 setObject:moduleName2 forKeyedSubscript:@"moduleName"];
  }

  if (v6)
  {
    v19 = [v6 copy];
    [v13 setObject:v19 forKeyedSubscript:@"subclasses"];
  }

  instanceProperties = [(DebugHierarchyRuntimeType *)self instanceProperties];
  v21 = [instanceProperties count];

  if (v21)
  {
    v22 = [NSMutableArray arrayWithCapacity:v21];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    instanceProperties2 = [(DebugHierarchyRuntimeType *)self instanceProperties];
    objectEnumerator = [instanceProperties2 objectEnumerator];

    v25 = [objectEnumerator countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          dictionaryRepresentation2 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [v22 addObject:dictionaryRepresentation2];
          }
        }

        v26 = [objectEnumerator countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v26);
    }

    v30 = [v22 copy];
    [v13 setObject:v30 forKeyedSubscript:@"instanceProperties"];
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = equalCopy;
  if (isKindOfClass)
  {
    name = [(DebugHierarchyRuntimeType *)self name];
    name2 = [v6 name];
    v9 = [name isEqualToString:name2];

    if (v9)
    {
      moduleName = [(DebugHierarchyRuntimeType *)self moduleName];
      if (moduleName || ([v6 moduleName], (name2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        moduleName2 = [(DebugHierarchyRuntimeType *)self moduleName];
        moduleName3 = [v6 moduleName];
        v13 = [moduleName2 isEqualToString:moduleName3];

        if (moduleName)
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        v13 = 1;
      }

      goto LABEL_10;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(DebugHierarchyRuntimeType *)self name];
  instanceProperties = [(DebugHierarchyRuntimeType *)self instanceProperties];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p, represents: %@, properties: %lu>", v4, self, name, [instanceProperties count]);

  return v7;
}

- (DebugHierarchyRuntimeType)parentType
{
  WeakRetained = objc_loadWeakRetained(&self->_parentType);

  return WeakRetained;
}

@end