@interface DebugHierarchyRuntimeInfo
+ (id)runtimeInfoWithSerializedRepresentation:(id)representation;
- (DebugHierarchyRuntimeInfo)init;
- (DebugHierarchyRuntimeInfo)initWithSerializedRepresentation:(id)representation;
- (id)_describeTreeWithRoot:(id)root depth:(unint64_t)depth description:(id)description;
- (id)_topLevelTypes;
- (id)debugDescription;
- (id)serializedRepresentation;
- (id)typeOfObject:(id)object;
- (id)typeWithName:(id)name;
- (void)_recursivelyIndexRuntimeType:(id)type;
- (void)_recursivelyMergeInRuntimeType:(id)type;
- (void)_reindexAllTypes;
- (void)addType:(id)type toParentType:(id)parentType;
- (void)clearData;
- (void)mergeWith:(id)with;
@end

@implementation DebugHierarchyRuntimeInfo

+ (id)runtimeInfoWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [[self alloc] initWithSerializedRepresentation:representationCopy];

  return v5;
}

- (DebugHierarchyRuntimeInfo)initWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [(DebugHierarchyRuntimeInfo *)self init];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = representationCopy;
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

- (void)addType:(id)type toParentType:(id)parentType
{
  parentTypeCopy = parentType;
  typeCopy = type;
  typeMap = [(DebugHierarchyRuntimeInfo *)self typeMap];
  name = [typeCopy name];
  [typeMap setObject:typeCopy forKey:name];

  [parentTypeCopy addSubtype:typeCopy];
}

- (id)typeWithName:(id)name
{
  if (name)
  {
    nameCopy = name;
    typeMap = [(DebugHierarchyRuntimeInfo *)self typeMap];
    v6 = [typeMap objectForKeyedSubscript:nameCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)typeOfObject:(id)object
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
    typeMap = [(DebugHierarchyRuntimeInfo *)self typeMap];
    v7 = [typeMap objectForKeyedSubscript:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_reindexAllTypes
{
  _topLevelTypes = [(DebugHierarchyRuntimeInfo *)self _topLevelTypes];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [_topLevelTypes countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(_topLevelTypes);
        }

        [(DebugHierarchyRuntimeInfo *)self _recursivelyIndexRuntimeType:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [_topLevelTypes countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_recursivelyIndexRuntimeType:(id)type
{
  typeCopy = type;
  typeMap = [(DebugHierarchyRuntimeInfo *)self typeMap];
  name = [typeCopy name];
  [typeMap setObject:typeCopy forKeyedSubscript:name];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  subtypes = [typeCopy subtypes];
  v8 = [subtypes countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(subtypes);
        }

        [(DebugHierarchyRuntimeInfo *)self _recursivelyIndexRuntimeType:*(*(&v12 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [subtypes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)serializedRepresentation
{
  _topLevelTypes = [(DebugHierarchyRuntimeInfo *)self _topLevelTypes];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_topLevelTypes count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = _topLevelTypes;
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

        dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
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
  typeMap = [(DebugHierarchyRuntimeInfo *)self typeMap];
  allValues = [typeMap allValues];

  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        parentType = [v10 parentType];

        if (!parentType)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v3 copy];

  return v12;
}

- (void)mergeWith:(id)with
{
  if (with)
  {
    _topLevelTypes = [with _topLevelTypes];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [_topLevelTypes countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(_topLevelTypes);
          }

          [(DebugHierarchyRuntimeInfo *)self _recursivelyMergeInRuntimeType:*(*(&v9 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [_topLevelTypes countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(DebugHierarchyRuntimeInfo *)self _reindexAllTypes];
  }
}

- (void)_recursivelyMergeInRuntimeType:(id)type
{
  typeCopy = type;
  typeMap = [(DebugHierarchyRuntimeInfo *)self typeMap];
  name = [typeCopy name];
  v7 = [typeMap objectForKeyedSubscript:name];

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    subtypes = [typeCopy subtypes];
    v9 = [subtypes countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(subtypes);
          }

          [(DebugHierarchyRuntimeInfo *)self _recursivelyMergeInRuntimeType:*(*(&v17 + 1) + 8 * v12)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [subtypes countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    typeMap2 = [(DebugHierarchyRuntimeInfo *)self typeMap];
    parentType = [typeCopy parentType];
    name2 = [parentType name];
    v16 = [typeMap2 objectForKeyedSubscript:name2];

    [(DebugHierarchyRuntimeInfo *)self addType:typeCopy toParentType:v16];
  }
}

- (void)clearData
{
  typeMap = [(DebugHierarchyRuntimeInfo *)self typeMap];
  [typeMap removeAllObjects];
}

- (id)debugDescription
{
  v3 = [(DebugHierarchyRuntimeInfo *)self description];
  v4 = [v3 stringByAppendingString:@"\n"];

  _topLevelTypes = [(DebugHierarchyRuntimeInfo *)self _topLevelTypes];
  v6 = [_topLevelTypes mutableCopy];

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

- (id)_describeTreeWithRoot:(id)root depth:(unint64_t)depth description:(id)description
{
  rootCopy = root;
  descriptionCopy = description;
  v10 = [&stru_29008 stringByPaddingToLength:depth + 1 withString:@"-" startingAtIndex:0];
  v11 = [rootCopy debugDescription];
  v12 = [NSString stringWithFormat:@"%@%@ %@\n", descriptionCopy, v10, v11];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  subtypes = [rootCopy subtypes];
  v14 = [subtypes countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(subtypes);
        }

        v12 = [(DebugHierarchyRuntimeInfo *)self _describeTreeWithRoot:*(*(&v20 + 1) + 8 * v17) depth:depth + 1 description:v18];

        v17 = v17 + 1;
        v18 = v12;
      }

      while (v15 != v17);
      v15 = [subtypes countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v12;
}

@end