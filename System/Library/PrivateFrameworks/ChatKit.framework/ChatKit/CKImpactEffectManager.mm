@interface CKImpactEffectManager
+ (BOOL)identifierIsAnimatedImpactEffect:(id)effect;
+ (BOOL)identifierIsValidImpactEffect:(id)effect;
+ (BOOL)identifierShouldPlayInWindow:(id)window;
+ (id)effectIdentifiers;
+ (id)localizedEffectNameForEffectWithIdentifier:(id)identifier;
+ (id)maskingStringForID:(id)d;
- (CKImpactEffectManager)init;
- (CKSendAnimationBalloonProvider)sendAnimationBalloonProvider;
- (CKSendAnimationManagerDelegate)delegate;
- (CKSendAnimationManagerDelegate)sendAnimationManagerDelegate;
- (id)_sendAnimationContextForIdentifier:(id)identifier message:(id)message isSender:(BOOL)sender beginAnimationFromTranscriptPresentedState:(BOOL)state;
- (id)cloneBalloonForAnimationWithChatItem:(id)item;
- (void)_animateLastMessage:(id)message withEffectIdentifier:(id)identifier beginAnimationFromTranscriptPresentedState:(BOOL)state;
- (void)_applyTranscriptTraitsAsOverridesFrom:(id)from toDestination:(id)destination;
- (void)_audioSessionOptionsWillChange:(id)change;
- (void)_cleanupExpressiveSendComponents;
- (void)_renderEffectInView;
- (void)_renderEffectInWindow;
- (void)_sizeAnimationWindow;
- (void)_visibleCells:(id *)cells aboveItem:(id)item;
- (void)animateMessages:(id)messages;
- (void)animateMessages:(id)messages withEffectIdentifier:(id)identifier beginAnimationFromTranscriptPresentedState:(BOOL)state;
- (void)animationDidFinishWithContext:(id)context;
- (void)animationWillBeginWithContext:(id)context;
- (void)dealloc;
- (void)matchScrollViewOffset:(id)offset;
- (void)playSoundForEffectIdentifier:(id)identifier;
- (void)playUndoSendAnimationForChatItem:(id)item;
- (void)popAnimationDidBegin;
- (void)setupAudioPlayerWithURL:(id)l;
- (void)stopAllEffects;
- (void)stopPlayingSound;
@end

@implementation CKImpactEffectManager

+ (id)effectIdentifiers
{
  if (effectIdentifiers_onceToken != -1)
  {
    +[CKImpactEffectManager effectIdentifiers];
  }

  v3 = effectIdentifiers_effects;

  return v3;
}

void __42__CKImpactEffectManager_effectIdentifiers__block_invoke()
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.MobileSMS.expressivesend.invisibleink";
  v2[1] = @"com.apple.MobileSMS.expressivesend.gentle";
  v2[2] = @"com.apple.MobileSMS.expressivesend.loud";
  v2[3] = @"com.apple.MobileSMS.expressivesend.impact";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:4];
  v1 = effectIdentifiers_effects;
  effectIdentifiers_effects = v0;
}

+ (id)maskingStringForID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.impact"])
  {
    v4 = @"SUMMARY_IMPACT_MESSAGE";
LABEL_11:
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F04268F8 table:@"ChatKit"];

    goto LABEL_12;
  }

  if ([dCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.loud"])
  {
    v4 = @"SUMMARY_LOUD_MESSAGE";
    goto LABEL_11;
  }

  if ([dCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.gentle"])
  {
    v4 = @"SUMMARY_GENTLE_MESSAGE";
    goto LABEL_11;
  }

  if ([dCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"])
  {
    v4 = @"SUMMARY_INVISIBLE_INK_MESSAGE";
    goto LABEL_11;
  }

  if ([dCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.focus"])
  {
    v4 = @"SUMMARY_FOCUS_MESSAGE";
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

+ (BOOL)identifierIsValidImpactEffect:(id)effect
{
  effectCopy = effect;
  if ([effectCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.impact"] & 1) != 0 || (objc_msgSend(effectCopy, "isEqualToString:", @"com.apple.MobileSMS.expressivesend.loud") & 1) != 0 || (objc_msgSend(effectCopy, "isEqualToString:", @"com.apple.MobileSMS.expressivesend.gentle") & 1) != 0 || (objc_msgSend(effectCopy, "isEqualToString:", @"com.apple.MobileSMS.expressivesend.invisibleink") & 1) != 0 || (objc_msgSend(effectCopy, "isEqualToString:", @"com.apple.MobileSMS.expressivesend.focus"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [effectCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.pop"];
  }

  return v4;
}

+ (BOOL)identifierIsAnimatedImpactEffect:(id)effect
{
  effectCopy = effect;
  if ([self identifierIsValidImpactEffect:effectCopy])
  {
    v5 = [effectCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)identifierShouldPlayInWindow:(id)window
{
  v3 = [window isEqualToString:@"com.apple.MobileSMS.expressivesend.impact"];
  if (v3)
  {
    LOBYTE(v3) = CKIsRunningInMessages() != 0;
  }

  return v3;
}

+ (id)localizedEffectNameForEffectWithIdentifier:(id)identifier
{
  v3 = localizedEffectNameForEffectWithIdentifier__onceToken;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    +[CKImpactEffectManager localizedEffectNameForEffectWithIdentifier:];
  }

  v5 = [localizedEffectNameForEffectWithIdentifier__effectNames objectForKey:identifierCopy];

  return v5;
}

void __68__CKImpactEffectManager_localizedEffectNameForEffectWithIdentifier___block_invoke()
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"com.apple.MobileSMS.expressivesend.invisibleink";
  v0 = CKFrameworkBundle();
  v1 = [v0 localizedStringForKey:@"IMPACT_PICKER_INVISIBLE_INK_NAME_NORMAL_CASE" value:&stru_1F04268F8 table:@"ChatKit"];
  v11[0] = v1;
  v10[1] = @"com.apple.MobileSMS.expressivesend.gentle";
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"IMPACT_PICKER_GENTLE_NAME_NORMAL_CASE" value:&stru_1F04268F8 table:@"ChatKit"];
  v11[1] = v3;
  v10[2] = @"com.apple.MobileSMS.expressivesend.loud";
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"IMPACT_PICKER_LOUD_NAME_NORMAL_CASE" value:&stru_1F04268F8 table:@"ChatKit"];
  v11[2] = v5;
  v10[3] = @"com.apple.MobileSMS.expressivesend.impact";
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"IMPACT_PICKER_IMPACT_NAME_NORMAL_CASE" value:&stru_1F04268F8 table:@"ChatKit"];
  v11[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v9 = localizedEffectNameForEffectWithIdentifier__effectNames;
  localizedEffectNameForEffectWithIdentifier__effectNames = v8;
}

- (CKImpactEffectManager)init
{
  v3.receiver = self;
  v3.super_class = CKImpactEffectManager;
  return [(CKImpactEffectManager *)&v3 init];
}

- (void)animateMessages:(id)messages
{
  lastObject = [messages lastObject];
  expressiveSendStyleID = [lastObject expressiveSendStyleID];
  [(CKImpactEffectManager *)self _animateLastMessage:lastObject withEffectIdentifier:expressiveSendStyleID beginAnimationFromTranscriptPresentedState:0];
}

- (void)animateMessages:(id)messages withEffectIdentifier:(id)identifier beginAnimationFromTranscriptPresentedState:(BOOL)state
{
  stateCopy = state;
  identifierCopy = identifier;
  lastObject = [messages lastObject];
  [(CKImpactEffectManager *)self _animateLastMessage:lastObject withEffectIdentifier:identifierCopy beginAnimationFromTranscriptPresentedState:stateCopy];
}

- (void)setupAudioPlayerWithURL:(id)l
{
  v12[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = [[CKImpactEffectMediaObject alloc] initWithImpactEffectAudioFileURL:lCopy];

  v6 = [CKAudioController alloc];
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [(CKAudioController *)v6 initWithMediaObjects:v7 conversation:0];
  audioController = self->_audioController;
  self->_audioController = v8;

  [(CKAudioController *)self->_audioController setShouldUseAVPlayer:CKSupportsAdvancedHaptics()];
  [(CKAudioController *)self->_audioController setDelegate:self];
  [(CKAudioController *)self->_audioController setShouldStopPlayingWhenSilent:1];
  [(CKAudioController *)self->_audioController setShouldDuckOthers:0];
  [(CKAudioController *)self->_audioController setShouldUseSpeaker:1];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = +[CKAudioSessionController shareInstance];
  [defaultCenter addObserver:self selector:sel__audioSessionOptionsWillChange_ name:@"CKAudioSessionControllerSessionOptionsWillChangeNotification" object:v11];
}

- (void)playSoundForEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.pop"])
  {
    v4 = @"Pop";
  }

  else
  {
    if (![identifierCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.impact"])
    {
      goto LABEL_8;
    }

    v4 = @"Slam";
  }

  v5 = CKFrameworkBundle();
  v6 = [v5 URLForResource:v4 withExtension:@"m4r"];

  [(CKImpactEffectManager *)self setupAudioPlayerWithURL:v6];
  [(CKAudioController *)self->_audioController prepareToPlay];
  if (([identifierCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.pop"] & 1) == 0)
  {
    [(CKAudioController *)self->_audioController play];
  }

LABEL_8:
}

- (void)playUndoSendAnimationForChatItem:(id)item
{
  itemCopy = item;
  delegate = [(CKImpactEffectManager *)self delegate];
  v6 = [delegate collectionViewControllerForImpactEffectManager:self];

  chatItems = [v6 chatItems];
  message = [itemCopy message];
  v9 = [chatItems __ck_indexOfPartOfMessage:message withMessagePartIndex:{objc_msgSend(itemCopy, "index")}];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CKImpactEffectManager playUndoSendAnimationForChatItem:v10];
    }
  }

  else
  {
    v10 = [chatItems objectAtIndexedSubscript:v9];
    iMChatItem = [v10 IMChatItem];
    guid = [iMChatItem guid];

    undoSendChatItemGUID = self->_undoSendChatItemGUID;
    self->_undoSendChatItemGUID = guid;
  }

  message2 = [itemCopy message];
  [(CKImpactEffectManager *)self _animateLastMessage:message2 withEffectIdentifier:@"com.apple.MobileSMS.expressivesend.pop" beginAnimationFromTranscriptPresentedState:0];
}

- (void)_animateLastMessage:(id)message withEffectIdentifier:(id)identifier beginAnimationFromTranscriptPresentedState:(BOOL)state
{
  stateCopy = state;
  v28 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  identifierCopy = identifier;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  v9 = [fileTransferGUIDs countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(fileTransferGUIDs);
      }

      v13 = *(*(&v23 + 1) + 8 * v12);
      mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
      v15 = [mEMORY[0x1E69A5B80] transferForGUID:v13];

      LOBYTE(mEMORY[0x1E69A5B80]) = [CKCommSafetyHelper shouldDisableTranscriptCapabilitiesForFileTransfer:v15];
      if (mEMORY[0x1E69A5B80])
      {
        goto LABEL_19;
      }

      if (v10 == ++v12)
      {
        v10 = [fileTransferGUIDs countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (![(CKImpactEffectManager *)self isAnimating]&& ![(CKImpactEffectManager *)self isDisabled]&& [CKImpactEffectManager identifierIsAnimatedImpactEffect:identifierCopy])
  {
    [(CKImpactEffectManager *)self playSoundForEffectIdentifier:identifierCopy];
    if (_animateLastMessage_withEffectIdentifier_beginAnimationFromTranscriptPresentedState__onceToken != -1)
    {
      [CKImpactEffectManager _animateLastMessage:withEffectIdentifier:beginAnimationFromTranscriptPresentedState:];
    }

    [_animateLastMessage_withEffectIdentifier_beginAnimationFromTranscriptPresentedState__sAnimator setAnimationDelegate:self];
    if ([CKImpactEffectManager identifierShouldPlayInWindow:identifierCopy])
    {
      [(CKImpactEffectManager *)self _renderEffectInWindow];
    }

    fileTransferGUIDs = -[CKImpactEffectManager _sendAnimationContextForIdentifier:message:isSender:beginAnimationFromTranscriptPresentedState:](self, "_sendAnimationContextForIdentifier:message:isSender:beginAnimationFromTranscriptPresentedState:", identifierCopy, messageCopy, [messageCopy isFromMe], stateCopy);
    expressiveSendAnimationBackdrop = [(CKImpactEffectManager *)self expressiveSendAnimationBackdrop];
    [fileTransferGUIDs setBackdropLayer:expressiveSendAnimationBackdrop];

    delegate = [(CKImpactEffectManager *)self delegate];
    [delegate sendAnimationManagerWillStartAnimation:self context:fileTransferGUIDs];

    if ([identifierCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.pop"])
    {
      delegate2 = [(CKImpactEffectManager *)self delegate];
      v19 = [delegate2 collectionViewControllerForImpactEffectManager:self];

      view = [v19 view];
      [fileTransferGUIDs setContainerView:view];
    }

    [_animateLastMessage_withEffectIdentifier_beginAnimationFromTranscriptPresentedState__sAnimator beginAnimationWithSendAnimationContext:fileTransferGUIDs];
LABEL_19:
  }
}

void __109__CKImpactEffectManager__animateLastMessage_withEffectIdentifier_beginAnimationFromTranscriptPresentedState___block_invoke()
{
  v0 = objc_alloc_init(CKChatControllerDummyAnimator);
  v1 = _animateLastMessage_withEffectIdentifier_beginAnimationFromTranscriptPresentedState__sAnimator;
  _animateLastMessage_withEffectIdentifier_beginAnimationFromTranscriptPresentedState__sAnimator = v0;
}

- (void)_renderEffectInView
{
  delegate = [(CKImpactEffectManager *)self delegate];
  v19 = [delegate collectionViewControllerForImpactEffectManager:self];

  v4 = objc_alloc_init(MEMORY[0x1E69DD258]);
  v5 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  [v5 setClipsToBounds:0];
  [v5 setAutoresizingMask:18];
  [(CKImpactEffectManager *)self setExpressiveSendScrollView:v5];
  view = [v4 view];
  [view addSubview:v5];

  delegate2 = [v19 delegate];
  v8 = [delegate2 transcriptCollectionViewControllerOuterEffectPresentingView:v19];

  view2 = [v4 view];
  [v8 addSubview:view2];

  collectionView = [v19 collectionView];
  [collectionView frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v5 setFrame:{v12, v14, v16, v18}];
}

- (void)_renderEffectInWindow
{
  v19[1] = *MEMORY[0x1E69E9840];
  expressiveSendAnimationWindow = [(CKImpactEffectManager *)self expressiveSendAnimationWindow];
  if (!expressiveSendAnimationWindow)
  {
    delegate = [(CKImpactEffectManager *)self delegate];
    v5 = [delegate collectionViewControllerForImpactEffectManager:self];

    expressiveSendAnimationWindow = objc_alloc_init(MEMORY[0x1E69DD2E8]);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [expressiveSendAnimationWindow setBackgroundColor:clearColor];

    view = [v5 view];
    window = [view window];
    windowScene = [window windowScene];
    [expressiveSendAnimationWindow setWindowScene:windowScene];

    [(CKImpactEffectManager *)self _applyTranscriptTraitsAsOverridesFrom:v5 toDestination:expressiveSendAnimationWindow];
    v10 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v11 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    [v11 setClipsToBounds:0];
    [v11 setAutoresizingMask:18];
    [(CKImpactEffectManager *)self setExpressiveSendScrollView:v11];
    view2 = [v10 view];
    [view2 addSubview:v11];

    [expressiveSendAnimationWindow setRootViewController:v10];
    [expressiveSendAnimationWindow setUserInteractionEnabled:1];
    v13 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v13 setValue:&unk_1F04E7E30 forKey:@"inputRadius"];
    [v13 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    v14 = objc_alloc_init(MEMORY[0x1E6979310]);
    [v14 setAllowsGroupBlending:0];
    v19[0] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v14 setFilters:v15];

    rootViewController = [expressiveSendAnimationWindow rootViewController];
    view3 = [rootViewController view];
    layer = [view3 layer];
    [layer insertSublayer:v14 atIndex:0];

    [(CKImpactEffectManager *)self setExpressiveSendAnimationBackdrop:v14];
  }

  [(CKImpactEffectManager *)self setExpressiveSendAnimationWindow:expressiveSendAnimationWindow];
  [(CKImpactEffectManager *)self _sizeAnimationWindow];
  [expressiveSendAnimationWindow setHidden:0];
}

- (void)_applyTranscriptTraitsAsOverridesFrom:(id)from toDestination:(id)destination
{
  destinationCopy = destination;
  fromCopy = from;
  traitOverrides = [destinationCopy traitOverrides];
  traitCollection = [fromCopy traitCollection];
  [traitOverrides setNSIntegerValue:objc_msgSend(traitCollection forTrait:{"userInterfaceStyle"), objc_opt_class()}];

  traitOverrides2 = [destinationCopy traitOverrides];
  traitCollection2 = [fromCopy traitCollection];
  v11 = [traitCollection2 valueForNSIntegerTrait:objc_opt_class()];
  [traitOverrides2 setNSIntegerValue:v11 forTrait:objc_opt_class()];

  traitOverrides3 = [destinationCopy traitOverrides];

  traitCollection3 = [fromCopy traitCollection];

  [traitCollection3 valueForCGFloatTrait:objc_opt_class()];
  [traitOverrides3 setCGFloatValue:objc_opt_class() forTrait:v13];
}

- (void)matchScrollViewOffset:(id)offset
{
  offsetCopy = offset;
  expressiveSendScrollView = [(CKImpactEffectManager *)self expressiveSendScrollView];
  [offsetCopy contentOffset];
  v6 = v5;
  v8 = v7;

  [expressiveSendScrollView setContentOffset:{v6, v8}];
}

- (void)stopAllEffects
{
  [(CKImpactEffectManager *)self stopPlayingSound];

  [(CKImpactEffectManager *)self _cleanupExpressiveSendComponents];
}

- (void)_sizeAnimationWindow
{
  delegate = [(CKImpactEffectManager *)self delegate];
  v4 = [delegate collectionViewControllerForImpactEffectManager:self];
  collectionView = [v4 collectionView];

  expressiveSendAnimationWindow = [(CKImpactEffectManager *)self expressiveSendAnimationWindow];
  superview = [collectionView superview];
  [collectionView frame];
  [superview convertRect:0 toView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [expressiveSendAnimationWindow setFrame:{v8, v10, v12, v14}];
  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 presentationControllerWindowLevel];
  [expressiveSendAnimationWindow setLevel:?];

  superview2 = [collectionView superview];
  [collectionView frame];
  [superview2 convertRect:0 toView:?];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  rootViewController = [expressiveSendAnimationWindow rootViewController];
  view = [rootViewController view];
  [view setFrame:{v18, v20, v22, v24}];

  expressiveSendAnimationBackdrop = [(CKImpactEffectManager *)self expressiveSendAnimationBackdrop];
  rootViewController2 = [expressiveSendAnimationWindow rootViewController];
  view2 = [rootViewController2 view];
  layer = [view2 layer];
  [layer bounds];
  [expressiveSendAnimationBackdrop setFrame:?];
}

- (id)_sendAnimationContextForIdentifier:(id)identifier message:(id)message isSender:(BOOL)sender beginAnimationFromTranscriptPresentedState:(BOOL)state
{
  stateCopy = state;
  senderCopy = sender;
  v120 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  messageCopy = message;
  v75 = objc_alloc_init(CKSendAnimationContext);
  selfCopy = self;
  delegate = [(CKImpactEffectManager *)self delegate];
  v10 = [delegate collectionViewControllerForImpactEffectManager:selfCopy];
  chatItems = [v10 chatItems];

  v109 = 0;
  v110 = &v109;
  v111 = 0x3032000000;
  v112 = __Block_byref_object_copy__37;
  v113 = __Block_byref_object_dispose__37;
  v114 = 0;
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __120__CKImpactEffectManager__sendAnimationContextForIdentifier_message_isSender_beginAnimationFromTranscriptPresentedState___block_invoke;
  v106[3] = &unk_1E72F3860;
  v70 = messageCopy;
  v107 = v70;
  v108 = &v109;
  [chatItems enumerateObjectsWithOptions:2 usingBlock:v106];
  v105 = 0;
  [(CKImpactEffectManager *)selfCopy _visibleCells:&v105 aboveItem:v110[5]];
  v11 = v105;
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = v11;
  v83 = v12;
  v79 = [obj countByEnumeratingWithState:&v101 objects:v119 count:16];
  if (v79)
  {
    v78 = *v102;
    do
    {
      for (i = 0; i != v79; ++i)
      {
        if (*v102 != v78)
        {
          objc_enumerationMutation(obj);
        }

        contentView = [*(*(&v101 + 1) + 8 * i) contentView];
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        subviews = [contentView subviews];
        v16 = [subviews countByEnumeratingWithState:&v97 objects:v118 count:16];
        if (v16)
        {
          v80 = contentView;
          v17 = 0;
          v84 = subviews;
          v86 = *v98;
          do
          {
            v18 = 0;
            v19 = v17;
            do
            {
              if (*v98 != v86)
              {
                objc_enumerationMutation(v84);
              }

              v17 = *(*(&v97 + 1) + 8 * v18);

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v95 = 0u;
                v96 = 0u;
                v93 = 0u;
                v94 = 0u;
                subviews2 = [v17 subviews];
                v21 = [subviews2 countByEnumeratingWithState:&v93 objects:v117 count:16];
                if (v21)
                {
                  v22 = v13;
                  v23 = *v94;
                  while (2)
                  {
                    for (j = 0; j != v21; j = j + 1)
                    {
                      if (*v94 != v23)
                      {
                        objc_enumerationMutation(subviews2);
                      }

                      v25 = *(*(&v93 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v21 = v25;
                        goto LABEL_23;
                      }
                    }

                    v21 = [subviews2 countByEnumeratingWithState:&v93 objects:v117 count:16];
                    if (v21)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_23:
                  v12 = v83;
                  v13 = v22;
                }
              }

              else
              {
                v21 = 0;
              }

              [v12 addObject:v17];
              if (v21)
              {
                [v13 addObject:v21];
              }

              else
              {
                null = [MEMORY[0x1E695DFB0] null];
                [v13 addObject:null];
              }

              ++v18;
              v19 = v17;
            }

            while (v18 != v16);
            v16 = [v84 countByEnumeratingWithState:&v97 objects:v118 count:16];
          }

          while (v16);

          contentView = v80;
          subviews = v84;
        }
      }

      v79 = [obj countByEnumeratingWithState:&v101 objects:v119 count:16];
    }

    while (v79);
  }

  v27 = selfCopy;
  if (+[CKImpactEffectManager identifierShouldPlayInWindow:](CKImpactEffectManager, "identifierShouldPlayInWindow:", identifierCopy) && [v12 count])
  {
    delegate2 = [(CKImpactEffectManager *)selfCopy delegate];
    v29 = [delegate2 collectionViewControllerForImpactEffectManager:selfCopy];

    collectionView = [v29 collectionView];
    v31 = [v29 balloonViewForChatItem:v110[5]];
    firstObject = [obj firstObject];
    v33 = [v29 chatItemForCell:firstObject];

    expressiveSendAnimationBalloon = [(CKImpactEffectManager *)selfCopy expressiveSendAnimationBalloon];

    if (expressiveSendAnimationBalloon)
    {
      expressiveSendAnimationBalloon2 = [(CKImpactEffectManager *)selfCopy expressiveSendAnimationBalloon];
      CKBalloonViewReuse(expressiveSendAnimationBalloon2);
    }

    v36 = [(CKImpactEffectManager *)selfCopy cloneBalloonForAnimationWithChatItem:v33];
    [(CKImpactEffectManager *)selfCopy setExpressiveSendAnimationBalloon:v36];
    v37 = [v12 indexOfObject:v31];
    if (v37 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    v87 = [v12 objectAtIndex:v38];
    [v87 frame];
    v40 = v39;
    v42 = v41;
    superview = [v87 superview];
    [superview convertPoint:collectionView toView:{v40, v42}];
    v45 = v44;
    v47 = v46;

    layer = [collectionView layer];
    flipsHorizontalAxis = [layer flipsHorizontalAxis];

    if (flipsHorizontalAxis)
    {
      [collectionView frame];
      v45 = v50 - v45;
    }

    [v36 frame];
    [v36 setFrame:{v45, v47}];
    [(CKImpactEffectManager *)selfCopy setOriginalBalloonView:v87];
    if (v36)
    {
      [v12 replaceObjectAtIndex:v38 withObject:v36];
    }

    else if (IMOSLoggingEnabled())
    {
      v51 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v51, OS_LOG_TYPE_INFO, "_sendAnimationContextForIdentifier clone is nil", buf, 2u);
      }
    }

    v81 = v33;
    v85 = collectionView;
    v52 = v29;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    subviews3 = [v36 subviews];
    v54 = [subviews3 countByEnumeratingWithState:&v88 objects:v116 count:16];
    if (v54)
    {
      v55 = *v89;
      while (2)
      {
        for (k = 0; k != v54; ++k)
        {
          if (*v89 != v55)
          {
            objc_enumerationMutation(subviews3);
          }

          v57 = *(*(&v88 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v60 = v57;

            v58 = v85;
            v59 = v81;
            if (v60)
            {
              [v13 replaceObjectAtIndex:0 withObject:v60];
            }

            goto LABEL_59;
          }
        }

        v54 = [subviews3 countByEnumeratingWithState:&v88 objects:v116 count:16];
        if (v54)
        {
          continue;
        }

        break;
      }
    }

    v58 = v85;
    v59 = v81;
    v60 = 0;
LABEL_59:

    expressiveSendScrollView = [(CKImpactEffectManager *)selfCopy expressiveSendScrollView];
    [expressiveSendScrollView addSubview:v36];

    v27 = selfCopy;
  }

  firstObject2 = [v12 firstObject];
  [v12 removeFirstObject];
  while (firstObject2)
  {
    v63 = objc_opt_class();
    if ([v63 isSubclassOfClass:objc_opt_class()])
    {
      v67 = firstObject2;
      v115 = v67;
      v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];

LABEL_69:
      v27 = selfCopy;
      goto LABEL_71;
    }

    firstObject3 = [v12 firstObject];

    [v12 removeFirstObject];
    v27 = selfCopy;
    [v13 removeFirstObject];
    firstObject2 = firstObject3;
  }

  if (IMOSLoggingEnabled())
  {
    v65 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v65, OS_LOG_TYPE_INFO, "_sendAnimationContextForIdentifier throwBalloonView is nil", buf, 2u);
    }

    v66 = 0;
    goto LABEL_69;
  }

  v66 = 0;
LABEL_71:
  [(CKSendAnimationContext *)v75 setAnimatableViews:v12];
  [(CKSendAnimationContext *)v75 setAnimatableTextViews:v13];
  [(CKSendAnimationContext *)v75 setImpactIdentifier:identifierCopy];
  [(CKSendAnimationContext *)v75 setThrowBalloonViews:v66];
  [(CKSendAnimationContext *)v75 setIsSender:senderCopy];
  expressiveSendScrollView2 = [(CKImpactEffectManager *)v27 expressiveSendScrollView];
  [(CKSendAnimationContext *)v75 setContainerView:expressiveSendScrollView2];

  [(CKSendAnimationContext *)v75 setBeginAnimationFromTranscriptPresentedState:stateCopy];
  _Block_object_dispose(&v109, 8);

  return v75;
}

void __120__CKImpactEffectManager__sendAnimationContextForIdentifier_message_isSender_beginAnimationFromTranscriptPresentedState___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v13;
  if (isKindOfClass)
  {
    v9 = [v13 IMChatItem];
    if (([v9 isReplyContextPreview] & 1) == 0)
    {
      v10 = [v9 guid];
      v11 = [*(a1 + 32) guid];
      v12 = [v10 containsString:v11];

      if (v12)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *a4 = 1;
      }
    }

    v8 = v13;
  }
}

- (id)cloneBalloonForAnimationWithChatItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = CKBalloonViewForClass([itemCopy impactBalloonViewClass]);
    [v5 configureForMessagePart:itemCopy];
    [v5 setCanUseOpaqueMask:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      delegate = [(CKImpactEffectManager *)self delegate];
      v8 = [delegate collectionViewControllerForImpactEffectManager:self];

      gradientReferenceView = [v8 gradientReferenceView];
      [v6 setGradientReferenceView:gradientReferenceView];
    }

    [itemCopy size];
    v11 = v10;
    v13 = v12;
    [v5 tailInsetsForPillSize:?];
    [v5 setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v11 + v14 + v15, v13 + v16 + v17}];
    [v5 layoutIfNeeded];
    [v5 prepareForDisplayIfNeeded];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)popAnimationDidBegin
{
  delegate = [(CKImpactEffectManager *)self delegate];
  v4 = [delegate collectionViewControllerForImpactEffectManager:self];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__CKImpactEffectManager_popAnimationDidBegin__block_invoke;
  v6[3] = &unk_1E72EB8D0;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)animationWillBeginWithContext:(id)context
{
  contextCopy = context;
  impactIdentifier = [contextCopy impactIdentifier];
  v5 = [impactIdentifier isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"];

  if ((v5 & 1) == 0)
  {
    [MEMORY[0x1E6979518] flush];
    delegate = [(CKImpactEffectManager *)self delegate];
    v7 = [delegate collectionViewControllerForImpactEffectManager:self];

    collectionView = [v7 collectionView];
    [collectionView setNeedsLayout];

    collectionView2 = [v7 collectionView];
    [collectionView2 layoutIfNeeded];

    impactIdentifier2 = [contextCopy impactIdentifier];
    LODWORD(collectionView2) = [CKImpactEffectManager identifierShouldPlayInWindow:impactIdentifier2];

    if (collectionView2)
    {
      expressiveSendScrollView = [(CKImpactEffectManager *)self expressiveSendScrollView];
      collectionView3 = [v7 collectionView];
      [collectionView3 contentOffset];
      [expressiveSendScrollView setContentOffset:?];

      originalBalloonView = [(CKImpactEffectManager *)self originalBalloonView];
      [originalBalloonView setHidden:1];
    }

    delegate2 = [(CKImpactEffectManager *)self delegate];
    v15 = [delegate2 chatForSendAnimationManager:self];

    [v15 beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57A8]];
    [(CKImpactEffectManager *)self setIsAnimating:1];
  }
}

- (void)animationDidFinishWithContext:(id)context
{
  contextCopy = context;
  impactIdentifier = [contextCopy impactIdentifier];
  v6 = [impactIdentifier isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"];

  if ((v6 & 1) == 0)
  {
    impactIdentifier2 = [contextCopy impactIdentifier];
    [(CKImpactEffectManager *)self setIsAnimating:0];
    if ([CKImpactEffectManager identifierShouldPlayInWindow:impactIdentifier2])
    {
      originalBalloonView = [(CKImpactEffectManager *)self originalBalloonView];
      [originalBalloonView setHidden:0];

      [(CKImpactEffectManager *)self setOriginalBalloonView:0];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__CKImpactEffectManager_animationDidFinishWithContext___block_invoke;
    v10[3] = &unk_1E72EB8D0;
    v10[4] = self;
    v11 = impactIdentifier2;
    v9 = impactIdentifier2;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __55__CKImpactEffectManager_animationDidFinishWithContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanupExpressiveSendComponents];
  v5 = objc_alloc_init(CKSendAnimationContext);
  [(CKSendAnimationContext *)v5 setImpactIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  [v2 sendAnimationManagerDidStopAnimation:*(a1 + 32) context:v5];

  v3 = [*(a1 + 32) delegate];
  v4 = [v3 chatForSendAnimationManager:*(a1 + 32)];

  [v4 endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57A8]];
}

- (void)_visibleCells:(id *)cells aboveItem:(id)item
{
  v31 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  delegate = [(CKImpactEffectManager *)self delegate];
  v8 = [delegate collectionViewControllerForImpactEffectManager:self];

  collectionView = [v8 collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v11 = [indexPathsForVisibleItems mutableCopy];

  v25 = itemCopy;
  v22 = [v8 cellForChatItem:itemCopy];
  v12 = [collectionView indexPathForCell:?];
  [v11 sortUsingComparator:&__block_literal_global_287_0];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = v11;
  reverseObjectEnumerator = [v11 reverseObjectEnumerator];
  v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [v18 row];
        if (v19 <= [v12 row])
        {
          v20 = [collectionView cellForItemAtIndexPath:v18];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v6 addObject:v20];
          }
        }
      }

      v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  if (cells)
  {
    v21 = v6;
    *cells = v6;
  }
}

uint64_t __49__CKImpactEffectManager__visibleCells_aboveItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 row];
  v6 = [v4 row];

  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (void)_cleanupExpressiveSendComponents
{
  expressiveSendAnimationBalloon = [(CKImpactEffectManager *)self expressiveSendAnimationBalloon];
  [expressiveSendAnimationBalloon removeFromSuperview];

  expressiveSendAnimationBalloon2 = [(CKImpactEffectManager *)self expressiveSendAnimationBalloon];
  CKBalloonViewReuse(expressiveSendAnimationBalloon2);

  [(CKImpactEffectManager *)self setExpressiveSendAnimationBalloon:0];
  expressiveSendScrollView = [(CKImpactEffectManager *)self expressiveSendScrollView];
  superview = [expressiveSendScrollView superview];

  [superview setHidden:1];
  expressiveSendScrollView2 = [(CKImpactEffectManager *)self expressiveSendScrollView];
  [expressiveSendScrollView2 removeFromSuperview];

  [(CKImpactEffectManager *)self setExpressiveSendScrollView:0];
  expressiveSendAnimationWindow = [(CKImpactEffectManager *)self expressiveSendAnimationWindow];
  [expressiveSendAnimationWindow setHidden:1];

  [(CKImpactEffectManager *)self setExpressiveSendAnimationWindow:0];
  [(CKImpactEffectManager *)self setExpressiveSendAnimationBackdrop:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = +[CKAudioSessionController shareInstance];
  [defaultCenter removeObserver:self name:@"CKAudioSessionControllerSessionOptionsWillChangeNotification" object:v4];

  v5.receiver = self;
  v5.super_class = CKImpactEffectManager;
  [(CKImpactEffectManager *)&v5 dealloc];
}

- (void)_audioSessionOptionsWillChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"CKAudioSessionControllerSessionNotificationOptionsKey"];

  if (v5 && ([v5 unsignedIntegerValue] & 2) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__CKImpactEffectManager__audioSessionOptionsWillChange___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)stopPlayingSound
{
  audioController = self->_audioController;
  if (audioController)
  {
    [(CKAudioController *)audioController pause];
    v4 = self->_audioController;

    [(CKAudioController *)v4 stop];
  }
}

- (CKSendAnimationManagerDelegate)sendAnimationManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->sendAnimationManagerDelegate);

  return WeakRetained;
}

- (CKSendAnimationBalloonProvider)sendAnimationBalloonProvider
{
  WeakRetained = objc_loadWeakRetained(&self->sendAnimationBalloonProvider);

  return WeakRetained;
}

- (CKSendAnimationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end