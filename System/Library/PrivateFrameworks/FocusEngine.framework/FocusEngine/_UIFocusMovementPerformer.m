@interface _UIFocusMovementPerformer
- (BOOL)_isMovementValidForFocusSequences:(id)a3;
- (BOOL)performFocusMovement:(id)a3;
- (CGRect)_minimumSearchAreaForContainer:(id)a3 inCoordinateSpace:(id)a4;
- (CGRect)_minimumSearchAreaForContainer:(id)a3 inCoordinateSpace:(id)a4 shouldLoadScrollableContainer:(BOOL)a5;
- (_UIFocusMovementPerformerDelegate)delegate;
- (id)__findFocusCandidateInEnvironment:(id)a3 container:(id)a4 forRequest:(id)a5 minimumSearchArea:(CGRect)a6 isLoadingScrollableContainer:(BOOL)a7;
- (id)_bestCandidateForLinearFocusMovement:(id)a3;
- (id)_bestCandidateForNonLinearFocusMovement:(id)a3;
- (id)_dummyFocusItemForFocusMovement:(id)a3 searchArea:(CGRect)a4 parent:(id)a5;
- (id)_environmentContainersToCheckForRequest:(id)a3;
- (id)_findFocusCandidateByExhaustivelySearchingEnvironment:(id)a3 scrollableContainer:(id)a4 forRequest:(id)a5;
- (id)_findFocusCandidateBySearchingLinearFocusMovementSequencesForRequest:(id)a3;
- (id)_nextLinearCandidateLoadingScrollableContentForRequest:(id)a3;
- (id)contextForFocusMovement:(id)a3;
@end

@implementation _UIFocusMovementPerformer

- (BOOL)performFocusMovement:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"_UIFocusMovementPerformer.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    v10 = 0;
    v9 = 0;
    goto LABEL_27;
  }

  v7 = v5;
  v8 = 0;
  v9 = 0;
  v10 = v7;
  do
  {
    v11 = [v10 focusSystem];
    if (([v7 overridesDeferredFocusUpdate] & 1) == 0 && objc_msgSend(v11, "_performDeferredFocusUpdateIfAvailable"))
    {
      goto LABEL_19;
    }

    v12 = [v10 movementInfo];
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = [(_UIFocusMovementPerformer *)self contextForFocusMovement:v10];
    if ([v13 _isValidInFocusSystem:v11])
    {
      v14 = [v11 _updateFocusImmediatelyWithContext:v13];
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = 0;
      if (!v9)
      {
LABEL_10:
        v9 = v13;
      }
    }

    if (v14)
    {

LABEL_19:
LABEL_20:
      v19 = 1;
      goto LABEL_28;
    }

    v8 = 1;
LABEL_13:
    v15 = [v10 fallbackRequest];

    v10 = v15;
  }

  while (v15);
  if (v8)
  {
    v16 = [(_UIFocusMovementPerformer *)self delegate];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 _handleFailedFocusMovementRequest:v7 withPerformer:self];

      if (v18)
      {
        v10 = 0;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v20 = [v7 focusSystem];
    v21 = [v20 _postsFocusUpdateNotifications];

    if (v21)
    {
      if (!v9)
      {
        v9 = [[UIFocusUpdateContext alloc] _initWithFocusMovementRequest:v7 nextFocusedItem:0];
      }

      v22 = [MEMORY[0x277CCAB98] defaultCenter];
      v23 = [v7 focusSystem];
      v27 = @"UIFocusUpdateContextKey";
      v28[0] = v9;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      [v22 postNotificationName:@"UIFocusMovementDidFailNotification" object:v23 userInfo:v24];
    }
  }

  v10 = 0;
LABEL_27:
  v19 = 0;
LABEL_28:

  return v19;
}

- (id)__findFocusCandidateInEnvironment:(id)a3 container:(id)a4 forRequest:(id)a5 minimumSearchArea:(CGRect)a6 isLoadingScrollableContainer:(BOOL)a7
{
  v7 = a7;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v14 focusSystem];
  v18 = [v17 focusItemContainer];
  v19 = [v18 coordinateSpace];

  v20 = _UIFocusRegionContainerFromEnvironmentAndContainer(v16, v15);

  v21 = [_UIFocusMap alloc];
  v22 = [v14 focusSystem];
  v23 = [v14 searchInfo];
  v24 = [(_UIFocusMap *)v21 initWithFocusSystem:v22 rootContainer:v20 coordinateSpace:v19 searchInfo:v23 ignoresRootContainerClippingRect:v7];

  [(_UIFocusMap *)v24 setMinimumSearchArea:x, y, width, height];
  [(_UIFocusMap *)v24 _beginTrackingSearches];
  v25 = [(_UIFocusMap *)v24 _nextFocusedItemForFocusMovementRequest:v14];
  v26 = [(_UIFocusMap *)v24 _stopTrackingSearches];
  v27 = [[UIFocusUpdateContext alloc] _initWithFocusMovementRequest:v14 nextFocusedItem:v25];

  [v27 _setFocusMapSearchInfo:v26];
  v28 = [(_UIFocusMap *)v24 focusGroupMap];
  [v27 _updateWithFocusGroupMap:v28];

  return v27;
}

- (id)_findFocusCandidateByExhaustivelySearchingEnvironment:(id)a3 scrollableContainer:(id)a4 forRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 focusSystem];
  v12 = [v10 focusedItemInfo];
  v13 = [v10 movementInfo];
  v14 = [v11 focusItemContainer];
  v15 = [v14 coordinateSpace];
  [v15 bounds];
  v64 = v17;
  v65 = v16;
  v62 = v19;
  v63 = v18;

  v20 = [v11 focusItemContainer];
  v21 = [v20 coordinateSpace];

  v61 = v12;
  [v12 focusedRectInCoordinateSpace:v21];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v60 = v21;
  [(_UIFocusMovementPerformer *)self _minimumSearchAreaForContainer:v9 inCoordinateSpace:v21];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = _UIFocusShiftAndExpandRectAlongFocusMovement(v13, v23, v25, v27, v29);
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = 0;
  v46 = -5;
  while ((_UIFocusRectSmartIntersectsRect(v38, v40, v42, v44, v31, v33, v35, v37) & 1) != 0 || !v45)
  {
    v47 = [v13 _linearHeading];
    v48 = v38;
    v49 = v40;
    v50 = v42;
    v51 = v44;
    if ((v47 & 0x300) == 0)
    {
      v67.origin.y = v64;
      v67.origin.x = v65;
      v67.size.height = v62;
      v67.size.width = v63;
      v68.origin.x = v38;
      v68.origin.y = v40;
      v68.size.width = v42;
      v68.size.height = v44;
      *&v48 = CGRectUnion(v67, v68);
    }

    v52 = [(_UIFocusMovementPerformer *)self __findFocusCandidateInEnvironment:v8 container:v9 forRequest:v10 minimumSearchArea:1 isLoadingScrollableContainer:v48, v49, v50, v51];

    if (([v52 _isValidInFocusSystem:v11] & 1) == 0)
    {
      v53 = [v52 _focusMapSearchInfo];
      v54 = [v53 didFindFocusBlockingBoundary];

      if ((v54 & 1) == 0)
      {
        v38 = _UIFocusShiftAndExpandRectAlongFocusMovement(v13, v38, v40, v42, v44);
        v40 = v55;
        v42 = v56;
        v44 = v57;
        v45 = v52;
        if (!__CFADD__(v46++, 1))
        {
          continue;
        }
      }
    }

    goto LABEL_12;
  }

  v52 = v45;
LABEL_12:

  return v52;
}

- (id)_findFocusCandidateBySearchingLinearFocusMovementSequencesForRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 focusSystem];
  v5 = [v3 focusedItemInfo];
  v6 = [v5 item];

  v7 = [v3 movementInfo];
  v8 = [v7 heading];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v9 = [v3 focusedItemInfo];
  v10 = [v9 item];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98___UIFocusMovementPerformer__findFocusCandidateBySearchingLinearFocusMovementSequencesForRequest___block_invoke;
  v16[3] = &unk_279014B60;
  v21 = v8;
  v11 = v6;
  v17 = v11;
  v12 = v4;
  v18 = v12;
  v13 = v3;
  v19 = v13;
  v20 = &v22;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v10, v16);

  v14 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v14;
}

- (id)_bestCandidateForNonLinearFocusMovement:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 focusSystem];
  v6 = [v4 focusedItemInfo];
  v48 = v5;
  v7 = [v5 focusItemContainer];
  v8 = [v7 coordinateSpace];

  [(_UIFocusMovementPerformer *)self _environmentContainersToCheckForRequest:v4];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = v52 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v49 objects:v53 count:16];
  obj = v9;
  if (!v10)
  {

LABEL_23:
    v26 = [MEMORY[0x277CCA890] currentHandler];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusMovementPerformer _bestCandidateForNonLinearFocusMovement:]"];
    [v26 handleFailureInFunction:v27 file:@"_UIFocusMovementPerformer.m" lineNumber:339 description:{@"Non-linear focus movement should always produce a context, even if the focus movement failed."}];

    v12 = 0;
    goto LABEL_24;
  }

  v11 = v10;
  v47 = v8;
  v45 = v6;
  v12 = 0;
  v13 = *v50;
  do
  {
    v14 = 0;
    do
    {
      if (*v50 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v49 + 1) + 8 * v14);
      v16 = [v15 owningEnvironment];
      v17 = [v15 itemContainer];
      if ([v15 isScrollableContainer] && (objc_msgSend(v4, "movementInfo"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "_shouldLoadScrollableContainer"), v18, v19))
      {
        v20 = [(_UIFocusMovementPerformer *)self _findFocusCandidateByExhaustivelySearchingEnvironment:v16 scrollableContainer:v17 forRequest:v4];

        if (v20)
        {
          if ([v20 _isValidInFocusSystem:v48])
          {
            goto LABEL_19;
          }

          v21 = [v20 _focusMapSearchInfo];
          v22 = [v21 didFindFocusBlockingBoundary];

          v12 = v20;
          if (v22)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        [(_UIFocusMovementPerformer *)self _minimumSearchAreaForContainer:v17 inCoordinateSpace:v47];
        v20 = [(_UIFocusMovementPerformer *)self _findFocusCandidateWithoutLoadingScrollableContentInEnvironment:v16 container:v17 forRequest:v4 minimumSearchArea:?];

        if (([v20 _isValidInFocusSystem:v48] & 1) != 0 || (objc_msgSend(v20, "_focusMapSearchInfo"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "didFindFocusBlockingBoundary"), v23, v12 = v20, v24))
        {
LABEL_19:

          v12 = v20;
          goto LABEL_20;
        }
      }

      ++v14;
    }

    while (v11 != v14);
    v25 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    v11 = v25;
  }

  while (v25);
LABEL_20:

  v6 = v45;
  v8 = v47;
  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_24:
  v28 = [v12 _destinationItemInfo];
  v29 = _UIFocusEngineCommonEnvironmentScrollableContainerForItems(v6, v28);
  v30 = v29;
  if (v28 && !v29)
  {
    v30 = _UIFocusEngineFirstScrollableContainerTupleThatScrollsForItem(v28);
  }

  [v12 _setCommonEnvironmentScrollableContainer:v30];
  v31 = [v28 focusedRegion];
  if (v31)
  {
    [_UIFocusRegionEvaluator frameForRegion:v31 inCoordinateSpace:v8];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [v8 bounds];
    [v12 _setDestinationViewDistanceOffscreen:{_UIFocusDistanceBetweenRects(v40, v41, v42, v43, v33, v35, v37, v39)}];
  }

  return v12;
}

- (id)_bestCandidateForLinearFocusMovement:(id)a3
{
  v4 = a3;
  v5 = [v4 focusSystem];
  v6 = [v4 focusedItemInfo];
  v7 = [v5 _focusMovementCache];
  v8 = [v7 nextItemForRequest:v4];

  if (!v8 || (v9 = [[UIFocusUpdateContext alloc] _initWithFocusMovementRequest:v4 nextFocusedItem:v8]) == 0)
  {
    v9 = [(_UIFocusMovementPerformer *)self _findFocusCandidateBySearchingLinearFocusMovementSequencesForRequest:v4];
    if (!v9)
    {
      v9 = [(_UIFocusMovementPerformer *)self _nextLinearCandidateLoadingScrollableContentForRequest:v4];
    }
  }

  v10 = v9;
  v11 = [v9 _destinationItemInfo];
  v12 = _UIFocusEngineCommonEnvironmentScrollableContainerForItems(v6, v11);
  v13 = v12;
  if (v11 && !v12)
  {
    v13 = _UIFocusEngineFirstScrollableContainerTupleThatScrollsForItem(v11);
  }

  [v10 _setCommonEnvironmentScrollableContainer:v13];

  return v10;
}

- (id)contextForFocusMovement:(id)a3
{
  v4 = a3;
  v5 = [v4 movementInfo];
  v6 = [v5 heading];

  if ((v6 & 0x330) != 0)
  {
    [(_UIFocusMovementPerformer *)self _bestCandidateForLinearFocusMovement:v4];
  }

  else
  {
    [(_UIFocusMovementPerformer *)self _bestCandidateForNonLinearFocusMovement:v4];
  }
  v7 = ;

  return v7;
}

- (id)_environmentContainersToCheckForRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 movementInfo];
  v5 = [v3 focusedItemInfo];
  v6 = [v3 focusSystem];
  if (([v4 heading] & 0x300) != 0)
  {
    v7 = [v6 behavior];
    v8 = [v7 treatFirstAndLastHeadingsAsGlobal];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 heading];
  v10 = objc_opt_new();
  v11 = [v5 item];
  v12 = [v3 searchInfo];
  v13 = [v12 forceFocusToLeaveContainer];

  if (v11)
  {
    v14 = v13 | v8;
    while (1)
    {
      v15 = [v11 focusItemContainer];
      if (v15)
      {
        break;
      }

LABEL_17:
      v18 = [v11 parentFocusEnvironment];

      v11 = v18;
      if (!v18)
      {
        goto LABEL_18;
      }
    }

    v16 = [_UIFocusEnvironmentContainerTuple tupleWithOwningEnvironment:v11 itemContainer:v15];
    if (v14 & 1) != 0 || (_UIFocusEnvironmentAllowsFocusToLeaveViaHeading(v11, v9))
    {
      v17 = [v5 item];
      if (v11 == v17 || !_UIFocusEnvironmentPrefersFocusContainment(v11))
      {

        goto LABEL_16;
      }

      if ((v14 & 1) == 0)
      {
        [v10 addObject:v16];
        v14 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      [v10 addObject:v16];
    }

    v14 = 1;
    goto LABEL_16;
  }

LABEL_18:
  v19 = [v10 lastObject];
  v20 = [v19 owningEnvironment];

  if (v20 != v25)
  {
    v21 = [v25 focusItemContainer];
    if (v21)
    {
      v22 = [_UIFocusEnvironmentContainerTuple tupleWithOwningEnvironment:v25 itemContainer:v21];
      [v10 addObject:v22];
    }

    else
    {
      v22 = [MEMORY[0x277CCA890] currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusMovementPerformer _environmentContainersToCheckForRequest:]"];
      [v22 handleFailureInFunction:v23 file:@"_UIFocusMovementPerformer.m" lineNumber:454 description:@"FocusSystem does not have a focusItemContainer."];
    }
  }

  return v10;
}

- (id)_dummyFocusItemForFocusMovement:(id)a3 searchArea:(CGRect)a4 parent:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = a5;
  if (!v13)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"_UIFocusMovementPerformer.m" lineNumber:463 description:{@"Invalid parameter not satisfying: %@", @"parent != nil"}];
  }

  if (([v12 heading] & 0x300) != 0)
  {
    v14 = [v13 focusItemContainer];
    v15 = [v14 coordinateSpace];
    [v15 bounds];
    MaxX = v16;
    MaxY = v18;
    v21 = v20;
    v23 = v22;

    if (([v12 _shouldLoadScrollableContainer] & 1) == 0)
    {
      MaxX = *MEMORY[0x277CBF3A0];
      MaxY = *(MEMORY[0x277CBF3A0] + 8);
      v21 = *(MEMORY[0x277CBF3A0] + 16);
      v23 = *(MEMORY[0x277CBF3A0] + 24);
    }

    if (([v12 heading] & 0x100) != 0)
    {
      MaxX = x - v21;
      MaxY = y - v23;
    }

    else if (([v12 heading] & 0x200) != 0)
    {
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      MaxX = CGRectGetMaxX(v28);
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      MaxY = CGRectGetMaxY(v29);
    }

    v24 = objc_opt_new();
    [v24 setFrame:{MaxX, MaxY, v21, v23}];
    [v24 setParentFocusEnvironment:v13];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_nextLinearCandidateLoadingScrollableContentForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 focusSystem];
  v93 = [v4 focusedItemInfo];
  v6 = [v4 movementInfo];
  v7 = [(_UIFocusMovementPerformer *)self _environmentContainersToCheckForRequest:v4];
  if ([v7 count])
  {
    v8 = 0;
    LOBYTE(v100) = 1;
    v94 = v5;
    v95 = v4;
    v96 = v7;
    v97 = self;
    do
    {
      v9 = [v7 objectAtIndexedSubscript:v8];
      v101 = [v9 owningEnvironment];
      v10 = [v9 itemContainer];
      v11 = [v5 focusItemContainer];
      v12 = [v11 coordinateSpace];
      v102 = v10;
      -[_UIFocusMovementPerformer _minimumSearchAreaForContainer:inCoordinateSpace:shouldLoadScrollableContainer:](self, "_minimumSearchAreaForContainer:inCoordinateSpace:shouldLoadScrollableContainer:", v10, v12, [v6 _shouldLoadScrollableContainer]);
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v21 = [(_UIFocusMovementPerformer *)self _dummyFocusItemForFocusMovement:v6 searchArea:v5 parent:v14, v16, v18, v20];
      v22 = [_UIFocusMovementRequest alloc];
      v23 = [v4 focusSystem];
      v24 = [(_UIFocusMovementRequest *)v22 initWithFocusSystem:v23];

      if (v21)
      {
        v25 = [_UIFocusItemInfo infoWithItem:v21];
        [(_UIFocusMovementRequest *)v24 setFocusedItemInfo:v25];
      }

      else
      {
        [(_UIFocusMovementRequest *)v24 setFocusedItemInfo:v93];
      }

      v26 = [v4 searchInfo];
      [(_UIFocusMovementRequest *)v24 setSearchInfo:v26];

      v98 = v9;
      v99 = v21;
      if ([v9 isScrollableContainer] && _UIFocusEngineScrollableContainerCanScroll(v102))
      {
        rect = v102;
        v27 = [(_UIFocusMovementRequest *)v24 focusedItemInfo];
        v28 = [v27 item];

        v29 = [v28 parentFocusEnvironment];
        v30 = [v29 focusItemContainer];

        v92 = v30;
        v90 = v16;
        v91 = v14;
        v88 = v20;
        v89 = v18;
        v85 = v28;
        if (!v30 || v21 == v28)
        {
          v31 = v9;
          [v28 frame];
          v44 = v62;
          v46 = v63;
          v48 = v64;
          v50 = v65;
          v41 = rect;
        }

        else
        {
          v31 = v9;
          v32 = [v30 coordinateSpace];
          [v28 frame];
          v34 = v33;
          v36 = v35;
          v38 = v37;
          v40 = v39;
          v41 = rect;
          v42 = [rect coordinateSpace];
          [v32 convertRect:v42 toCoordinateSpace:{v34, v36, v38, v40}];
          v44 = v43;
          v46 = v45;
          v48 = v47;
          v50 = v49;
        }

        v66 = _UIFocusItemScrollableContainerContentBounds(v41);
        v68 = v67;
        v81 = v69;
        v82 = v67;
        v71 = v70;
        v83 = v70;
        v103.origin.x = v44;
        v103.origin.y = v46;
        v103.size.width = v48;
        v103.size.height = v50;
        v84 = v44;
        MinX = CGRectGetMinX(v103);
        v104.origin.x = v66;
        v104.origin.y = v68;
        v104.size.width = v81;
        v104.size.height = v71;
        if (MinX <= CGRectGetMinX(v104))
        {
          v73 = 11;
        }

        else
        {
          v73 = 15;
        }

        v105.origin.x = v44;
        v105.origin.y = v46;
        v105.size.width = v48;
        v105.size.height = v50;
        recta = v50;
        MaxX = CGRectGetMaxX(v105);
        v106.origin.x = v66;
        v106.origin.y = v82;
        v106.size.width = v81;
        v106.size.height = v83;
        if (MaxX >= CGRectGetMaxX(v106))
        {
          v73 &= 7u;
        }

        v107.origin.x = v84;
        v107.origin.y = v46;
        v107.size.width = v48;
        v107.size.height = v50;
        MinY = CGRectGetMinY(v107);
        v108.origin.x = v66;
        v108.origin.y = v82;
        v108.size.width = v81;
        v108.size.height = v83;
        if (MinY <= CGRectGetMinY(v108))
        {
          v73 &= 0xEu;
        }

        v109.origin.x = v84;
        v109.origin.y = v46;
        v109.size.width = v48;
        v109.size.height = recta;
        MaxY = CGRectGetMaxY(v109);
        v110.origin.x = v66;
        v110.origin.y = v82;
        v110.size.width = v81;
        v110.size.height = v83;
        if (MaxY >= CGRectGetMaxY(v110))
        {
          v52 = v73 & 0xFFFFFFFFFFFFFFFDLL;
        }

        else
        {
          v52 = v73;
        }

        v7 = v96;
        if (v100)
        {
          v77 = [v4 focusSystem];
          v100 = [v77 _isScrollingScrollableContainer:v41 targetContentOffset:0] ^ 1;
        }

        else
        {
          LOBYTE(v100) = 0;
        }

        v16 = v90;
        v14 = v91;
        v20 = v88;
        v18 = v89;

        if (!v52)
        {
          self = v97;
          goto LABEL_46;
        }

        v51 = 1;
      }

      else
      {
        v51 = 0;
        v52 = 15;
      }

      v53 = -[_UIFocusMovementInfo initWithHeading:linearHeading:isInitial:shouldLoadScrollableContainer:looping:groupFilter:inputType:]([_UIFocusMovementInfo alloc], "initWithHeading:linearHeading:isInitial:shouldLoadScrollableContainer:looping:groupFilter:inputType:", v52, [v6 heading], objc_msgSend(v6, "_isInitialMovement"), 1, objc_msgSend(v6, "_isLooping"), objc_msgSend(v6, "_groupFilter"), objc_msgSend(v6, "_inputType"));
      [(_UIFocusMovementRequest *)v24 setMovementInfo:v53];

      if (v51 && [v6 _shouldLoadScrollableContainer])
      {
        self = v97;
        v54 = [(_UIFocusMovementPerformer *)v97 _findFocusCandidateByExhaustivelySearchingEnvironment:v101 scrollableContainer:v102 forRequest:v24];
      }

      else
      {
        self = v97;
        v54 = [(_UIFocusMovementPerformer *)v97 _findFocusCandidateWithoutLoadingScrollableContentInEnvironment:v101 container:v102 forRequest:v24 minimumSearchArea:v14, v16, v18, v20];
      }

      v55 = v54;
      v4 = v95;
      v7 = v96;
      v56 = [v95 movementInfo];
      [v55 _restoreRestrictedFocusMovementWithMovement:v56];

      v5 = v94;
      if ([v55 _isValidInFocusSystem:v94] && -[_UIFocusMovementPerformer _isMovementValidForFocusSequences:](self, "_isMovementValidForFocusSequences:", v55) || (objc_msgSend(0, "_focusMapSearchInfo"), v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_msgSend(v57, "didFindFocusBlockingBoundary"), v57, (v58 & 1) != 0))
      {

        goto LABEL_49;
      }

      if (v100)
      {
        if (v8 == [v96 count] - 1)
        {
          v59 = [v55 previouslyFocusedItem];
          if (v59 && (v60 = v59, [v55 nextFocusedItem], v61 = objc_claimAutoreleasedReturnValue(), v61, v60, !v61))
          {
            v78 = [_UIFocusItemInfo infoWithItem:0];

            LOBYTE(v100) = 0;
            --v8;
            v93 = v78;
          }

          else
          {
            LOBYTE(v100) = 0;
          }

          self = v97;
        }

        else
        {
          LOBYTE(v100) = 1;
        }
      }

      else
      {
        LOBYTE(v100) = 0;
      }

      v31 = v98;
LABEL_46:

      ++v8;
    }

    while (v8 < [v7 count]);
  }

  v55 = 0;
LABEL_49:
  v79 = v55;

  return v55;
}

- (BOOL)_isMovementValidForFocusSequences:(id)a3
{
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v4 = [v3 focusHeading];
  v5 = [v3 nextFocusedItem];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63___UIFocusMovementPerformer__isMovementValidForFocusSequences___block_invoke;
  v8[3] = &unk_279014BB0;
  v6 = v3;
  v9 = v6;
  v10 = &v12;
  v11 = v4;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v5, v8);

  LOBYTE(v5) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v5;
}

- (CGRect)_minimumSearchAreaForContainer:(id)a3 inCoordinateSpace:(id)a4
{
  [(_UIFocusMovementPerformer *)self _minimumSearchAreaForContainer:a3 inCoordinateSpace:a4 shouldLoadScrollableContainer:1];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_minimumSearchAreaForContainer:(id)a3 inCoordinateSpace:(id)a4 shouldLoadScrollableContainer:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 coordinateSpace];
  v10 = [v7 coordinateSpace];
  [v10 bounds];
  [v9 convertRect:v8 toCoordinateSpace:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  x = v12 + -1.0;
  width = v16 + 2.0;
  y = v14 + -1.0;
  height = v18 + 2.0;
  if (v5 && _UIFocusItemContainerIsScrollableContainer(v7))
  {
    v23 = v7;
    [v23 contentSize];
    v25 = v24;
    v27 = v26;
    v28 = *MEMORY[0x277CBF348];
    v29 = *(MEMORY[0x277CBF348] + 8);
    v30 = [v23 coordinateSpace];

    [v8 convertRect:v30 fromCoordinateSpace:{v28, v29, v25, v27}];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v46.origin.x = v32;
    v46.origin.y = v34;
    v46.size.width = v36;
    v46.size.height = v38;
    v44 = CGRectUnion(v43, v46);
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
  }

  v39 = x;
  v40 = y;
  v41 = width;
  v42 = height;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (_UIFocusMovementPerformerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end