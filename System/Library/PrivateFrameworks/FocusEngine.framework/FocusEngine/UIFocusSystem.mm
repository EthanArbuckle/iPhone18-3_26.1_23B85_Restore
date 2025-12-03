@interface UIFocusSystem
+ (BOOL)environment:(id)environment containsEnvironment:(id)otherEnvironment;
+ (NSArray)_allFocusSystems;
+ (UIFocusSystem)focusSystemForEnvironment:(id)environment;
+ (void)initialize;
- (BOOL)_focusedItemIsContainedInEnvironment:(id)environment includeSelf:(BOOL)self;
- (BOOL)_handleFailedFocusMovementRequest:(id)request withPerformer:(id)performer;
- (BOOL)_hasValidItemForCurrentDeferralState;
- (BOOL)_isEnvironmentEligibleForFocusUpdate:(id)update fallbackToEnvironment:(id *)environment debugReport:(id)report;
- (BOOL)_isEnvironmentLocked:(id)locked;
- (BOOL)_isScrollingScrollableContainer:(id)container targetContentOffset:(CGPoint *)offset;
- (BOOL)_performDeferredFocusUpdateIfAvailable;
- (BOOL)_performFocusMovement:(id)movement;
- (BOOL)_prefersDeferralForFocusUpdateInContext:(id)context;
- (BOOL)_shouldRestoreFocusInContext:(id)context;
- (BOOL)_shouldReverseLayoutDirectionForEnvironment:(id)environment;
- (BOOL)_shouldReverseLinearWrappingForEnvironment:(id)environment;
- (BOOL)_uiktest_updateFocusToItem:(id)item;
- (BOOL)_updateFocusImmediatelyToEnvironment:(id)environment startDeferringOnLostFocus:(BOOL)focus suppressLostFocusUpdate:(BOOL)update;
- (BOOL)_updateFocusImmediatelyWithContext:(id)context;
- (BOOL)_updateFocusWithContext:(id)context report:(id)report;
- (CGRect)_clippingRectInCoordinateSpace:(id)space;
- (NSArray)preferredFocusEnvironments;
- (NSString)description;
- (UIFocusEnvironment)_deepestPreferredFocusEnvironment;
- (UIFocusItem)_focusedItemOrDeferralTarget;
- (UIFocusItem)_previousFocusedItem;
- (UIFocusItemContainer)focusItemContainer;
- (UIFocusSystem)init;
- (UIFocusSystem)initWithFocusBehavior:(id)behavior enabled:(BOOL)enabled;
- (_UIFocusEnvironmentPreferenceCache)_deepestPreferredFocusableItemCacheForCurrentUpdate;
- (_UIFocusGroupHistory)_focusGroupHistory;
- (_UIFocusRegionContainer)_focusMapContainer;
- (_UIFocusSystemDelegate)delegate;
- (id)_closestFocusableItemToPoint:(CGPoint)point inEnvironment:(id)environment constrainedToRect:(CGRect)rect distanceMeasuringUnitPoint:(CGPoint)unitPoint itemFilter:(id)filter;
- (id)_configureFocusDeferralIfNecessaryForContext:(id)context report:(id)report;
- (id)_contextForUpdateToEnvironment:(id)environment allowsOverridingPreferedFocusEnvironments:(BOOL)environments allowsDeferral:(BOOL)deferral;
- (id)_focusItemForValidation;
- (id)_topEnvironment;
- (id)_validatedAppearingFocusEnvironmentRequest;
- (id)_validatedPendingFocusUpdateRequest;
- (id)focusedItem;
- (int64_t)_effectiveFocusDeferralBehavior;
- (void)_buildFocusItemAncestorCacheIfNecessary;
- (void)_didFinishUpdatingFocusInContext:(id)context;
- (void)_enableWithoutFocusRestoration;
- (void)_focusBehaviorDidChange;
- (void)_focusEnvironmentDidAppear:(id)appear;
- (void)_focusEnvironmentDidBecomeVisible:(id)visible;
- (void)_focusEnvironmentWillBecomeInvisible:(id)invisible;
- (void)_focusEnvironmentWillDisappear:(id)disappear remainingInHierarchy:(BOOL)hierarchy;
- (void)_handleFocusMovementAction:(id)action;
- (void)_lockEnvironment:(id)environment;
- (void)_notifyEnvironment:(id)environment didUpdateFocusInContext:(id)context;
- (void)_performWithoutFocusUpdates:(id)updates;
- (void)_reevaluateLockedEnvironments;
- (void)_requestFocusUpdate:(id)update;
- (void)_resetFocusDeferral;
- (void)_sendDidUpdateFocusNotificationsInContext:(id)context;
- (void)_sendNotificationsForFocusUpdateInContext:(id)context usingBlock:(id)block;
- (void)_sendWillUpdateFocusNotificationsInContext:(id)context;
- (void)_setDeferredFocusUpdateTarget:(id)target;
- (void)_setEnabled:(BOOL)enabled;
- (void)_setFocusCasting:(id)casting;
- (void)_setOverrideFocusDeferralBehavior:(id)behavior;
- (void)_startDeferringFocusIfSupported;
- (void)_tickHasSeenFocusedItemTimer:(BOOL)timer;
- (void)_uiktest_disableFocusDeferral;
- (void)_uiktest_disableThrottle;
- (void)_unlockEnvironment:(id)environment;
- (void)_updateFocusUpdateThrottle;
- (void)_updateWantsTreeLocking;
- (void)invalidateFocusItemContainer:(id)container;
- (void)requestFocusUpdateToEnvironment:(id)environment;
- (void)setBehavior:(id)behavior;
- (void)setDelegate:(id)delegate;
- (void)updateFocusIfNeeded;
@end

@implementation UIFocusSystem

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    NSClassFromString(&cfstr_Uifocusdebugge_0.isa);
  }
}

- (UIFocusSystem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:132 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (UIFocusSystem)initWithFocusBehavior:(id)behavior enabled:(BOOL)enabled
{
  behaviorCopy = behavior;
  v16.receiver = self;
  v16.super_class = UIFocusSystem;
  v8 = [(UIFocusSystem *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_behavior, behavior);
    v9->_enabled = enabled;
    v10 = objc_opt_new();
    [(_UIFocusMovementPerformer *)v10 setDelegate:v9];
    movementPerformer = v9->_movementPerformer;
    v9->_movementPerformer = v10;
    v12 = v10;

    v13 = qword_27F062FC8;
    v14 = v9;
    if (v13 != -1)
    {
      dispatch_once(&qword_27F062FC8, &__block_literal_global_6);
    }

    [_MergedGlobals_7 addObject:v14];

    [(UIFocusSystem *)v14 _focusBehaviorDidChange];
  }

  return v9;
}

- (void)_setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v33 = *MEMORY[0x277D85DE8];
  if (!enabled)
  {
LABEL_10:
    [(UIFocusSystem *)self setWaitingForFocusMovementAction:0];
    if (self->_enabled == enabledCopy)
    {
      return;
    }

    _hostFocusSystem = [(UIFocusSystem *)self _hostFocusSystem];

    if (!_hostFocusSystem)
    {
      v10 = logger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = @"disabled";
        if (enabledCopy)
        {
          v11 = @"enabled";
        }

        v31 = 138543362;
        v32 = v11;
        _os_log_impl(&dword_24B885000, v10, OS_LOG_TYPE_INFO, "Focus system %{public}@", &v31, 0xCu);
      }
    }

    self->_enabled = enabledCopy;
    if (!enabledCopy)
    {
      focusedItem = [(UIFocusSystem *)self focusedItem];

      if (focusedItem)
      {
        [(UIFocusSystem *)self _setNeedsFocusRestoration];
      }

      v25 = [(UIFocusSystem *)self _contextForUpdateToEnvironment:0];
      [(UIFocusSystem *)self _updateFocusWithContext:v25 report:0];
      [(UIFocusSystem *)self setPendingFocusMovementAction:0];
      pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
      self->_pendingFocusUpdateRequest = 0;

      appearingFocusEnvironment = self->_appearingFocusEnvironment;
      self->_appearingFocusEnvironment = 0;

      disappearingFocusEnvironment = self->_disappearingFocusEnvironment;
      self->_disappearingFocusEnvironment = 0;

      goto LABEL_33;
    }

    pendingFocusMovementAction = [(UIFocusSystem *)self pendingFocusMovementAction];
    if (pendingFocusMovementAction)
    {
      v13 = pendingFocusMovementAction;
      pendingFocusMovementAction2 = [(UIFocusSystem *)self pendingFocusMovementAction];
      focusMovementInfo = [pendingFocusMovementAction2 focusMovementInfo];
      heading = [focusMovementInfo heading];

      if (heading)
      {
        v17 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:self];
        pendingFocusMovementAction3 = [(UIFocusSystem *)self pendingFocusMovementAction];
        focusMovementInfo2 = [pendingFocusMovementAction3 focusMovementInfo];
        [(_UIFocusMovementRequest *)v17 setMovementInfo:focusMovementInfo2];

        LOBYTE(pendingFocusMovementAction3) = [(UIFocusSystem *)self _performFocusMovement:v17];
        [(UIFocusSystem *)self setPendingFocusMovementAction:0];

        if (pendingFocusMovementAction3)
        {
LABEL_32:
          [(UIFocusSystem *)self _tickHasSeenFocusedItemTimer:0];
LABEL_33:
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:@"_UIFocusSystemEnabledStateDidChangeNotification" object:self];

          return;
        }
      }
    }

    flags = self->_flags;
    if ((*&flags & 4) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFFB);
      _previousFocusedItem = [(UIFocusSystem *)self _previousFocusedItem];
      v22 = [(UIFocusSystem *)self _contextForUpdateToEnvironment:_previousFocusedItem];

      if ([(UIFocusSystem *)self _shouldRestoreFocusInContext:v22])
      {
        v23 = [(UIFocusSystem *)self _configureFocusDeferralIfNecessaryForContext:v22 report:0];

        [(UIFocusSystem *)self _updateFocusWithContext:v23 report:0];
        if (!self->_pendingFocusUpdateRequest)
        {
          goto LABEL_32;
        }

LABEL_30:
        [(UIFocusSystem *)self updateFocusIfNeeded];
        goto LABEL_32;
      }
    }

    if (!self->_pendingFocusUpdateRequest)
    {
      v29 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:self];
      [(UIFocusSystem *)self _requestFocusUpdate:v29];
      [(UIFocusSystem *)self updateFocusIfNeeded];

      goto LABEL_32;
    }

    goto LABEL_30;
  }

  delegate = [(UIFocusSystem *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  delegate2 = [(UIFocusSystem *)self delegate];
  if (([delegate2 _shouldWaitForFocusMovementActionToEnableFocusSystem:self] & 1) == 0)
  {

    goto LABEL_9;
  }

  pendingFocusMovementAction4 = [(UIFocusSystem *)self pendingFocusMovementAction];

  if (pendingFocusMovementAction4)
  {
    goto LABEL_10;
  }

  v8 = logger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_24B885000, v8, OS_LOG_TYPE_INFO, "Tried to enable focus system without receiving focus movement action, waiting until action is received to enable", &v31, 2u);
  }

  [(UIFocusSystem *)self setWaitingForFocusMovementAction:1];
}

- (void)_enableWithoutFocusRestoration
{
  if (!self->_enabled)
  {
    self->_enabled = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"_UIFocusSystemEnabledStateDidChangeNotification" object:self];
  }
}

- (id)focusedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusedItem);
  v4 = objc_loadWeakRetained(&self->_focusedItem);
  v5 = v4;
  if (WeakRetained)
  {
    v6 = _UIFocusEnvironmentRootAncestorEnvironment(v4);
    if (v6 == self)
    {
      v7 = objc_loadWeakRetained(&self->_focusedItem);
    }

    else
    {
      v7 = 0;
    }

    v5 = v7;
  }

  return v5;
}

- (UIFocusItem)_focusedItemOrDeferralTarget
{
  focusedItem = [(UIFocusSystem *)self focusedItem];
  v4 = focusedItem;
  if (focusedItem)
  {
    WeakRetained = focusedItem;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_deferredFocusUpdateTarget);
  }

  v6 = WeakRetained;

  return v6;
}

- (id)_focusItemForValidation
{
  _focusedItemOrDeferralTarget = [(UIFocusSystem *)self _focusedItemOrDeferralTarget];
  if (_focusedItemOrDeferralTarget || [(UIFocusSystem *)self _isEnabled])
  {
    WeakRetained = _focusedItemOrDeferralTarget;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_previousFocusedItem);
  }

  v5 = WeakRetained;

  return v5;
}

- (BOOL)_hasValidItemForCurrentDeferralState
{
  _effectiveFocusDeferralBehavior = [(UIFocusSystem *)self _effectiveFocusDeferralBehavior];
  if ((_effectiveFocusDeferralBehavior - 1) < 4)
  {
    _focusedItemOrDeferralTarget = [(UIFocusSystem *)self _focusedItemOrDeferralTarget];
LABEL_5:
    v2 = _focusedItemOrDeferralTarget != 0;

    return v2;
  }

  if (!_effectiveFocusDeferralBehavior)
  {
    _focusedItemOrDeferralTarget = [(UIFocusSystem *)self focusedItem];
    goto LABEL_5;
  }

  return v2;
}

- (void)_setFocusCasting:(id)casting
{
  castingCopy = casting;
  focusCasting = self->_focusCasting;
  if (focusCasting != castingCopy)
  {
    v7 = castingCopy;
    if (focusCasting)
    {
      [(_UIFocusCasting *)focusCasting setFocusSystem:0];
      [(_UIFocusCasting *)self->_focusCasting teardown];
      castingCopy = v7;
    }

    [(_UIFocusCasting *)castingCopy setFocusSystem:self];
    objc_storeStrong(&self->_focusCasting, casting);
  }

  MEMORY[0x2821F96F8]();
}

- (_UIFocusGroupHistory)_focusGroupHistory
{
  focusGroupHistory = self->_focusGroupHistory;
  if (!focusGroupHistory)
  {
    v4 = objc_opt_new();
    v5 = self->_focusGroupHistory;
    self->_focusGroupHistory = v4;

    focusGroupHistory = self->_focusGroupHistory;
  }

  return focusGroupHistory;
}

- (BOOL)_prefersDeferralForFocusUpdateInContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  _effectiveFocusDeferralBehavior = [(UIFocusSystem *)self _effectiveFocusDeferralBehavior];
  if (_effectiveFocusDeferralBehavior > 2)
  {
    if (_effectiveFocusDeferralBehavior == 3)
    {
      _request = [contextCopy _request];
      if ([_request allowsDeferral])
      {
        nextFocusedItem = [contextCopy nextFocusedItem];
        if (_UIFocusItemDeferralModeForItem(nextFocusedItem) == 1)
        {
          allowsDeferral = 1;
        }

        else if ((*&self->_flags & 0x10) != 0)
        {
          allowsDeferral = 0;
        }

        else
        {
          nextFocusedItem2 = [contextCopy nextFocusedItem];
          allowsDeferral = _UIFocusItemDeferralModeForItem(nextFocusedItem2) != 2;
        }
      }

      else
      {
        allowsDeferral = 0;
      }

      goto LABEL_9;
    }

    if (_effectiveFocusDeferralBehavior != 4)
    {
      allowsDeferral = 0;
      goto LABEL_10;
    }

LABEL_8:
    _request = [contextCopy _request];
    allowsDeferral = [_request allowsDeferral];
LABEL_9:

    goto LABEL_10;
  }

  if (_effectiveFocusDeferralBehavior == 1)
  {
    goto LABEL_8;
  }

  allowsDeferral = _effectiveFocusDeferralBehavior == 2;
LABEL_10:

  return allowsDeferral;
}

- (id)_configureFocusDeferralIfNecessaryForContext:(id)context report:(id)report
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  reportCopy = report;
  v8 = contextCopy;
  nextFocusedItem = [v8 nextFocusedItem];
  if (!nextFocusedItem || (v10 = nextFocusedItem, v11 = [(UIFocusSystem *)self _prefersDeferralForFocusUpdateInContext:v8], v10, !v11))
  {
    [(UIFocusSystem *)self _setDeferredFocusUpdateTarget:0];
    v20 = v8;
    goto LABEL_17;
  }

  shouldLog = [reportCopy shouldLog];
  v13 = logger();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (shouldLog)
  {
    if (v14)
    {
      nextFocusedItem2 = [v8 nextFocusedItem];
      if (nextFocusedItem2)
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [v16 stringWithFormat:@"<%@: %p>", v18, nextFocusedItem2];
      }

      else
      {
        v19 = @"(nil)";
      }

      v25 = +[(_UIDebugReportFormatter *)_UIFocusUpdateReportFormatter];
      v26 = [v25 stringFromReport:reportCopy];
      *buf = 138543618;
      v30 = v19;
      v31 = 2114;
      v32 = v26;
      _os_log_impl(&dword_24B885000, v13, OS_LOG_TYPE_INFO, "Deferring focus update to item %{public}@:\n%{public}@", buf, 0x16u);

LABEL_15:
    }
  }

  else if (v14)
  {
    nextFocusedItem3 = [v8 nextFocusedItem];
    if (nextFocusedItem3)
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v19 = [v22 stringWithFormat:@"<%@: %p>", v24, nextFocusedItem3];
    }

    else
    {
      v19 = @"(nil)";
    }

    *buf = 138543362;
    v30 = v19;
    _os_log_impl(&dword_24B885000, v13, OS_LOG_TYPE_INFO, "Deferring focus update to item %{public}@. No additional info available.", buf, 0xCu);

    goto LABEL_15;
  }

  nextFocusedItem4 = [v8 nextFocusedItem];
  [(UIFocusSystem *)self _setDeferredFocusUpdateTarget:nextFocusedItem4];

  v20 = [(UIFocusSystem *)self _simulatedNonDeferredProgrammaticFocusUpdateToEnvironment:0];

LABEL_17:

  return v20;
}

- (BOOL)_performDeferredFocusUpdateIfAvailable
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(UIFocusSystem *)self _isEnabled])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_deferredFocusUpdateTarget);
  if (WeakRetained && [(UIFocusSystem *)self _effectiveFocusDeferralBehavior]!= 2)
  {
    v5 = logger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = WeakRetained;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v8 stringWithFormat:@"<%@: %p>", v11, v9];

      *buf = 138543362;
      v14 = v12;
      _os_log_debug_impl(&dword_24B885000, v5, OS_LOG_TYPE_DEBUG, "Executing previously deferred focus update to item %{public}@", buf, 0xCu);
    }

    [(UIFocusSystem *)self _setDeferredFocusUpdateTarget:0];
    v6 = [(UIFocusSystem *)self _simulatedNonDeferredProgrammaticFocusUpdateToEnvironment:WeakRetained];
    [v6 _setDeferredUpdate:1];
    v4 = [(UIFocusSystem *)self _updateFocusImmediatelyWithContext:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_tickHasSeenFocusedItemTimer:(BOOL)timer
{
  timerCopy = timer;
  v19 = *MEMORY[0x277D85DE8];
  _effectiveFocusDeferralBehavior = [(UIFocusSystem *)self _effectiveFocusDeferralBehavior];
  WeakRetained = objc_loadWeakRetained(&self->_hasSeenFocusedItemDidExpireTimer);
  [WeakRetained invalidate];

  focusedItem = [(UIFocusSystem *)self focusedItem];

  if (focusedItem && _effectiveFocusDeferralBehavior == 3)
  {
    if (timerCopy)
    {
      v8 = logger();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

      v10 = logger();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138543362;
          v18 = callStackSymbols;
          _os_log_debug_impl(&dword_24B885000, v11, OS_LOG_TYPE_DEBUG, "Disabling focus deferral.\n%{public}@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24B885000, v11, OS_LOG_TYPE_INFO, "Disabling focus deferral.", buf, 2u);
      }

      *&self->_flags |= 0x10u;
    }

    objc_initWeak(buf, self);
    v13 = MEMORY[0x277CBEBB8];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__UIFocusSystem__tickHasSeenFocusedItemTimer___block_invoke;
    v15[3] = &unk_279014DC8;
    objc_copyWeak(&v16, buf);
    v14 = [v13 scheduledTimerWithTimeInterval:0 repeats:v15 block:60.0];
    objc_storeWeak(&self->_hasSeenFocusedItemDidExpireTimer, v14);

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void __46__UIFocusSystem__tickHasSeenFocusedItemTimer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hasSeenFocusedItemDidExpire];
}

- (void)_resetFocusDeferral
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*&self->_flags & 0x10) != 0)
  {
    v3 = logger();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

    v5 = logger();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v11 = 138543362;
        v12 = callStackSymbols;
        _os_log_debug_impl(&dword_24B885000, v6, OS_LOG_TYPE_DEBUG, "Starting to defer focus updates.\n%{public}@", &v11, 0xCu);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_24B885000, v6, OS_LOG_TYPE_INFO, "Starting to defer focus updates.", &v11, 2u);
    }
  }

  [MEMORY[0x277CCACC8] cancelPreviousPerformRequestsWithTarget:self selector:sel__hasSeenFocusedItemDidExpire object:0];
  *&self->_flags &= ~0x10u;
  behavior = [(UIFocusSystem *)self behavior];
  focusCastingMode = [behavior focusCastingMode];

  if (focusCastingMode == 2)
  {
    _focusCasting = [(UIFocusSystem *)self _focusCasting];
    [_focusCasting forgetEntryPoint];
  }
}

- (void)_startDeferringFocusIfSupported
{
  [(UIFocusSystem *)self _resetFocusDeferral];
  _effectiveFocusDeferralBehavior = [(UIFocusSystem *)self _effectiveFocusDeferralBehavior];
  if ((_effectiveFocusDeferralBehavior - 1) >= 2)
  {
    if (_effectiveFocusDeferralBehavior != 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_focusedItem);
      goto LABEL_10;
    }

    v5 = objc_loadWeakRetained(&self->_focusedItem);
    v4 = _UIFocusItemDeferralModeForItem(v5) != 2;
  }

  else
  {
    v4 = 1;
  }

  v6 = objc_loadWeakRetained(&self->_focusedItem);

  if (!v6 || !v4)
  {
    return;
  }

  v8 = objc_loadWeakRetained(&self->_focusedItem);
  [(UIFocusSystem *)self _dropFocusAndStartDeferring:0 suppressUpdate:1];
  [(UIFocusSystem *)self _setDeferredFocusUpdateTarget:v8];
  WeakRetained = v8;
LABEL_10:
}

- (void)_setDeferredFocusUpdateTarget:(id)target
{
  obj = target;
  WeakRetained = objc_loadWeakRetained(&self->_deferredFocusUpdateTarget);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_deferredFocusUpdateTarget, obj);
    if ((*(&self->_flags + 2) & 4) != 0)
    {
      delegate = [(UIFocusSystem *)self delegate];
      [delegate _focusSystem:self didUpdateDeferralTarget:obj];
    }
  }
}

- (int64_t)_effectiveFocusDeferralBehavior
{
  _overrideFocusDeferralBehavior = [(UIFocusSystem *)self _overrideFocusDeferralBehavior];
  v4 = _overrideFocusDeferralBehavior;
  if (_overrideFocusDeferralBehavior)
  {
    integerValue = [_overrideFocusDeferralBehavior integerValue];
  }

  else
  {
    behavior = [(UIFocusSystem *)self behavior];
    integerValue = [behavior focusDeferral];
  }

  return integerValue;
}

- (void)_setOverrideFocusDeferralBehavior:(id)behavior
{
  behaviorCopy = behavior;
  p_overrideFocusDeferralBehavior = &self->_overrideFocusDeferralBehavior;
  if (self->_overrideFocusDeferralBehavior != behaviorCopy)
  {
    v7 = behaviorCopy;
    objc_storeStrong(p_overrideFocusDeferralBehavior, behavior);
    if ([(UIFocusSystem *)self _effectiveFocusDeferralBehavior])
    {
      p_overrideFocusDeferralBehavior = [(UIFocusSystem *)self _startDeferringFocusIfSupported];
    }

    else
    {
      p_overrideFocusDeferralBehavior = [(UIFocusSystem *)self _performDeferredFocusUpdateIfAvailable];
      behaviorCopy = v7;
      if (p_overrideFocusDeferralBehavior)
      {
        goto LABEL_7;
      }

      [(UIFocusSystem *)self requestFocusUpdateToEnvironment:self];
      p_overrideFocusDeferralBehavior = [(UIFocusSystem *)self updateFocusIfNeeded];
    }

    behaviorCopy = v7;
  }

LABEL_7:

  MEMORY[0x2821F96F8](p_overrideFocusDeferralBehavior, behaviorCopy);
}

+ (UIFocusSystem)focusSystemForEnvironment:(id)environment
{
  v5 = environment;
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:547 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v6 = _MergedGlobals_7;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = _UIFocusEnvironmentRootAncestorEnvironment(v5);
    if ([v7 containsObject:v8])
    {
      if ([v8 _focusSystemIsValid])
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (NSArray)_allFocusSystems
{
  allObjects = [_MergedGlobals_7 allObjects];
  v3 = allObjects;
  if (allObjects)
  {
    v4 = allObjects;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (_UIFocusRegionContainer)_focusMapContainer
{
  v3 = [_UIFocusRegionContainerProxy alloc];
  focusItemContainer = [(UIFocusSystem *)self focusItemContainer];
  v5 = [(_UIFocusRegionContainerProxy *)v3 initWithOwningEnvironment:self itemContainer:focusItemContainer];

  [(_UIFocusRegionContainerProxy *)v5 setAllowsLazyLoading:0];
  [(_UIFocusRegionContainerProxy *)v5 setShouldCreateRegionForOwningItem:0];
  [(_UIFocusRegionContainerProxy *)v5 setShouldCreateRegionForGuideBehavior:0];

  return v5;
}

- (UIFocusItemContainer)focusItemContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (flags = self->_flags, WeakRetained, (*&flags & 0x10000) != 0))
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v5 = [v6 _focusItemContainerForFocusSystem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)_clippingRectInCoordinateSpace:(id)space
{
  if ((*(&self->_flags + 2) & 2) != 0)
  {
    spaceCopy = space;
    delegate = [(UIFocusSystem *)self delegate];
    [delegate _clippingRectForFocusSystem:self inCoordinateSpace:spaceCopy];
    v3 = v10;
    v4 = v11;
    v5 = v12;
    v6 = v13;
  }

  else
  {
    v3 = *MEMORY[0x277CBF398];
    v4 = *(MEMORY[0x277CBF398] + 8);
    v5 = *(MEMORY[0x277CBF398] + 16);
    v6 = *(MEMORY[0x277CBF398] + 24);
  }

  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (NSArray)preferredFocusEnvironments
{
  delegate = [(UIFocusSystem *)self delegate];
  v5 = delegate;
  if (!delegate || (*&self->_flags & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v6 = [delegate _preferredFocusEnvironmentsForFocusSystem:self];
  if (!v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:623 description:@"Returning nil for a focus system's preferred focus environments is not allowed."];

LABEL_3:
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

+ (BOOL)environment:(id)environment containsEnvironment:(id)otherEnvironment
{
  v7 = environment;
  v8 = otherEnvironment;
  v9 = v8;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:658 description:{@"Invalid parameter not satisfying: %@", @"environment"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:659 description:{@"Invalid parameter not satisfying: %@", @"otherEnvironment"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(v7, v9);

  return IsAncestorOfEnvironment;
}

- (void)requestFocusUpdateToEnvironment:(id)environment
{
  v7 = environment;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:668 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v5 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:v7];
  [(UIFocusSystem *)self _requestFocusUpdate:v5];
}

- (void)_requestFocusUpdate:(id)update
{
  v51 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (!updateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:675 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  if (([updateCopy isFocusRemovalRequest] & 1) == 0)
  {
    v6 = [updateCopy copy];

    [v6 cacheCurrentFocusSystem];
    if (![v6 isValidInFocusSystem:self])
    {
      goto LABEL_28;
    }

    _validatedPendingFocusUpdateRequest = [(UIFocusSystem *)self _validatedPendingFocusUpdateRequest];
    v8 = _validatedPendingFocusUpdateRequest;
    if (_validatedPendingFocusUpdateRequest && [_validatedPendingFocusUpdateRequest canMergeWithRequest:v6])
    {
      v9 = [v8 requestByMergingWithRequest:v6];

      v10 = 1;
      v6 = v9;
    }

    else
    {
      environment = [v6 environment];
      v12 = logger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = objc_opt_new();
      }

      else
      {
        v13 = 0;
      }

      v45 = 0;
      v14 = [(UIFocusSystem *)self _isEnvironmentEligibleForFocusUpdate:environment fallbackToEnvironment:&v45 debugReport:v13];
      v15 = v45;
      if (!v14)
      {
        v16 = logger();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
        if (!v15 || environment == v15)
        {
          if (v17)
          {
            v22 = environment;
            if (v22)
            {
              v25 = MEMORY[0x277CCACA8];
              v26 = objc_opt_class();
              v27 = NSStringFromClass(v26);
              v23 = [v25 stringWithFormat:@"<%@: %p>", v27, v22];
            }

            else
            {
              v23 = @"(nil)";
            }

            v28 = objc_opt_new();
            v29 = [v28 stringFromReport:v13];
            *location = 138543618;
            *&location[4] = v23;
            v47 = 2114;
            v48 = v29;
            _os_log_debug_impl(&dword_24B885000, v16, OS_LOG_TYPE_DEBUG, "Ignoring focus update request for ineligible environment %{public}@.\n%{public}@", location, 0x16u);
          }
        }

        else
        {
          if (v17)
          {
            v24 = environment;
            if (v24)
            {
              v42 = MEMORY[0x277CCACA8];
              v30 = objc_opt_class();
              v31 = NSStringFromClass(v30);
              v41 = [v42 stringWithFormat:@"<%@: %p>", v31, v24];
            }

            else
            {
              v41 = @"(nil)";
            }

            v32 = MEMORY[0x277CCACA8];
            v33 = v15;
            v40 = v41;
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v39 = [v32 stringWithFormat:@"<%@: %p>", v35, v33];

            v36 = objc_opt_new();
            v37 = [v36 stringFromReport:v13];
            *location = 138543874;
            *&location[4] = v41;
            v47 = 2114;
            v48 = v39;
            v49 = 2114;
            v50 = v37;
            _os_log_debug_impl(&dword_24B885000, v16, OS_LOG_TYPE_DEBUG, "Ignoring focus update request for ineligible environment %{public}@. Using fallback environment %{public}@ instead.\n%{public}@", location, 0x20u);
          }

          v16 = [v6 requestByRedirectingRequestToEnvironment:v15];
          [(UIFocusSystem *)self _requestFocusUpdate:v16];
        }

        goto LABEL_27;
      }

      if (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = self->_appearingFocusEnvironment != 0;
      }
    }

    objc_storeStrong(&self->_pendingFocusUpdateRequest, v6);
    updateThrottle = [(UIFocusSystem *)self updateThrottle];
    v19 = updateThrottle == 0;

    if (v19)
    {
      if (!v10)
      {
        objc_initWeak(location, self);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __37__UIFocusSystem__requestFocusUpdate___block_invoke;
        block[3] = &unk_279014E70;
        objc_copyWeak(&v44, location);
        dispatch_async(MEMORY[0x277D85CD0], block);
        objc_destroyWeak(&v44);
        objc_destroyWeak(location);
      }
    }

    else
    {
      updateThrottle2 = [(UIFocusSystem *)self updateThrottle];
      [updateThrottle2 scheduleProgrammaticFocusUpdate];

      if ([v6 resetsUpdateThrottle])
      {
        updateThrottle3 = [(UIFocusSystem *)self updateThrottle];
        [updateThrottle3 reset];
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  v6 = updateCopy;
LABEL_28:
}

void __37__UIFocusSystem__requestFocusUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateFocusIfNeeded];
}

- (void)_focusEnvironmentWillBecomeInvisible:(id)invisible
{
  invisibleCopy = invisible;
  if ([(UIFocusSystem *)self _focusSystemIsValid])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__UIFocusSystem__focusEnvironmentWillBecomeInvisible___block_invoke;
    v5[3] = &unk_279014E98;
    v5[4] = self;
    v6 = invisibleCopy;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

uint64_t __54__UIFocusSystem__focusEnvironmentWillBecomeInvisible___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _focusSystemIsValid];
  if (result)
  {
    result = _UIFocusEnvironmentIsEligibleForFocusOcclusion(*(a1 + 40), 0);
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);

      return [v3 _focusEnvironmentWillDisappear:v4 remainingInHierarchy:1];
    }
  }

  return result;
}

- (void)_focusEnvironmentWillDisappear:(id)disappear remainingInHierarchy:(BOOL)hierarchy
{
  v52 = *MEMORY[0x277D85DE8];
  disappearCopy = disappear;
  if ([(UIFocusSystem *)self _focusSystemIsValid])
  {
    if (hierarchy || !dyld_program_sdk_at_least())
    {
      v9 = 0;
    }

    else
    {
      focusedItem = [(UIFocusSystem *)self focusedItem];
      if (focusedItem)
      {
        v9 = [(UIFocusSystem *)self _focusedItemIsContainedInEnvironment:disappearCopy includeSelf:1];
      }

      else
      {
        v9 = 0;
      }
    }

    v10 = logger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_new();
    }

    else
    {
      v11 = 0;
    }

    v45 = 0;
    v12 = [(UIFocusSystem *)self _isEnvironmentEligibleForFocusUpdate:disappearCopy fallbackToEnvironment:&v45 debugReport:v11];
    v13 = v45;
    if (v12)
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __69__UIFocusSystem__focusEnvironmentWillDisappear_remainingInHierarchy___block_invoke;
      v42[3] = &unk_279014C70;
      v43 = disappearCopy;
      selfCopy = self;
      _UIFocusEnvironmentEnumerateAncestorEnvironments(v43, v42);
      objc_storeStrong(&self->_disappearingFocusEnvironment, disappear);
    }

    else
    {
      v14 = logger();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (v13)
      {
        if (v15)
        {
          v21 = disappearCopy;
          if (v21)
          {
            v25 = MEMORY[0x277CCACA8];
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            v22 = [v25 stringWithFormat:@"<%@: %p>", v27, v21];
          }

          else
          {
            v22 = @"(nil)";
          }

          v41 = v22;

          v28 = MEMORY[0x277CCACA8];
          v29 = v13;
          v30 = v22;
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = [v28 stringWithFormat:@"<%@: %p>", v32, v29];

          v34 = objc_opt_new();
          v35 = [v34 stringFromReport:v11];
          *buf = 138543874;
          v47 = v41;
          v48 = 2114;
          v49 = v33;
          v50 = 2114;
          v51 = v35;
          _os_log_debug_impl(&dword_24B885000, v14, OS_LOG_TYPE_DEBUG, "Ignoring focus update request for disappearing focus environment %{public}@. Using fallback environment %{public}@ instead.\n%{public}@", buf, 0x20u);
        }

        [(UIFocusSystem *)self requestFocusUpdateToEnvironment:v13];
      }

      else
      {
        if (v15)
        {
          v23 = disappearCopy;
          if (v23)
          {
            v36 = MEMORY[0x277CCACA8];
            v37 = objc_opt_class();
            v38 = NSStringFromClass(v37);
            v24 = [v36 stringWithFormat:@"<%@: %p>", v38, v23];
          }

          else
          {
            v24 = @"(nil)";
          }

          v39 = objc_opt_new();
          v40 = [v39 stringFromReport:v11];
          *buf = 138543618;
          v47 = v24;
          v48 = 2114;
          v49 = v40;
          _os_log_debug_impl(&dword_24B885000, v14, OS_LOG_TYPE_DEBUG, "Ignoring focus update request for disappearing focus environment %{public}@.\n%{public}@", buf, 0x16u);
        }
      }
    }

    objc_storeWeak(&self->_deepestPreferredFocusEnvironment, 0);
    if (v9 && [(UIFocusSystem *)self _isEnabled])
    {
      if ((*&self->_flags & 2) != 0)
      {
        pendingFocusUpdateRequest = [MEMORY[0x277CCA890] currentHandler];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[UIFocusSystem _focusEnvironmentWillDisappear:remainingInHierarchy:]"];
        focusedItem2 = [(UIFocusSystem *)self focusedItem];
        [pendingFocusUpdateRequest handleFailureInFunction:v18 file:@"UIFocusSystem.m" lineNumber:832 description:{@"The newly focused item or one of its parent environments is getting removed from the hierarchy in response of that item becoming focused. This is a client bug that leaves the focus system in an undefined state. Focused item: %@; environment being removed: %@.", focusedItem2, disappearCopy}];
      }

      else
      {
        v16 = self->_pendingFocusUpdateRequest;
        [(UIFocusSystem *)self _dropFocusAndStartDeferring:0 suppressUpdate:1];
        pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
        self->_pendingFocusUpdateRequest = v16;
      }
    }

    _focusMovementCache = [(UIFocusSystem *)self _focusMovementCache];
    [_focusMovementCache environmentWillDisappear:disappearCopy];
  }
}

void __69__UIFocusSystem__focusEnvironmentWillDisappear_remainingInHierarchy___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 allowsWeakReference])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v5 && !v7)
  {
    v13 = logger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_fault_impl(&dword_24B885000, v13, OS_LOG_TYPE_FAULT, "Focus system attempting to use a deallocating focus environment. Offending object: %@", &v14, 0xCu);
    }
  }

  else if (v7 && v7 != *(a1 + 32))
  {
    v9 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:v7];
    [(_UIFocusUpdateRequest *)v9 setAllowsFocusingCurrentItem:1];
    [*(a1 + 40) _requestFocusUpdate:v9];
    v10 = *(*(a1 + 40) + 8);
    v11 = v10;
    if (v10)
    {
      v12 = [v10 environment];

      if (v12 == v8)
      {
        *a3 = 1;
      }
    }
  }
}

- (void)_focusEnvironmentDidBecomeVisible:(id)visible
{
  visibleCopy = visible;
  if ([(UIFocusSystem *)self _focusSystemIsValid])
  {
    if ((*&self->_flags & 2) == 0 || ([(UIFocusSystem *)self _focusedItemOrDeferralTarget], v4 = objc_claimAutoreleasedReturnValue(), HaveCommonHierarchy = _UIFocusEnvironmentsHaveCommonHierarchy(visibleCopy, v4), v4, !HaveCommonHierarchy))
    {
      [(UIFocusSystem *)self _focusEnvironmentDidAppear:visibleCopy];
    }
  }
}

- (void)_focusEnvironmentDidAppear:(id)appear
{
  appearCopy = appear;
  if ([(UIFocusSystem *)self _focusSystemIsValid])
  {
    if ([(NSHashTable *)self->_focusItemAncestorCache containsObject:appearCopy])
    {
      [(UIFocusSystem *)self _clearFocusItemAncestorCache];
    }

    _focusMovementCache = [(UIFocusSystem *)self _focusMovementCache];
    [_focusMovementCache environmentDidAppear:appearCopy];

    if ([(UIFocusSystem *)self _effectiveFocusDeferralBehavior])
    {
      if ((*&self->_flags & 2) == 0)
      {
        if (appearCopy)
        {
          v6 = _UIFocusEnvironmentRootAncestorEnvironment(appearCopy);
        }

        else
        {
          v6 = 0;
        }

        if (v6 != self)
        {
          goto LABEL_30;
        }

        objc_storeWeak(&self->_deepestPreferredFocusEnvironment, 0);
        _focusItemForValidation = [(UIFocusSystem *)self _focusItemForValidation];
        v8 = _focusItemForValidation;
        if (!_focusItemForValidation)
        {
          if (!self->_pendingFocusUpdateRequest && [(UIFocusSystem *)self _isEnabled])
          {
            [(UIFocusSystem *)self requestFocusUpdateToEnvironment:self];
          }

          goto LABEL_29;
        }

        v9 = _UIFocusEnvironmentFirstCommonAncestor(_focusItemForValidation, appearCopy);
        v10 = v9;
        if (v9 && v9 != v8)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_18;
          }

          focusItemContainer = [v10 focusItemContainer];
          coordinateSpace = [focusItemContainer coordinateSpace];

          v13 = _UIFocusItemFrameInCoordinateSpace(appearCopy, coordinateSpace);
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v20 = _UIFocusItemFrameInCoordinateSpace(v8, coordinateSpace);
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v35.origin.x = v13;
          v35.origin.y = v15;
          v35.size.width = v17;
          v35.size.height = v19;
          if (!CGRectIsNull(v35))
          {
            v36.origin.x = v20;
            v36.origin.y = v22;
            v36.size.width = v24;
            v36.size.height = v26;
            if (!CGRectIsNull(v36))
            {
              if (_UIFocusRectSmartIntersectsRect(v13, v15, v17, v19, v20, v22, v24, v26))
              {

LABEL_18:
                p_appearingFocusEnvironment = &self->_appearingFocusEnvironment;
                appearingFocusEnvironment = self->_appearingFocusEnvironment;
                if (appearingFocusEnvironment)
                {
                  v29 = _UIFocusEnvironmentFirstCommonAncestor(appearingFocusEnvironment, v10);

                  objc_storeStrong(p_appearingFocusEnvironment, v29);
                  v10 = v29;
                }

                else
                {
                  pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
                  objc_storeStrong(&self->_appearingFocusEnvironment, v10);
                  if (!pendingFocusUpdateRequest)
                  {
                    v31 = logger();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                    {
                      LOWORD(location[0]) = 0;
                      _os_log_debug_impl(&dword_24B885000, v31, OS_LOG_TYPE_DEBUG, "Scheduling focused item validation for appearing environment.", location, 2u);
                    }

                    objc_initWeak(location, self);
                    block[0] = MEMORY[0x277D85DD0];
                    block[1] = 3221225472;
                    block[2] = __44__UIFocusSystem__focusEnvironmentDidAppear___block_invoke;
                    block[3] = &unk_279014E70;
                    objc_copyWeak(&v33, location);
                    dispatch_async(MEMORY[0x277D85CD0], block);
                    objc_destroyWeak(&v33);
                    objc_destroyWeak(location);
                  }
                }

                goto LABEL_28;
              }
            }
          }
        }

LABEL_28:

LABEL_29:
LABEL_30:
      }
    }
  }
}

void __44__UIFocusSystem__focusEnvironmentDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateFocusIfNeeded];
}

- (id)_validatedAppearingFocusEnvironmentRequest
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = self->_appearingFocusEnvironment;
  if (v3)
  {
    v4 = logger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = v3;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v12 stringWithFormat:@"<%@: %p>", v15, v13];

      *buf = 138543362;
      v20 = v16;
      _os_log_debug_impl(&dword_24B885000, v4, OS_LOG_TYPE_DEBUG, "Validating focused item for appearing environment %{public}@.", buf, 0xCu);
    }

    _focusedItemOrDeferralTarget = [(UIFocusSystem *)self _focusedItemOrDeferralTarget];
    if (_focusedItemOrDeferralTarget && (_UIFocusEnvironmentRootAncestorEnvironment(v3), v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == self))
    {
      v8 = _UIFocusEnvironmentPreferredFocusMapContainer(v3);
      if (v8)
      {
        v9 = [[_UIFocusMap alloc] initWithFocusSystem:self rootContainer:v8 coordinateSpace:0 searchInfo:0 ignoresRootContainerClippingRect:0];
        if ([(_UIFocusMap *)v9 verifyFocusabilityForItem:_focusedItemOrDeferralTarget])
        {
          appearingFocusEnvironment = self->_appearingFocusEnvironment;
          self->_appearingFocusEnvironment = 0;

          v7 = 0;
        }

        else
        {
          v7 = [[_UIFocusUpdateRequest alloc] initWithFocusSystem:self environment:v3];
        }
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[UIFocusSystem _validatedAppearingFocusEnvironmentRequest]"];
        [currentHandler handleFailureInFunction:v18 file:@"UIFocusSystem.m" lineNumber:979 description:@"Unable to find a focus map container. This should never happen."];

        v7 = 0;
        v9 = self->_appearingFocusEnvironment;
        self->_appearingFocusEnvironment = 0;
      }
    }

    else
    {
      v7 = 0;
      v8 = self->_appearingFocusEnvironment;
      self->_appearingFocusEnvironment = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_validatedPendingFocusUpdateRequest
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = self->_pendingFocusUpdateRequest;
  v4 = v3;
  if (v3 && ![(_UIFocusUpdateRequest *)v3 isValidInFocusSystem:self])
  {
    v6 = logger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      environment = [(_UIFocusUpdateRequest *)v4 environment];
      if (environment)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v10 = [v11 stringWithFormat:@"<%@: %p>", v13, environment];
      }

      else
      {
        v10 = @"(nil)";
      }

      v14 = MEMORY[0x277CCACA8];
      selfCopy = self;
      v16 = v10;
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      selfCopy = [v14 stringWithFormat:@"<%@: %p>", v18, selfCopy];

      *buf = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = selfCopy;
      _os_log_error_impl(&dword_24B885000, v6, OS_LOG_TYPE_ERROR, "Found invalid pending focus update request for environment %{public}@ in focus system %{public}@.", buf, 0x16u);
    }

    pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
    self->_pendingFocusUpdateRequest = 0;

    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (id)_topEnvironment
{
  selfCopy = self;
  v3 = selfCopy;
  v4 = selfCopy;
  if ((*&selfCopy->_flags & 0x40) == 0 || (-[UIFocusSystem delegate](selfCopy, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), [v6 _topEnvironmentForFocusSystem:v3], v4 = objc_claimAutoreleasedReturnValue(), v3, v6, v4) && ((disappearingFocusEnvironment = v3->_disappearingFocusEnvironment) != 0 && (_UIFocusEnvironmentIsAncestorOfEnvironment(disappearingFocusEnvironment, v4) & 1) != 0 || !_UIFocusEnvironmentIsAncestorOfEnvironment(v3, v4)))
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
    v4 = v5;
  }

  return v5;
}

- (BOOL)_isEnvironmentEligibleForFocusUpdate:(id)update fallbackToEnvironment:(id *)environment debugReport:(id)report
{
  updateCopy = update;
  reportCopy = report;
  if (![(UIFocusSystem *)self _isEnabled])
  {
    v10 = [_UIDebugIssue issueWithDescription:@"Focus is not currently enabled in this environment's focus system, updates will be delayed."];
    [reportCopy addIssue:v10];
  }

  _topEnvironment = [(UIFocusSystem *)self _topEnvironment];
  v12 = _topEnvironment;
  if (!_topEnvironment)
  {
    _focusItemForValidation = [_UIDebugIssue issueWithDescription:@"The current first responder is not a focus environment, no focus updates are allowed as that would force the first responder to change."];
    [reportCopy addIssue:_focusItemForValidation];
    v23 = 0;
LABEL_22:

    goto LABEL_23;
  }

  IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(_topEnvironment, updateCopy);
  if (v12 != updateCopy)
  {
    v14 = IsAncestorOfEnvironment;
    _focusItemForValidation = [(UIFocusSystem *)self _focusItemForValidation];
    v16 = self->_pendingFocusUpdateRequest;
    v17 = v16;
    if (v16)
    {
      if (_focusItemForValidation)
      {
        v18 = 1;
      }

      else
      {
        v18 = v14;
      }

      if (v18 != 1 || ([(_UIFocusUpdateRequest *)v16 environment], v19 = objc_claimAutoreleasedReturnValue(), v20 = _UIFocusEnvironmentIsAncestorOfEnvironment(updateCopy, v19), v19, (v20 & 1) == 0))
      {
        v21 = @"An ancestor of this environment has already requested a focus update, which takes priority.";
LABEL_12:
        v22 = [_UIDebugIssue issueWithDescription:v21];
        [reportCopy addIssue:v22];

LABEL_13:
        v23 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    else if (_focusItemForValidation)
    {
      if ((_UIFocusEnvironmentIsAncestorOfEnvironment(updateCopy, _focusItemForValidation) & 1) == 0)
      {
        v21 = @"This environment does not contain the currently focused item.";
        goto LABEL_12;
      }
    }

    else if (((v12 != self) & v14) == 0)
    {
      if (v12 == self)
      {
        v25 = @"Nothing is currently focused, so this environment's request will be ignored and focus will be reset to the focus system's preferred focused item.";
      }

      else
      {
        v25 = @"This environment is not inside the current first responder.";
      }

      v26 = [_UIDebugIssue issueWithDescription:v25];
      [reportCopy addIssue:v26];

      if (environment)
      {
        v27 = v12;
        v23 = 0;
        *environment = v12;
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    v23 = 1;
    goto LABEL_21;
  }

  v23 = 1;
LABEL_23:

  return v23;
}

- (void)_updateWantsTreeLocking
{
  behavior = [(UIFocusSystem *)self behavior];
  wantsTreeLocking = [behavior wantsTreeLocking];

  treeLock = self->_treeLock;
  if (wantsTreeLocking)
  {
    if (!treeLock)
    {
      v6 = objc_opt_new();
      v7 = self->_treeLock;
      self->_treeLock = v6;

      MEMORY[0x2821F96F8](v6, v7);
    }
  }

  else if (treeLock)
  {
    self->_treeLock = 0;

    [(UIFocusSystem *)self _reevaluateLockedEnvironments];
  }
}

- (BOOL)_isEnvironmentLocked:(id)locked
{
  lockedCopy = locked;
  treeLock = [(UIFocusSystem *)self treeLock];
  v6 = treeLock;
  if (treeLock)
  {
    v7 = [treeLock isEnvironmentLocked:lockedCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_lockEnvironment:(id)environment
{
  environmentCopy = environment;
  treeLock = [(UIFocusSystem *)self treeLock];
  v5 = treeLock;
  if (treeLock)
  {
    [treeLock lockEnvironmentTree:environmentCopy];
  }
}

- (void)_unlockEnvironment:(id)environment
{
  environmentCopy = environment;
  treeLock = [(UIFocusSystem *)self treeLock];
  v5 = treeLock;
  if (!treeLock || [treeLock unlockEnvironmentTree:environmentCopy])
  {
    [(UIFocusSystem *)self _reevaluateLockedEnvironments];
  }
}

- (void)updateFocusIfNeeded
{
  v79 = *MEMORY[0x277D85DE8];
  if (![(UIFocusSystem *)self _focusSystemIsValid])
  {
    return;
  }

  if (![(UIFocusSystem *)self _isEnabled])
  {
    return;
  }

  flags = self->_flags;
  if ((*&flags & 9) != 0)
  {
    return;
  }

  if (self->_appearingFocusEnvironment)
  {
    v5 = [(UIFocusSystem *)self _isEnvironmentLocked:?];
    flags = self->_flags;
    if (v5)
    {
      self->_flags = (*&flags | 8);
      return;
    }
  }

  if ((*&flags & 2) != 0)
  {
    v22 = logger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24B885000, v22, OS_LOG_TYPE_ERROR, "Calling updateFocusIfNeeded while a focus update is in progress. This call will be ignored.", buf, 2u);
    }

    return;
  }

  self->_flags = (*&flags | 0x20);
  _validatedPendingFocusUpdateRequest = [(UIFocusSystem *)self _validatedPendingFocusUpdateRequest];
  _validatedAppearingFocusEnvironmentRequest = [(UIFocusSystem *)self _validatedAppearingFocusEnvironmentRequest];
  if (!(_validatedPendingFocusUpdateRequest | _validatedAppearingFocusEnvironmentRequest))
  {
    _validatedPendingFocusUpdateRequest = 0;
LABEL_60:
    self->_flags = (*&self->_flags & 0xFFFFFFDF | (32 * ((*&flags >> 5) & 1)));
    deepestPreferredFocusableItemCacheForCurrentUpdate = self->_deepestPreferredFocusableItemCacheForCurrentUpdate;
    self->_deepestPreferredFocusableItemCacheForCurrentUpdate = 0;

    goto LABEL_61;
  }

  _topEnvironment = [(UIFocusSystem *)self _topEnvironment];
  if (!_topEnvironment)
  {
    pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
    self->_pendingFocusUpdateRequest = 0;

    appearingFocusEnvironment = self->_appearingFocusEnvironment;
    self->_appearingFocusEnvironment = 0;

    v25 = *&self->_flags & 0xFFFFFFDF | (32 * ((*&flags >> 5) & 1));
LABEL_34:
    self->_flags = v25;
    goto LABEL_61;
  }

  v9 = _topEnvironment;
  if (_validatedPendingFocusUpdateRequest)
  {
    environment = [_validatedPendingFocusUpdateRequest environment];
    IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(v9, environment);

    if ((IsAncestorOfEnvironment & 1) == 0)
    {
      v12 = [_validatedPendingFocusUpdateRequest requestByRedirectingRequestToEnvironment:v9];

      _validatedPendingFocusUpdateRequest = v12;
    }
  }

  if (_validatedAppearingFocusEnvironmentRequest)
  {
    environment2 = [_validatedAppearingFocusEnvironmentRequest environment];
    v14 = _UIFocusEnvironmentFirstCommonAncestor(v9, environment2);

    if (v14 != v9)
    {
      v15 = v14;

      v9 = v15;
    }

    if (_validatedPendingFocusUpdateRequest)
    {
      environment3 = [_validatedPendingFocusUpdateRequest environment];
      v17 = _validatedAppearingFocusEnvironmentRequest;
      environment4 = [_validatedAppearingFocusEnvironmentRequest environment];
      v19 = _UIFocusEnvironmentFirstCommonAncestor(environment3, environment4);

      if (!v19)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1217 description:@"The appearing environment and the requested environment are not part of the same focus system."];
      }

      environment5 = [_validatedPendingFocusUpdateRequest environment];

      if (v19 != environment5)
      {
        v21 = [_validatedPendingFocusUpdateRequest requestByRedirectingRequestToEnvironment:v19];

        _validatedPendingFocusUpdateRequest = v21;
      }

      _validatedAppearingFocusEnvironmentRequest = v17;
    }

    else
    {
      _validatedPendingFocusUpdateRequest = _validatedAppearingFocusEnvironmentRequest;
    }
  }

  environment6 = [_validatedPendingFocusUpdateRequest environment];
  v27 = [(UIFocusSystem *)self _isEnvironmentLocked:environment6];

  if (v27)
  {
    v28 = logger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      environment7 = [_validatedPendingFocusUpdateRequest environment];
      *buf = 138412290;
      v78 = environment7;
      _os_log_debug_impl(&dword_24B885000, v28, OS_LOG_TYPE_DEBUG, "Postponing update for locked environment %@", buf, 0xCu);
    }

    v25 = *&flags & 0x20 | *&self->_flags & 0xFFFFFFDF | 8;
    goto LABEL_34;
  }

  v76 = self->_appearingFocusEnvironment;
  v29 = self->_pendingFocusUpdateRequest;
  self->_pendingFocusUpdateRequest = 0;

  v30 = self->_appearingFocusEnvironment;
  self->_appearingFocusEnvironment = 0;

  v31 = [[UIFocusUpdateContext alloc] _initWithFocusUpdateRequest:_validatedPendingFocusUpdateRequest];
  v32 = logger();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);

  if (v33)
  {
    v34 = objc_alloc_init(_UIDebugIssueReport);
    [v31 _setValidationReport:v34];

    v35 = objc_alloc_init(_UIDebugLogReport);
    [v31 _setPreferredFocusReport:v35];
  }

  nextFocusedItem = [v31 nextFocusedItem];
  if (nextFocusedItem || !v9)
  {
LABEL_55:

LABEL_57:
    disappearingFocusEnvironment = self->_disappearingFocusEnvironment;
    self->_disappearingFocusEnvironment = 0;

    updateThrottle = [(UIFocusSystem *)self updateThrottle];
    [updateThrottle didCreateProgrammaticFocusUpdateContext:v31];

    v60 = logger();
    v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG);

    v62 = 0;
    if (v61)
    {
      v62 = [[_UIFocusUpdateReport alloc] initWithFocusSystem:self];
      [(_UIFocusUpdateReport *)v62 setContext:v31];
    }

    v63 = [(UIFocusSystem *)self _configureFocusDeferralIfNecessaryForContext:v31 report:v62];

    [(UIFocusSystem *)self _updateFocusWithContext:v63 report:v62];
    goto LABEL_60;
  }

  v75 = _validatedAppearingFocusEnvironmentRequest;
  while (1)
  {
    environment8 = [_validatedPendingFocusUpdateRequest environment];
    if (!environment8 || (v38 = environment8, [_validatedPendingFocusUpdateRequest environment], v39 = objc_claimAutoreleasedReturnValue(), v39, v38, v39 == v9))
    {
LABEL_56:
      _validatedAppearingFocusEnvironmentRequest = v75;
      goto LABEL_57;
    }

    environment9 = [_validatedPendingFocusUpdateRequest environment];
    if (_UIFocusEnvironmentPrefersFocusContainment(environment9))
    {
      _effectiveFocusDeferralBehavior = [(UIFocusSystem *)self _effectiveFocusDeferralBehavior];

      if (_effectiveFocusDeferralBehavior == 3)
      {
        [(UIFocusSystem *)self _resetFocusDeferral];
      }
    }

    else
    {
    }

    requestByRedirectingRequestToNextContainerEnvironment = [_validatedPendingFocusUpdateRequest requestByRedirectingRequestToNextContainerEnvironment];
    if (!requestByRedirectingRequestToNextContainerEnvironment)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[UIFocusSystem updateFocusIfNeeded]"];
      [currentHandler2 handleFailureInFunction:v73 file:@"UIFocusSystem.m" lineNumber:1266 description:@"Iterating through container providing environments resulted in a nil request without ever reaching the defined top environment. This should never happen."];

      nextFocusedItem = currentHandler2;
      goto LABEL_54;
    }

    v43 = requestByRedirectingRequestToNextContainerEnvironment;
    environment10 = [(_UIFocusUpdateRequest *)requestByRedirectingRequestToNextContainerEnvironment environment];
    v45 = _UIFocusEnvironmentIsAncestorOfEnvironment(v9, environment10);

    if ((v45 & 1) == 0)
    {
      v46 = [_validatedPendingFocusUpdateRequest requestByRedirectingRequestToEnvironment:v9];

      v43 = v46;
      if (!v46)
      {
        goto LABEL_56;
      }
    }

    environment11 = [(_UIFocusUpdateRequest *)v43 environment];
    v48 = [(UIFocusSystem *)self _isEnvironmentLocked:environment11];

    if (v48)
    {
      break;
    }

    v49 = v43;

    v50 = [[UIFocusUpdateContext alloc] _initWithFocusUpdateRequest:v49];
    v51 = logger();
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG);

    if (v52)
    {
      _preferredFocusReport = [v31 _preferredFocusReport];
      [_preferredFocusReport addLineBreak];

      _preferredFocusReport2 = [v31 _preferredFocusReport];
      [_preferredFocusReport2 addMessage:@" === unable to find focused item in context. retrying with updated request. === "];

      _preferredFocusReport3 = [v31 _preferredFocusReport];
      [_preferredFocusReport3 addLineBreak];

      _validationReport = [v31 _validationReport];
      [v50 _setValidationReport:_validationReport];

      _preferredFocusReport4 = [v31 _preferredFocusReport];
      [v50 _setPreferredFocusReport:_preferredFocusReport4];
    }

    nextFocusedItem = [v50 nextFocusedItem];
    _validatedPendingFocusUpdateRequest = v49;
    v31 = v50;
    if (nextFocusedItem)
    {
      v31 = v50;
      _validatedPendingFocusUpdateRequest = v49;
LABEL_54:
      _validatedAppearingFocusEnvironmentRequest = v75;
      goto LABEL_55;
    }
  }

  v65 = logger();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    environment12 = [(_UIFocusUpdateRequest *)v43 environment];
    *buf = 138412290;
    v78 = environment12;
    _os_log_debug_impl(&dword_24B885000, v65, OS_LOG_TYPE_DEBUG, "Postponing update for locked environment %@", buf, 0xCu);
  }

  *&self->_flags |= 8u;
  v66 = self->_pendingFocusUpdateRequest;
  self->_pendingFocusUpdateRequest = v43;
  v67 = v43;

  v68 = self->_appearingFocusEnvironment;
  self->_appearingFocusEnvironment = v76;
  v69 = v76;

  _validatedAppearingFocusEnvironmentRequest = v75;
LABEL_61:
}

- (BOOL)_updateFocusWithContext:(id)context report:(id)report
{
  v43 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  reportCopy = report;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1325 description:@"Attempting to initiate a focus update with a nil context."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_focusedItem);
  [contextCopy _willUpdateFocusFromFocusedItem:WeakRetained];
  v10 = [contextCopy _isValidInFocusSystem:self];
  shouldLog = [reportCopy shouldLog];
  v12 = shouldLog;
  if (v10)
  {
    if (shouldLog)
    {
      v13 = logger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v35 = +[(_UIDebugReportFormatter *)_UIFocusUpdateReportFormatter];
        v36 = [v35 stringFromReport:reportCopy];
        v39 = 138543618;
        v40 = contextCopy;
        v41 = 2114;
        v42 = v36;
        _os_log_debug_impl(&dword_24B885000, v13, OS_LOG_TYPE_DEBUG, "Updating focus with context %{public}@:\n%{public}@", &v39, 0x16u);
      }
    }

    flags = self->_flags;
    if ((*&flags & 2) != 0)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1348 description:@"_ignoreFocusUpdateIfNeeded should never be YES at the beginning of a focus update."];

      flags = self->_flags;
    }

    self->_flags = (*&flags | 2);
    if ((*&flags & 0x200) != 0)
    {
      delegate = [(UIFocusSystem *)self delegate];
      [delegate _focusSystem:self willUpdateFocusInContext:contextCopy];
    }

    [(UIFocusSystem *)self _sendWillUpdateFocusNotificationsInContext:contextCopy];
    objc_storeWeak(&self->_previousFocusedItem, WeakRetained);
    nextFocusedItem = [contextCopy nextFocusedItem];
    objc_storeWeak(&self->_focusedItem, nextFocusedItem);
    objc_storeWeak(&self->_deepestPreferredFocusEnvironment, 0);
    pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
    self->_pendingFocusUpdateRequest = 0;

    appearingFocusEnvironment = self->_appearingFocusEnvironment;
    self->_appearingFocusEnvironment = 0;

    [(UIFocusSystem *)self _clearFocusItemAncestorCache];
    [(UIFocusSystem *)self _sendDidUpdateFocusNotificationsInContext:contextCopy];
    if ((*(&self->_flags + 1) & 4) != 0)
    {
      delegate2 = [(UIFocusSystem *)self delegate];
      [delegate2 _focusSystem:self didUpdateFocusInContext:contextCopy];
    }

    _focusCasting = [(UIFocusSystem *)self _focusCasting];

    if (_focusCasting)
    {
      _focusCasting2 = [(UIFocusSystem *)self _focusCasting];
      [_focusCasting2 updateFocusCastingWithContext:contextCopy];
    }

    _focusMovementCache = [(UIFocusSystem *)self _focusMovementCache];

    if (_focusMovementCache)
    {
      _focusMovementCache2 = [(UIFocusSystem *)self _focusMovementCache];
      [_focusMovementCache2 updateCacheWithContext:contextCopy];
    }

    [(UIFocusSystem *)self _didFinishUpdatingFocusInContext:contextCopy];
    [contextCopy _didUpdateFocus];
    *&self->_flags &= ~2u;
    if (nextFocusedItem && nextFocusedItem != WeakRetained)
    {
      _focusMovement = [contextCopy _focusMovement];
      if (_focusMovement)
      {
        _isDeferredUpdate = 1;
      }

      else
      {
        _isDeferredUpdate = [contextCopy _isDeferredUpdate];
      }

      [(UIFocusSystem *)self _tickHasSeenFocusedItemTimer:_isDeferredUpdate];
    }

    v28 = objc_loadWeakRetained(&self->_previousFocusedItem);
    _previouslyFocusedGroupIdentifier = [contextCopy _previouslyFocusedGroupIdentifier];
    v30 = _previouslyFocusedGroupIdentifier;
    if (v28 && _previouslyFocusedGroupIdentifier)
    {
      _nextFocusedGroupIdentifier = [contextCopy _nextFocusedGroupIdentifier];
      v32 = _nextFocusedGroupIdentifier;
      if (!_nextFocusedGroupIdentifier || ([_nextFocusedGroupIdentifier isEqualToString:v30] & 1) == 0)
      {
        _focusGroupHistory = [(UIFocusSystem *)self _focusGroupHistory];
        [_focusGroupHistory setLastFocusedItem:v28 forGroupIdentifier:v30];
      }
    }

    goto LABEL_36;
  }

  nextFocusedItem = logger();
  v26 = os_log_type_enabled(nextFocusedItem, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v26)
    {
      v27 = +[(_UIDebugReportFormatter *)_UIFocusUpdateReportFormatter];
      v28 = [v27 stringFromReport:reportCopy];
      v39 = 138543618;
      v40 = contextCopy;
      v41 = 2114;
      v42 = v28;
      _os_log_impl(&dword_24B885000, nextFocusedItem, OS_LOG_TYPE_INFO, "Failed to update focus with context %{public}@:\n%{public}@", &v39, 0x16u);

LABEL_36:
    }
  }

  else if (v26)
  {
    v39 = 138543362;
    v40 = contextCopy;
    _os_log_impl(&dword_24B885000, nextFocusedItem, OS_LOG_TYPE_INFO, "Failed to update focus with context %{public}@. No additional info available.", &v39, 0xCu);
  }

  return v10;
}

- (void)_notifyEnvironment:(id)environment didUpdateFocusInContext:(id)context
{
  environmentCopy = environment;
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    [environmentCopy _didUpdateFocusInContext:contextCopy];
  }

  else if ((*(&self->_flags + 1) & 0x40) != 0)
  {
    delegate = [(UIFocusSystem *)self delegate];
    [delegate _focusSystem:self environment:environmentCopy didUpdateFocusInContext:contextCopy];
  }
}

- (void)_sendWillUpdateFocusNotificationsInContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1441 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__UIFocusSystem__sendWillUpdateFocusNotificationsInContext___block_invoke;
  v8[3] = &unk_279014EC0;
  v9 = contextCopy;
  v6 = contextCopy;
  [(UIFocusSystem *)self _sendNotificationsForFocusUpdateInContext:v6 usingBlock:v8];
}

void __60__UIFocusSystem__sendWillUpdateFocusNotificationsInContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 _willUpdateFocusInContext:*(a1 + 32)];
  }
}

- (void)_sendDidUpdateFocusNotificationsInContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1452 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__UIFocusSystem__sendDidUpdateFocusNotificationsInContext___block_invoke;
  v8[3] = &unk_279014EE8;
  v8[4] = self;
  v9 = contextCopy;
  v6 = contextCopy;
  [(UIFocusSystem *)self _sendNotificationsForFocusUpdateInContext:v6 usingBlock:v8];
}

- (void)_sendNotificationsForFocusUpdateInContext:(id)context usingBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v9 = blockCopy;
  if (contextCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1462 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1463 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_3:
  previouslyFocusedItem = [contextCopy previouslyFocusedItem];
  nextFocusedItem = [contextCopy nextFocusedItem];
  _commonAncestorEnvironment = [contextCopy _commonAncestorEnvironment];
  if (previouslyFocusedItem)
  {
    if ((*(&self->_flags + 1) & 0x10) != 0)
    {
      delegate = [(UIFocusSystem *)self delegate];
      [delegate _focusSystem:self willMessageOldFocusNodes:contextCopy];
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__UIFocusSystem__sendNotificationsForFocusUpdateInContext_usingBlock___block_invoke;
    v19[3] = &unk_279014F10;
    v20 = _commonAncestorEnvironment;
    v21 = v9;
    _UIFocusEnvironmentEnumerateAncestorEnvironments(previouslyFocusedItem, v19);
  }

  if (nextFocusedItem)
  {
    if ((*(&self->_flags + 1) & 0x20) != 0)
    {
      delegate2 = [(UIFocusSystem *)self delegate];
      [delegate2 _focusSystem:self willMessageNewFocusNodes:contextCopy];
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__UIFocusSystem__sendNotificationsForFocusUpdateInContext_usingBlock___block_invoke_2;
    v17[3] = &unk_279014F38;
    v18 = v9;
    _UIFocusEnvironmentEnumerateAncestorEnvironments(nextFocusedItem, v17);
  }
}

uint64_t __70__UIFocusSystem__sendNotificationsForFocusUpdateInContext_usingBlock___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 32) != a2)
  {
    return (*(*(result + 40) + 16))();
  }

  *a3 = 1;
  return result;
}

- (void)_performWithoutFocusUpdates:(id)updates
{
  if (updates)
  {
    flags = self->_flags;
    self->_flags = (*&flags | 2);
    (*(updates + 2))(updates, a2);
    self->_flags = (*&self->_flags & 0xFFFFFFFD | (2 * ((*&flags >> 1) & 1)));
  }
}

- (BOOL)_updateFocusImmediatelyWithContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1517 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v6 = logger();
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {

    goto LABEL_7;
  }

  _focusMovement = [contextCopy _focusMovement];

  if (!_focusMovement)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = [[_UIFocusUpdateReport alloc] initWithFocusSystem:self];
  [(_UIFocusUpdateReport *)v8 setContext:contextCopy];
LABEL_8:
  v9 = [(UIFocusSystem *)self _configureFocusDeferralIfNecessaryForContext:contextCopy report:v8];

  v10 = [(UIFocusSystem *)self _updateFocusWithContext:v9 report:v8];
  return v10;
}

- (BOOL)_updateFocusImmediatelyToEnvironment:(id)environment startDeferringOnLostFocus:(BOOL)focus suppressLostFocusUpdate:(BOOL)update
{
  environmentCopy = environment;
  if ((*&self->_flags & 2) != 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[UIFocusSystem _updateFocusImmediatelyToEnvironment:startDeferringOnLostFocus:suppressLostFocusUpdate:]"];
    [currentHandler handleFailureInFunction:v24 file:@"UIFocusSystem.m" lineNumber:1538 description:@"UIKit is trying to programatically move focus while inside another focus update. This typically happens when clients are manipulating state in response to a state change callout for the same state."];

    if ((*&self->_flags & 2) != 0)
    {
      goto LABEL_14;
    }
  }

  if (!dyld_program_sdk_at_least() || [(UIFocusSystem *)self _isEnabled])
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __104__UIFocusSystem__updateFocusImmediatelyToEnvironment_startDeferringOnLostFocus_suppressLostFocusUpdate___block_invoke;
    v25[3] = &unk_279014F60;
    focusCopy = focus;
    v25[4] = self;
    updateCopy = update;
    v9 = MEMORY[0x24C24D980](v25);
    v10 = [(UIFocusSystem *)self _contextForUpdateToEnvironment:environmentCopy allowsOverridingPreferedFocusEnvironments:0 allowsDeferral:1];
    v11 = v10;
    if (environmentCopy && ([v10 nextFocusedItem], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      _topEnvironment = [(UIFocusSystem *)self _topEnvironment];
      v19 = _topEnvironment;
      if (_topEnvironment == self)
      {

        v19 = 0;
      }

      _focusedItemOrDeferralTarget = [(UIFocusSystem *)self _focusedItemOrDeferralTarget];
      v21 = _focusedItemOrDeferralTarget;
      if (v19 && _focusedItemOrDeferralTarget && (_UIFocusEnvironmentIsAncestorOfEnvironment(v19, _focusedItemOrDeferralTarget) & 1) == 0)
      {
        v9[2](v9);
      }
    }

    else
    {
      if (![(UIFocusSystem *)self _isEnabled])
      {
        nextFocusedItem = [v11 nextFocusedItem];
        objc_storeWeak(&self->_previousFocusedItem, nextFocusedItem);

        pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
        self->_pendingFocusUpdateRequest = 0;

        [(UIFocusSystem *)self _setNeedsFocusRestoration];
        v14 = 1;
LABEL_25:

        goto LABEL_26;
      }

      if ([v11 _isValidInFocusSystem:self])
      {
        v13 = [(UIFocusSystem *)self _configureFocusDeferralIfNecessaryForContext:v11 report:0];

        if ([(UIFocusSystem *)self _updateFocusImmediatelyWithContext:v13])
        {
          if (![(UIFocusSystem *)self _hasValidItemForCurrentDeferralState])
          {
            v9[2](v9);
          }

          v14 = 1;
        }

        else
        {
          v14 = 0;
        }

        v11 = v13;
        goto LABEL_25;
      }
    }

    v14 = 0;
    goto LABEL_25;
  }

  v17 = self->_pendingFocusUpdateRequest;
  self->_pendingFocusUpdateRequest = 0;

  [(UIFocusSystem *)self _cancelPendingFocusRestoration];
LABEL_14:
  v14 = 0;
LABEL_26:

  return v14;
}

uint64_t __104__UIFocusSystem__updateFocusImmediatelyToEnvironment_startDeferringOnLostFocus_suppressLostFocusUpdate___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 40) == 1)
  {
    result = [*(result + 32) _effectiveFocusDeferralBehavior];
    if (result)
    {
      result = [*(v1 + 32) _resetFocusDeferral];
    }
  }

  if ((*(v1 + 41) & 1) == 0)
  {
    v2 = *(v1 + 32);

    return [v2 requestFocusUpdateToEnvironment:v2];
  }

  return result;
}

- (id)_contextForUpdateToEnvironment:(id)environment allowsOverridingPreferedFocusEnvironments:(BOOL)environments allowsDeferral:(BOOL)deferral
{
  deferralCopy = deferral;
  environmentsCopy = environments;
  environmentCopy = environment;
  if (environmentCopy)
  {
    v9 = [[_UIFocusUpdateRequest alloc] initWithFocusSystem:self environment:environmentCopy];
  }

  else
  {
    v9 = [_UIFocusUpdateRequest requestForRemovingFocusInFocusSystem:self];
  }

  v10 = v9;
  [(_UIFocusUpdateRequest *)v9 setAllowsOverridingPreferedFocusEnvironments:environmentsCopy];
  [(_UIFocusUpdateRequest *)v10 setAllowsDeferral:deferralCopy];
  v11 = [[UIFocusUpdateContext alloc] _initWithFocusUpdateRequest:v10];

  return v11;
}

- (BOOL)_performFocusMovement:(id)movement
{
  movementCopy = movement;
  _movementPerformer = [(UIFocusSystem *)self _movementPerformer];
  v6 = [_movementPerformer performFocusMovement:movementCopy];

  return v6;
}

- (id)_closestFocusableItemToPoint:(CGPoint)point inEnvironment:(id)environment constrainedToRect:(CGRect)rect distanceMeasuringUnitPoint:(CGPoint)unitPoint itemFilter:(id)filter
{
  y = unitPoint.y;
  x = unitPoint.x;
  height = rect.size.height;
  width = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  v14 = point.y;
  v15 = point.x;
  environmentCopy = environment;
  filterCopy = filter;
  focusItemContainer = [environmentCopy focusItemContainer];
  if (focusItemContainer)
  {
    focusItemContainer2 = [(UIFocusSystem *)self focusItemContainer];
    coordinateSpace = [focusItemContainer2 coordinateSpace];

    coordinateSpace2 = [focusItemContainer coordinateSpace];
    [coordinateSpace2 convertPoint:coordinateSpace toCoordinateSpace:{v15, v14}];
    v24 = v23;
    v26 = v25;
    [coordinateSpace2 convertRect:coordinateSpace toCoordinateSpace:{v13, v12, width, height}];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = [[_UIFocusMap alloc] initWithFocusSystem:self rootEnvironment:environmentCopy coordinateSpace:coordinateSpace searchInfo:0 ignoresRootContainerClippingRect:1];
    v36 = [(_UIFocusMap *)v35 _closestFocusableItemToPoint:filterCopy inRect:v24 itemFilter:v26 distanceMeasuringUnitPoint:v28, v30, v32, v34, x, y];
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (void)invalidateFocusItemContainer:(id)container
{
  containerCopy = container;
  _focusMovementCache = [(UIFocusSystem *)self _focusMovementCache];
  [_focusMovementCache invalidateFocusItemContainer:containerCopy];
}

- (_UIFocusEnvironmentPreferenceCache)_deepestPreferredFocusableItemCacheForCurrentUpdate
{
  if (!self->_deepestPreferredFocusableItemCacheForCurrentUpdate && (*&self->_flags & 0x20) != 0)
  {
    behavior = [(UIFocusSystem *)self behavior];
    cachesPreferredEnvironmentEnumerationResults = [behavior cachesPreferredEnvironmentEnumerationResults];

    if (cachesPreferredEnvironmentEnumerationResults)
    {
      v5 = objc_opt_new();
      deepestPreferredFocusableItemCacheForCurrentUpdate = self->_deepestPreferredFocusableItemCacheForCurrentUpdate;
      self->_deepestPreferredFocusableItemCacheForCurrentUpdate = v5;
    }
  }

  v7 = self->_deepestPreferredFocusableItemCacheForCurrentUpdate;

  return v7;
}

- (void)_buildFocusItemAncestorCacheIfNecessary
{
  p_focusItemAncestorCache = &self->_focusItemAncestorCache;
  if (!self->_focusItemAncestorCache)
  {
    v4 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    WeakRetained = objc_loadWeakRetained(&self->_focusedItem);
    if (WeakRetained)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __56__UIFocusSystem__buildFocusItemAncestorCacheIfNecessary__block_invoke;
      v6[3] = &unk_279014F88;
      v7 = v4;
      _UIFocusEnvironmentEnumerateAncestorEnvironments(WeakRetained, v6);
      objc_storeStrong(p_focusItemAncestorCache, v4);
    }

    else
    {
      objc_storeStrong(p_focusItemAncestorCache, v4);
    }
  }
}

- (BOOL)_focusedItemIsContainedInEnvironment:(id)environment includeSelf:(BOOL)self
{
  environmentCopy = environment;
  if (_UIFocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic())
  {
    if (!self && (a2 = objc_loadWeakRetained(&self->_focusedItem), a2 == environmentCopy))
    {
      IsAncestorOfEnvironment = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_focusedItem);
      IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(environmentCopy, WeakRetained);

      if (self)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (!environmentCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1720 description:{@"Invalid parameter not satisfying: %@", @"environment != nil"}];
    }

    [(UIFocusSystem *)self _buildFocusItemAncestorCacheIfNecessary];
    if (self)
    {
      IsAncestorOfEnvironment = [(NSHashTable *)self->_focusItemAncestorCache containsObject:environmentCopy];
    }

    else
    {
      v10 = objc_loadWeakRetained(&self->_focusedItem);
      if (v10 == environmentCopy)
      {
        IsAncestorOfEnvironment = 0;
      }

      else
      {
        IsAncestorOfEnvironment = [(NSHashTable *)self->_focusItemAncestorCache containsObject:environmentCopy];
      }
    }
  }

LABEL_16:

  return IsAncestorOfEnvironment;
}

- (void)_reevaluateLockedEnvironments
{
  flags = self->_flags;
  self->_flags = (*&flags & 0xFFFFFFF7);
  if ((*&flags & 8) != 0 && (self->_pendingFocusUpdateRequest || self->_appearingFocusEnvironment))
  {
    v4 = logger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(location[0]) = 0;
      _os_log_debug_impl(&dword_24B885000, v4, OS_LOG_TYPE_DEBUG, "Trying to execute postponed update...", location, 2u);
    }

    objc_initWeak(location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__UIFocusSystem__reevaluateLockedEnvironments__block_invoke;
    block[3] = &unk_279014E70;
    objc_copyWeak(&v6, location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v6);
    objc_destroyWeak(location);
  }
}

void __46__UIFocusSystem__reevaluateLockedEnvironments__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateFocusIfNeeded];
}

- (void)_handleFocusMovementAction:(id)action
{
  [(UIFocusSystem *)self setPendingFocusMovementAction:action];
  if ([(UIFocusSystem *)self waitingForFocusMovementAction])
  {
    [(UIFocusSystem *)self _setEnabled:1];

    [(UIFocusSystem *)self setWaitingForFocusMovementAction:0];
  }
}

- (UIFocusEnvironment)_deepestPreferredFocusEnvironment
{
  _focusedItemOrDeferralTarget = [(UIFocusSystem *)self _focusedItemOrDeferralTarget];
  v4 = _focusedItemOrDeferralTarget;
  if (_focusedItemOrDeferralTarget)
  {
    v5 = _focusedItemOrDeferralTarget;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_deepestPreferredFocusEnvironment);

    if (!WeakRetained)
    {
      v7 = objc_alloc_init(_UIDeepestPreferredEnvironmentSearch);
      v8 = [(_UIDeepestPreferredEnvironmentSearch *)v7 deepestPreferredFocusEnvironmentForEnvironment:self];
      objc_storeWeak(&self->_deepestPreferredFocusEnvironment, v8);
    }

    v5 = objc_loadWeakRetained(&self->_deepestPreferredFocusEnvironment);
  }

  v9 = v5;

  return v9;
}

- (BOOL)_shouldReverseLayoutDirectionForEnvironment:(id)environment
{
  if ((*(&self->_flags + 2) & 0x10) == 0)
  {
    return 0;
  }

  selfCopy = self;
  environmentCopy = environment;
  delegate = [(UIFocusSystem *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate _focusSystem:selfCopy shouldReverseLayoutDirectionForEnvironment:environmentCopy];

  return selfCopy;
}

- (BOOL)_shouldReverseLinearWrappingForEnvironment:(id)environment
{
  if ((*(&self->_flags + 2) & 0x20) == 0)
  {
    return 0;
  }

  selfCopy = self;
  environmentCopy = environment;
  delegate = [(UIFocusSystem *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate _focusSystem:selfCopy shouldReverseLinearWrappingForEnvironment:environmentCopy];

  return selfCopy;
}

- (BOOL)_uiktest_updateFocusToItem:(id)item
{
  selfCopy = self;
  v4 = [(UIFocusSystem *)self _simulatedNonDeferredProgrammaticFocusUpdateToEnvironment:item];
  LOBYTE(selfCopy) = [(UIFocusSystem *)selfCopy _updateFocusWithContext:v4 report:0];

  return selfCopy;
}

- (void)_uiktest_disableFocusDeferral
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1842 description:@"This method is only to be used during UIKit tests."];
}

- (void)_uiktest_disableThrottle
{
  [(_UIFocusUpdateThrottle *)self->_updateThrottle teardown];
  updateThrottle = self->_updateThrottle;
  self->_updateThrottle = 0;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    if (objc_opt_respondsToSelector())
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFBF | v5);
    if (objc_opt_respondsToSelector())
    {
      v6 = 128;
    }

    else
    {
      v6 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFF7F | v6);
    if (objc_opt_respondsToSelector())
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFEFF | v7);
    if (objc_opt_respondsToSelector())
    {
      v8 = 512;
    }

    else
    {
      v8 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFDFF | v8);
    if (objc_opt_respondsToSelector())
    {
      v9 = 1024;
    }

    else
    {
      v9 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFBFF | v9);
    if (objc_opt_respondsToSelector())
    {
      v10 = 2048;
    }

    else
    {
      v10 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFF7FF | v10);
    if (objc_opt_respondsToSelector())
    {
      v11 = 4096;
    }

    else
    {
      v11 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFEFFF | v11);
    if (objc_opt_respondsToSelector())
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFDFFF | v12);
    if (objc_opt_respondsToSelector())
    {
      v13 = 0x4000;
    }

    else
    {
      v13 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFBFFF | v13);
    if (objc_opt_respondsToSelector())
    {
      v14 = 0x8000;
    }

    else
    {
      v14 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFF7FFF | v14);
    if (objc_opt_respondsToSelector())
    {
      v15 = 0x10000;
    }

    else
    {
      v15 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFEFFFF | v15);
    if (objc_opt_respondsToSelector())
    {
      v16 = 0x20000;
    }

    else
    {
      v16 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFDFFFF | v16);
    if (objc_opt_respondsToSelector())
    {
      v17 = 0x40000;
    }

    else
    {
      v17 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFBFFFF | v17);
    if (objc_opt_respondsToSelector())
    {
      v18 = 0x80000;
    }

    else
    {
      v18 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFF7FFFF | v18);
    if (objc_opt_respondsToSelector())
    {
      v19 = 0x100000;
    }

    else
    {
      v19 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFEFFFFF | v19);
    if (objc_opt_respondsToSelector())
    {
      v20 = 0x200000;
    }

    else
    {
      v20 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFDFFFFF | v20);
    if (objc_opt_respondsToSelector())
    {
      v21 = 0x400000;
    }

    else
    {
      v21 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFBFFFFF | v21);
  }
}

- (BOOL)_shouldRestoreFocusInContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1887 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  delegate = [(UIFocusSystem *)self delegate];
  v7 = delegate;
  if (delegate && (*(&self->_flags + 1) & 1) != 0)
  {
    IsAncestorOfEnvironment = [delegate _focusSystem:self shouldRestoreFocusInContext:contextCopy];
  }

  else
  {
    nextFocusedItem = [contextCopy nextFocusedItem];
    IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(self, nextFocusedItem);
  }

  return IsAncestorOfEnvironment;
}

- (void)_didFinishUpdatingFocusInContext:(id)context
{
  contextCopy = context;
  v11 = contextCopy;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1899 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    contextCopy = 0;
  }

  _sourceItemInfo = [contextCopy _sourceItemInfo];
  [_sourceItemInfo invalidateFocusedRegion];

  _destinationItemInfo = [v11 _destinationItemInfo];
  [_destinationItemInfo invalidateFocusedRegion];

  delegate = [(UIFocusSystem *)self delegate];
  v9 = delegate;
  if (delegate && (*(&self->_flags + 1) & 8) != 0)
  {
    [delegate _focusSystem:self didFinishUpdatingFocusInContext:v11];
  }
}

- (BOOL)_isScrollingScrollableContainer:(id)container targetContentOffset:(CGPoint *)offset
{
  containerCopy = container;
  delegate = [(UIFocusSystem *)self delegate];
  v8 = delegate;
  if (delegate && (*(&self->_flags + 2) & 0x40) != 0)
  {
    v9 = [delegate _focusSystem:self isScrollingScrollableContainer:containerCopy targetContentOffset:offset];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_handleFailedFocusMovementRequest:(id)request withPerformer:(id)performer
{
  if ((*(&self->_flags + 2) & 8) == 0)
  {
    return 0;
  }

  selfCopy = self;
  requestCopy = request;
  delegate = [(UIFocusSystem *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate _focusSystem:selfCopy handleFailedMovementRequest:requestCopy];

  return selfCopy;
}

- (void)setBehavior:(id)behavior
{
  behaviorCopy = behavior;
  p_behavior = &self->_behavior;
  if (self->_behavior != behaviorCopy)
  {
    v7 = behaviorCopy;
    objc_storeStrong(p_behavior, behavior);
    p_behavior = [(UIFocusSystem *)self _focusBehaviorDidChange];
    behaviorCopy = v7;
  }

  MEMORY[0x2821F96F8](p_behavior, behaviorCopy);
}

- (void)_focusBehaviorDidChange
{
  [(UIFocusSystem *)self _updateFocusUpdateThrottle];

  [(UIFocusSystem *)self _updateWantsTreeLocking];
}

- (void)_updateFocusUpdateThrottle
{
  behavior = [(UIFocusSystem *)self behavior];
  if ([behavior throttlesProgrammaticFocusUpdates])
  {
    updateThrottle = self->_updateThrottle;

    if (!updateThrottle)
    {
      objc_initWeak(&location, self);
      v5 = [_UIFocusUpdateThrottle alloc];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __43__UIFocusSystem__updateFocusUpdateThrottle__block_invoke;
      v11[3] = &unk_279014E70;
      objc_copyWeak(&v12, &location);
      v6 = [(_UIFocusUpdateThrottle *)v5 initWithUpdateHandler:v11];
      v7 = self->_updateThrottle;
      self->_updateThrottle = v6;

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
      return;
    }
  }

  else
  {
  }

  behavior2 = [(UIFocusSystem *)self behavior];
  if (([(_UIFocusUpdateThrottle *)behavior2 throttlesProgrammaticFocusUpdates]& 1) != 0)
  {
    v8 = behavior2;
  }

  else
  {
    v9 = self->_updateThrottle;

    if (!v9)
    {
      return;
    }

    [(_UIFocusUpdateThrottle *)self->_updateThrottle teardown];
    v8 = self->_updateThrottle;
    self->_updateThrottle = 0;
  }
}

void __43__UIFocusSystem__updateFocusUpdateThrottle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateFocusIfNeeded];
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x277CF0C00]) initWithObject:self];
  v4 = logger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    flags = self->_flags;

    if (*&flags)
    {
      v6 = [v3 appendObject:@"YES" withName:@"TEARDOWN RECEIVED"];
    }
  }

  else
  {
  }

  v7 = [v3 appendBool:self->_enabled withName:@"enabled"];
  WeakRetained = objc_loadWeakRetained(&self->_focusedItem);
  v9 = [v3 appendObject:WeakRetained withName:@"focusedItem"];

  pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
  if (pendingFocusUpdateRequest)
  {
    v11 = [v3 appendObject:pendingFocusUpdateRequest withName:@"pendingFocusUpdateRequest"];
  }

  v12 = logger();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_deferredFocusUpdateTarget);

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_deferredFocusUpdateTarget);
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

      v21 = [v3 appendObject:v19 withName:@"deferredFocusUpdateTarget"];
    }

    else
    {
      v20 = objc_loadWeakRetained(&self->_focusedItem);
      if (v20)
      {
      }

      else if ([(UIFocusSystem *)self _effectiveFocusDeferralBehavior])
      {
        v26 = [v3 appendObject:@"nil" withName:@"deferredFocusUpdateTarget"];
      }
    }

    treeLock = self->_treeLock;
    if (treeLock)
    {
      v23 = [v3 appendObject:treeLock withName:@"treeLock"];
    }
  }

  build = [v3 build];

  return build;
}

- (UIFocusItem)_previousFocusedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_previousFocusedItem);

  return WeakRetained;
}

- (_UIFocusSystemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end