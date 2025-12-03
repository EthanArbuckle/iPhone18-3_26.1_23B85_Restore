@interface CKInlineReplyCollectionViewController
+ (id)initialTextEffectsState;
- (BOOL)isModal;
- (CKInlineReplyCollectionViewController)initWithConversation:(id)conversation delegate:(id)delegate notifications:(id)notifications balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets collectionViewSize:(CGSize)size;
- (UIEdgeInsets)_computedContentInsets;
- (id)_replyTranscriptBubbleFilterForUserInterfaceStyle:(int64_t)style;
- (id)balloonOffsetMapForLayout:(id)layout resetsOffsetMapAfterUse:(BOOL)use;
- (id)imChatItems;
- (id)overrideCurrentFrameMapForLayout:(id)layout;
- (void)configureCell:(id)cell forCKChatItem:(id)item atIndexPath:(id)path animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)fetchEarlierMessagesForConversation:(id)conversation;
- (void)fetchRecentMessagesForConversation:(id)conversation;
- (void)loadEarlierMessagesForConversation;
- (void)loadRecentMessagesForConversation;
- (void)performCollectionViewReloadForAnimateOut;
- (void)setAnimatingOut:(BOOL)out;
- (void)setScrollAnchor:(double)anchor;
- (void)setTransitionProperties:(id)properties;
@end

@implementation CKInlineReplyCollectionViewController

- (CKInlineReplyCollectionViewController)initWithConversation:(id)conversation delegate:(id)delegate notifications:(id)notifications balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets collectionViewSize:(CGSize)size
{
  v17.receiver = self;
  v17.super_class = CKInlineReplyCollectionViewController;
  v8 = [(CKTranscriptCollectionViewController *)&v17 initWithConversation:conversation delegate:delegate notifications:notifications balloonMaxWidth:width marginInsets:insets.top collectionViewSize:insets.left, insets.bottom, insets.right, size.width, size.height];
  if (v8)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    chatItemsDidChangeNotification = [objc_opt_class() chatItemsDidChangeNotification];
    chat = [(CKTranscriptCollectionViewController *)v8 chat];
    inlineReplyController = [chat inlineReplyController];
    [defaultCenter addObserver:v8 selector:sel_chatItemsDidChange_ name:chatItemsDidChangeNotification object:inlineReplyController];

    if (![(CKInlineReplyCollectionViewController *)v8 isModal])
    {
      collectionView = [(CKTranscriptCollectionViewController *)v8 collectionView];
      collectionViewLayout = [collectionView collectionViewLayout];

      [collectionViewLayout setUseOverlayLayout:1];
      collectionView2 = [(CKTranscriptCollectionViewController *)v8 collectionView];
      [collectionView2 beginHoldingContentOffsetUpdatesForReason:@"InlineReplyChatController"];

      [collectionViewLayout setNeedsDynamicsUpdate];
    }
  }

  return v8;
}

- (BOOL)isModal
{
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
  v6 = [delegate2 transcriptCollectionViewControllerIsPresentedInModalInlineReply:self];

  return v6;
}

- (id)imChatItems
{
  chat = [(CKTranscriptCollectionViewController *)self chat];
  inlineReplyController = [chat inlineReplyController];
  chatItems = [inlineReplyController chatItems];

  return chatItems;
}

- (void)configureCell:(id)cell forCKChatItem:(id)item atIndexPath:(id)path animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  [cellCopy setIsInReplyContext:1];
  v34.receiver = self;
  v34.super_class = CKInlineReplyCollectionViewController;
  [(CKTranscriptCollectionViewController *)&v34 configureCell:cellCopy forCKChatItem:itemCopy atIndexPath:pathCopy animated:animatedCopy animationDuration:curve animationCurve:duration];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = cellCopy;
    balloonView = [v17 balloonView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v20 = (objc_opt_respondsToSelector() & 1) != 0 && [itemCopy color] != 1;
    traitCollection = [(CKInlineReplyCollectionViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    traitCollection2 = [(CKInlineReplyCollectionViewController *)self traitCollection];
    isTranscriptBackgroundActive = [traitCollection2 isTranscriptBackgroundActive];

    if ((isTranscriptBackgroundActive & 1) == 0)
    {
      v25 = +[CKUIBehavior sharedBehaviors];
      theme = [v25 theme];
      if ([theme shouldBlendReplyBalloons] && !-[CKInlineReplyCollectionViewController isAnimatingOut](self, "isAnimatingOut") && ((isKindOfClass & 1) != 0 || (objc_msgSend(balloonView, "isAudioMessage") & 1) != 0))
      {

        if (v20)
        {
          v30 = MEMORY[0x1E6979378];
          v31 = [(CKInlineReplyCollectionViewController *)self _replyTranscriptBubbleFilterForUserInterfaceStyle:userInterfaceStyle];
          contentView2 = [v30 filterWithType:v31];

          layer = [balloonView layer];
          [layer setCompositingFilter:contentView2];

          contentView = [v17 contentView];
          layer2 = [contentView layer];
          [layer2 setAllowsGroupBlending:0];

          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    layer3 = [balloonView layer];
    [layer3 setCompositingFilter:0];

    contentView2 = [v17 contentView];
    contentView = [contentView2 layer];
    [contentView setAllowsGroupBlending:1];
LABEL_10:
  }
}

- (void)loadEarlierMessagesForConversation
{
  chat = [(CKTranscriptCollectionViewController *)self chat];
  inlineReplyController = [chat inlineReplyController];

  threadIdentifier = [inlineReplyController threadIdentifier];
  firstMessage = [inlineReplyController firstMessage];
  guid = [firstMessage guid];
  capacity = [inlineReplyController capacity];
  v8 = +[CKUIBehavior sharedBehaviors];
  [inlineReplyController setCapacity:{objc_msgSend(v8, "defaultConversationLoadMoreCount") + capacity}];

  chat2 = [(CKTranscriptCollectionViewController *)self chat];
  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = [chat2 loadMessagesBeforeAndAfterGUID:guid numberOfMessagesToLoadBeforeGUID:objc_msgSend(v10 numberOfMessagesToLoadAfterGUID:"defaultConversationLoadMoreCount") loadImmediately:0 threadIdentifier:{1, threadIdentifier}];
}

- (void)fetchEarlierMessagesForConversation:(id)conversation
{
  conversationCopy = conversation;
  chat = [(CKTranscriptCollectionViewController *)self chat];
  inlineReplyController = [chat inlineReplyController];
  threadIdentifier = [inlineReplyController threadIdentifier];
  firstMessage = [inlineReplyController firstMessage];
  guid = [firstMessage guid];
  v9 = +[CKUIBehavior sharedBehaviors];
  defaultConversationLoadMoreCount = [v9 defaultConversationLoadMoreCount];

  [inlineReplyController setCapacity:{objc_msgSend(inlineReplyController, "capacity") + defaultConversationLoadMoreCount}];
  [chat fetchMessagesBeforeAndAfterGUID:guid numberOfMessagesToLoadBeforeGUID:defaultConversationLoadMoreCount numberOfMessagesToLoadAfterGUID:0 threadIdentifier:threadIdentifier completion:conversationCopy];
}

- (void)loadRecentMessagesForConversation
{
  chat = [(CKTranscriptCollectionViewController *)self chat];
  inlineReplyController = [chat inlineReplyController];

  threadIdentifier = [inlineReplyController threadIdentifier];
  lastMessage = [inlineReplyController lastMessage];
  guid = [lastMessage guid];
  capacity = [inlineReplyController capacity];
  v8 = +[CKUIBehavior sharedBehaviors];
  [inlineReplyController setCapacity:{objc_msgSend(v8, "defaultConversationLoadMoreCount") + capacity}];

  chat2 = [(CKTranscriptCollectionViewController *)self chat];
  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = [chat2 loadMessagesBeforeAndAfterGUID:guid numberOfMessagesToLoadBeforeGUID:0 numberOfMessagesToLoadAfterGUID:objc_msgSend(v10 loadImmediately:"defaultConversationLoadMoreCount") threadIdentifier:{1, threadIdentifier}];
}

- (void)fetchRecentMessagesForConversation:(id)conversation
{
  conversationCopy = conversation;
  chat = [(CKTranscriptCollectionViewController *)self chat];
  inlineReplyController = [chat inlineReplyController];
  threadIdentifier = [inlineReplyController threadIdentifier];
  firstMessage = [inlineReplyController firstMessage];
  guid = [firstMessage guid];
  v9 = +[CKUIBehavior sharedBehaviors];
  defaultConversationLoadMoreCount = [v9 defaultConversationLoadMoreCount];

  [inlineReplyController setCapacity:{objc_msgSend(inlineReplyController, "capacity") + defaultConversationLoadMoreCount}];
  [chat fetchMessagesBeforeAndAfterGUID:guid numberOfMessagesToLoadBeforeGUID:0 numberOfMessagesToLoadAfterGUID:defaultConversationLoadMoreCount threadIdentifier:threadIdentifier completion:conversationCopy];
}

- (UIEdgeInsets)_computedContentInsets
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView contentInset];
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
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CKInlineReplyCollectionViewController;
  v2 = objc_msgSendSuper2(&v4, sel_initialTextEffectsState);
  [v2 setIsReady:0];

  return v2;
}

- (void)setScrollAnchor:(double)anchor
{
  if ([(CKInlineReplyCollectionViewController *)self isModal])
  {
    [(CKTranscriptCollectionViewController *)&v7 setScrollAnchor:anchor, self, CKInlineReplyCollectionViewController, v8.receiver, v8.super_class];
  }

  else
  {
    currentFrameMapForNextReload = [(CKInlineReplyCollectionViewController *)self currentFrameMapForNextReload];
    if (currentFrameMapForNextReload)
    {
    }

    else
    {
      targetFrameMapForAnimateOut = [(CKInlineReplyCollectionViewController *)self targetFrameMapForAnimateOut];

      if (!targetFrameMapForAnimateOut)
      {
        [(CKTranscriptCollectionViewController *)&v8 setScrollAnchor:anchor, v7.receiver, v7.super_class, self, CKInlineReplyCollectionViewController];
      }
    }
  }
}

- (id)overrideCurrentFrameMapForLayout:(id)layout
{
  currentFrameMapForNextReload = [(CKInlineReplyCollectionViewController *)self currentFrameMapForNextReload];
  v5 = [currentFrameMapForNextReload copy];

  [(CKInlineReplyCollectionViewController *)self setCurrentFrameMapForNextReload:0];

  return v5;
}

- (id)balloonOffsetMapForLayout:(id)layout resetsOffsetMapAfterUse:(BOOL)use
{
  useCopy = use;
  currentBalloonOffsetMap = [(CKInlineReplyCollectionViewController *)self currentBalloonOffsetMap];
  v7 = [currentBalloonOffsetMap copy];

  if (useCopy)
  {
    [(CKInlineReplyCollectionViewController *)self setCurrentBalloonOffsetMap:0];
  }

  return v7;
}

- (void)performCollectionViewReloadForAnimateOut
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  [collectionViewLayout setNeedsDynamicsUpdate];
  collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView2 reloadData];
}

- (void)setTransitionProperties:(id)properties
{
  v34 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  objc_storeStrong(&self->_transitionProperties, properties);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  chatItemGUIDs = [propertiesCopy chatItemGUIDs];
  v8 = [chatItemGUIDs countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(chatItemGUIDs);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        v13 = MEMORY[0x1E696AD98];
        [propertiesCopy initialBalloonOffsetX];
        v14 = [v13 numberWithDouble:?];
        [dictionary setObject:v14 forKey:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [chatItemGUIDs countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  associatedChatItemGUIDs = [propertiesCopy associatedChatItemGUIDs];
  v16 = [associatedChatItemGUIDs countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(associatedChatItemGUIDs);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        v21 = MEMORY[0x1E696AD98];
        [propertiesCopy initialBalloonOffsetX];
        v22 = [v21 numberWithDouble:?];
        [dictionary setObject:v22 forKey:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [associatedChatItemGUIDs countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v23 = [dictionary copy];
  [(CKInlineReplyCollectionViewController *)self setCurrentBalloonOffsetMap:v23];
}

- (void)setAnimatingOut:(BOOL)out
{
  if (self->_animatingOut != out)
  {
    outCopy = out;
    self->_animatingOut = out;
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];

    [collectionViewLayout setInlineAnimatingOut:outCopy];
  }
}

- (id)_replyTranscriptBubbleFilterForUserInterfaceStyle:(int64_t)style
{
  if (UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityIsReduceMotionEnabled())
  {
    goto LABEL_6;
  }

  if (style == 1)
  {
    v4 = MEMORY[0x1E6979CE8];
    goto LABEL_11;
  }

  if (style != 2)
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