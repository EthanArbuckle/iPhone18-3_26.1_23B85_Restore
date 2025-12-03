@interface _UIFocusGroupMap
- (NSArray)focusGroups;
- (NSArray)focusItems;
- (_UIFocusGroupMap)initWithItems:(id)items standInItemsMap:(id)map coordinateSpace:(id)space;
- (id)_indexEnvironment:(id)environment;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)focusGroupForItem:(id)item;
- (void)_indexItems:(id)items;
@end

@implementation _UIFocusGroupMap

- (_UIFocusGroupMap)initWithItems:(id)items standInItemsMap:(id)map coordinateSpace:(id)space
{
  itemsCopy = items;
  mapCopy = map;
  spaceCopy = space;
  v12 = spaceCopy;
  if (itemsCopy)
  {
    if (spaceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusGroupMap.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"items"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusGroupMap.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = _UIFocusGroupMap;
  v13 = [(_UIFocusGroupMap *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_coordinateSpace, space);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    environmentToGroupMap = v14->_environmentToGroupMap;
    v14->_environmentToGroupMap = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    identifierToGroupMap = v14->_identifierToGroupMap;
    v14->_identifierToGroupMap = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    identifierToPrimaryItemMap = v14->_identifierToPrimaryItemMap;
    v14->_identifierToPrimaryItemMap = strongToStrongObjectsMapTable3;

    v21 = [_UIFocusGroup nullGroupWithCoordinateSpace:v12];
    nullGroup = v14->_nullGroup;
    v14->_nullGroup = v21;

    objc_storeStrong(&v14->_standInItemsMap, map);
    [(_UIFocusGroupMap *)v14 _indexItems:itemsCopy];
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  keyEnumerator = [(NSMapTable *)self->_identifierToGroupMap keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v14 = nextObject;
    do
    {
      v15 = [(NSMapTable *)self->_identifierToGroupMap objectForKey:v14];
      v16 = [v15 _deepCopyWithNewIdentifierToGroupMap:strongToStrongObjectsMapTable];

      nextObject2 = [keyEnumerator nextObject];

      v14 = nextObject2;
    }

    while (nextObject2);
  }

  objc_storeStrong((v4 + 16), strongToStrongObjectsMapTable);
  strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  keyEnumerator2 = [(NSMapTable *)self->_environmentToGroupMap keyEnumerator];
  nextObject3 = [keyEnumerator2 nextObject];
  if (nextObject3)
  {
    v21 = nextObject3;
    do
    {
      v22 = [(NSMapTable *)self->_environmentToGroupMap objectForKey:v21];
      identifier = [v22 identifier];
      v24 = [strongToStrongObjectsMapTable objectForKey:identifier];

      [strongToStrongObjectsMapTable2 setObject:v24 forKey:v21];
      nextObject4 = [keyEnumerator2 nextObject];

      v21 = nextObject4;
    }

    while (nextObject4);
  }

  v26 = *(v4 + 8);
  *(v4 + 8) = strongToStrongObjectsMapTable2;

  return v4;
}

- (void)_indexItems:(id)items
{
  v21 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (!v7)
        {
          v7 = [UIFocusSystem focusSystemForEnvironment:*(*(&v16 + 1) + 8 * i)];
        }

        v11 = [UIFocusSystem focusSystemForEnvironment:v10];

        if (v7 != v11)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusGroupMap _indexItems:]"];
          [currentHandler handleFailureInFunction:v15 file:@"_UIFocusGroupMap.m" lineNumber:109 description:@"Indexing focus items of different focus systems in a single focus group map is unsupported and leads to undefined behavior. This is a UIKit bug."];
        }

        v12 = [(_UIFocusGroupMap *)self _indexEnvironment:v10];
        v13 = [(NSMapTable *)self->_standInItemsMap objectForKey:v10];

        if (!v13)
        {
          [v12 _insertItem:v10];
        }
      }

      v6 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }
}

- (id)_indexEnvironment:(id)environment
{
  environmentCopy = environment;
  if (!environmentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusGroupMap.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  if (self->_focusGroups)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusGroupMap.m" lineNumber:123 description:@"This map has already calculated its focus groups. Later changes in this map are not allowed. This is a UIKit bug."];
  }

  v6 = [(NSMapTable *)self->_environmentToGroupMap objectForKey:environmentCopy];
  if (!v6)
  {
    allowsWeakReference = [environmentCopy allowsWeakReference];
    if (!environmentCopy || (allowsWeakReference & 1) == 0)
    {
      v6 = self->_nullGroup;
      goto LABEL_24;
    }

    v8 = _UIFocusGroupUnresolvedIdentifierForEnvironment(environmentCopy);
    if (v8)
    {
      v9 = [(NSMapTable *)self->_identifierToGroupMap objectForKey:v8];
      if (v9)
      {
        v10 = v9;
        [(NSMapTable *)self->_environmentToGroupMap setObject:v9 forKey:environmentCopy];
LABEL_23:
        [(_UIFocusGroup *)v10 _updateWithEnvironment:environmentCopy];
        v6 = v10;

        goto LABEL_24;
      }
    }

    parentFocusEnvironment = [environmentCopy parentFocusEnvironment];
    if (!parentFocusEnvironment)
    {
      if (!v8)
      {
        v10 = self->_nullGroup;
        goto LABEL_22;
      }

      v16 = [_UIFocusGroup alloc];
      coordinateSpace = [(_UIFocusGroupMap *)self coordinateSpace];
      v15 = [(_UIFocusGroup *)v16 initWithIdentifier:v8 parentGroup:0 coordinateSpace:coordinateSpace];
      goto LABEL_19;
    }

    coordinateSpace = [(_UIFocusGroupMap *)self _indexEnvironment:parentFocusEnvironment];
    if (coordinateSpace)
    {
      if (v8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIFocusGroupMap.m" lineNumber:163 description:@"Found a parent environment but could not create a parent group. This is a UIKit bug."];

      if (v8)
      {
LABEL_15:
        identifier = [coordinateSpace identifier];
        v14 = [v8 isEqualToString:identifier];

        if (!v14)
        {
          v17 = [_UIFocusGroup alloc];
          coordinateSpace2 = [(_UIFocusGroupMap *)self coordinateSpace];
          v10 = [(_UIFocusGroup *)v17 initWithIdentifier:v8 parentGroup:coordinateSpace coordinateSpace:coordinateSpace2];

          goto LABEL_21;
        }
      }
    }

    v15 = coordinateSpace;
LABEL_19:
    v10 = v15;
LABEL_21:

LABEL_22:
    [(NSMapTable *)self->_environmentToGroupMap setObject:v10 forKey:environmentCopy];
    identifierToGroupMap = self->_identifierToGroupMap;
    identifier2 = [(_UIFocusGroup *)v10 identifier];
    [(NSMapTable *)identifierToGroupMap setObject:v10 forKey:identifier2];

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
  focusGroups = [(_UIFocusGroupMap *)self focusGroups];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = focusGroups;
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
        primaryItem = [v9 primaryItem];
        if (primaryItem)
        {
          firstObject = primaryItem;
        }

        else
        {
          items = [v9 items];
          firstObject = [items firstObject];

          if (!firstObject)
          {
            continue;
          }
        }

        [v3 addObject:firstObject];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];

  return v13;
}

- (id)focusGroupForItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusGroupMap.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v6 = [(NSMapTable *)self->_environmentToGroupMap objectForKey:itemCopy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  focusGroups = [(_UIFocusGroupMap *)self focusGroups];
  v7 = [v3 stringWithFormat:@"<%@: %p focusGroups: %@>", v5, self, focusGroups];;

  return v7;
}

@end