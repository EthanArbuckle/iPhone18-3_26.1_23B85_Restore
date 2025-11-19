@interface DebugHierarchyRuntimeInfo
+ (id)runtimeInfoWithSerializedRepresentation:(id)a3;
- (DebugHierarchyRuntimeInfo)init;
- (DebugHierarchyRuntimeInfo)initWithSerializedRepresentation:(id)a3;
- (id)_describeTreeWithRoot:(id)a3 depth:(unint64_t)a4 description:(id)a5;
- (id)_topLevelTypes;
- (id)debugDescription;
- (id)serializedRepresentation;
- (id)typeOfObject:(id)a3;
- (id)typeWithName:(id)a3;
- (void)_recursivelyIndexRuntimeType:(id)a3;
- (void)_recursivelyMergeInRuntimeType:(id)a3;
- (void)_reindexAllTypes;
- (void)addType:(id)a3 toParentType:(id)a4;
- (void)clearData;
- (void)mergeWith:(id)a3;
@end

@implementation DebugHierarchyRuntimeInfo

+ (id)runtimeInfoWithSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSerializedRepresentation:v4];

  return v5;
}

- (DebugHierarchyRuntimeInfo)initWithSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(DebugHierarchyRuntimeInfo *)self init];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [DebugHierarchyRuntimeType typeWithDictionaryRepresentation:*(*(&v13 + 1) + 8 * v10), v13];
          [(DebugHierarchyRuntimeInfo *)v5 _recursivelyIndexRuntimeType:v11];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (DebugHierarchyRuntimeInfo)init
{
  v6.receiver = self;
  v6.super_class = DebugHierarchyRuntimeInfo;
  v2 = [(DebugHierarchyRuntimeInfo *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    typeMap = v2->_typeMap;
    v2->_typeMap = v3;
  }

  return v2;
}

- (void)addType:(id)a3 toParentType:(id)a4
{
  v6 = a4;
  v9 = a3;
  v7 = [(DebugHierarchyRuntimeInfo *)self typeMap];
  v8 = [v9 name];
  [v7 setObject:v9 forKey:v8];

  [v6 addSubtype:v9];
}

- (id)typeWithName:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(DebugHierarchyRuntimeInfo *)self typeMap];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)typeOfObject:(id)a3
{
  v4 = objc_opt_class();
  v5 = v4;
  if (v4)
  {
    if (object_isClass(v4))
    {
      v5 = NSStringFromClass(v5);
    }

    else
    {
      v5 = 0;
    }
  }

  if ([(objc_class *)v5 length])
  {
    v6 = [(DebugHierarchyRuntimeInfo *)self typeMap];
    v7 = [v6 objectForKeyedSubscript:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_reindexAllTypes
{
  v3 = [(DebugHierarchyRuntimeInfo *)self _topLevelTypes];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(DebugHierarchyRuntimeInfo *)self _recursivelyIndexRuntimeType:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_recursivelyIndexRuntimeType:(id)a3
{
  v4 = a3;
  v5 = [(DebugHierarchyRuntimeInfo *)self typeMap];
  v6 = [v4 name];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v4 subtypes];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(DebugHierarchyRuntimeInfo *)self _recursivelyIndexRuntimeType:*(*(&v12 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)serializedRepresentation
{
  v2 = [(DebugHierarchyRuntimeInfo *)self _topLevelTypes];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)_topLevelTypes
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(DebugHierarchyRuntimeInfo *)self typeMap];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 parentType];

        if (!v11)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v3 copy];

  return v12;
}

- (void)mergeWith:(id)a3
{
  if (a3)
  {
    v4 = [a3 _topLevelTypes];
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

          [(DebugHierarchyRuntimeInfo *)self _recursivelyMergeInRuntimeType:*(*(&v9 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(DebugHierarchyRuntimeInfo *)self _reindexAllTypes];
  }
}

- (void)_recursivelyMergeInRuntimeType:(id)a3
{
  v4 = a3;
  v5 = [(DebugHierarchyRuntimeInfo *)self typeMap];
  v6 = [v4 name];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v4 subtypes];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(DebugHierarchyRuntimeInfo *)self _recursivelyMergeInRuntimeType:*(*(&v17 + 1) + 8 * v12)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v13 = [(DebugHierarchyRuntimeInfo *)self typeMap];
    v14 = [v4 parentType];
    v15 = [v14 name];
    v16 = [v13 objectForKeyedSubscript:v15];

    [(DebugHierarchyRuntimeInfo *)self addType:v4 toParentType:v16];
  }
}

- (void)clearData
{
  v2 = [(DebugHierarchyRuntimeInfo *)self typeMap];
  [v2 removeAllObjects];
}

- (id)debugDescription
{
  v3 = [(DebugHierarchyRuntimeInfo *)self description];
  v4 = [v3 stringByAppendingString:@"\n"];

  v5 = [(DebugHierarchyRuntimeInfo *)self _topLevelTypes];
  v6 = [v5 mutableCopy];

  if ([v6 count] >= 2)
  {
    v7 = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:1];
    v22 = v7;
    v8 = [NSArray arrayWithObjects:&v22 count:1];
    [v6 sortUsingDescriptors:v8];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      v14 = v4;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [(DebugHierarchyRuntimeInfo *)self _describeTreeWithRoot:*(*(&v17 + 1) + 8 * v13) depth:0 description:&stru_29008, v17];
        v4 = [v14 stringByAppendingString:v15];

        v13 = v13 + 1;
        v14 = v4;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v4;
}

- (id)_describeTreeWithRoot:(id)a3 depth:(unint64_t)a4 description:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [&stru_29008 stringByPaddingToLength:a4 + 1 withString:@"-" startingAtIndex:0];
  v11 = [v8 debugDescription];
  v12 = [NSString stringWithFormat:@"%@%@ %@\n", v9, v10, v11];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [v8 subtypes];
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      v18 = v12;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v12 = [(DebugHierarchyRuntimeInfo *)self _describeTreeWithRoot:*(*(&v20 + 1) + 8 * v17) depth:a4 + 1 description:v18];

        v17 = v17 + 1;
        v18 = v12;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v12;
}

@end