@interface _UIFocusGroupMap
- (NSArray)focusGroups;
- (NSArray)focusItems;
- (_UIFocusGroupMap)initWithItems:(id)a3 standInItemsMap:(id)a4 coordinateSpace:(id)a5;
- (id)_indexEnvironment:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)focusGroupForItem:(id)a3;
- (void)_indexItems:(id)a3;
@end

@implementation _UIFocusGroupMap

- (_UIFocusGroupMap)initWithItems:(id)a3 standInItemsMap:(id)a4 coordinateSpace:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"_UIFocusGroupMap.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"items"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x277CCA890] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"_UIFocusGroupMap.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = _UIFocusGroupMap;
  v13 = [(_UIFocusGroupMap *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_coordinateSpace, a5);
    v15 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    environmentToGroupMap = v14->_environmentToGroupMap;
    v14->_environmentToGroupMap = v15;

    v17 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    identifierToGroupMap = v14->_identifierToGroupMap;
    v14->_identifierToGroupMap = v17;

    v19 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    identifierToPrimaryItemMap = v14->_identifierToPrimaryItemMap;
    v14->_identifierToPrimaryItemMap = v19;

    v21 = [_UIFocusGroup nullGroupWithCoordinateSpace:v12];
    nullGroup = v14->_nullGroup;
    v14->_nullGroup = v21;

    objc_storeStrong(&v14->_standInItemsMap, a4);
    [(_UIFocusGroupMap *)v14 _indexItems:v9];
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v4 + 56), self->_coordinateSpace);
  v5 = [_UIFocusGroup nullGroupWithCoordinateSpace:self->_coordinateSpace];
  v6 = *(v4 + 32);
  *(v4 + 32) = v5;

  v7 = [(NSMapTable *)self->_standInItemsMap copy];
  v8 = *(v4 + 40);
  *(v4 + 40) = v7;

  v9 = [(NSMapTable *)self->_identifierToPrimaryItemMap copy];
  v10 = *(v4 + 24);
  *(v4 + 24) = v9;

  v11 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v12 = [(NSMapTable *)self->_identifierToGroupMap keyEnumerator];
  v13 = [v12 nextObject];
  if (v13)
  {
    v14 = v13;
    do
    {
      v15 = [(NSMapTable *)self->_identifierToGroupMap objectForKey:v14];
      v16 = [v15 _deepCopyWithNewIdentifierToGroupMap:v11];

      v17 = [v12 nextObject];

      v14 = v17;
    }

    while (v17);
  }

  objc_storeStrong((v4 + 16), v11);
  v18 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v19 = [(NSMapTable *)self->_environmentToGroupMap keyEnumerator];
  v20 = [v19 nextObject];
  if (v20)
  {
    v21 = v20;
    do
    {
      v22 = [(NSMapTable *)self->_environmentToGroupMap objectForKey:v21];
      v23 = [v22 identifier];
      v24 = [v11 objectForKey:v23];

      [v18 setObject:v24 forKey:v21];
      v25 = [v19 nextObject];

      v21 = v25;
    }

    while (v25);
  }

  v26 = *(v4 + 8);
  *(v4 + 8) = v18;

  return v4;
}

- (void)_indexItems:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (!v7)
        {
          v7 = [UIFocusSystem focusSystemForEnvironment:*(*(&v16 + 1) + 8 * i)];
        }

        v11 = [UIFocusSystem focusSystemForEnvironment:v10];

        if (v7 != v11)
        {
          v14 = [MEMORY[0x277CCA890] currentHandler];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusGroupMap _indexItems:]"];
          [v14 handleFailureInFunction:v15 file:@"_UIFocusGroupMap.m" lineNumber:109 description:@"Indexing focus items of different focus systems in a single focus group map is unsupported and leads to undefined behavior. This is a UIKit bug."];
        }

        v12 = [(_UIFocusGroupMap *)self _indexEnvironment:v10];
        v13 = [(NSMapTable *)self->_standInItemsMap objectForKey:v10];

        if (!v13)
        {
          [v12 _insertItem:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }
}

- (id)_indexEnvironment:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_UIFocusGroupMap.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  if (self->_focusGroups)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"_UIFocusGroupMap.m" lineNumber:123 description:@"This map has already calculated its focus groups. Later changes in this map are not allowed. This is a UIKit bug."];
  }

  v6 = [(NSMapTable *)self->_environmentToGroupMap objectForKey:v5];
  if (!v6)
  {
    v7 = [v5 allowsWeakReference];
    if (!v5 || (v7 & 1) == 0)
    {
      v6 = self->_nullGroup;
      goto LABEL_24;
    }

    v8 = _UIFocusGroupUnresolvedIdentifierForEnvironment(v5);
    if (v8)
    {
      v9 = [(NSMapTable *)self->_identifierToGroupMap objectForKey:v8];
      if (v9)
      {
        v10 = v9;
        [(NSMapTable *)self->_environmentToGroupMap setObject:v9 forKey:v5];
LABEL_23:
        [(_UIFocusGroup *)v10 _updateWithEnvironment:v5];
        v6 = v10;

        goto LABEL_24;
      }
    }

    v11 = [v5 parentFocusEnvironment];
    if (!v11)
    {
      if (!v8)
      {
        v10 = self->_nullGroup;
        goto LABEL_22;
      }

      v16 = [_UIFocusGroup alloc];
      v12 = [(_UIFocusGroupMap *)self coordinateSpace];
      v15 = [(_UIFocusGroup *)v16 initWithIdentifier:v8 parentGroup:0 coordinateSpace:v12];
      goto LABEL_19;
    }

    v12 = [(_UIFocusGroupMap *)self _indexEnvironment:v11];
    if (v12)
    {
      if (v8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"_UIFocusGroupMap.m" lineNumber:163 description:@"Found a parent environment but could not create a parent group. This is a UIKit bug."];

      if (v8)
      {
LABEL_15:
        v13 = [v12 identifier];
        v14 = [v8 isEqualToString:v13];

        if (!v14)
        {
          v17 = [_UIFocusGroup alloc];
          v18 = [(_UIFocusGroupMap *)self coordinateSpace];
          v10 = [(_UIFocusGroup *)v17 initWithIdentifier:v8 parentGroup:v12 coordinateSpace:v18];

          goto LABEL_21;
        }
      }
    }

    v15 = v12;
LABEL_19:
    v10 = v15;
LABEL_21:

LABEL_22:
    [(NSMapTable *)self->_environmentToGroupMap setObject:v10 forKey:v5];
    identifierToGroupMap = self->_identifierToGroupMap;
    v20 = [(_UIFocusGroup *)v10 identifier];
    [(NSMapTable *)identifierToGroupMap setObject:v10 forKey:v20];

    goto LABEL_23;
  }

LABEL_24:

  return v6;
}

- (NSArray)focusGroups
{
  focusGroups = self->_focusGroups;
  if (!focusGroups)
  {
    v4 = objc_opt_new();
    __addChildFocusGroupsRecursively(self->_nullGroup, v4);
    v5 = [v4 copy];
    v6 = self->_focusGroups;
    self->_focusGroups = v5;

    focusGroups = self->_focusGroups;
  }

  return focusGroups;
}

- (NSArray)focusItems
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(_UIFocusGroupMap *)self focusGroups];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 primaryItem];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v12 = [v9 items];
          v11 = [v12 firstObject];

          if (!v11)
          {
            continue;
          }
        }

        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];

  return v13;
}

- (id)focusGroupForItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIFocusGroupMap.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v6 = [(NSMapTable *)self->_environmentToGroupMap objectForKey:v5];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_UIFocusGroupMap *)self focusGroups];
  v7 = [v3 stringWithFormat:@"<%@: %p focusGroups: %@>", v5, self, v6];;

  return v7;
}

@end