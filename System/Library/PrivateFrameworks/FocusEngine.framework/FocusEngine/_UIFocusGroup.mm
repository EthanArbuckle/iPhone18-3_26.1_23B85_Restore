@interface _UIFocusGroup
+ (id)nullGroupWithCoordinateSpace:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)boundingBox;
- (CGRect)primaryRect;
- (NSArray)childGroups;
- (NSArray)items;
- (UIFocusItem)primaryItem;
- (_UIFocusGroup)initWithIdentifier:(id)a3 parentGroup:(id)a4 coordinateSpace:(id)a5;
- (_UIFocusGroup)parentGroup;
- (id)_deepCopyWithNewIdentifierToGroupMap:(id)a3;
- (id)debugDescription;
- (id)description;
- (void)_insertChildGroup:(id)a3;
- (void)_insertItem:(id)a3;
- (void)_updateWithEnvironment:(id)a3;
- (void)_validateChildGroupOrderIfNecessary;
- (void)_validateItemOrderIfNecessary;
- (void)_validatePrimaryItemIfNecessary;
- (void)_validatePrimaryRectIfNeccessary;
@end

@implementation _UIFocusGroup

+ (id)nullGroupWithCoordinateSpace:(id)a3
{
  v3 = a3;
  v4 = [(_UIFocusGroup *)[_UIFocusNullGroup alloc] initWithIdentifier:@"com.apple.UIKit.null" parentGroup:0 coordinateSpace:v3];

  return v4;
}

- (_UIFocusGroup)initWithIdentifier:(id)a3 parentGroup:(id)a4 coordinateSpace:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9 && [v9 length])
  {
    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_UIFocusGroup.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"identifier && identifier.length > 0"}];

    if (v11)
    {
      goto LABEL_4;
    }
  }

  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"_UIFocusGroup.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace"}];

LABEL_4:
  v24.receiver = self;
  v24.super_class = _UIFocusGroup;
  v12 = [(_UIFocusGroup *)&v24 init];
  if (v12)
  {
    v13 = [v9 copy];
    v14 = *(v12 + 5);
    *(v12 + 5) = v13;

    v15 = objc_opt_new();
    v16 = *(v12 + 2);
    *(v12 + 2) = v15;

    v17 = objc_opt_new();
    v18 = *(v12 + 3);
    *(v12 + 3) = v17;

    objc_storeStrong(v12 + 7, a5);
    v19 = *MEMORY[0x277CBF398];
    v20 = *(MEMORY[0x277CBF398] + 16);
    *(v12 + 104) = *MEMORY[0x277CBF398];
    *(v12 + 120) = v20;
    *(v12 + 72) = v19;
    *(v12 + 88) = v20;
    objc_storeWeak(v12 + 6, v10);
    [v10 _insertChildGroup:v12];
  }

  return v12;
}

- (id)_deepCopyWithNewIdentifierToGroupMap:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  }

  v5 = [(_UIFocusGroup *)self identifier];
  v6 = [v4 objectForKey:v5];
  if (!v6)
  {
    v7 = objc_alloc(objc_opt_class());
    v8 = [(_UIFocusGroup *)self coordinateSpace];
    v6 = [v7 initWithIdentifier:v5 parentGroup:0 coordinateSpace:v8];

    v9 = [(NSMutableArray *)self->_items mutableCopy];
    v10 = *(v6 + 24);
    *(v6 + 24) = v9;

    origin = self->_boundingBox.origin;
    *(v6 + 120) = self->_boundingBox.size;
    *(v6 + 104) = origin;
    objc_storeStrong((v6 + 32), self->_primaryItem);
    *(v6 + 8) = self->_flags;
    [v4 setObject:v6 forKey:v5];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(_UIFocusGroup *)self childGroups];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v19 + 1) + 8 * i) _deepCopyWithNewIdentifierToGroupMap:v4];
          objc_storeWeak(v17 + 6, v6);
          [v6 _insertChildGroup:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  return v6;
}

- (void)_insertChildGroup:(id)a3
{
  [(NSMutableArray *)self->_childGroups addObject:a3];

  [(_UIFocusGroup *)self _invalidateChildGroupOrder];
}

- (void)_insertItem:(id)a3
{
  [(NSMutableArray *)self->_items addObject:a3];

  [(_UIFocusGroup *)self _invalidateItemOrder];
}

- (void)_updateWithEnvironment:(id)a3
{
  v5 = a3;
  v11 = v5;
  if (!self->_owningEnvironment)
  {
    objc_storeStrong(&self->_owningEnvironment, a3);
    v5 = v11;
  }

  v6 = _UIFocusItemSafeCast(v5);
  v7 = v6;
  if (v6)
  {
    v13.origin.x = _UIFocusItemFrameInCoordinateSpace(v6, self->_coordinateSpace);
    v13.origin.y = v8;
    v13.size.width = v9;
    v13.size.height = v10;
    self->_boundingBox = CGRectUnion(self->_boundingBox, v13);
  }
}

- (NSArray)childGroups
{
  [(_UIFocusGroup *)self _validateChildGroupOrderIfNecessary];
  v3 = [(NSMutableArray *)self->_childGroups copy];

  return v3;
}

- (NSArray)items
{
  [(_UIFocusGroup *)self _validateItemOrderIfNecessary];
  v3 = [(NSMutableArray *)self->_items copy];

  return v3;
}

- (UIFocusItem)primaryItem
{
  [(_UIFocusGroup *)self _validatePrimaryItemIfNecessary];
  primaryItem = self->_primaryItem;

  return primaryItem;
}

- (CGRect)primaryRect
{
  [(_UIFocusGroup *)self _validatePrimaryRectIfNeccessary];
  x = self->_primaryRect.origin.x;
  y = self->_primaryRect.origin.y;
  width = self->_primaryRect.size.width;
  height = self->_primaryRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_validateItemOrderIfNecessary
{
  if ((*&self->_flags & 1) == 0)
  {
    *&self->_flags |= 1u;
    if ([(NSMutableArray *)self->_items count])
    {
      items = self->_items;

      [(NSMutableArray *)items sortUsingComparator:&__block_literal_global];
    }
  }
}

- (void)_validateChildGroupOrderIfNecessary
{
  if ((*&self->_flags & 2) == 0)
  {
    *&self->_flags |= 2u;
    if ([(NSMutableArray *)self->_childGroups count])
    {
      childGroups = self->_childGroups;

      [(NSMutableArray *)childGroups sortUsingComparator:&__block_literal_global_19];
    }
  }
}

- (void)_validatePrimaryItemIfNecessary
{
  v29 = *MEMORY[0x277D85DE8];
  if ((*&self->_flags & 4) == 0)
  {
    *&self->_flags |= 4u;
    if ([(NSMutableArray *)self->_items count])
    {
      v3 = [(NSMutableArray *)self->_items firstObject];
      v4 = [UIFocusSystem focusSystemForEnvironment:v3];

      v5 = [v4 focusedItem];
      v22 = v4;
      v6 = [v4 _focusGroupHistory];
      v7 = [(_UIFocusGroup *)self identifier];
      v8 = [v6 lastFocusedItemForGroupIdentifier:v7];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = self;
      v9 = [(_UIFocusGroup *)self items];
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = 0;
        v14 = *v25;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v9);
            }

            v16 = *(*(&v24 + 1) + 8 * i);
            v17 = _UIFocusGroupPriorityForItem(v16, v5, v8);
            if (v17 > v13)
            {
              v18 = v17;
              v19 = v16;

              v12 = v19;
              v13 = v18;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      primaryItem = v23->_primaryItem;
      v23->_primaryItem = v12;
    }

    else
    {
      v20 = self->_primaryItem;
      self->_primaryItem = 0;
    }
  }
}

- (void)_validatePrimaryRectIfNeccessary
{
  if ((*&self->_flags & 8) != 0)
  {
    return;
  }

  *&self->_flags |= 8u;
  v3 = *(MEMORY[0x277CBF398] + 16);
  self->_primaryRect.origin = *MEMORY[0x277CBF398];
  self->_primaryRect.size = v3;
  [(_UIFocusGroup *)self _validatePrimaryItemIfNecessary];
  v27 = self->_primaryItem;
  if (!v27)
  {
    [(_UIFocusGroup *)self _validateItemOrderIfNecessary];
    v27 = [(NSMutableArray *)self->_items firstObject];
    if (!v27)
    {
      v27 = 0;
      goto LABEL_8;
    }
  }

  v4 = [(_UIFocusGroup *)self coordinateSpace];
  v5 = _UIFocusItemFrameInCoordinateSpace(v27, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  if (CGRectIsNull(v29))
  {
LABEL_8:
    [(_UIFocusGroup *)self _validateChildGroupOrderIfNecessary];
    v12 = [(NSMutableArray *)self->_childGroups firstObject];
    if (v12)
    {
      v13 = [(_UIFocusGroup *)self coordinateSpace];
      [v12 primaryRect];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [v12 coordinateSpace];
      [v13 convertRect:v22 fromCoordinateSpace:{v15, v17, v19, v21}];
      self->_primaryRect.origin.x = v23;
      self->_primaryRect.origin.y = v24;
      self->_primaryRect.size.width = v25;
      self->_primaryRect.size.height = v26;
    }

    else
    {
      self->_primaryRect.origin = self->_boundingBox.origin;
      self->_primaryRect.size = self->_boundingBox.size;
    }

    goto LABEL_12;
  }

  self->_primaryRect.origin.x = v5;
  self->_primaryRect.origin.y = v7;
  self->_primaryRect.size.width = v9;
  self->_primaryRect.size.height = v11;
LABEL_12:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_UIFocusGroup *)self isEqualToFocusGroup:v5];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  v5 = _UIFocusStringFromCGRect(self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height);
  v6 = _UIFocusStringFromCGRect(self->_primaryRect.origin.x, self->_primaryRect.origin.y, self->_primaryRect.size.width, self->_primaryRect.size.height);
  v7 = [v3 stringWithFormat:@"<%@ boundingBox: %@; primaryRect: %@>", identifier, v5, v6];;

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = self->_identifier;
  v7 = _UIFocusStringFromCGRect(self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height);
  v8 = _UIFocusStringFromCGRect(self->_primaryRect.origin.x, self->_primaryRect.origin.y, self->_primaryRect.size.width, self->_primaryRect.size.height);
  v9 = [v3 stringWithFormat:@"<%@: %p identifier: %@; boundingBox: %@; primaryRect: %@; items: %@>", v5, self, identifier, v7, v8, self->_items];;

  return v9;
}

- (_UIFocusGroup)parentGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_parentGroup);

  return WeakRetained;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end