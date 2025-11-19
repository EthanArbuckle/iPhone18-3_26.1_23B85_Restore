@interface UIFocusUpdateContext
+ (_UIDebugIssueReportFormatter)_defaultValidationReportFormatter;
- (BOOL)_isInitialMovement;
- (BOOL)_isValidInFocusSystem:(id)a3;
- (BOOL)_validate;
- (CGVector)_focusVelocity;
- (NSArray)linearSortedFocusItems;
- (NSString)_nextFocusedGroupIdentifier;
- (NSString)_previouslyFocusedGroupIdentifier;
- (UIFocusEnvironment)_commonAncestorEnvironment;
- (UIFocusEnvironment)_initialDestinationEnvironment;
- (UIFocusGuide)_focusedGuide;
- (UIFocusHeading)focusHeading;
- (UIFocusUpdateContext)init;
- (_UIDynamicFocusGroupMap)_focusGroupMap;
- (_UIFocusGuideImpl)_focusedGuideImpl;
- (_UIFocusItemInfo)_destinationItemInfo;
- (id)_initWithContext:(id)a3;
- (id)_initWithFocusMovementRequest:(id)a3 nextFocusedItem:(id)a4;
- (id)_initWithFocusUpdateRequest:(id)a3;
- (id)description;
- (id)nextFocusedItem;
- (id)previouslyFocusedItem;
- (int64_t)_groupFilter;
- (void)_cacheFocusBehavior;
- (void)_didUpdateFocus;
- (void)_setFocusMapSearchInfo:(id)a3;
- (void)_setFocusedGuideImpl:(id)a3;
- (void)_setInitialDestinationEnvironment:(id)a3;
- (void)_setSourceItemInfo:(id)a3;
- (void)_updateDestinationItemIfNeeded;
- (void)_updateWithFocusGroupMap:(id)a3;
- (void)_willUpdateFocusFromFocusedItem:(id)a3;
@end

@implementation UIFocusUpdateContext

- (UIFocusUpdateContext)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"init is unavailable on %@", v6}];

  return [(UIFocusUpdateContext *)self _initWithFocusUpdateRequest:0];
}

- (id)_initWithFocusUpdateRequest:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UIFocusUpdateContext.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  v17.receiver = self;
  v17.super_class = UIFocusUpdateContext;
  v7 = [(UIFocusUpdateContext *)&v17 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_request, a3);
    v9 = [v6 focusSystem];
    v10 = [v9 focusedItem];
    v11 = [_UIFocusItemInfo infoWithItem:v10];
    sourceItemInfo = v8->_sourceItemInfo;
    v8->_sourceItemInfo = v11;

    if ([v6 isFocusRemovalRequest])
    {
      objc_storeWeak(&v8->_initialDestinationEnvironment, 0);
    }

    else
    {
      v13 = [v6 destinationEnvironment];
      if (v13)
      {
        objc_storeWeak(&v8->_initialDestinationEnvironment, v13);
      }

      else
      {
        v14 = [v6 environment];
        objc_storeWeak(&v8->_initialDestinationEnvironment, v14);
      }
    }

    *&v8->_flags |= 4u;
    [v6 cacheCurrentFocusSystem];
    [(UIFocusUpdateContext *)v8 _cacheFocusBehavior];
  }

  return v8;
}

- (id)_initWithFocusMovementRequest:(id)a3 nextFocusedItem:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UIFocusUpdateContext.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  v19.receiver = self;
  v19.super_class = UIFocusUpdateContext;
  v10 = [(UIFocusUpdateContext *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_request, a3);
    v12 = [v8 movementInfo];
    focusMovement = v11->_focusMovement;
    v11->_focusMovement = v12;

    v14 = [v8 focusedItemInfo];
    sourceItemInfo = v11->_sourceItemInfo;
    v11->_sourceItemInfo = v14;

    objc_storeWeak(&v11->_initialDestinationEnvironment, v9);
    *&v11->_flags |= 4u;
    v16 = [v8 movementInfo];
    *&v11->_flags = *&v11->_flags & 0xF7 | (8 * (([v16 heading] & 0x300) != 0));

    [(UIFocusUpdateContext *)v11 _cacheFocusBehavior];
  }

  return v11;
}

- (id)_initWithContext:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = UIFocusUpdateContext;
  v5 = [(UIFocusUpdateContext *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_request, v4[9]);
    objc_storeStrong(&v6->_sourceItemInfo, v4[10]);
    objc_storeStrong(&v6->_destinationItemInfo, v4[3]);
    objc_storeStrong(&v6->_focusMovement, v4[11]);
    WeakRetained = objc_loadWeakRetained(v4 + 13);
    objc_storeWeak(&v6->_initialDestinationEnvironment, WeakRetained);

    v8 = objc_loadWeakRetained(v4 + 2);
    objc_storeWeak(&v6->_focusedGuideImpl, v8);

    v6->_focusRedirectedByGuide = *(v4 + 13);
    v9 = *&v6->_flags & 0xFE | v4[1] & 1;
    *&v6->_flags = v9;
    v10 = v9 & 0xFFFFFFFD | (2 * ((*(v4 + 8) >> 1) & 1));
    *&v6->_flags = v10;
    v11 = v10 & 0xFFFFFFFB | (4 * ((*(v4 + 8) >> 2) & 1));
    *&v6->_flags = v11;
    *&v6->_flags = v11 & 0xF7 | v4[1] & 8;
    v12 = objc_loadWeakRetained(v4 + 4);
    objc_storeWeak(&v6->_commonAncestorEnvironment, v12);

    *&v6->_flags = *&v6->_flags & 0xEF | v4[1] & 0x10;
    v13 = [v4 focusBehavior];
    focusBehavior = v6->_focusBehavior;
    v6->_focusBehavior = v13;
  }

  return v6;
}

- (void)_cacheFocusBehavior
{
  v3 = [(UIFocusUpdateContext *)self _request];
  v6 = [v3 focusSystem];

  v4 = [v6 behavior];
  focusBehavior = self->_focusBehavior;
  self->_focusBehavior = v4;
}

- (BOOL)_isValidInFocusSystem:(id)a3
{
  request = self->_request;
  v5 = a3;
  v6 = [(_UIFocusUpdateRequesting *)request focusSystem];

  if (v6 != v5)
  {
    return 0;
  }

  flags = self->_flags;
  if ((flags & 2) == 0)
  {
    flags = *&self->_flags & 0xFC | [(UIFocusUpdateContext *)self _validate]| 2;
    *&self->_flags = flags;
  }

  return flags & 1;
}

- (BOOL)_validate
{
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 1;
  v3 = [(UIFocusUpdateContext *)self previouslyFocusedItem];
  v4 = [(UIFocusUpdateContext *)self nextFocusedItem];
  v5 = [(UIFocusUpdateContext *)self _request];
  v6 = self->_validationReport;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __33__UIFocusUpdateContext__validate__block_invoke;
  v40[3] = &unk_279014AE8;
  v42 = &v43;
  v7 = v6;
  v41 = v7;
  v8 = MEMORY[0x24C24D980](v40);
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  if ([v5 allowsFocusingCurrentItem])
  {
LABEL_3:
    v9 = v44 + 3;
    goto LABEL_4;
  }

  flags = self->_flags;
  *(v44 + 24) = (flags & 8) != 0;
  if ((flags & 8) != 0)
  {
    goto LABEL_10;
  }

  v11 = [(UIFocusUpdateContext *)self _focusRedirectedByGuide];
  v9 = v44 + 3;
  if (!v11)
  {
    if (*v9)
    {
      goto LABEL_10;
    }

    v12 = [(UIFocusUpdateContext *)self _focusMovement];
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = [(UIFocusUpdateContext *)self _initialDestinationEnvironment];

    if (v3 == v13)
    {
      goto LABEL_10;
    }

    goto LABEL_3;
  }

LABEL_4:
  *v9 = 1;
LABEL_10:
  if (v8[2](v8))
  {
    v14 = [v5 requiresNextFocusedItem];
    v15 = v4 ? 0 : v14;
    if (v15 == 1)
    {
      *(v44 + 24) = 0;
      if (v7)
      {
        if (v3)
        {
          v16 = [_UIDebugIssue issueWithDescription:@"There is no next focused item, but updating focus to nil is not allowed."];
          [(_UIDebugIssueReport *)v7 addIssue:v16];
        }
      }
    }
  }

  v17 = v8[2](v8);
  if (v4)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    v19 = [(_UIFocusUpdateRequesting *)self->_request focusSystem];
    v20 = [UIFocusSystem focusSystemForEnvironment:v4];

    if (v19 != v20)
    {
      *(v44 + 24) = 0;
    }
  }

  if (v8[2](v8) && [v5 requiresEnvironmentValidation])
  {
    if (v7)
    {
      v21 = [_UIDebugIssue issueWithDescription:@"The following ancestor environments of the previously focused item prevented the focus update from occurring:"];
      v22 = [_UIDebugIssue issueWithDescription:@"The following ancestor environments of the next focused item prevented the focus update from occurring:"];
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v23 = [v5 focusSystem];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __33__UIFocusUpdateContext__validate__block_invoke_2;
    v32[3] = &unk_279014B10;
    v33 = v3;
    v39 = &v43;
    v34 = v4;
    v35 = self;
    v24 = v21;
    v36 = v24;
    v38 = v8;
    v25 = v22;
    v37 = v25;
    [v23 _performWithoutFocusUpdates:v32];

    if (v7)
    {
      v26 = [v24 subissues];
      v27 = [v26 count];

      if (v27)
      {
        [(_UIDebugIssueReport *)v7 addIssue:v24];
      }

      v28 = [v25 subissues];
      v29 = [v28 count];

      if (v29)
      {
        [(_UIDebugIssueReport *)v7 addIssue:v25];
      }
    }
  }

  v30 = *(v44 + 24);

  _Block_object_dispose(&v43, 8);
  return v30;
}

void __33__UIFocusUpdateContext__validate__block_invoke_2(uint64_t a1)
{
  v23 = _UIFocusEnvironmentFirstCommonAncestor(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = v3;
      *(*(*(a1 + 80) + 8) + 24) = _UIFocusEnvironmentShouldUpdateFocus(v3, *(a1 + 48));
      if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0 && *(a1 + 56))
      {
        v5 = MEMORY[0x277CCACA8];
        v6 = v3;
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [v5 stringWithFormat:@"<%@: %p>", v8, v6];

        v10 = [_UIDebugIssue issueWithDescription:v9];

        [v10 setPrefix:&stru_285EB2008];
        [*(a1 + 56) addIssue:v10];
      }

      v3 = _UIFocusEnvironmentParentEnvironment(v4);

      if ((*(*(a1 + 72) + 16))())
      {
        v11 = v3 == 0;
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
  }

  if ((*(*(a1 + 72) + 16))())
  {
    v12 = *(a1 + 40);
    if (v12 != *(a1 + 32))
    {
      v13 = v12;
      do
      {
        v14 = v13;
        *(*(*(a1 + 80) + 8) + 24) = _UIFocusEnvironmentShouldUpdateFocus(v13, *(a1 + 48));
        if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0 && *(a1 + 64))
        {
          v15 = v13;
          if (v15)
          {
            v16 = MEMORY[0x277CCACA8];
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v19 = [v16 stringWithFormat:@"<%@: %p>", v18, v15];
          }

          else
          {
            v19 = @"(nil)";
          }

          v20 = [_UIDebugIssue issueWithDescription:v19];

          [v20 setPrefix:&stru_285EB2008];
          [*(a1 + 64) addIssue:v20];
        }

        v13 = _UIFocusEnvironmentParentEnvironment(v14);

        if ((*(*(a1 + 72) + 16))())
        {
          v21 = v13 == 0;
        }

        else
        {
          v21 = 1;
        }
      }

      while (!v21 && v13 != v23);
    }
  }
}

- (id)previouslyFocusedItem
{
  v2 = [(UIFocusUpdateContext *)self _sourceItemInfo];
  v3 = [v2 item];

  return v3;
}

- (id)nextFocusedItem
{
  v2 = [(UIFocusUpdateContext *)self _destinationItemInfo];
  v3 = [v2 item];

  return v3;
}

- (void)_setSourceItemInfo:(id)a3
{
  if (self->_sourceItemInfo != a3)
  {
    v4 = [a3 copy];
    sourceItemInfo = self->_sourceItemInfo;
    self->_sourceItemInfo = v4;

    *&self->_flags &= ~2u;
  }
}

- (_UIFocusItemInfo)_destinationItemInfo
{
  [(UIFocusUpdateContext *)self _updateDestinationItemIfNeeded];
  destinationItemInfo = self->_destinationItemInfo;

  return destinationItemInfo;
}

- (NSArray)linearSortedFocusItems
{
  v2 = [(UIFocusUpdateContext *)self _focusMapSearchInfo];
  v3 = [v2 linearSortedFocusItems];

  return v3;
}

- (void)_setInitialDestinationEnvironment:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_initialDestinationEnvironment);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_initialDestinationEnvironment, obj);
    v5 = obj;
    *&self->_flags |= 4u;
  }
}

- (void)_updateDestinationItemIfNeeded
{
  if ((*&self->_flags & 4) != 0)
  {
    *&self->_flags &= ~4u;
    WeakRetained = objc_loadWeakRetained(&self->_initialDestinationEnvironment);
    if (WeakRetained)
    {
      v4 = objc_alloc_init(_UIDeepestPreferredEnvironmentSearch);
      v5 = [(UIFocusUpdateContext *)self _request];
      -[_UIDeepestPreferredEnvironmentSearch setAllowsOverridingPreferedFocusEnvironments:](v4, "setAllowsOverridingPreferedFocusEnvironments:", [v5 allowsOverridingPreferedFocusEnvironments]);

      if (self->_preferredFocusReport)
      {
        v6 = [MEMORY[0x277D817A0] rootNode];
        [(_UIDeepestPreferredEnvironmentSearch *)v4 setDebugLog:v6];
      }

      v7 = [(UIFocusUpdateContext *)self _request];
      v8 = [(_UIDeepestPreferredEnvironmentSearch *)v4 deepestPreferredFocusableItemForEnvironment:WeakRetained withRequest:v7];

      v9 = [_UIFocusItemInfo infoWithItem:v8];
      destinationItemInfo = self->_destinationItemInfo;
      self->_destinationItemInfo = v9;

      preferredFocusReport = self->_preferredFocusReport;
      if (preferredFocusReport)
      {
        v12 = [(_UIDeepestPreferredEnvironmentSearch *)v4 debugLog];
        v13 = [v12 description];
        [(_UIDebugLogReport *)preferredFocusReport addMessage:v13];
      }
    }

    else
    {
      v14 = [_UIFocusItemInfo infoWithItem:0];
      v4 = self->_destinationItemInfo;
      self->_destinationItemInfo = v14;
    }
  }
}

- (UIFocusEnvironment)_commonAncestorEnvironment
{
  if ((*&self->_flags & 0x10) == 0)
  {
    v3 = [(UIFocusUpdateContext *)self previouslyFocusedItem];
    v4 = [(UIFocusUpdateContext *)self nextFocusedItem];
    v5 = _UIFocusEnvironmentFirstCommonAncestor(v3, v4);
    objc_storeWeak(&self->_commonAncestorEnvironment, v5);

    *&self->_flags |= 0x10u;
  }

  WeakRetained = objc_loadWeakRetained(&self->_commonAncestorEnvironment);

  return WeakRetained;
}

- (UIFocusHeading)focusHeading
{
  v2 = [(UIFocusUpdateContext *)self _focusMovement];
  v3 = [v2 heading];

  return v3;
}

- (CGVector)_focusVelocity
{
  [(UIFocusUpdateContext *)self _destinationViewDistanceOffscreen];
  if (v3 == 0.0)
  {
    v4 = [(UIFocusUpdateContext *)self _focusMovement];
    [v4 _velocity];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
    v6 = 0.0;
  }

  v9 = v6;
  v10 = v8;
  result.dy = v10;
  result.dx = v9;
  return result;
}

- (BOOL)_isInitialMovement
{
  v2 = [(UIFocusUpdateContext *)self _focusMovement];
  v3 = [v2 _isInitialMovement];

  return v3;
}

- (void)_setFocusedGuideImpl:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_focusedGuideImpl);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_focusedGuideImpl, obj);
  }

  [(UIFocusUpdateContext *)self _setFocusRedirectedByGuide:obj != 0];
}

- (UIFocusGuide)_focusedGuide
{
  WeakRetained = objc_loadWeakRetained(&self->_focusedGuideImpl);
  v3 = [WeakRetained delegate];

  return v3;
}

- (void)_setFocusMapSearchInfo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  p_focusMapSearchInfo = &self->_focusMapSearchInfo;
  if (self->_focusMapSearchInfo != v5)
  {
    objc_storeStrong(&self->_focusMapSearchInfo, a3);
    v7 = *p_focusMapSearchInfo;
    if (*p_focusMapSearchInfo)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = [(_UIFocusMapSearchInfo *)v7 destinationRegions];
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v13 + 1) + 8 * v12++) _willParticipateAsDestinationRegionInFocusUpdate:self];
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)_willUpdateFocusFromFocusedItem:(id)a3
{
  v7 = a3;
  v4 = [(UIFocusUpdateContext *)self previouslyFocusedItem];

  v5 = v7;
  if (v4 != v7)
  {
    v6 = [_UIFocusItemInfo infoWithItem:v7];
    [(UIFocusUpdateContext *)self _setSourceItemInfo:v6];

    v5 = v7;
  }
}

- (void)_didUpdateFocus
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(UIFocusUpdateContext *)self _focusMapSearchInfo];
  v4 = [v3 destinationRegions];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) _didParticipateAsDestinationRegionInFocusUpdate:self];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [(UIFocusUpdateContext *)self _focusedGuideImpl];
  [v9 focusDidUpdateViaGuide];
}

- (void)_updateWithFocusGroupMap:(id)a3
{
  v4 = a3;
  v5 = [[_UIDynamicFocusGroupMap alloc] initWithBackingFocusGroupMap:v4];

  [(UIFocusUpdateContext *)self _setFocusGroupMap:v5];
  previouslyFocusedGroupIdentifier = self->_previouslyFocusedGroupIdentifier;
  self->_previouslyFocusedGroupIdentifier = 0;

  nextFocusedGroupIdentifier = self->_nextFocusedGroupIdentifier;
  self->_nextFocusedGroupIdentifier = 0;
}

- (_UIDynamicFocusGroupMap)_focusGroupMap
{
  if (!self->_focusGroupMap && [(UIFocusUpdateContext *)self _isFilteredToGroup])
  {
    v3 = [_UIDynamicFocusGroupMap alloc];
    v4 = [(UIFocusUpdateContext *)self _request];
    v5 = [v4 focusSystem];
    v6 = [v5 focusItemContainer];
    v7 = [v6 coordinateSpace];
    v8 = [(_UIDynamicFocusGroupMap *)v3 initWithCoordinateSpace:v7];
    focusGroupMap = self->_focusGroupMap;
    self->_focusGroupMap = v8;
  }

  v10 = self->_focusGroupMap;

  return v10;
}

- (NSString)_previouslyFocusedGroupIdentifier
{
  if (!self->_previouslyFocusedGroupIdentifier && [(UIFocusUpdateContext *)self _isFilteredToGroup])
  {
    v3 = [(UIFocusUpdateContext *)self previouslyFocusedItem];
    if (v3)
    {
      v4 = [(UIFocusUpdateContext *)self _focusGroupMap];
      v5 = [v4 focusGroupIdentifierForItem:v3];
      previouslyFocusedGroupIdentifier = self->_previouslyFocusedGroupIdentifier;
      self->_previouslyFocusedGroupIdentifier = v5;
    }
  }

  v7 = self->_previouslyFocusedGroupIdentifier;

  return v7;
}

- (NSString)_nextFocusedGroupIdentifier
{
  if (!self->_nextFocusedGroupIdentifier && [(UIFocusUpdateContext *)self _isFilteredToGroup])
  {
    v3 = [(UIFocusUpdateContext *)self nextFocusedItem];
    if (v3)
    {
      v4 = [(UIFocusUpdateContext *)self _focusGroupMap];
      v5 = [v4 focusGroupIdentifierForItem:v3];
      nextFocusedGroupIdentifier = self->_nextFocusedGroupIdentifier;
      self->_nextFocusedGroupIdentifier = v5;
    }
  }

  v7 = self->_nextFocusedGroupIdentifier;

  return v7;
}

- (int64_t)_groupFilter
{
  v2 = [(UIFocusUpdateContext *)self _focusMovement];
  v3 = [v2 _groupFilter];

  return v3;
}

+ (_UIDebugIssueReportFormatter)_defaultValidationReportFormatter
{
  v2 = objc_alloc_init(_UIDebugIssueReportFormatter);
  [(_UIDebugIssueReportFormatter *)v2 setHeader:@"The following issues were found that will prevent this focus update from being committed:"];
  [(_UIDebugIssueReportFormatter *)v2 setNoIssuesDescription:@"There are no issues that would prevent this focus update from occurring."];

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(UIFocusUpdateContext *)self previouslyFocusedItem];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"<%@: %p>", v7, v4];
  }

  else
  {
    v8 = @"(nil)";
  }

  v9 = [v3 appendObject:v8 withName:@"previouslyFocusedItem"];

  v10 = [(UIFocusUpdateContext *)self nextFocusedItem];
  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"<%@: %p>", v13, v10];
  }

  else
  {
    v14 = @"(nil)";
  }

  v15 = [v3 appendObject:v14 withName:@"nextFocusedItem"];

  v16 = _UIStringFromFocusHeading([(UIFocusUpdateContext *)self focusHeading]);
  v17 = [v3 appendObject:v16 withName:@"focusHeading"];

  if ([(UIFocusUpdateContext *)self _groupFilter])
  {
    v18 = _UIStringFromGroupFilter([(UIFocusUpdateContext *)self _groupFilter]);
    v19 = [v3 appendObject:v18 withName:@"groupFilter"];
  }

  v20 = [v3 build];

  return v20;
}

- (_UIFocusGuideImpl)_focusedGuideImpl
{
  WeakRetained = objc_loadWeakRetained(&self->_focusedGuideImpl);

  return WeakRetained;
}

- (UIFocusEnvironment)_initialDestinationEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_initialDestinationEnvironment);

  return WeakRetained;
}

@end