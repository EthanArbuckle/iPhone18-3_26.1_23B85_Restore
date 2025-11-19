@interface _UIFocusItemInfo
+ (_UIFocusItemInfo)infoWithItem:(id)a3;
+ (_UIFocusItemInfo)infoWithItem:(id)a3 useFallbackAncestorScroller:(BOOL)a4;
- (BOOL)isFocusMovementFlippedHorizontally;
- (CGRect)focusedRectInCoordinateSpace:(id)a3;
- (NSArray)ancestorEnvironmentScrollableContainers;
- (UIFocusItem)item;
- (_UIFocusRegion)focusedRegion;
- (id)_createFocusedRegion;
- (id)_initWithItem:(id)a3 useFallbackAncestorScroller:(BOOL)a4;
- (id)description;
- (id)shortDescription;
- (int64_t)focusTouchSensitivityStyle;
- (int64_t)inheritedFocusMovementStyle;
- (int64_t)rotaryFocusMovementAxis;
- (void)invalidateFocusedRegion;
@end

@implementation _UIFocusItemInfo

+ (_UIFocusItemInfo)infoWithItem:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithItem:v4 useFallbackAncestorScroller:0];

  return v5;
}

+ (_UIFocusItemInfo)infoWithItem:(id)a3 useFallbackAncestorScroller:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[a1 alloc] _initWithItem:v6 useFallbackAncestorScroller:v4];

  return v7;
}

- (id)_initWithItem:(id)a3 useFallbackAncestorScroller:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _UIFocusItemInfo;
  v7 = [(_UIFocusItemInfo *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_item, v6);
    v8->_inheritedFocusMovementStyle = 0;
    if (v4)
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *&v8->_flags = *&v8->_flags & 0xEF | v9;
  }

  return v8;
}

- (NSArray)ancestorEnvironmentScrollableContainers
{
  ancestorEnvironmentScrollableContainers = self->_ancestorEnvironmentScrollableContainers;
  if (!ancestorEnvironmentScrollableContainers)
  {
    WeakRetained = objc_loadWeakRetained(&self->_item);
    v5 = _UIFocusAncestorEnvironmentScrollableContainers(WeakRetained, (*&self->_flags >> 4) & 1);
    v6 = self->_ancestorEnvironmentScrollableContainers;
    self->_ancestorEnvironmentScrollableContainers = v5;

    ancestorEnvironmentScrollableContainers = self->_ancestorEnvironmentScrollableContainers;
  }

  return ancestorEnvironmentScrollableContainers;
}

- (int64_t)inheritedFocusMovementStyle
{
  result = self->_inheritedFocusMovementStyle;
  if (!result)
  {
    v4 = [(_UIFocusItemInfo *)self item];

    if (v4)
    {
      v5 = [(_UIFocusItemInfo *)self item];
      self->_inheritedFocusMovementStyle = _UIFocusEnvironmentInheritedFocusMovementStyle(v5);

      return self->_inheritedFocusMovementStyle;
    }

    else
    {
      result = 1;
      self->_inheritedFocusMovementStyle = 1;
    }
  }

  return result;
}

- (int64_t)focusTouchSensitivityStyle
{
  if ((*&self->_flags & 1) == 0)
  {
    v3 = [(_UIFocusItemInfo *)self item];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 _focusTouchSensitivityStyle];
    }

    else
    {
      v4 = 0;
    }

    self->_focusTouchSensitivityStyle = v4;
    *&self->_flags |= 1u;
  }

  return self->_focusTouchSensitivityStyle;
}

- (int64_t)rotaryFocusMovementAxis
{
  if ((*&self->_flags & 8) == 0)
  {
    v3 = [(_UIFocusItemInfo *)self item];
    self->_rotaryFocusMovementAxis = _UIFocusEnvironmentResolvedRotaryFocusMovementAxis(v3, 0);

    *&self->_flags |= 8u;
  }

  return self->_rotaryFocusMovementAxis;
}

- (BOOL)isFocusMovementFlippedHorizontally
{
  if ((*&self->_flags & 2) == 0)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v3 = [(_UIFocusItemInfo *)self item];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54___UIFocusItemInfo_isFocusMovementFlippedHorizontally__block_invoke;
    v5[3] = &unk_279014898;
    v5[4] = &v6;
    _UIFocusEnvironmentEnumerateAncestorEnvironments(v3, v5);

    *(&self->_flags + 1) = *(v7 + 24);
    *&self->_flags |= 2u;
    _Block_object_dispose(&v6, 8);
  }

  return *(&self->_flags + 1);
}

- (_UIFocusRegion)focusedRegion
{
  if ((*&self->_flags & 4) == 0)
  {
    v3 = [(_UIFocusItemInfo *)self _createFocusedRegion];
    focusedRegion = self->_focusedRegion;
    self->_focusedRegion = v3;

    *&self->_flags |= 4u;
  }

  v5 = self->_focusedRegion;

  return v5;
}

- (id)_createFocusedRegion
{
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v20 = 0;
    goto LABEL_15;
  }

  v4 = [WeakRetained parentFocusEnvironment];
  if (!v4)
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusItemInfo _createFocusedRegion]"];
    v35 = MEMORY[0x277CCACA8];
    v36 = v3;
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v35 stringWithFormat:@"<%@: %p>", v38, v36];

    [v33 handleFailureInFunction:v34 file:@"_UIFocusItemInfo.m" lineNumber:177 description:{@"Focus item %@ does not provide a parentFocusEnvironment.", v39}];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = [v4 focusItemContainer];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 coordinateSpace];
      v8 = _UIFocusItemFrameInCoordinateSpace(v3, v7);
      _UIFocusRectWithMinimumSize(v8, v9, v10, v11);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v62.origin.x = v13;
      v62.origin.y = v15;
      v62.size.width = v17;
      v62.size.height = v19;
      if (!CGRectIsNull(v62))
      {
        v21 = [UIFocusSystem focusSystemForEnvironment:v3];
        if (!v21)
        {
          v54 = [MEMORY[0x277CCA890] currentHandler];
          v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusItemInfo _createFocusedRegion]"];
          v56 = MEMORY[0x277CCACA8];
          v57 = v3;
          v58 = objc_opt_class();
          v59 = NSStringFromClass(v58);
          v60 = [v56 stringWithFormat:@"<%@: %p>", v59, v57];

          [v54 handleFailureInFunction:v55 file:@"_UIFocusItemInfo.m" lineNumber:189 description:{@"Unable to find focus system for item %@", v60}];
        }

        v22 = [_UIFocusItemRegion alloc];
        v23 = [v6 coordinateSpace];
        v20 = [(_UIFocusItemRegion *)v22 initWithFrame:v23 coordinateSpace:v3 item:v21 focusSystem:v13, v15, v17, v19];

        if (v20)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v40 = [MEMORY[0x277CCA890] currentHandler];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusItemInfo _createFocusedRegion]"];
      v42 = MEMORY[0x277CCACA8];
      v43 = v3;
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = [v42 stringWithFormat:@"<%@: %p>", v45, v43];

      v47 = v4;
      if (v4)
      {
        v48 = MEMORY[0x277CCACA8];
        v49 = v47;
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        v52 = v49;
        v53 = [v48 stringWithFormat:@"<%@: %p>", v51, v49];
      }

      else
      {
        v52 = v47;
        v53 = @"(nil)";
      }

      [v40 handleFailureInFunction:v41 file:@"_UIFocusItemInfo.m" lineNumber:182 description:{@"Focus item %@ has a parent focus environment of %@ but this environment does not provide a container for focus items.", v46, v53}];
    }
  }

LABEL_13:
  v24 = [MEMORY[0x277CCA890] currentHandler];
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusItemInfo _createFocusedRegion]"];
  v26 = [v3 debugDescription];
  v27 = [v3 parentFocusEnvironment];
  v28 = [v27 debugDescription];
  v29 = [v3 parentFocusEnvironment];
  v30 = [v29 focusItemContainer];
  v31 = [v30 debugDescription];
  [v24 handleFailureInFunction:v25 file:@"_UIFocusItemInfo.m" lineNumber:196 description:{@"Failed to create FocusRegion for FocusItem: %@ with parentFocusEnvironment: %@  focusItemContainer: %@", v26, v28, v31}];

  v20 = 0;
LABEL_14:

LABEL_15:

  return v20;
}

- (CGRect)focusedRectInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusItemInfo *)self focusedRegion];
  v6 = v5;
  if (v4 && v5)
  {
    [_UIFocusRegionEvaluator frameForRegion:v5 inCoordinateSpace:v4];
    _UIFocusRectWithMinimumSize(v7, v8, v9, v10);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *MEMORY[0x277CBF398];
    v14 = *(MEMORY[0x277CBF398] + 8);
    v16 = *(MEMORY[0x277CBF398] + 16);
    v18 = *(MEMORY[0x277CBF398] + 24);
  }

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)invalidateFocusedRegion
{
  focusedRegion = self->_focusedRegion;
  self->_focusedRegion = 0;

  *&self->_flags &= ~4u;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v6 = [v3 stringWithFormat:@"<%@: %p item = %@, focusedRegion = %@>", v4, self, WeakRetained, self->_focusedRegion];;

  return v6;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = objc_loadWeakRetained(&self->_item);
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v5];
  }

  else
  {
    v9 = @"(nil)";
  }

  focusedRegion = self->_focusedRegion;
  if (focusedRegion)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = focusedRegion;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v11 stringWithFormat:@"<%@: %p>", v14, v12];
  }

  else
  {
    v15 = @"(nil)";
  }

  v16 = [v3 stringWithFormat:@"<%@: %p item = %@, focusedRegion = %@>", v4, self, v9, v15];;

  return v16;
}

- (UIFocusItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end