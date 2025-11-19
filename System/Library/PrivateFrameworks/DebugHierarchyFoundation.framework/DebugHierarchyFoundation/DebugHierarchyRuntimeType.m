@interface DebugHierarchyRuntimeType
+ (id)typeWithDictionaryRepresentation:(id)a3;
+ (id)typeWithName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isKindOfTypeWithName:(id)a3;
- (DebugHierarchyRuntimeType)initWithDictionaryRepresentation:(id)a3;
- (DebugHierarchyRuntimeType)initWithName:(id)a3;
- (DebugHierarchyRuntimeType)parentType;
- (NSMutableDictionary)instanceProperties;
- (id)closestTypeVendingAChildGroupingID;
- (id)debugDescription;
- (id)dictionaryRepresentation;
- (id)namesOfInheritanceChain;
- (id)propertyWithName:(id)a3;
- (int64_t)sourceLanguage;
- (void)addInstanceProperty:(id)a3;
- (void)addSubtype:(id)a3;
@end

@implementation DebugHierarchyRuntimeType

+ (id)typeWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionaryRepresentation:v4];

  return v5;
}

- (DebugHierarchyRuntimeType)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = DebugHierarchyRuntimeType;
  v5 = [(DebugHierarchyRuntimeType *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"className"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKeyedSubscript:@"typeAndModuleName"];
    nameIncludingModules = v5->_nameIncludingModules;
    v5->_nameIncludingModules = v8;

    v10 = [v4 objectForKeyedSubscript:@"moduleName"];
    moduleName = v5->_moduleName;
    v5->_moduleName = v10;

    v12 = [v4 objectForKeyedSubscript:@"subclasses"];
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

    v18 = [v4 objectForKeyedSubscript:@"instanceProperties"];
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

+ (id)typeWithName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithName:v4];

  return v5;
}

- (DebugHierarchyRuntimeType)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DebugHierarchyRuntimeType;
  v6 = [(DebugHierarchyRuntimeType *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
  }

  return v7;
}

- (void)addSubtype:(id)a3
{
  v4 = a3;
  v5 = [(DebugHierarchyRuntimeType *)self subtypes];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[NSSet set];
  }

  v9 = v7;

  v8 = [v9 setByAddingObject:v4];
  [(DebugHierarchyRuntimeType *)self setSubtypes:v8];

  [v4 setParentType:self];
}

- (BOOL)isKindOfTypeWithName:(id)a3
{
  v4 = a3;
  v5 = self;
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = [v6 name];
      v8 = [v7 isEqualToString:v4];

      if (v8)
      {
        break;
      }

      v9 = [v6 parentType];

      v6 = v9;
    }

    while (v9);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)propertyWithName:(id)a3
{
  v4 = a3;
  v5 = self;
  if (v5)
  {
    do
    {
      v6 = v5;
      v7 = [(DebugHierarchyRuntimeType *)v5 instanceProperties];
      v8 = [v7 objectForKeyedSubscript:v4];

      v5 = [(DebugHierarchyRuntimeType *)v6 parentType];
    }

    while (!v8 && v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)namesOfInheritanceChain
{
  v2 = self;
  v3 = +[NSMutableArray array];
  if (v2)
  {
    do
    {
      v4 = [(DebugHierarchyRuntimeType *)v2 name];
      [v3 addObject:v4];

      v5 = [(DebugHierarchyRuntimeType *)v2 parentType];

      v2 = v5;
    }

    while (v5);
  }

  v6 = [v3 copy];

  return v6;
}

- (id)closestTypeVendingAChildGroupingID
{
  v2 = self;
  v3 = [(DebugHierarchyRuntimeType *)v2 childGroupingID];

  if (v2 && !v3)
  {
    do
    {
      v4 = v2;
      v2 = [(DebugHierarchyRuntimeType *)v2 parentType];

      v5 = [(DebugHierarchyRuntimeType *)v2 childGroupingID];
    }

    while (v2 && !v5);
  }

  return v2;
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

- (void)addInstanceProperty:(id)a3
{
  v4 = a3;
  v6 = [(DebugHierarchyRuntimeType *)self instanceProperties];
  v5 = [v4 name];
  [v6 setObject:v4 forKeyedSubscript:v5];
}

- (int64_t)sourceLanguage
{
  v3 = [(DebugHierarchyRuntimeType *)self moduleName];
  if ([v3 length])
  {
    v4 = 2;
  }

  else
  {
    v5 = [(DebugHierarchyRuntimeType *)self name];
    if ([v5 containsString:@"."])
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
  v3 = [(DebugHierarchyRuntimeType *)self subtypes];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(DebugHierarchyRuntimeType *)self subtypes];
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = [(DebugHierarchyRuntimeType *)self subtypes];
    v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = [NSMutableDictionary dictionaryWithCapacity:4];
  v14 = [(DebugHierarchyRuntimeType *)self name];
  [v13 setObject:v14 forKeyedSubscript:@"className"];

  v15 = [(DebugHierarchyRuntimeType *)self nameIncludingModules];

  if (v15)
  {
    v16 = [(DebugHierarchyRuntimeType *)self nameIncludingModules];
    [v13 setObject:v16 forKeyedSubscript:@"typeAndModuleName"];
  }

  v17 = [(DebugHierarchyRuntimeType *)self moduleName];

  if (v17)
  {
    v18 = [(DebugHierarchyRuntimeType *)self moduleName];
    [v13 setObject:v18 forKeyedSubscript:@"moduleName"];
  }

  if (v6)
  {
    v19 = [v6 copy];
    [v13 setObject:v19 forKeyedSubscript:@"subclasses"];
  }

  v20 = [(DebugHierarchyRuntimeType *)self instanceProperties];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [NSMutableArray arrayWithCapacity:v21];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = [(DebugHierarchyRuntimeType *)self instanceProperties];
    v24 = [v23 objectEnumerator];

    v25 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          if (v29)
          {
            [v22 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v26);
    }

    v30 = [v22 copy];
    [v13 setObject:v30 forKeyedSubscript:@"instanceProperties"];
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v4;
  if (isKindOfClass)
  {
    v7 = [(DebugHierarchyRuntimeType *)self name];
    v8 = [v6 name];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v10 = [(DebugHierarchyRuntimeType *)self moduleName];
      if (v10 || ([v6 moduleName], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = [(DebugHierarchyRuntimeType *)self moduleName];
        v12 = [v6 moduleName];
        v13 = [v11 isEqualToString:v12];

        if (v10)
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
  v5 = [(DebugHierarchyRuntimeType *)self name];
  v6 = [(DebugHierarchyRuntimeType *)self instanceProperties];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p, represents: %@, properties: %lu>", v4, self, v5, [v6 count]);

  return v7;
}

- (DebugHierarchyRuntimeType)parentType
{
  WeakRetained = objc_loadWeakRetained(&self->_parentType);

  return WeakRetained;
}

@end