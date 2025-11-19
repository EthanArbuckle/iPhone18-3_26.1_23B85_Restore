@interface _UIFocusGuideRegion
- (BOOL)_isEnabledForFocusedRegion:(id)a3 inSnapshot:(id)a4;
- (BOOL)isEqual:(id)a3;
- (UIFocusEnvironment)owningEnvironment;
- (_UIFocusGuideRegion)initWithFrame:(CGRect)a3 coordinateSpace:(id)a4;
- (_UIFocusGuideRegionDelegate)delegate;
- (id)_debugAssociatedObject;
- (id)_delegatePreferredFocusEnvironmentsForMovementRequest:(id)a3;
- (id)_focusRegionWithAdjustedFrame:(CGRect)a3 coordinateSpace:(id)a4;
- (id)_focusedItemForLinearSorting:(id)a3 inMap:(id)a4 withSnapshot:(id)a5;
- (id)_nextFocusedItemForFocusMovementRequest:(id)a3 inMap:(id)a4 withSnapshot:(id)a5;
- (int64_t)_preferredDistanceComparisonType;
- (unint64_t)_focusableBoundaries;
- (void)_willParticipateAsDestinationRegionInFocusUpdate:(id)a3;
@end

@implementation _UIFocusGuideRegion

- (_UIFocusGuideRegion)initWithFrame:(CGRect)a3 coordinateSpace:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIFocusGuideRegion;
  result = [(_UIFocusRegion *)&v5 initWithFrame:a4 coordinateSpace:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->__focusPriority = 500.0;
  }

  return result;
}

- (id)_focusRegionWithAdjustedFrame:(CGRect)a3 coordinateSpace:(id)a4
{
  v9.receiver = self;
  v9.super_class = _UIFocusGuideRegion;
  v5 = [(_UIFocusRegion *)&v9 _focusRegionWithAdjustedFrame:a4 coordinateSpace:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = [(_UIFocusGuideRegion *)self delegate];
  [v5 setDelegate:v6];

  v7 = [(_UIFocusGuideRegion *)self owningEnvironment];
  [v5 setOwningEnvironment:v7];

  [v5 _setIsUnoccludable:{-[_UIFocusGuideRegion _isUnoccludable](self, "_isUnoccludable")}];
  [(_UIFocusGuideRegion *)self _focusPriority];
  [v5 _setFocusPriority:?];
  [v5 _setIgnoresSpeedBumpEdges:{-[_UIFocusGuideRegion _ignoresSpeedBumpEdges](self, "_ignoresSpeedBumpEdges")}];
  [v5 _setIsUnclippable:{-[_UIFocusGuideRegion _isUnclippable](self, "_isUnclippable")}];

  return v5;
}

- (BOOL)_isEnabledForFocusedRegion:(id)a3 inSnapshot:(id)a4
{
  if (!a3)
  {
    return 1;
  }

  v6 = a4;
  v7 = a3;
  v8 = [v6 originalRegionForRegion:self];
  [v6 snapshotFrameForRegion:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v6 snapshotFrameForRegion:v7];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v43.origin.x = v10;
  v43.origin.y = v12;
  v43.size.width = v14;
  v43.size.height = v16;
  if (CGRectIsNull(v43) || (v44.origin.x = v18, v44.origin.y = v20, v44.size.width = v22, v44.size.height = v24, CGRectIsNull(v44)))
  {
    v25 = 1;
  }

  else
  {
    v45.origin.x = v10;
    v45.origin.y = v12;
    v45.size.width = v14;
    v45.size.height = v16;
    v46 = CGRectStandardize(v45);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    v46.origin.x = v18;
    v46.origin.y = v20;
    v46.size.width = v22;
    v46.size.height = v24;
    v47 = CGRectStandardize(v46);
    v30 = v47.origin.x;
    v31 = v47.origin.y;
    v32 = v47.size.width;
    v33 = v47.size.height;
    v41 = y;
    v42 = x;
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v34 = CGRectGetMinX(v47) + 0.0001;
    v48.origin.x = v30;
    v48.origin.y = v31;
    v48.size.width = v32;
    v48.size.height = v33;
    if (v34 <= CGRectGetMaxX(v48))
    {
      v49.origin.y = v41;
      v49.origin.x = x;
      v49.size.width = width;
      v49.size.height = height;
      v36 = CGRectGetMaxX(v49) + -0.0001;
      v50.origin.x = v30;
      v50.origin.y = v31;
      v50.size.width = v32;
      v50.size.height = v33;
      v35 = v36 >= CGRectGetMinX(v50);
    }

    else
    {
      v35 = 0;
    }

    v51.origin.x = x;
    v51.origin.y = v41;
    v51.size.width = width;
    v51.size.height = height;
    v37 = CGRectGetMinY(v51) + 0.0001;
    v52.origin.x = v30;
    v52.origin.y = v31;
    v52.size.width = v32;
    v52.size.height = v33;
    if (v37 <= CGRectGetMaxY(v52))
    {
      v53.origin.x = v42;
      v53.origin.y = v41;
      v53.size.width = width;
      v53.size.height = height;
      v39 = CGRectGetMaxY(v53) + -0.0001;
      v54.origin.x = v30;
      v54.origin.y = v31;
      v54.size.width = v32;
      v54.size.height = v33;
      v38 = v39 >= CGRectGetMinY(v54);
    }

    else
    {
      v38 = 0;
    }

    v25 = !v35 || !v38;
  }

  return v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UIFocusGuideRegion;
  if ([(_UIFocusRegion *)&v12 isEqual:v4])
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_loadWeakRetained(v5 + 7);
    if (WeakRetained == v7)
    {
      v9 = objc_loadWeakRetained(&self->_owningEnvironment);
      v10 = objc_loadWeakRetained(v5 + 8);
      v8 = v9 == v10 && self->__isUnoccludable == *(v5 + 48) && self->__focusPriority == *(v5 + 13) && self->__ignoresSpeedBumpEdges == *(v5 + 49) && self->__isUnclippable == *(v5 + 50);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_nextFocusedItemForFocusMovementRequest:(id)a3 inMap:(id)a4 withSnapshot:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 focusedItemInfo];
  v12 = [v11 focusedRegion];
  v13 = [(_UIFocusGuideRegion *)self _isEnabledForFocusedRegion:v12 inSnapshot:v10];

  if (v13)
  {
    v14 = [(_UIFocusGuideRegion *)self _delegatePreferredFocusEnvironmentsForMovementRequest:v8];
    if (![v14 count])
    {
      v15 = [(_UIFocusGuideRegion *)self owningEnvironment];
      v16 = _UIFocusEnvironmentPreferredFocusEnvironments(v15);

      v14 = v16;
    }

    v17 = objc_alloc_init(_UIDeepestPreferredEnvironmentSearch);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = v14;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(_UIDeepestPreferredEnvironmentSearch *)v17 deepestPreferredFocusableItemForEnvironment:*(*(&v26 + 1) + 8 * i) withRequest:v8, v26];
          if (v23)
          {
            v24 = v23;

            goto LABEL_15;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v24 = [(_UIFocusGuideRegion *)self _fallbackFocusItemForMovementRequest:v8 inFocusMap:v9 withSnapshot:v10];
LABEL_15:
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_focusedItemForLinearSorting:(id)a3 inMap:(id)a4 withSnapshot:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_UIFocusGuideRegion *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 focusItemForSorting];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = _UIFocusGuideRegion;
    v12 = [(_UIFocusRegion *)&v15 _focusedItemForLinearSorting:v8 inMap:v9 withSnapshot:v10];
  }

  v13 = v12;

  return v13;
}

- (unint64_t)_focusableBoundaries
{
  if (dyld_program_sdk_at_least())
  {
    return 32;
  }

  else
  {
    return 16;
  }
}

- (int64_t)_preferredDistanceComparisonType
{
  if (!dyld_program_sdk_at_least())
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _UIFocusGuideRegion;
  return [(_UIFocusRegion *)&v4 _preferredDistanceComparisonType];
}

- (void)_willParticipateAsDestinationRegionInFocusUpdate:(id)a3
{
  v6 = a3;
  v4 = [(_UIFocusGuideRegion *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 focusGuideRegion:self willParticipateAsDestinationRegionInFocusUpdate:v6];
  }

  else
  {
    v5 = [v6 _focusedGuide];

    if (!v5)
    {
      [v6 _setFocusRedirectedByGuide:1];
    }
  }
}

- (id)_delegatePreferredFocusEnvironmentsForMovementRequest:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusGuideRegion *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 focusGuideRegion:self preferredFocusEnvironmentsForMovementRequest:v4];
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  return v7;
}

- (id)_debugAssociatedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIFocusGuideRegionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIFocusEnvironment)owningEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_owningEnvironment);

  return WeakRetained;
}

@end