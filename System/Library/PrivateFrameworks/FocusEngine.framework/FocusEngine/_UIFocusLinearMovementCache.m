@interface _UIFocusLinearMovementCache
- (_UIFocusLinearMovementCache)initWithFocusBehavior:(id)a3;
- (id)nextItemForRequest:(id)a3;
- (void)_invalidateOnTimeout;
- (void)_updateParentEnvironmentIfNecessary;
- (void)environmentDidAppear:(id)a3;
- (void)environmentWillDisappear:(id)a3;
- (void)updateCacheWithContext:(id)a3;
@end

@implementation _UIFocusLinearMovementCache

- (_UIFocusLinearMovementCache)initWithFocusBehavior:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIFocusLinearMovementCache;
  v5 = [(_UIFocusLinearMovementCache *)&v8 init];
  if (v5)
  {
    [v4 stabilizedLinearFocusMovementTimeout];
    v5->_cooldownThreshold = v6;
  }

  return v5;
}

- (void)_invalidateOnTimeout
{
  if (self->_cooldownThreshold <= 0.0)
  {
    [(_UIFocusLinearMovementCache *)self _invalidate];
  }

  else
  {
    *&self->_flags |= 2u;
  }
}

- (id)nextItemForRequest:(id)a3
{
  v4 = a3;
  linearItems = self->_linearItems;
  if (linearItems && [(NSArray *)linearItems count]&& (*&self->_flags & 1) == 0)
  {
    if ((*&self->_flags & 2) == 0 || CFAbsoluteTimeGetCurrent() - self->_lastUpdate <= self->_cooldownThreshold)
    {
      v6 = [v4 focusedItemInfo];
      v7 = [v6 item];

      v8 = self->_linearItems;
      v9 = [v4 movementInfo];
      v10 = [v9 heading];
      v11 = [v4 movementInfo];
      v12 = _UIFocusGetNextItemFromList(v7, v8, v10, [v11 _isLooping]);

      goto LABEL_9;
    }

    [(_UIFocusLinearMovementCache *)self _invalidate];
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (void)updateCacheWithContext:(id)a3
{
  v17 = a3;
  v4 = [v17 _request];
  v5 = [v4 isMovementRequest];

  if (v5 && ([v17 _request], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "movementInfo"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_linearHeading"), v9 = (objc_msgSend(v7, "heading") | v8) & 0x330, v7, v6, v9))
  {
    self->_lastUpdate = CFAbsoluteTimeGetCurrent();
    v10 = [v17 _focusMapSearchInfo];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 linearSortedFocusItems];

      if (v12)
      {
        if ([v11 hasOnlyStaticContent])
        {
          v13 = 0;
        }

        else
        {
          v13 = 2;
        }

        *&self->_flags = *&self->_flags & 0xFC | v13;
        v14 = [v11 linearSortedFocusItems];
        v15 = v14;
        if (!self->_linearItems || ([v14 isEqual:?] & 1) == 0)
        {
          objc_storeStrong(&self->_linearItems, v15);
          parentEnvironments = self->_parentEnvironments;
          self->_parentEnvironments = 0;
        }
      }
    }
  }

  else
  {
    [(_UIFocusLinearMovementCache *)self _invalidate];
  }
}

- (void)_updateParentEnvironmentIfNecessary
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_parentEnvironments)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    parentEnvironments = self->_parentEnvironments;
    self->_parentEnvironments = v3;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_linearItems;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          if (v10)
          {
            v11 = v10;
            do
            {
              if ([(NSHashTable *)self->_parentEnvironments containsObject:v11, v13])
              {
                break;
              }

              [(NSHashTable *)self->_parentEnvironments addObject:v11];
              v12 = [v11 parentFocusEnvironment];

              v11 = v12;
            }

            while (v12);
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)environmentWillDisappear:(id)a3
{
  v4 = a3;
  [(_UIFocusLinearMovementCache *)self _updateParentEnvironmentIfNecessary];
  v5 = [(NSHashTable *)self->_parentEnvironments containsObject:v4];

  if (v5)
  {
    [(_UIFocusLinearMovementCache *)self _invalidate];
    linearItems = self->_linearItems;
    self->_linearItems = 0;
  }
}

- (void)environmentDidAppear:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [UIFocusSystem focusSystemForEnvironment:v4];
  if (![v5 _isEnvironmentLocked:v4])
  {
    v6 = _UIFocusItemSafeCast(v4);
    v7 = v6;
    if (v6 && _UIFocusItemIsFocusedOrFocusable(v6))
    {
      [(_UIFocusLinearMovementCache *)self _invalidateOnTimeout];
LABEL_29:

      goto LABEL_30;
    }

    v8 = [v4 parentFocusEnvironment];
    if (v8)
    {
      v9 = v8;
      do
      {
        v10 = _UIFocusItemSafeCast(v9);
        v11 = v10;
        if (v10)
        {
          IsFocusedOrFocusable = _UIFocusItemIsFocusedOrFocusable(v10);
        }

        else
        {
          IsFocusedOrFocusable = 0;
        }

        v13 = [v9 parentFocusEnvironment];

        if (!v13)
        {
          break;
        }

        v9 = v13;
      }

      while (!IsFocusedOrFocusable);
      if (IsFocusedOrFocusable)
      {
        goto LABEL_28;
      }

      if (v7)
      {
LABEL_15:
        v14 = _UIParentCoordinateSpaceForFocusItem(v7);
        [v7 frame];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v23 = self->_linearItems;
        v24 = [(NSArray *)v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v29;
          while (2)
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v29 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v34.origin.x = _UIFocusItemFrameInCoordinateSpace(*(*(&v28 + 1) + 8 * i), v14);
              v35.origin.x = v16;
              v35.origin.y = v18;
              v35.size.width = v20;
              v35.size.height = v22;
              if (CGRectContainsRect(v34, v35))
              {

                [(_UIFocusLinearMovementCache *)self _invalidateOnTimeout];
                goto LABEL_27;
              }
            }

            v25 = [(NSArray *)v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:
        goto LABEL_28;
      }
    }

    else
    {
      v13 = 0;
      if (v7)
      {
        goto LABEL_15;
      }
    }

    [(_UIFocusLinearMovementCache *)self _invalidateOnTimeout];
LABEL_28:

    goto LABEL_29;
  }

  [(_UIFocusLinearMovementCache *)self _invalidateOnTimeout];
LABEL_30:
}

@end