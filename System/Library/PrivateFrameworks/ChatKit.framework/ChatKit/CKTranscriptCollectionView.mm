@interface CKTranscriptCollectionView
- (BOOL)unanimatedLayoutPassShouldSnapToTargetFrames;
- (CGRect)targetFrameForItemAtIndexPath:(id)path;
- (CKTranscriptCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)_stringForDynamicsDisabledReason:(int64_t)reason;
- (id)indexPathForItemAtPoint:(CGPoint)point;
- (id)indexPathForItemAtPoint:(CGPoint)point inSection:(int64_t)section;
- (void)__ck_scrollToBottom:(BOOL)bottom;
- (void)_updateScrollingLockStateForRecognizer:(id)recognizer;
- (void)beginDisablingTranscriptDynamicsForReason:(int64_t)reason;
- (void)beginHoldingContentOffsetUpdatesForReason:(id)reason;
- (void)configureAppEntityForConversationId:(id)id;
- (void)correctOverscrollIfNecessaryWithAnimationProperties:(id)properties;
- (void)didMoveToWindow;
- (void)endDisablingTranscriptDynamicsForReason:(int64_t)reason;
- (void)endHoldingContentOffsetUpdatesForAllReasons;
- (void)endHoldingContentOffsetUpdatesForReason:(id)reason;
- (void)enforceTranscriptScrollIntentWithAnimationProperties:(id)properties;
- (void)invalidateNeedsContentOffsetAdjustmentForNextContentSizeChange;
- (void)layoutSubviews;
- (void)performContentOffsetUpdateTemporarilyOverridingHoldStatus:(id)status;
- (void)reloadData;
- (void)safeAreaInsetsDidChange;
- (void)scrollToBottomHidingMessageAtIndexPath:(id)path computedInsets:(UIEdgeInsets)insets animationProperties:(id)properties;
- (void)scrollToBottomWithAnimationProperties:(id)properties computedInsets:(UIEdgeInsets)insets;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setContentOffset:(CGPoint)offset animationProperties:(id)properties;
- (void)setContentSize:(CGSize)size;
- (void)setNeedsContentOffsetAdjustmentForNextContentSizeChange;
- (void)setNeedsScrollIntentEnforced;
- (void)setScrollIndicatorInsets:(UIEdgeInsets)insets;
- (void)setTranscriptScrollIntent:(int64_t)intent;
- (void)swipeToReplyGestureHandler:(id)handler;
@end

@implementation CKTranscriptCollectionView

- (void)layoutSubviews
{
  needsScrollIntentEnforcementBlock = [(CKTranscriptCollectionView *)self needsScrollIntentEnforcementBlock];
  if (!needsScrollIntentEnforcementBlock || ([(CKTranscriptCollectionView *)self isDecelerating]& 1) != 0 || ([(CKTranscriptCollectionView *)self isScrollAnimating]& 1) != 0 || ([(CKTranscriptCollectionView *)self isDragging]& 1) != 0)
  {
    goto LABEL_7;
  }

  isTracking = [(CKTranscriptCollectionView *)self isTracking];

  if ((isTracking & 1) == 0)
  {
    needsScrollIntentEnforcementBlock = [(CKTranscriptCollectionView *)self needsScrollIntentEnforcementBlock];
    dispatch_async(MEMORY[0x1E69E96A0], needsScrollIntentEnforcementBlock);
LABEL_7:
  }

  v5.receiver = self;
  v5.super_class = CKTranscriptCollectionView;
  [(CKTranscriptCollectionView *)&v5 layoutSubviews];
}

- (CKTranscriptCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  v19.receiver = self;
  v19.super_class = CKTranscriptCollectionView;
  v4 = [(CKEditableCollectionView *)&v19 initWithFrame:layout collectionViewLayout:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(CKTranscriptCollectionView *)v4 setPrefetchingEnabled:0];
    v6 = +[CKUIBehavior sharedBehaviors];
    forceMinTranscriptMarginInsets = [v6 forceMinTranscriptMarginInsets];

    if (forceMinTranscriptMarginInsets)
    {
      v8 = +[CKUIBehavior sharedBehaviors];
      [v8 minTranscriptMarginInsets];
      [(CKEditableCollectionView *)v5 setMarginInsets:?];
    }

    v9 = objc_alloc_init(MEMORY[0x1E696AB50]);
    transcriptDynamicsDisabledReasons = v5->_transcriptDynamicsDisabledReasons;
    v5->_transcriptDynamicsDisabledReasons = v9;

    v5->_transcriptScrollIntent = 6;
    v11 = objc_alloc_init(MEMORY[0x1E696AB50]);
    contentOffsetDisabledReasons = v5->_contentOffsetDisabledReasons;
    v5->_contentOffsetDisabledReasons = v11;

    v13 = [MEMORY[0x1E695DFA8] set];
    hideShowPendingAnimations = v5->_hideShowPendingAnimations;
    v5->_hideShowPendingAnimations = v13;

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isSwipeToReplyEnabled = [mEMORY[0x1E69A8070] isSwipeToReplyEnabled];

    if (isSwipeToReplyEnabled)
    {
      panGestureRecognizer = [(CKTranscriptCollectionView *)v5 panGestureRecognizer];
      [panGestureRecognizer addTarget:v5 action:sel_swipeToReplyGestureHandler_];
    }
  }

  return v5;
}

- (void)setTranscriptScrollIntent:(int64_t)intent
{
  v14 = *MEMORY[0x1E69E9840];
  transcriptScrollIntent = self->_transcriptScrollIntent;
  if (transcriptScrollIntent != intent)
  {
    v6 = CKDebugNameForCKTranscriptScrollIntent(transcriptScrollIntent);
    v7 = CKDebugNameForCKTranscriptScrollIntent(intent);
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Transcript scroll intent changing from %{public}@ to %{public}@", &v10, 0x16u);
    }

    self->_transcriptScrollIntent = intent;
    if (intent != 2)
    {
      highlightedMessageScrollContext = self->_highlightedMessageScrollContext;
      self->_highlightedMessageScrollContext = 0;
    }
  }
}

- (void)enforceTranscriptScrollIntentWithAnimationProperties:(id)properties
{
  propertiesCopy = properties;
  delegate = [(CKTranscriptCollectionView *)self delegate];
  [delegate transcriptCollectionViewNeedsScrollIntentEnforced:self withAnimationProperties:propertiesCopy];
}

- (void)setNeedsScrollIntentEnforced
{
  needsScrollIntentEnforcementBlock = [(CKTranscriptCollectionView *)self needsScrollIntentEnforcementBlock];

  if (needsScrollIntentEnforcementBlock)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CKTranscriptCollectionView setNeedsScrollIntentEnforced];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __58__CKTranscriptCollectionView_setNeedsScrollIntentEnforced__block_invoke;
    v10 = &unk_1E72EC460;
    objc_copyWeak(&v11, &location);
    v5 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v7);
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CKTranscriptCollectionView setNeedsScrollIntentEnforced];
    }

    [(CKTranscriptCollectionView *)self setNeedsScrollIntentEnforcementBlock:v5, v7, v8, v9, v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __58__CKTranscriptCollectionView_setNeedsScrollIntentEnforced__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__CKTranscriptCollectionView_setNeedsScrollIntentEnforced__block_invoke_cold_1();
  }

  if (WeakRetained)
  {
    [WeakRetained setNeedsScrollIntentEnforcementBlock:0];
    v3 = +[CKScrollViewAnimationProperties inheritedAnimation];
    [WeakRetained enforceTranscriptScrollIntentWithAnimationProperties:v3];
  }

  else
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __58__CKTranscriptCollectionView_setNeedsScrollIntentEnforced__block_invoke_cold_2();
    }
  }
}

- (void)setNeedsContentOffsetAdjustmentForNextContentSizeChange
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "setNeedsContentOffsetAdjustmentForNextContentSizeChange", v4, 2u);
    }
  }

  [(CKTranscriptCollectionView *)self setShouldAdjustContentOffsetForContentSizeChangeIfNeeded:1];
}

- (void)invalidateNeedsContentOffsetAdjustmentForNextContentSizeChange
{
  if ([(CKTranscriptCollectionView *)self shouldAdjustContentOffsetForContentSizeChangeIfNeeded])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "invalidateNeedsContentOffsetAdjustmentForNextContentSizeChange -- Not previously invalidated", v4, 2u);
      }
    }

    [(CKTranscriptCollectionView *)self setShouldAdjustContentOffsetForContentSizeChangeIfNeeded:0];
    [(CKTranscriptCollectionView *)self setInsertScrollDelta:0.0];
  }
}

- (void)beginHoldingContentOffsetUpdatesForReason:(id)reason
{
  v14 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    v13 = reasonCopy;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "DISABLE: Content Offset changes for Reason: %{public}@", &v12, 0xCu);
  }

  [(NSCountedSet *)self->_contentOffsetDisabledReasons addObject:reasonCopy];
  v6 = [(NSCountedSet *)self->_contentOffsetDisabledReasons count];
  v7 = IMLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6 < 2)
  {
    if (v8)
    {
      contentOffsetDisabledReasons = self->_contentOffsetDisabledReasons;
      v12 = 138543362;
      v13 = contentOffsetDisabledReasons;
      v10 = "Content Offset changes are now disabled for one reason: %{public}@";
      goto LABEL_8;
    }
  }

  else if (v8)
  {
    v9 = self->_contentOffsetDisabledReasons;
    v12 = 138543362;
    v13 = v9;
    v10 = "Content Offset changes are now disabled for multiple reasons: %{public}@";
LABEL_8:
    _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, v10, &v12, 0xCu);
  }
}

- (void)endHoldingContentOffsetUpdatesForReason:(id)reason
{
  v15 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 138543362;
    v14 = reasonCopy;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "ENABLE: Content Offset changes for Reason: %{public}@", &v13, 0xCu);
  }

  [(NSCountedSet *)self->_contentOffsetDisabledReasons removeObject:reasonCopy];
  v6 = [(NSCountedSet *)self->_contentOffsetDisabledReasons count];
  v7 = IMLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      contentOffsetDisabledReasons = self->_contentOffsetDisabledReasons;
      v13 = 138543362;
      v14 = contentOffsetDisabledReasons;
      v10 = "Content Offset changes are still disabled for reasons: %{public}@";
      v11 = v7;
      v12 = 12;
LABEL_8:
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, v10, &v13, v12);
    }
  }

  else if (v8)
  {
    LOWORD(v13) = 0;
    v10 = "Content Offset changes are now enabled";
    v11 = v7;
    v12 = 2;
    goto LABEL_8;
  }
}

- (void)endHoldingContentOffsetUpdatesForAllReasons
{
  [(NSCountedSet *)self->_contentOffsetDisabledReasons removeAllObjects];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Transcript scroll offset - ended holding updates ALL keys", v3, 2u);
  }
}

- (void)performContentOffsetUpdateTemporarilyOverridingHoldStatus:(id)status
{
  v13 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v5 = [(NSCountedSet *)self->_contentOffsetDisabledReasons count];
  v6 = IMLogHandleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    contentOffsetDisabledReasons = self->_contentOffsetDisabledReasons;
    *v12 = 138543362;
    *&v12[4] = contentOffsetDisabledReasons;
    v9 = "Transcript scroll offset - temporarily overriding reasons: %{public}@";
    v10 = v6;
    v11 = 12;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *v12 = 0;
    v9 = "Transcript scroll offset - content offset is not currently disabled";
    v10 = v6;
    v11 = 2;
  }

  _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, v9, v12, v11);
LABEL_7:

  [(CKTranscriptCollectionView *)self setIsTemporarilyOverridingContentOffsetRestriction:1];
  if (statusCopy)
  {
    statusCopy[2](statusCopy);
  }

  [(CKTranscriptCollectionView *)self setIsTemporarilyOverridingContentOffsetRestriction:0, *v12];
}

- (void)__ck_scrollToBottom:(BOOL)bottom
{
  if (![(CKTranscriptCollectionView *)self ignoresAutomaticScrollsTowardBottom])
  {
    if (bottom)
    {
      [(CKTranscriptCollectionView *)self setTranscriptScrollIntent:6];
      v5.receiver = self;
      v5.super_class = CKTranscriptCollectionView;
      [(UIScrollView *)&v5 __ck_scrollToBottom:1];
    }

    else
    {
      [(CKTranscriptCollectionView *)self beginDisablingTranscriptDynamicsForReason:12];
      [(CKTranscriptCollectionView *)self setTranscriptScrollIntent:6];
      v5.receiver = self;
      v5.super_class = CKTranscriptCollectionView;
      [(UIScrollView *)&v5 __ck_scrollToBottom:0];
      [(CKTranscriptCollectionView *)self endDisablingTranscriptDynamicsForReason:12];
    }
  }
}

- (void)scrollToBottomWithAnimationProperties:(id)properties computedInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  propertiesCopy = properties;
  if (![(CKTranscriptCollectionView *)self ignoresAutomaticScrollsTowardBottom])
  {
    if ([propertiesCopy animationType])
    {
      [(UIScrollView *)self __ck_bottomOffsetWithComputedInsets:top, left, bottom, right];
      [(CKTranscriptCollectionView *)self setContentOffset:propertiesCopy animationProperties:?];
    }

    else
    {
      [(CKTranscriptCollectionView *)self beginDisablingTranscriptDynamicsForReason:12];
      [(UIScrollView *)self __ck_bottomOffsetWithComputedInsets:top, left, bottom, right];
      [(CKTranscriptCollectionView *)self setContentOffset:propertiesCopy animationProperties:?];
      [(CKTranscriptCollectionView *)self endDisablingTranscriptDynamicsForReason:12];
    }
  }
}

- (void)scrollToBottomHidingMessageAtIndexPath:(id)path computedInsets:(UIEdgeInsets)insets animationProperties:(id)properties
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  pathCopy = path;
  propertiesCopy = properties;
  if (![(CKTranscriptCollectionView *)self ignoresAutomaticScrollsTowardBottom])
  {
    animationType = [propertiesCopy animationType];
    if (pathCopy || animationType)
    {
      [(CKTranscriptCollectionView *)self beginDisablingTranscriptDynamicsForReason:15];
      [(UICollectionView *)self __ck_bottomOffsetHidingIndexPath:pathCopy computedInsets:top, left, bottom, right];
      [(CKTranscriptCollectionView *)self setContentOffset:propertiesCopy animationProperties:?];
      [(CKTranscriptCollectionView *)self endDisablingTranscriptDynamicsForReason:15];
    }

    else
    {
      [(UICollectionView *)self __ck_bottomOffsetHidingIndexPath:0 computedInsets:top, left, bottom, right];
      [(CKTranscriptCollectionView *)self setContentOffset:propertiesCopy animationProperties:?];
    }
  }
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  if ([(CKTranscriptCollectionView *)self isHoldingContentOffsetUpdates])
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CKTranscriptCollectionView setContentOffset:y animated:?];
    }
  }

  else
  {
    [(CKTranscriptCollectionView *)self contentOffset];
    if (v10 == x && v9 == y)
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [CKTranscriptCollectionView setContentOffset:y animated:?];
      }
    }

    else
    {
      if (animatedCopy)
      {
        if (CKMainScreenScale_once_92 != -1)
        {
          [CKTranscriptCollectionView setContentOffset:animated:];
        }

        v12 = *&CKMainScreenScale_sMainScreenScale_92;
        if (*&CKMainScreenScale_sMainScreenScale_92 == 0.0)
        {
          v12 = 1.0;
        }

        v13 = round(x * v12) / v12;
        v14 = round(y * v12) / v12;
        [(CKTranscriptCollectionView *)self contentOffset];
        v17 = v14 != v16 || v13 != v15;
      }

      else
      {
        v17 = 0;
      }

      delegate = [(CKTranscriptCollectionView *)self delegate];
      [delegate collectionViewWillProgrammaticallyScroll:self animated:v17];

      v20.receiver = self;
      v20.super_class = CKTranscriptCollectionView;
      [(CKTranscriptCollectionView *)&v20 setContentOffset:animatedCopy animated:x, y];
    }
  }
}

- (void)setContentOffset:(CGPoint)offset animationProperties:(id)properties
{
  y = offset.y;
  x = offset.x;
  propertiesCopy = properties;
  isHoldingContentOffsetUpdates = [(CKTranscriptCollectionView *)self isHoldingContentOffsetUpdates];
  if (objc_opt_respondsToSelector())
  {
    [(CKTranscriptCollectionView *)self _animationTargetContentOffset];
  }

  else
  {
    [(CKTranscriptCollectionView *)self contentOffset];
  }

  v11 = v9;
  v12 = v10;
  v13 = CKPointApproximatelyEqualToPointWithTolerance(v9, v10, x, y, 0.001);
  if (isHoldingContentOffsetUpdates)
  {
    delegate = IMLogHandleForCategory();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEBUG))
    {
      [CKTranscriptCollectionView setContentOffset:y animationProperties:?];
    }
  }

  else if (v13)
  {
    delegate = IMLogHandleForCategory();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEBUG))
    {
      [CKTranscriptCollectionView setContentOffset:y animationProperties:?];
    }
  }

  else
  {
    if (CKMainScreenScale_once_92 != -1)
    {
      [CKTranscriptCollectionView setContentOffset:animated:];
    }

    v15 = *&CKMainScreenScale_sMainScreenScale_92;
    if (*&CKMainScreenScale_sMainScreenScale_92 == 0.0)
    {
      v15 = 1.0;
    }

    v16 = round(x * v15) / v15 != v11;
    v17 = round(y * v15) / v15 != v12 || v16;
    if ([propertiesCopy animationType])
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    delegate = [(CKTranscriptCollectionView *)self delegate];
    [delegate collectionViewWillProgrammaticallyScroll:self animated:v18];
    animationType = [propertiesCopy animationType];
    switch(animationType)
    {
      case 2:
        v27.receiver = self;
        v27.super_class = CKTranscriptCollectionView;
        [(CKTranscriptCollectionView *)&v27 setContentOffset:1 animated:x, y];
        break;
      case 1:
        caBasicAnimation = [propertiesCopy caBasicAnimation];
        v21 = self->_transcriptCustomScrollAnimation;
        transcriptCustomScrollAnimation = self->_transcriptCustomScrollAnimation;
        self->_transcriptCustomScrollAnimation = caBasicAnimation;
        v23 = caBasicAnimation;

        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __67__CKTranscriptCollectionView_setContentOffset_animationProperties___block_invoke_2;
        v26[3] = &unk_1E72F1058;
        *&v26[5] = x;
        *&v26[6] = y;
        v26[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v26];
        v24 = self->_transcriptCustomScrollAnimation;
        self->_transcriptCustomScrollAnimation = v21;
        v25 = v21;

        break;
      case 0:
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __67__CKTranscriptCollectionView_setContentOffset_animationProperties___block_invoke;
        v28[3] = &unk_1E72F1058;
        *&v28[5] = x;
        *&v28[6] = y;
        v28[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v28];
        break;
    }
  }
}

id __67__CKTranscriptCollectionView_setContentOffset_animationProperties___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = CKTranscriptCollectionView;
  return objc_msgSendSuper2(&v2, sel_setContentOffset_animated_, 0, *(a1 + 40), *(a1 + 48));
}

id __67__CKTranscriptCollectionView_setContentOffset_animationProperties___block_invoke_2(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = CKTranscriptCollectionView;
  return objc_msgSendSuper2(&v2, sel_setContentOffset_animated_, 1, *(a1 + 40), *(a1 + 48));
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v18 = *MEMORY[0x1E69E9840];
  offsetCopy = offset;
  if ([(CKTranscriptCollectionView *)self isHoldingContentOffsetUpdates])
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(CKTranscriptCollectionView *)x setContentOffset:?];
    }
  }

  else
  {
    [(CKTranscriptCollectionView *)self contentOffset];
    if (v8 != x || v7 != y)
    {
      if ([(CKTranscriptCollectionView *)self shouldAdjustContentOffsetForContentSizeChangeIfNeeded])
      {
        [(CKTranscriptCollectionView *)self contentOffset];
        v11 = y - v10;
        if (v11 > 0.0)
        {
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v17 = v11;
              _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "shouldAdjustContentOffsetForContentSizeChangeIfNeeded flag set, stashing scroll delta %.2f", buf, 0xCu);
            }
          }

          [(CKTranscriptCollectionView *)self setInsertScrollDelta:v11];
        }
      }

      delegate = [(CKTranscriptCollectionView *)self delegate];
      [delegate collectionViewWillScroll:self targetContentOffset:&offsetCopy];

      v14.receiver = self;
      v14.super_class = CKTranscriptCollectionView;
      [(CKTranscriptCollectionView *)&v14 setContentOffset:offsetCopy.x, offsetCopy.y];
    }
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  insetCopy = inset;
  [(CKTranscriptCollectionView *)self contentInset];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    delegate = [(CKTranscriptCollectionView *)self delegate];
    [delegate collectionViewWillInset:self targetContentInset:&insetCopy];

    [(CKTranscriptCollectionView *)self _setAutomaticContentOffsetAdjustmentEnabled:0];
    v17.receiver = self;
    v17.super_class = CKTranscriptCollectionView;
    [(CKTranscriptCollectionView *)&v17 setContentInset:insetCopy.top, insetCopy.left, insetCopy.bottom, insetCopy.right];
    [(CKTranscriptCollectionView *)self setScrollIndicatorInsets:insetCopy.top, insetCopy.left, insetCopy.bottom, insetCopy.right];
    delegate2 = [(CKTranscriptCollectionView *)self delegate];
    [delegate2 collectionViewDidInset:self];
  }
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = CKTranscriptCollectionView;
  [(CKTranscriptCollectionView *)&v3 safeAreaInsetsDidChange];
  [(CKTranscriptCollectionView *)self verticalScrollIndicatorInsets];
  [(CKTranscriptCollectionView *)self setScrollIndicatorInsets:?];
}

- (void)setScrollIndicatorInsets:(UIEdgeInsets)insets
{
  top = insets.top;
  [(CKTranscriptCollectionView *)self _shouldReverseLayoutDirection:insets.top];
  [(CKEditableCollectionView *)self safeAreaInsets];
  v5.receiver = self;
  v5.super_class = CKTranscriptCollectionView;
  [(CKTranscriptCollectionView *)&v5 setScrollIndicatorInsets:top];
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v23 = *MEMORY[0x1E69E9840];
  [(CKTranscriptCollectionView *)self contentSize];
  if (v7 != width || v6 != height)
  {
    [(CKTranscriptCollectionView *)self contentSize];
    v10 = v9;
    v20.receiver = self;
    v20.super_class = CKTranscriptCollectionView;
    [(CKTranscriptCollectionView *)&v20 setContentSize:width, height];
    if ([(CKTranscriptCollectionView *)self shouldAdjustContentOffsetForContentSizeChangeIfNeeded])
    {
      [(CKTranscriptCollectionView *)self contentOffset];
      v12 = v11;
      v14 = v13;
      [(CKTranscriptCollectionView *)self insertScrollDelta];
      v15 = height - v10;
      if (v16 != 0.0 && v15 < 0.0)
      {
        [(CKTranscriptCollectionView *)self insertScrollDelta];
        v15 = v15 + v17;
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v22 = v15;
            _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "setContentSize: insert op using stashed insert scroll delta to adjust to %.2f", buf, 0xCu);
          }
        }
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v22 = v15;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "setContentSize: insert op adjusting contentOffset y by %.2f", buf, 0xCu);
        }
      }

      [(CKTranscriptCollectionView *)self setContentOffset:v12, v14 + v15];
      [(CKTranscriptCollectionView *)self invalidateNeedsContentOffsetAdjustmentForNextContentSizeChange];
    }
  }
}

- (CGRect)targetFrameForItemAtIndexPath:(id)path
{
  v3 = [(CKTranscriptCollectionView *)self layoutAttributesForItemAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3[44];
    v5 = v3[45];
    v6 = v3[46];
    v7 = v3[47];
  }

  else
  {
    [v3 frame];
    v4 = v8;
    v5 = v9;
    v6 = v10;
    v7 = v11;
  }

  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)correctOverscrollIfNecessaryWithAnimationProperties:(id)properties
{
  v31 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  [(CKTranscriptCollectionView *)self contentOffset];
  v26 = v5;
  v7 = v6;
  [(CKTranscriptCollectionView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(CKTranscriptCollectionView *)self contentSize];
  v17 = v16;
  [(CKTranscriptCollectionView *)self _effectiveContentInset];
  v19 = v18;
  v21 = v20;
  [(CKTranscriptCollectionView *)self _firstPageOffset];
  v23 = v22 - v19;
  v32.origin.x = v9;
  v32.origin.y = v11;
  v32.size.width = v13;
  v32.size.height = v15;
  Height = CGRectGetHeight(v32);
  if (v7 < v23)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v28 = v7;
        v29 = 2048;
        v30 = v23;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Transcript is underscrolled, adjusting contentOffset.y from %.2f to %.2f", buf, 0x16u);
      }

LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v23 = v17 + v21 - Height;
  if (v7 > v23)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v28 = v7;
        v29 = 2048;
        v30 = v23;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Transcript is overscrolled, adjusting contentOffset.y from %.2f to %.2f", buf, 0x16u);
      }

      goto LABEL_10;
    }

LABEL_11:
    [(CKTranscriptCollectionView *)self setContentOffset:propertiesCopy animationProperties:v26, v23];
  }
}

- (void)reloadData
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_ignoresReloadDataRequests)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v6 = 136315138;
        v7 = "[CKTranscriptCollectionView reloadData]";
        _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%s IGNORING RELOAD DATA CALL", &v6, 0xCu);
      }
    }
  }

  else
  {
    if ((IMEnableModernTranscript() & 1) == 0)
    {
      collectionViewLayout = [(CKTranscriptCollectionView *)self collectionViewLayout];
      [collectionViewLayout reloadData];
    }

    v5.receiver = self;
    v5.super_class = CKTranscriptCollectionView;
    [(CKTranscriptCollectionView *)&v5 reloadData];
  }
}

- (id)indexPathForItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CKTranscriptCollectionView;
  v6 = [(CKTranscriptCollectionView *)&v12 indexPathForItemAtPoint:?];
  if ([v6 section] != 1)
  {
LABEL_10:
    v9 = v6;
    goto LABEL_11;
  }

  delegate = [(CKTranscriptCollectionView *)self delegate];
  v8 = [delegate transcriptCollectionView:self preferredIndexPathForAssociatedItemAtPoint:{x, y}];
  v9 = v8;
  if (!v8 || [v8 item] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v9, "section") == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v14 = "[CKTranscriptCollectionView indexPathForItemAtPoint:]";
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "%s: Did not find preferredIndexPath for associatedItem", buf, 0xCu);
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  return v9;
}

- (id)indexPathForItemAtPoint:(CGPoint)point inSection:(int64_t)section
{
  y = point.y;
  x = point.x;
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  indexPathsForVisibleItems = [(CKTranscriptCollectionView *)self indexPathsForVisibleItems];
  v9 = [indexPathsForVisibleItems countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 section] == section)
        {
          v14 = [(CKTranscriptCollectionView *)self layoutAttributesForItemAtIndexPath:v13];
          [v14 frame];
          v24.x = x;
          v24.y = y;
          if (CGRectContainsPoint(v25, v24))
          {
            v15 = v13;

            goto LABEL_13;
          }
        }
      }

      v10 = [indexPathsForVisibleItems countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (void)beginDisablingTranscriptDynamicsForReason:(int64_t)reason
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(CKTranscriptCollectionView *)self _stringForDynamicsDisabledReason:?];
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Beginning Disabling Transcript Dynamics for Reason: %{public}@", &v11, 0xCu);
  }

  transcriptDynamicsDisabledReasons = self->_transcriptDynamicsDisabledReasons;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  [(NSCountedSet *)transcriptDynamicsDisabledReasons addObject:v8];

  if ([(NSCountedSet *)self->_transcriptDynamicsDisabledReasons count]>= 2)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_transcriptDynamicsDisabledReasons;
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Transcript Dynamics are now disabled for multiple reasons: %{public}@", &v11, 0xCu);
    }
  }
}

- (void)endDisablingTranscriptDynamicsForReason:(int64_t)reason
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(CKTranscriptCollectionView *)self _stringForDynamicsDisabledReason:?];
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Ending Disabling Transcript Dynamics for Reason: %{public}@", &v11, 0xCu);
  }

  transcriptDynamicsDisabledReasons = self->_transcriptDynamicsDisabledReasons;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  [(NSCountedSet *)transcriptDynamicsDisabledReasons removeObject:v8];

  if ([(NSCountedSet *)self->_transcriptDynamicsDisabledReasons count])
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_transcriptDynamicsDisabledReasons;
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Transcript Dynamics are still disabled for reasons: %{public}@", &v11, 0xCu);
    }
  }
}

- (BOOL)unanimatedLayoutPassShouldSnapToTargetFrames
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_transcriptDynamicsDisabledReasons;
  v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (-[CKTranscriptCollectionView _shouldSnapToTargetFramesWhenDyanmicsAreDisabledForReason:](self, "_shouldSnapToTargetFramesWhenDyanmicsAreDisabledForReason:", [*(*(&v10 + 1) + 8 * i) integerValue]))
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)swipeToReplyGestureHandler:(id)handler
{
  handlerCopy = handler;
  state = [handlerCopy state];
  if ((state - 3) >= 3)
  {
    if (state == 2)
    {
      swipeTargetBalloonCell = [(CKTranscriptCollectionView *)self swipeTargetBalloonCell];
      [swipeTargetBalloonCell swipeToReplyGestureHandler:handlerCopy];

      [(CKTranscriptCollectionView *)self _updateScrollingLockStateForRecognizer:handlerCopy];
    }

    else if (state == 1)
    {
      v6 = [CKSwipeToReplyRules balloonCellFromGestureRecognizer:handlerCopy inTranscriptCollectionView:self];
      if (v6)
      {
        [(CKTranscriptCollectionView *)self setSwipeTargetBalloonCell:v6];
      }

      swipeTargetBalloonCell2 = [(CKTranscriptCollectionView *)self swipeTargetBalloonCell];
      [swipeTargetBalloonCell2 swipeToReplyGestureHandler:handlerCopy];
    }
  }

  else
  {
    swipeTargetBalloonCell3 = [(CKTranscriptCollectionView *)self swipeTargetBalloonCell];
    [swipeTargetBalloonCell3 swipeToReplyGestureHandler:handlerCopy];

    [(CKTranscriptCollectionView *)self _updateScrollingLockStateForRecognizer:handlerCopy];
    [(CKTranscriptCollectionView *)self setSwipeTargetBalloonCell:0];
  }
}

- (void)_updateScrollingLockStateForRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 4 || objc_msgSend(recognizerCopy, "state") == 5 || objc_msgSend(recognizerCopy, "state") == 3 || (-[CKTranscriptCollectionView swipeTargetBalloonCell](self, "swipeTargetBalloonCell"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v9 = 1;
  }

  else
  {
    swipeTargetBalloonCell = [(CKTranscriptCollectionView *)self swipeTargetBalloonCell];
    contentView = [swipeTargetBalloonCell contentView];
    [recognizerCopy translationInView:contentView];
    v8 = v7;

    v9 = v8 <= 0.0;
  }

  [recognizerCopy _setCanPanVertically:v9];
}

- (id)_stringForDynamicsDisabledReason:(int64_t)reason
{
  if ((reason - 1) > 0x10)
  {
    return @"CollectionViewBatchUpdate";
  }

  else
  {
    return off_1E72F7848[reason - 1];
  }
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = CKTranscriptCollectionView;
  [(CKTranscriptCollectionView *)&v6 didMoveToWindow];
  didMoveToWindowHandler = [(CKTranscriptCollectionView *)self didMoveToWindowHandler];

  if (didMoveToWindowHandler)
  {
    didMoveToWindowHandler2 = [(CKTranscriptCollectionView *)self didMoveToWindowHandler];
    window = [(CKTranscriptCollectionView *)self window];
    (didMoveToWindowHandler2)[2](didMoveToWindowHandler2, window);
  }
}

- (void)configureAppEntityForConversationId:(id)id
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5D900);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  v8 = sub_190D50910();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (id)
  {
    v12 = sub_190D56F10();
    v14 = v13;
    type metadata accessor for ConversationEntity();
    v16[0] = v12;
    v16[1] = v14;
    sub_190B197DC();
    selfCopy = self;
    sub_190D50900();
    (*(v9 + 16))(v7, v11, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_190D57CA0();
    (*(v9 + 8))(v11, v8);
  }
}

- (void)setContentOffset:(double)a1 animated:(double)a2 .cold.2(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)setContentOffset:(double)a1 animated:(double)a2 .cold.3(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)setContentOffset:(double)a1 animationProperties:(double)a2 .cold.2(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)setContentOffset:(double)a1 animationProperties:(double)a2 .cold.3(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)setContentOffset:(double)a1 .cold.1(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end