@interface CKInlineReplyCollectionViewController
+ (id)initialTextEffectsState;
- (BOOL)isModal;
- (CKInlineReplyCollectionViewController)initWithConversation:(id)a3 delegate:(id)a4 notifications:(id)a5 balloonMaxWidth:(double)a6 marginInsets:(UIEdgeInsets)a7 collectionViewSize:(CGSize)a8;
- (UIEdgeInsets)_computedContentInsets;
- (id)_replyTranscriptBubbleFilterForUserInterfaceStyle:(int64_t)a3;
- (id)balloonOffsetMapForLayout:(id)a3 resetsOffsetMapAfterUse:(BOOL)a4;
- (id)imChatItems;
- (id)overrideCurrentFrameMapForLayout:(id)a3;
- (void)configureCell:(id)a3 forCKChatItem:(id)a4 atIndexPath:(id)a5 animated:(BOOL)a6 animationDuration:(double)a7 animationCurve:(int64_t)a8;
- (void)fetchEarlierMessagesForConversation:(id)a3;
- (void)fetchRecentMessagesForConversation:(id)a3;
- (void)loadEarlierMessagesForConversation;
- (void)loadRecentMessagesForConversation;
- (void)performCollectionViewReloadForAnimateOut;
- (void)setAnimatingOut:(BOOL)a3;
- (void)setScrollAnchor:(double)a3;
- (void)setTransitionProperties:(id)a3;
@end

@implementation CKInlineReplyCollectionViewController

- (CKInlineReplyCollectionViewController)initWithConversation:(id)a3 delegate:(id)a4 notifications:(id)a5 balloonMaxWidth:(double)a6 marginInsets:(UIEdgeInsets)a7 collectionViewSize:(CGSize)a8
{
  v17.receiver = self;
  v17.super_class = CKInlineReplyCollectionViewController;
  v8 = [(CKTranscriptCollectionViewController *)&v17 initWithConversation:a3 delegate:a4 notifications:a5 balloonMaxWidth:a6 marginInsets:a7.top collectionViewSize:a7.left, a7.bottom, a7.right, a8.width, a8.height];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = [objc_opt_class() chatItemsDidChangeNotification];
    v11 = [(CKTranscriptCollectionViewController *)v8 chat];
    v12 = [v11 inlineReplyController];
    [v9 addObserver:v8 selector:sel_chatItemsDidChange_ name:v10 object:v12];

    if (![(CKInlineReplyCollectionViewController *)v8 isModal])
    {
      v13 = [(CKTranscriptCollectionViewController *)v8 collectionView];
      v14 = [v13 collectionViewLayout];

      [v14 setUseOverlayLayout:1];
      v15 = [(CKTranscriptCollectionViewController *)v8 collectionView];
      [v15 beginHoldingContentOffsetUpdatesForReason:@"InlineReplyChatController"];

      [v14 setNeedsDynamicsUpdate];
    }
  }

  return v8;
}

- (BOOL)isModal
{
  v3 = [(CKTranscriptCollectionViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CKTranscriptCollectionViewController *)self delegate];
  v6 = [v5 transcriptCollectionViewControllerIsPresentedInModalInlineReply:self];

  return v6;
}

- (id)imChatItems
{
  v2 = [(CKTranscriptCollectionViewController *)self chat];
  v3 = [v2 inlineReplyController];
  v4 = [v3 chatItems];

  return v4;
}

- (void)configureCell:(id)a3 forCKChatItem:(id)a4 atIndexPath:(id)a5 animated:(BOOL)a6 animationDuration:(double)a7 animationCurve:(int64_t)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  [v14 setIsInReplyContext:1];
  v34.receiver = self;
  v34.super_class = CKInlineReplyCollectionViewController;
  [(CKTranscriptCollectionViewController *)&v34 configureCell:v14 forCKChatItem:v15 atIndexPath:v16 animated:v10 animationDuration:a8 animationCurve:a7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v14;
    v18 = [v17 balloonView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v20 = (objc_opt_respondsToSelector() & 1) != 0 && [v15 color] != 1;
    v21 = [(CKInlineReplyCollectionViewController *)self traitCollection];
    v22 = [v21 userInterfaceStyle];

    v23 = [(CKInlineReplyCollectionViewController *)self traitCollection];
    v24 = [v23 isTranscriptBackgroundActive];

    if ((v24 & 1) == 0)
    {
      v25 = +[CKUIBehavior sharedBehaviors];
      v26 = [v25 theme];
      if ([v26 shouldBlendReplyBalloons] && !-[CKInlineReplyCollectionViewController isAnimatingOut](self, "isAnimatingOut") && ((isKindOfClass & 1) != 0 || (objc_msgSend(v18, "isAudioMessage") & 1) != 0))
      {

        if (v20)
        {
          v30 = MEMORY[0x1E6979378];
          v31 = [(CKInlineReplyCollectionViewController *)self _replyTranscriptBubbleFilterForUserInterfaceStyle:v22];
          v28 = [v30 filterWithType:v31];

          v32 = [v18 layer];
          [v32 setCompositingFilter:v28];

          v29 = [v17 contentView];
          v33 = [v29 layer];
          [v33 setAllowsGroupBlending:0];

          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    v27 = [v18 layer];
    [v27 setCompositingFilter:0];

    v28 = [v17 contentView];
    v29 = [v28 layer];
    [v29 setAllowsGroupBlending:1];
LABEL_10:
  }
}

- (void)loadEarlierMessagesForConversation
{
  v3 = [(CKTranscriptCollectionViewController *)self chat];
  v12 = [v3 inlineReplyController];

  v4 = [v12 threadIdentifier];
  v5 = [v12 firstMessage];
  v6 = [v5 guid];
  v7 = [v12 capacity];
  v8 = +[CKUIBehavior sharedBehaviors];
  [v12 setCapacity:{objc_msgSend(v8, "defaultConversationLoadMoreCount") + v7}];

  v9 = [(CKTranscriptCollectionViewController *)self chat];
  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = [v9 loadMessagesBeforeAndAfterGUID:v6 numberOfMessagesToLoadBeforeGUID:objc_msgSend(v10 numberOfMessagesToLoadAfterGUID:"defaultConversationLoadMoreCount") loadImmediately:0 threadIdentifier:{1, v4}];
}

- (void)fetchEarlierMessagesForConversation:(id)a3
{
  v4 = a3;
  v11 = [(CKTranscriptCollectionViewController *)self chat];
  v5 = [v11 inlineReplyController];
  v6 = [v5 threadIdentifier];
  v7 = [v5 firstMessage];
  v8 = [v7 guid];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 defaultConversationLoadMoreCount];

  [v5 setCapacity:{objc_msgSend(v5, "capacity") + v10}];
  [v11 fetchMessagesBeforeAndAfterGUID:v8 numberOfMessagesToLoadBeforeGUID:v10 numberOfMessagesToLoadAfterGUID:0 threadIdentifier:v6 completion:v4];
}

- (void)loadRecentMessagesForConversation
{
  v3 = [(CKTranscriptCollectionViewController *)self chat];
  v12 = [v3 inlineReplyController];

  v4 = [v12 threadIdentifier];
  v5 = [v12 lastMessage];
  v6 = [v5 guid];
  v7 = [v12 capacity];
  v8 = +[CKUIBehavior sharedBehaviors];
  [v12 setCapacity:{objc_msgSend(v8, "defaultConversationLoadMoreCount") + v7}];

  v9 = [(CKTranscriptCollectionViewController *)self chat];
  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = [v9 loadMessagesBeforeAndAfterGUID:v6 numberOfMessagesToLoadBeforeGUID:0 numberOfMessagesToLoadAfterGUID:objc_msgSend(v10 loadImmediately:"defaultConversationLoadMoreCount") threadIdentifier:{1, v4}];
}

- (void)fetchRecentMessagesForConversation:(id)a3
{
  v4 = a3;
  v11 = [(CKTranscriptCollectionViewController *)self chat];
  v5 = [v11 inlineReplyController];
  v6 = [v5 threadIdentifier];
  v7 = [v5 firstMessage];
  v8 = [v7 guid];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 defaultConversationLoadMoreCount];

  [v5 setCapacity:{objc_msgSend(v5, "capacity") + v10}];
  [v11 fetchMessagesBeforeAndAfterGUID:v8 numberOfMessagesToLoadBeforeGUID:0 numberOfMessagesToLoadAfterGUID:v10 threadIdentifier:v6 completion:v4];
}

- (UIEdgeInsets)_computedContentInsets
{
  v2 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v2 contentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

+ (id)initialTextEffectsState
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___CKInlineReplyCollectionViewController;
  v2 = objc_msgSendSuper2(&v4, sel_initialTextEffectsState);
  [v2 setIsReady:0];

  return v2;
}

- (void)setScrollAnchor:(double)a3
{
  if ([(CKInlineReplyCollectionViewController *)self isModal])
  {
    [(CKTranscriptCollectionViewController *)&v7 setScrollAnchor:a3, self, CKInlineReplyCollectionViewController, v8.receiver, v8.super_class];
  }

  else
  {
    v5 = [(CKInlineReplyCollectionViewController *)self currentFrameMapForNextReload];
    if (v5)
    {
    }

    else
    {
      v6 = [(CKInlineReplyCollectionViewController *)self targetFrameMapForAnimateOut];

      if (!v6)
      {
        [(CKTranscriptCollectionViewController *)&v8 setScrollAnchor:a3, v7.receiver, v7.super_class, self, CKInlineReplyCollectionViewController];
      }
    }
  }
}

- (id)overrideCurrentFrameMapForLayout:(id)a3
{
  v4 = [(CKInlineReplyCollectionViewController *)self currentFrameMapForNextReload];
  v5 = [v4 copy];

  [(CKInlineReplyCollectionViewController *)self setCurrentFrameMapForNextReload:0];

  return v5;
}

- (id)balloonOffsetMapForLayout:(id)a3 resetsOffsetMapAfterUse:(BOOL)a4
{
  v4 = a4;
  v6 = [(CKInlineReplyCollectionViewController *)self currentBalloonOffsetMap];
  v7 = [v6 copy];

  if (v4)
  {
    [(CKInlineReplyCollectionViewController *)self setCurrentBalloonOffsetMap:0];
  }

  return v7;
}

- (void)performCollectionViewReloadForAnimateOut
{
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  v5 = [v3 collectionViewLayout];

  [v5 setNeedsDynamicsUpdate];
  v4 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v4 reloadData];
}

- (void)setTransitionProperties:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_transitionProperties, a3);
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v5 chatItemGUIDs];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        v13 = MEMORY[0x1E696AD98];
        [v5 initialBalloonOffsetX];
        v14 = [v13 numberWithDouble:?];
        [v6 setObject:v14 forKey:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [v5 associatedChatItemGUIDs];
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        v21 = MEMORY[0x1E696AD98];
        [v5 initialBalloonOffsetX];
        v22 = [v21 numberWithDouble:?];
        [v6 setObject:v22 forKey:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v23 = [v6 copy];
  [(CKInlineReplyCollectionViewController *)self setCurrentBalloonOffsetMap:v23];
}

- (void)setAnimatingOut:(BOOL)a3
{
  if (self->_animatingOut != a3)
  {
    v4 = a3;
    self->_animatingOut = a3;
    v5 = [(CKTranscriptCollectionViewController *)self collectionView];
    v6 = [v5 collectionViewLayout];

    [v6 setInlineAnimatingOut:v4];
  }
}

- (id)_replyTranscriptBubbleFilterForUserInterfaceStyle:(int64_t)a3
{
  if (UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityIsReduceMotionEnabled())
  {
    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v4 = MEMORY[0x1E6979CE8];
    goto LABEL_11;
  }

  if (a3 != 2)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = MEMORY[0x1E6979CF8];
LABEL_11:
  v5 = *v4;
LABEL_7:

  return v5;
}

@end