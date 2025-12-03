@interface CKThrowAnimationManager
+ (id)glassThrowSendAnimationManager;
+ (id)nonGlassThrowSendAnimationManager;
+ (void)__removeAllAnimationsWithAttributesCollection:(id)collection;
- (BOOL)_transcriptWillShiftDueToThrowAnimation;
- (CGPoint)_sendMessageAndCalculateDesiredTranscriptOffset;
- (CGRect)audioMessageSourceRect;
- (CGRect)sourceRect;
- (CKSendAnimationBalloonProvider)sendAnimationBalloonProvider;
- (CKSendAnimationManagerDelegate)sendAnimationManagerDelegate;
- (CKThrowAnimationManager)init;
- (CKThrowAnimationManager)initWithSendAnimationType:(unint64_t)type;
- (CKThrowAnimationManagerDelegate)throwManagerDelegate;
- (UIView)behindGlassContainerView;
- (UIView)sendAnimationWindow;
- (double)_changeInEntryViewHeight;
- (double)scrollViewOffsetForBottomAligningChatItemAtIndex:(int64_t)index;
- (id)__makeAndShowBehindGlassContainerView;
- (id)_collectionViewController;
- (id)_entryView;
- (id)_makeAndShowSendAnimationContainerView;
- (id)lastVisibleCellOfType:(Class)type inCollectionView:(id)view;
- (int64_t)_indexOfLastChatItemThatWillNotStickToTheBottom:(id)bottom;
- (unint64_t)_indexOfLastVisibleChatItemForChatItems:(id)items;
- (void)__setupThrowFramesUsingSendAnimationContainerView:(id)view;
- (void)_commonAnimationDidFinishSideEffectsWithContext:(id)context;
- (void)_hideAddedChatItems;
- (void)_prepareToAnimateMessages:(id)messages;
- (void)_removeAllAnimations;
- (void)_removeFakeTypingIndicatorIfNecessary;
- (void)_setupThrowBalloonViews;
- (void)_setupThrowFrames;
- (void)_snapshotLiveBubbleIfNecessary;
- (void)animateMessages:(id)messages;
- (void)animateQuickReplyMessages:(id)messages;
- (void)animationDidFinishWithContext:(id)context;
- (void)animationWillBeginWithContext:(id)context;
@end

@implementation CKThrowAnimationManager

- (CKThrowAnimationManager)initWithSendAnimationType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = CKThrowAnimationManager;
  v4 = [(CKThrowAnimationManager *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(CKThrowAnimationManager *)v4 setSendAnimationType:type];
    v6 = objc_alloc_init(CKChatControllerDummyAnimator);
    [(CKChatControllerDummyAnimator *)v6 setAnimationDelegate:v5];
    [(CKThrowAnimationManager *)v5 setAnimator:v6];
  }

  return v5;
}

+ (id)nonGlassThrowSendAnimationManager
{
  v2 = [[self alloc] initWithSendAnimationType:0];

  return v2;
}

+ (id)glassThrowSendAnimationManager
{
  v2 = [[self alloc] initWithSendAnimationType:1];

  return v2;
}

- (CKThrowAnimationManager)init
{
  [(CKThrowAnimationManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)_commonAnimationDidFinishSideEffectsWithContext:(id)context
{
  contextCopy = context;
  [(CKThrowAnimationManager *)self _removeAllAnimations];
  fakeTypingIndicatorCell = [(CKThrowAnimationManager *)self fakeTypingIndicatorCell];
  [fakeTypingIndicatorCell removeFromSuperview];

  [(CKThrowAnimationManager *)self setFakeTypingIndicatorCell:0];
  sendAnimationManagerDelegate = [(CKThrowAnimationManager *)self sendAnimationManagerDelegate];
  [sendAnimationManagerDelegate sendAnimationManagerDidStopAnimation:self context:contextCopy];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-LiveBubbleSendAnimation", @"ShelfIdentifier"];
  [CKSnapshotUtilities _cacheSnapshotView:0 forGUID:v7];
}

- (void)animationDidFinishWithContext:(id)context
{
  contextCopy = context;
  _collectionViewController = [(CKThrowAnimationManager *)self _collectionViewController];
  [_collectionViewController setHiddenItems:0];

  fakeUnavailabilityIndicatorCell = [(CKThrowAnimationManager *)self fakeUnavailabilityIndicatorCell];
  [fakeUnavailabilityIndicatorCell removeFromSuperview];

  [(CKThrowAnimationManager *)self setFakeUnavailabilityIndicatorCell:0];
  fakeNotifyAnywayButtonCell = [(CKThrowAnimationManager *)self fakeNotifyAnywayButtonCell];
  [fakeNotifyAnywayButtonCell removeFromSuperview];

  [(CKThrowAnimationManager *)self setFakeNotifyAnywayButtonCell:0];
  fakeKeyTransparencyCell = [(CKThrowAnimationManager *)self fakeKeyTransparencyCell];
  [fakeKeyTransparencyCell removeFromSuperview];

  [(CKThrowAnimationManager *)self setFakeKeyTransparencyCell:0];
  sendAnimationType = [contextCopy sendAnimationType];
  if (sendAnimationType)
  {
    if (sendAnimationType != 1)
    {
      goto LABEL_6;
    }

    [(UIView *)self->_behindGlassContainerView removeFromSuperview];
  }

  else
  {
    sendAnimationWindow = [(CKThrowAnimationManager *)self sendAnimationWindow];
    [sendAnimationWindow removeFromSuperview];

    sendAnimationWindow = self->_sendAnimationWindow;
    self->_sendAnimationWindow = 0;
  }

  [(CKThrowAnimationManager *)self _commonAnimationDidFinishSideEffectsWithContext:contextCopy];
LABEL_6:
}

- (void)animationWillBeginWithContext:(id)context
{
  contextCopy = context;
  sendAnimationManagerDelegate = [(CKThrowAnimationManager *)self sendAnimationManagerDelegate];
  [sendAnimationManagerDelegate sendAnimationManagerWillStartAnimation:self context:contextCopy];
}

- (void)_prepareToAnimateMessages:(id)messages
{
  messagesCopy = messages;
  v16 = objc_alloc_init(CKSendAnimationContext);
  [(CKSendAnimationContext *)v16 setSendAnimationType:[(CKThrowAnimationManager *)self sendAnimationType]];
  quickReplySnapshot = [(CKThrowAnimationManager *)self quickReplySnapshot];
  [(CKSendAnimationContext *)v16 setQuickReplySnapshotView:quickReplySnapshot];

  [(CKSendAnimationContext *)v16 setMessages:messagesCopy];
  [(CKThrowAnimationManager *)self audioMessageSourceRect];
  [(CKSendAnimationContext *)v16 setAudioMessageSourceRect:?];
  [(CKThrowAnimationManager *)self sourceRect];
  [(CKSendAnimationContext *)v16 setThrowAnimationSourceRect:?];
  audioRecordingPillViewSnapshot = [(CKThrowAnimationManager *)self audioRecordingPillViewSnapshot];
  [(CKSendAnimationContext *)v16 setAudioRecordingPillViewSnapshot:audioRecordingPillViewSnapshot];

  _entryView = [(CKThrowAnimationManager *)self _entryView];
  [_entryView frame];
  [(CKSendAnimationContext *)v16 setEntryViewSize:v8, v9];

  sendAnimationType = [(CKThrowAnimationManager *)self sendAnimationType];
  if (sendAnimationType == 1)
  {
    behindGlassContainerView = [(CKThrowAnimationManager *)self behindGlassContainerView];
    [(CKSendAnimationContext *)v16 setBehindGlassContainerView:behindGlassContainerView];
  }

  else
  {
    if (sendAnimationType)
    {
      goto LABEL_6;
    }

    behindGlassContainerView = [(CKThrowAnimationManager *)self sendAnimationWindow];
    [(CKSendAnimationContext *)v16 setContainerView:behindGlassContainerView];
  }

LABEL_6:
  [(CKThrowAnimationManager *)self sourceRect];
  [(CKSendAnimationContext *)v16 setQuickReplySourceRect:?];
  [(CKThrowAnimationManager *)self setCurrentContext:v16];
  throwManagerDelegate = [(CKThrowAnimationManager *)self throwManagerDelegate];
  [throwManagerDelegate throwAnimationManagerPrepareForThrowAnimation:self context:v16];
  [(CKThrowAnimationManager *)self _snapshotLiveBubbleIfNecessary];
  [(CKThrowAnimationManager *)self _sendMessageAndCalculateDesiredTranscriptOffset];
  [(CKThrowAnimationManager *)self _removeFakeTypingIndicatorIfNecessary];
  [(CKThrowAnimationManager *)self _setupThrowBalloonViews];
  [(CKThrowAnimationManager *)self _setupThrowFrames];
  _entryView2 = [(CKThrowAnimationManager *)self _entryView];
  [_entryView2 invalidateCompositionForReason:1];

  _entryView3 = [(CKThrowAnimationManager *)self _entryView];
  [_entryView3 clearAudioRecordingUI];

  if (![(CKThrowAnimationManager *)self sendAnimationType])
  {
    sendAnimationWindow = [(CKThrowAnimationManager *)self sendAnimationWindow];
    [sendAnimationWindow setHidden:0];
  }

  [(CKThrowAnimationManager *)self _hideAddedChatItems];
}

- (void)animateMessages:(id)messages
{
  messagesCopy = messages;
  _collectionViewController = [(CKThrowAnimationManager *)self _collectionViewController];
  collectionView = [_collectionViewController collectionView];

  [collectionView setTranscriptScrollIntent:3];
  [(CKThrowAnimationManager *)self _prepareToAnimateMessages:messagesCopy];

  animator = [(CKThrowAnimationManager *)self animator];
  currentContext = [(CKThrowAnimationManager *)self currentContext];
  [animator beginAnimationWithSendAnimationContext:currentContext];
}

- (void)animateQuickReplyMessages:(id)messages
{
  [(CKThrowAnimationManager *)self _prepareToAnimateMessages:messages];
  animator = [(CKThrowAnimationManager *)self animator];
  currentContext = [(CKThrowAnimationManager *)self currentContext];
  [animator beginQuickReplyAnimationWithSendAnimationContext:currentContext];
}

- (id)__makeAndShowBehindGlassContainerView
{
  throwManagerDelegate = [(CKThrowAnimationManager *)self throwManagerDelegate];
  v4 = [throwManagerDelegate throwAnimationManagerEntryView:self];

  v5 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:v4];
  [v5 setHidesSourceView:1];
  [v5 setMatchesTransform:1];
  [v5 setMatchesPosition:1];
  window = [v4 window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [[CKSendAnimationContainerView alloc] initWithFrame:v10, v12, v14, v16];
  [(CKSendAnimationContainerView *)v17 setUserInteractionEnabled:0];
  [(CKSendAnimationContainerView *)v17 addSubview:v5];
  [v4 frame];
  [v5 setFrame:?];
  throwManagerDelegate2 = [(CKThrowAnimationManager *)self throwManagerDelegate];
  v19 = [throwManagerDelegate2 throwAnimationContainerSuperview:self];

  [v19 addSubview:v17];

  return v17;
}

- (UIView)behindGlassContainerView
{
  behindGlassContainerView = self->_behindGlassContainerView;
  if (!behindGlassContainerView)
  {
    __makeAndShowBehindGlassContainerView = [(CKThrowAnimationManager *)self __makeAndShowBehindGlassContainerView];
    v5 = self->_behindGlassContainerView;
    self->_behindGlassContainerView = __makeAndShowBehindGlassContainerView;

    behindGlassContainerView = self->_behindGlassContainerView;
  }

  return behindGlassContainerView;
}

- (id)_makeAndShowSendAnimationContainerView
{
  v3 = +[CKUIBehavior sharedBehaviors];
  canUseWindowedSendAnimation = [v3 canUseWindowedSendAnimation];

  throwManagerDelegate = [(CKThrowAnimationManager *)self throwManagerDelegate];
  v6 = [throwManagerDelegate throwAnimationManagerEntryView:self];

  if (canUseWindowedSendAnimation)
  {
    v7 = [CKSendAnimationWindow alloc];
    window = [v6 window];
    windowScene = [window windowScene];
    throwManagerDelegate2 = [(CKThrowAnimationManager *)self throwManagerDelegate];
    [throwManagerDelegate2 throwAnimationWindowFrame:self];
    v11 = [(CKSendAnimationWindow *)v7 initWithWindowScene:windowScene frame:?];

    [(CKSendAnimationContainerView *)v11 setUserInteractionEnabled:0];
    WeakRetained = objc_loadWeakRetained(&self->_sendAnimationBalloonProvider);
    v13 = [WeakRetained wantsOverKeyboardAnimationForSendAnimationContext:self->_currentContext];

    v14 = -1.0;
    if (v13)
    {
      v14 = 2.0;
    }

    [(CKSendAnimationContainerView *)v11 setWindowLevel:*MEMORY[0x1E69DE330] + v14];
  }

  else
  {
    window2 = [v6 window];
    windowScene2 = [window2 windowScene];
    screen = [windowScene2 screen];
    [screen bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v11 = [[CKSendAnimationContainerView alloc] initWithFrame:v19, v21, v23, v25];
    [(CKSendAnimationContainerView *)v11 setUserInteractionEnabled:0];
    throwManagerDelegate3 = [(CKThrowAnimationManager *)self throwManagerDelegate];
    v27 = [throwManagerDelegate3 throwAnimationContainerSuperview:self];

    [v27 addSubview:v11];
  }

  return v11;
}

- (UIView)sendAnimationWindow
{
  sendAnimationWindow = self->_sendAnimationWindow;
  if (!sendAnimationWindow)
  {
    _makeAndShowSendAnimationContainerView = [(CKThrowAnimationManager *)self _makeAndShowSendAnimationContainerView];
    v5 = self->_sendAnimationWindow;
    self->_sendAnimationWindow = _makeAndShowSendAnimationContainerView;

    sendAnimationWindow = self->_sendAnimationWindow;
  }

  return sendAnimationWindow;
}

- (id)_collectionViewController
{
  sendAnimationManagerDelegate = [(CKThrowAnimationManager *)self sendAnimationManagerDelegate];
  v4 = [sendAnimationManagerDelegate collectionViewControllerForImpactEffectManager:self];

  return v4;
}

- (id)_entryView
{
  throwManagerDelegate = [(CKThrowAnimationManager *)self throwManagerDelegate];
  v4 = [throwManagerDelegate throwAnimationManagerEntryView:self];

  return v4;
}

- (void)_snapshotLiveBubbleIfNecessary
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-LiveBubbleSendAnimation", @"ShelfIdentifier"];
  _entryView = [(CKThrowAnimationManager *)self _entryView];
  contentView = [_entryView contentView];
  pluginView = [contentView pluginView];
  v7 = [pluginView snapshotViewAfterScreenUpdates:0];

  [CKSnapshotUtilities _cacheSnapshotView:v7 forGUID:v3];
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Taking snapshot of the balloonView", buf, 2u);
  }
}

- (CGPoint)_sendMessageAndCalculateDesiredTranscriptOffset
{
  _collectionViewController = [(CKThrowAnimationManager *)self _collectionViewController];
  collectionView = [_collectionViewController collectionView];
  chatItems = [_collectionViewController chatItems];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__74;
  v37 = __Block_byref_object_dispose__74;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __74__CKThrowAnimationManager__sendMessageAndCalculateDesiredTranscriptOffset__block_invoke;
  v28[3] = &unk_1E72F26A8;
  v28[4] = &v33;
  v28[5] = &v29;
  [chatItems enumerateObjectsWithOptions:2 usingBlock:v28];

  v6 = v30[3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *(MEMORY[0x1E695F058] + 8);
  }

  else
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
    v9 = [collectionView layoutAttributesForItemAtIndexPath:v8];
    [v9 frame];
    v7 = v10;
  }

  [collectionView contentOffset];
  v12 = v11;
  v14 = v13;
  throwManagerDelegate = [(CKThrowAnimationManager *)self throwManagerDelegate];
  currentContext = [(CKThrowAnimationManager *)self currentContext];
  messages = [currentContext messages];
  [throwManagerDelegate throwAnimationManager:self canNowSendMessages:messages];

  chatItems2 = [_collectionViewController chatItems];
  v19 = [chatItems2 indexOfObject:v34[5]];
  v30[3] = v19;
  v20 = v34[5];
  v34[5] = 0;

  v21 = v30[3];
  v22 = v7;
  if (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = [MEMORY[0x1E696AC88] indexPathForItem:v21 inSection:0];
    v24 = [collectionView layoutAttributesForItemAtIndexPath:v23];
    [v24 frame];
    v22 = v25;
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  v26 = v12;
  v27 = v14 + v22 - v7;
  result.y = v27;
  result.x = v26;
  return result;
}

void __74__CKThrowAnimationManager__sendMessageAndCalculateDesiredTranscriptOffset__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (unint64_t)_indexOfLastVisibleChatItemForChatItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v4 = [itemsCopy count] - 1;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (void)__setupThrowFramesUsingSendAnimationContainerView:(id)view
{
  viewCopy = view;
  currentContext = [(CKThrowAnimationManager *)self currentContext];
  shouldUseQuickReplySourceRect = [currentContext shouldUseQuickReplySourceRect];

  _collectionViewController = [(CKThrowAnimationManager *)self _collectionViewController];
  collectionView = [_collectionViewController collectionView];
  _entryView = [(CKThrowAnimationManager *)self _entryView];
  throwManagerDelegate = [(CKThrowAnimationManager *)self throwManagerDelegate];
  v64 = collectionView;
  [collectionView marginInsets];
  v61 = v9;
  v62 = v8;
  v11 = v10;
  v13 = v12;
  currentContext2 = [(CKThrowAnimationManager *)self currentContext];
  chatItems = [_collectionViewController chatItems];
  v16 = currentContext2;
  messages = [currentContext2 messages];
  v66 = [chatItems __ck_indexesOfPartsOfMessages:messages];
  lastIndex = [v66 lastIndex];
  v19 = [chatItems count];
  latestScheduledMessageIndexPath = [_collectionViewController latestScheduledMessageIndexPath];
  v60 = messages;
  firstObject = [messages firstObject];
  scheduleType = [firstObject scheduleType];

  if (scheduleType == 2 || !latestScheduledMessageIndexPath)
  {
    if (lastIndex >= v19 - 1)
    {
      lastIndex = v19 - 1;
    }

    v23 = [chatItems count] - 1;
  }

  else
  {
    v23 = [latestScheduledMessageIndexPath indexAtPosition:{objc_msgSend(latestScheduledMessageIndexPath, "length") - 1}];
    lastIndex = v23;
  }

  [(CKThrowAnimationManager *)self scrollViewOffsetForBottomAligningChatItemAtIndex:v23];
  v25 = v24;
  [(CKThrowAnimationManager *)self scrollViewOffsetForBottomAligningChatItemAtIndex:lastIndex];
  v27 = v26;
  lastObject = [chatItems lastObject];
  [CKTranscriptCompositionalLayout bottomTranscriptSpaceWithLastChatItem:?];
  v29 = v28;
  v30 = +[CKUIBehavior sharedBehaviors];
  v31 = v16;
  if ([v30 isEntryViewInputAccessory])
  {
    [throwManagerDelegate throwAnimationKeyboardFrame:self];
  }

  else
  {
    [_entryView frame];
  }

  v36 = v66;
  v67 = latestScheduledMessageIndexPath;
  MinY = CGRectGetMinY(*&v32);

  [throwManagerDelegate throwAnimationManagerTopHeaderHeight:self];
  v39 = v38;
  [throwManagerDelegate throwAnimationFinalFrameOffset:self];
  v41 = v40;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  v42 = [(CKThrowAnimationManager *)self _transcriptWillShiftDueToThrowAnimation]& (shouldUseQuickReplySourceRect ^ 1);
  v43 = MinY - (v27 + v39);
  if (v42 == 1)
  {
    v43 = v25 - v27 + v29 + MinY;
  }

  v90[3] = v43;
  [v64 safeAreaInsets];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __77__CKThrowAnimationManager___setupThrowFramesUsingSendAnimationContainerView___block_invoke;
  v69[3] = &unk_1E72F7980;
  v53 = v64;
  v70 = v53;
  v54 = _collectionViewController;
  v78 = v62;
  v79 = v61;
  v80 = v11;
  v81 = v13;
  v82 = v45;
  v83 = v47;
  v84 = v49;
  v85 = v51;
  v71 = v54;
  selfCopy = self;
  v87 = v42;
  v55 = throwManagerDelegate;
  v73 = v55;
  v56 = _entryView;
  v74 = v56;
  v88 = shouldUseQuickReplySourceRect;
  v57 = v52;
  v75 = v57;
  v77 = &v89;
  v86 = v41;
  v58 = viewCopy;
  v76 = v58;
  [chatItems enumerateObjectsAtIndexes:v36 options:2 usingBlock:v69];
  [v31 setFramesOfAddedChatItems:v57];

  _Block_object_dispose(&v89, 8);
}

void __77__CKThrowAnimationManager___setupThrowFramesUsingSendAnimationContainerView___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
  v7 = [v5 cellClass];
  v8 = [*(a1 + 32) collectionViewLayout];
  v9 = [v8 layoutAttributesForItemAtIndexPath:v6];

  [v9 frame];
  v86 = v10;
  v87 = v11;
  v14 = [[v7 alloc] initWithFrame:{v10, v11, v12, v13}];
  [v14 applyLayoutAttributes:v9];
  [*(a1 + 40) configureCell:v14 forCKChatItem:v5 atIndexPath:v6 animated:0 animationDuration:3 animationCurve:0.0];
  [v14 setNeedsLayout];
  [v14 layoutIfNeeded];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v14 balloonView];
  }

  else
  {
    v15 = v14;
  }

  v16 = v15;
  [v15 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v9 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [v5 contentInsets];
  v32 = v31 + *(a1 + 96);
  v34 = v33 + *(a1 + 104);
  v37 = v24 + v34;
  v38 = v26 + v32;
  v39 = v28 - (v34 + v36 + *(a1 + 120));
  v40 = v30 - (v32 + v35 + *(a1 + 112));
  v41 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v42 = [v41 isModernSplitViewControllerEnabled];

  if (v42)
  {
    v43 = *(a1 + 128);
    v44 = *(a1 + 136);
    v37 = v37 + v44;
    v38 = v38 + v43;
    v39 = v39 - (v44 + *(a1 + 152));
    v40 = v40 - (v43 + *(a1 + 144));
  }

  v90.origin.x = v37;
  v90.origin.y = v38;
  v90.size.width = v39;
  v90.size.height = v40;
  MaxX = CGRectGetMaxX(v90);
  [v16 frame];
  v47 = MaxX - v46;
  v48 = [v16 superview];
  [v14 convertRect:v48 fromView:{v47, v18, v20, v22}];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v57 = v86 + v50;
  v58 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v59 = [v58 isModernSplitViewControllerEnabled];

  if (v59)
  {
    v57 = v57 - *(a1 + 136);
  }

  v60 = [*(a1 + 32) cellForItemAtIndexPath:v6];
  if (v60)
  {
    [*(a1 + 40) configureCell:v60 forCKChatItem:v5 atIndexPath:v6 animated:0 animationDuration:3 animationCurve:0.0];
  }

  [*(a1 + 48) scrollViewOffsetForBottomAligningChatItemAtIndex:a3];
  v62 = v61;
  if (*(a1 + 168) == 1)
  {
    v63 = +[CKUIBehavior sharedBehaviors];
    if ([v63 isEntryViewInputAccessory])
    {
      [*(a1 + 56) throwAnimationManagerAccessoryViewHeight:*(a1 + 48)];
      v65 = v64;
    }

    else
    {
      [*(a1 + 64) bounds];
      v65 = v66;
    }

    [*(a1 + 64) placeholderHeight];
    v62 = v62 - (v65 - v67);
  }

  v68 = v87 + v52;
  if (*(a1 + 169) == 1)
  {
    v69 = [*(a1 + 32) superview];
    [v69 convertRect:*(a1 + 32) fromView:{v57, v68, v54, v56}];
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;

    v89[0] = v71;
    v89[1] = v73;
    v89[2] = v75;
    v89[3] = v77;
    v78 = [MEMORY[0x1E696B098] valueWithBytes:v89 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [*(a1 + 72) insertObject:v78 atIndex:0];
  }

  else
  {
    [*(a1 + 80) convertRect:*(a1 + 64) fromView:{v57, v68 - (v62 + *(*(*(a1 + 88) + 8) + 24) - *(a1 + 160)), v54, v56}];
    v80 = v79;
    v88[0] = v81;
    v88[1] = v82;
    v88[2] = v83;
    *&v88[3] = v79;
    v78 = [MEMORY[0x1E696B098] valueWithBytes:v88 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [*(a1 + 72) insertObject:v78 atIndex:0];
    *(*(*(a1 + 88) + 8) + 24) = v80 + *(*(*(a1 + 88) + 8) + 24);
    v84 = +[CKUIBehavior sharedBehaviors];
    [v84 balloonContiguousSpace];
    *(*(*(a1 + 88) + 8) + 24) = v85 + *(*(*(a1 + 88) + 8) + 24);
  }
}

- (void)_setupThrowFrames
{
  currentContext = [(CKThrowAnimationManager *)self currentContext];
  sendAnimationType = [currentContext sendAnimationType];
  if (sendAnimationType == 1)
  {
    behindGlassContainerView = [currentContext behindGlassContainerView];
  }

  else
  {
    if (sendAnimationType)
    {
      goto LABEL_6;
    }

    behindGlassContainerView = [currentContext containerView];
  }

  v5 = behindGlassContainerView;
  [(CKThrowAnimationManager *)self __setupThrowFramesUsingSendAnimationContainerView:behindGlassContainerView];

LABEL_6:
}

+ (void)__removeAllAnimationsWithAttributesCollection:(id)collection
{
  v44 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = collection;
  v3 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v39;
    v6 = off_1E72E5000;
    v7 = 0x1E72E4000uLL;
    v27 = *v39;
    do
    {
      v8 = 0;
      v28 = v4;
      do
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          throwBalloonView = [v9 throwBalloonView];
          layer = [throwBalloonView layer];
          objc_opt_class();
          v32 = v8;
          v30 = layer;
          if (objc_opt_isKindOfClass())
          {
            [layer removeAllAnimationsIncludingMaskAnimations];
          }

          else
          {
            [layer removeAllAnimations];
          }

          [throwBalloonView removeFromSuperview];
          [throwBalloonView setIsBeingUsedInThrowAnimation:0];
          v31 = throwBalloonView;
          CKBalloonViewReuse(throwBalloonView);
          supplementaryViews = [v9 supplementaryViews];
          dictionaryRepresentation = [supplementaryViews dictionaryRepresentation];

          allKeys = [dictionaryRepresentation allKeys];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v33 = allKeys;
          v15 = [allKeys countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v35;
            do
            {
              v18 = 0;
              do
              {
                if (*v35 != v17)
                {
                  objc_enumerationMutation(v33);
                }

                v19 = [dictionaryRepresentation objectForKey:*(*(&v34 + 1) + 8 * v18)];
                layer2 = [v19 layer];
                [layer2 removeAllAnimations];

                [v19 removeFromSuperview];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v21 = v7;
                  v22 = v6;
                  textView = [v19 textView];
                  text = [textView text];
                  _isNaturallyRTL = [text _isNaturallyRTL];

                  if (_isNaturallyRTL)
                  {
                    [textView setHidden:0];
                  }

                  v6 = v22;
                  v7 = v21;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v26 = v19;
                  [v26 setIsBeingUsedInThrowAnimation:0];
                  CKBalloonViewReuse(v26);
                }

                ++v18;
              }

              while (v16 != v18);
              v16 = [v33 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v16);
          }

          v5 = v27;
          v4 = v28;
          v8 = v32;
        }

        ++v8;
      }

      while (v8 != v4);
      v4 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v4);
  }
}

- (void)_removeAllAnimations
{
  v43 = *MEMORY[0x1E69E9840];
  currentContext = [(CKThrowAnimationManager *)self currentContext];
  throwBalloonViewAttributesCollection = [currentContext throwBalloonViewAttributesCollection];
  [objc_opt_class() __removeAllAnimationsWithAttributesCollection:throwBalloonViewAttributesCollection];
  v27 = currentContext;
  throwBalloonViews = [currentContext throwBalloonViews];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = [throwBalloonViews countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(throwBalloonViews);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          textView = [v8 textView];
          text = [textView text];
          _isNaturallyRTL = [text _isNaturallyRTL];

          if (_isNaturallyRTL)
          {
            [textView setHidden:0];
          }
        }

        layer = [v8 layer];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [layer removeAllAnimationsIncludingMaskAnimations];
        }

        else
        {
          [layer removeAllAnimations];
        }

        [v8 removeFromSuperview];
        [v8 setIsBeingUsedInThrowAnimation:0];
        CKBalloonViewReuse(v8);
      }

      v5 = [throwBalloonViews countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v5);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  animatableViews = [v27 animatableViews];
  v14 = [animatableViews countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(animatableViews);
        }

        layer2 = [*(*(&v32 + 1) + 8 * j) layer];
        [layer2 removeAllAnimations];
      }

      v15 = [animatableViews countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v15);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  animatableTextViews = [v27 animatableTextViews];
  v20 = [animatableTextViews countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(animatableTextViews);
        }

        v24 = *(*(&v28 + 1) + 8 * k);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          layer3 = [v24 layer];
          [layer3 removeAllAnimations];
        }
      }

      v21 = [animatableTextViews countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v21);
  }
}

- (id)lastVisibleCellOfType:(Class)type inCollectionView:(id)view
{
  viewCopy = view;
  v5 = [viewCopy numberOfItemsInSection:0];
  if (v5 < 1)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v6 = v5 + 1;
    while (1)
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForItem:v6 - 2 inSection:0];
      v8 = [viewCopy cellForItemAtIndexPath:v7];
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (--v6 <= 1)
      {
        goto LABEL_5;
      }
    }
  }

  return v8;
}

- (void)_removeFakeTypingIndicatorIfNecessary
{
  _collectionViewController = [(CKThrowAnimationManager *)self _collectionViewController];
  chatItems = [_collectionViewController chatItems];
  lastObject = [chatItems lastObject];
  if (!lastObject)
  {
    fakeTypingIndicatorCell = [(CKThrowAnimationManager *)self fakeTypingIndicatorCell];
    [fakeTypingIndicatorCell removeFromSuperview];
    [(CKThrowAnimationManager *)self setFakeTypingIndicatorCell:0];
  }
}

- (void)_hideAddedChatItems
{
  currentContext = [(CKThrowAnimationManager *)self currentContext];
  throwBalloonViewAttributesCollection = [currentContext throwBalloonViewAttributesCollection];
  _collectionViewController = [(CKThrowAnimationManager *)self _collectionViewController];
  chatItems = [_collectionViewController chatItems];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__74;
  v15 = __Block_byref_object_dispose__74;
  currentContext2 = [(CKThrowAnimationManager *)self currentContext];
  messages = [currentContext2 messages];
  v9 = [chatItems __ck_indexesOfPartsOfMessages:messages];
  v16 = [v9 mutableCopy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__CKThrowAnimationManager__hideAddedChatItems__block_invoke;
  v10[3] = &unk_1E72F79A8;
  v10[4] = &v11;
  [throwBalloonViewAttributesCollection enumerateObjectsUsingBlock:v10];
  [_collectionViewController setHiddenItems:v12[5]];
  _Block_object_dispose(&v11, 8);
}

void __46__CKThrowAnimationManager__hideAddedChatItems__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x1E695DFB0];
  v7 = a2;
  v8 = [v6 null];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = *(*(*(a1 + 32) + 8) + 40);
    v11 = [v10 firstIndex];

    [v10 removeIndex:v11];
  }

  else
  {
    *a4 = 1;
  }
}

- (BOOL)_transcriptWillShiftDueToThrowAnimation
{
  currentContext = [(CKThrowAnimationManager *)self currentContext];
  _collectionViewController = [(CKThrowAnimationManager *)self _collectionViewController];
  chatItems = [_collectionViewController chatItems];

  messages = [currentContext messages];
  v7 = [chatItems __ck_indexesOfPartsOfMessages:messages];
  lastIndex = [v7 lastIndex];
  v9 = [chatItems count];
  if (lastIndex >= v9 - 1)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = lastIndex;
  }

  _collectionViewController2 = [(CKThrowAnimationManager *)self _collectionViewController];
  latestScheduledMessageIndexPath = [_collectionViewController2 latestScheduledMessageIndexPath];

  firstObject = [messages firstObject];
  scheduleType = [firstObject scheduleType];

  if (scheduleType != 2 && latestScheduledMessageIndexPath)
  {
    v10 = [latestScheduledMessageIndexPath indexAtPosition:0] - 1;
  }

  [(CKThrowAnimationManager *)self scrollViewOffsetForBottomAligningChatItemAtIndex:v10];
  v16 = v15;
  throwManagerDelegate = [(CKThrowAnimationManager *)self throwManagerDelegate];
  _entryView = [(CKThrowAnimationManager *)self _entryView];
  v19 = +[CKUIBehavior sharedBehaviors];
  if ([v19 isEntryViewInputAccessory])
  {
    [throwManagerDelegate throwAnimationManagerAccessoryViewHeight:self];
    v21 = v20;
  }

  else
  {
    [_entryView bounds];
    v21 = v22;
  }

  [_entryView placeholderHeight];
  v24 = v21 - v23;
  [throwManagerDelegate throwAnimationManagerTopHeaderHeight:self];
  v26 = v16 - v24 > -v25;

  return v26;
}

- (double)_changeInEntryViewHeight
{
  _entryView = [(CKThrowAnimationManager *)self _entryView];
  [_entryView bounds];
  Height = CGRectGetHeight(v7);
  [_entryView placeholderHeight];
  v5 = Height - v4;

  return v5;
}

- (void)_setupThrowBalloonViews
{
  v21 = *MEMORY[0x1E69E9840];
  currentContext = [(CKThrowAnimationManager *)self currentContext];
  sendAnimationType = [currentContext sendAnimationType];
  sendAnimationBalloonProvider = [(CKThrowAnimationManager *)self sendAnimationBalloonProvider];
  [sendAnimationBalloonProvider setupThrowBalloonsInSendAnimationContext:currentContext];

  if (!sendAnimationType)
  {
    v15 = currentContext;
    throwBalloonViewAttributesCollection = [currentContext throwBalloonViewAttributesCollection];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [throwBalloonViewAttributesCollection countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(throwBalloonViewAttributesCollection);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            throwBalloonView = [v11 throwBalloonView];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              supplementaryViews = [v11 supplementaryViews];
              textViewContainerView = [supplementaryViews textViewContainerView];

              [textViewContainerView setHidden:1];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [throwBalloonViewAttributesCollection countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    currentContext = v15;
  }
}

- (double)scrollViewOffsetForBottomAligningChatItemAtIndex:(int64_t)index
{
  v26 = *MEMORY[0x1E69E9840];
  _collectionViewController = [(CKThrowAnimationManager *)self _collectionViewController];
  collectionView = [_collectionViewController collectionView];

  _collectionViewController2 = [(CKThrowAnimationManager *)self _collectionViewController];
  [_collectionViewController2 _computedContentInsets];
  v9 = v8;
  v11 = v10;

  v12 = -v9;
  v13 = [collectionView numberOfItemsInSection:0];
  v14 = v13 - 1;
  if (v13 >= 1)
  {
    v15 = v13;
    if (v13 <= index)
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v22 = 134218240;
        indexCopy = index;
        v24 = 2048;
        v25 = v15;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Asked for best visible offset for row at invalid index %ld. Number of rows: %ld.", &v22, 0x16u);
      }

      index = v14;
    }

    v17 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:0];
    v18 = [collectionView layoutAttributesForItemAtIndexPath:v17];
    [v18 frame];
    MaxY = CGRectGetMaxY(v27);
    [collectionView bounds];
    if (MaxY - (v20 - v11) >= v12)
    {
      v12 = MaxY - (v20 - v11);
    }
  }

  return v12;
}

- (int64_t)_indexOfLastChatItemThatWillNotStickToTheBottom:(id)bottom
{
  bottomCopy = bottom;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = [bottomCopy count] - 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__CKThrowAnimationManager__indexOfLastChatItemThatWillNotStickToTheBottom___block_invoke;
  v6[3] = &unk_1E72EEC48;
  v6[4] = &v7;
  [bottomCopy enumerateObjectsWithOptions:2 usingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __75__CKThrowAnimationManager__indexOfLastChatItemThatWillNotStickToTheBottom___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 && (v9 & 1) == 0 && (v10 & 1) == 0 && (v11 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (CKSendAnimationManagerDelegate)sendAnimationManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sendAnimationManagerDelegate);

  return WeakRetained;
}

- (CKSendAnimationBalloonProvider)sendAnimationBalloonProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sendAnimationBalloonProvider);

  return WeakRetained;
}

- (CKThrowAnimationManagerDelegate)throwManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_throwManagerDelegate);

  return WeakRetained;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)audioMessageSourceRect
{
  x = self->_audioMessageSourceRect.origin.x;
  y = self->_audioMessageSourceRect.origin.y;
  width = self->_audioMessageSourceRect.size.width;
  height = self->_audioMessageSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end