@interface CKImpactEffectManager
+ (BOOL)identifierIsAnimatedImpactEffect:(id)a3;
+ (BOOL)identifierIsValidImpactEffect:(id)a3;
+ (BOOL)identifierShouldPlayInWindow:(id)a3;
+ (id)effectIdentifiers;
+ (id)localizedEffectNameForEffectWithIdentifier:(id)a3;
+ (id)maskingStringForID:(id)a3;
- (CKImpactEffectManager)init;
- (CKSendAnimationBalloonProvider)sendAnimationBalloonProvider;
- (CKSendAnimationManagerDelegate)delegate;
- (CKSendAnimationManagerDelegate)sendAnimationManagerDelegate;
- (id)_sendAnimationContextForIdentifier:(id)a3 message:(id)a4 isSender:(BOOL)a5 beginAnimationFromTranscriptPresentedState:(BOOL)a6;
- (id)cloneBalloonForAnimationWithChatItem:(id)a3;
- (void)_animateLastMessage:(id)a3 withEffectIdentifier:(id)a4 beginAnimationFromTranscriptPresentedState:(BOOL)a5;
- (void)_applyTranscriptTraitsAsOverridesFrom:(id)a3 toDestination:(id)a4;
- (void)_audioSessionOptionsWillChange:(id)a3;
- (void)_cleanupExpressiveSendComponents;
- (void)_renderEffectInView;
- (void)_renderEffectInWindow;
- (void)_sizeAnimationWindow;
- (void)_visibleCells:(id *)a3 aboveItem:(id)a4;
- (void)animateMessages:(id)a3;
- (void)animateMessages:(id)a3 withEffectIdentifier:(id)a4 beginAnimationFromTranscriptPresentedState:(BOOL)a5;
- (void)animationDidFinishWithContext:(id)a3;
- (void)animationWillBeginWithContext:(id)a3;
- (void)dealloc;
- (void)matchScrollViewOffset:(id)a3;
- (void)playSoundForEffectIdentifier:(id)a3;
- (void)playUndoSendAnimationForChatItem:(id)a3;
- (void)popAnimationDidBegin;
- (void)setupAudioPlayerWithURL:(id)a3;
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

+ (id)maskingStringForID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.MobileSMS.expressivesend.impact"])
  {
    v4 = @"SUMMARY_IMPACT_MESSAGE";
LABEL_11:
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F04268F8 table:@"ChatKit"];

    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"com.apple.MobileSMS.expressivesend.loud"])
  {
    v4 = @"SUMMARY_LOUD_MESSAGE";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"com.apple.MobileSMS.expressivesend.gentle"])
  {
    v4 = @"SUMMARY_GENTLE_MESSAGE";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"])
  {
    v4 = @"SUMMARY_INVISIBLE_INK_MESSAGE";
    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"com.apple.MobileSMS.expressivesend.focus"])
  {
    v4 = @"SUMMARY_FOCUS_MESSAGE";
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

+ (BOOL)identifierIsValidImpactEffect:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.MobileSMS.expressivesend.impact"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.MobileSMS.expressivesend.loud") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.MobileSMS.expressivesend.gentle") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.MobileSMS.expressivesend.invisibleink") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.MobileSMS.expressivesend.focus"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.MobileSMS.expressivesend.pop"];
  }

  return v4;
}

+ (BOOL)identifierIsAnimatedImpactEffect:(id)a3
{
  v4 = a3;
  if ([a1 identifierIsValidImpactEffect:v4])
  {
    v5 = [v4 isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)identifierShouldPlayInWindow:(id)a3
{
  v3 = [a3 isEqualToString:@"com.apple.MobileSMS.expressivesend.impact"];
  if (v3)
  {
    LOBYTE(v3) = CKIsRunningInMessages() != 0;
  }

  return v3;
}

+ (id)localizedEffectNameForEffectWithIdentifier:(id)a3
{
  v3 = localizedEffectNameForEffectWithIdentifier__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[CKImpactEffectManager localizedEffectNameForEffectWithIdentifier:];
  }

  v5 = [localizedEffectNameForEffectWithIdentifier__effectNames objectForKey:v4];

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

- (void)animateMessages:(id)a3
{
  v5 = [a3 lastObject];
  v4 = [v5 expressiveSendStyleID];
  [(CKImpactEffectManager *)self _animateLastMessage:v5 withEffectIdentifier:v4 beginAnimationFromTranscriptPresentedState:0];
}

- (void)animateMessages:(id)a3 withEffectIdentifier:(id)a4 beginAnimationFromTranscriptPresentedState:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [a3 lastObject];
  [(CKImpactEffectManager *)self _animateLastMessage:v9 withEffectIdentifier:v8 beginAnimationFromTranscriptPresentedState:v5];
}

- (void)setupAudioPlayerWithURL:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[CKImpactEffectMediaObject alloc] initWithImpactEffectAudioFileURL:v4];

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
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = +[CKAudioSessionController shareInstance];
  [v10 addObserver:self selector:sel__audioSessionOptionsWillChange_ name:@"CKAudioSessionControllerSessionOptionsWillChangeNotification" object:v11];
}

- (void)playSoundForEffectIdentifier:(id)a3
{
  v7 = a3;
  if ([v7 isEqualToString:@"com.apple.MobileSMS.expressivesend.pop"])
  {
    v4 = @"Pop";
  }

  else
  {
    if (![v7 isEqualToString:@"com.apple.MobileSMS.expressivesend.impact"])
    {
      goto LABEL_8;
    }

    v4 = @"Slam";
  }

  v5 = CKFrameworkBundle();
  v6 = [v5 URLForResource:v4 withExtension:@"m4r"];

  [(CKImpactEffectManager *)self setupAudioPlayerWithURL:v6];
  [(CKAudioController *)self->_audioController prepareToPlay];
  if (([v7 isEqualToString:@"com.apple.MobileSMS.expressivesend.pop"] & 1) == 0)
  {
    [(CKAudioController *)self->_audioController play];
  }

LABEL_8:
}

- (void)playUndoSendAnimationForChatItem:(id)a3
{
  v4 = a3;
  v5 = [(CKImpactEffectManager *)self delegate];
  v6 = [v5 collectionViewControllerForImpactEffectManager:self];

  v7 = [v6 chatItems];
  v8 = [v4 message];
  v9 = [v7 __ck_indexOfPartOfMessage:v8 withMessagePartIndex:{objc_msgSend(v4, "index")}];
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
    v10 = [v7 objectAtIndexedSubscript:v9];
    v11 = [v10 IMChatItem];
    v12 = [v11 guid];

    undoSendChatItemGUID = self->_undoSendChatItemGUID;
    self->_undoSendChatItemGUID = v12;
  }

  v14 = [v4 message];
  [(CKImpactEffectManager *)self _animateLastMessage:v14 withEffectIdentifier:@"com.apple.MobileSMS.expressivesend.pop" beginAnimationFromTranscriptPresentedState:0];
}

- (void)_animateLastMessage:(id)a3 withEffectIdentifier:(id)a4 beginAnimationFromTranscriptPresentedState:(BOOL)a5
{
  v21 = a5;
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v6 fileTransferGUIDs];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v23 + 1) + 8 * v12);
      v14 = [MEMORY[0x1E69A5B80] sharedInstance];
      v15 = [v14 transferForGUID:v13];

      LOBYTE(v14) = [CKCommSafetyHelper shouldDisableTranscriptCapabilitiesForFileTransfer:v15];
      if (v14)
      {
        goto LABEL_19;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (![(CKImpactEffectManager *)self isAnimating]&& ![(CKImpactEffectManager *)self isDisabled]&& [CKImpactEffectManager identifierIsAnimatedImpactEffect:v7])
  {
    [(CKImpactEffectManager *)self playSoundForEffectIdentifier:v7];
    if (_animateLastMessage_withEffectIdentifier_beginAnimationFromTranscriptPresentedState__onceToken != -1)
    {
      [CKImpactEffectManager _animateLastMessage:withEffectIdentifier:beginAnimationFromTranscriptPresentedState:];
    }

    [_animateLastMessage_withEffectIdentifier_beginAnimationFromTranscriptPresentedState__sAnimator setAnimationDelegate:self];
    if ([CKImpactEffectManager identifierShouldPlayInWindow:v7])
    {
      [(CKImpactEffectManager *)self _renderEffectInWindow];
    }

    v8 = -[CKImpactEffectManager _sendAnimationContextForIdentifier:message:isSender:beginAnimationFromTranscriptPresentedState:](self, "_sendAnimationContextForIdentifier:message:isSender:beginAnimationFromTranscriptPresentedState:", v7, v6, [v6 isFromMe], v21);
    v16 = [(CKImpactEffectManager *)self expressiveSendAnimationBackdrop];
    [v8 setBackdropLayer:v16];

    v17 = [(CKImpactEffectManager *)self delegate];
    [v17 sendAnimationManagerWillStartAnimation:self context:v8];

    if ([v7 isEqualToString:@"com.apple.MobileSMS.expressivesend.pop"])
    {
      v18 = [(CKImpactEffectManager *)self delegate];
      v19 = [v18 collectionViewControllerForImpactEffectManager:self];

      v20 = [v19 view];
      [v8 setContainerView:v20];
    }

    [_animateLastMessage_withEffectIdentifier_beginAnimationFromTranscriptPresentedState__sAnimator beginAnimationWithSendAnimationContext:v8];
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
  v3 = [(CKImpactEffectManager *)self delegate];
  v19 = [v3 collectionViewControllerForImpactEffectManager:self];

  v4 = objc_alloc_init(MEMORY[0x1E69DD258]);
  v5 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  [v5 setClipsToBounds:0];
  [v5 setAutoresizingMask:18];
  [(CKImpactEffectManager *)self setExpressiveSendScrollView:v5];
  v6 = [v4 view];
  [v6 addSubview:v5];

  v7 = [v19 delegate];
  v8 = [v7 transcriptCollectionViewControllerOuterEffectPresentingView:v19];

  v9 = [v4 view];
  [v8 addSubview:v9];

  v10 = [v19 collectionView];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v5 setFrame:{v12, v14, v16, v18}];
}

- (void)_renderEffectInWindow
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKImpactEffectManager *)self expressiveSendAnimationWindow];
  if (!v3)
  {
    v4 = [(CKImpactEffectManager *)self delegate];
    v5 = [v4 collectionViewControllerForImpactEffectManager:self];

    v3 = objc_alloc_init(MEMORY[0x1E69DD2E8]);
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [v3 setBackgroundColor:v6];

    v7 = [v5 view];
    v8 = [v7 window];
    v9 = [v8 windowScene];
    [v3 setWindowScene:v9];

    [(CKImpactEffectManager *)self _applyTranscriptTraitsAsOverridesFrom:v5 toDestination:v3];
    v10 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v11 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    [v11 setClipsToBounds:0];
    [v11 setAutoresizingMask:18];
    [(CKImpactEffectManager *)self setExpressiveSendScrollView:v11];
    v12 = [v10 view];
    [v12 addSubview:v11];

    [v3 setRootViewController:v10];
    [v3 setUserInteractionEnabled:1];
    v13 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v13 setValue:&unk_1F04E7E30 forKey:@"inputRadius"];
    [v13 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    v14 = objc_alloc_init(MEMORY[0x1E6979310]);
    [v14 setAllowsGroupBlending:0];
    v19[0] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v14 setFilters:v15];

    v16 = [v3 rootViewController];
    v17 = [v16 view];
    v18 = [v17 layer];
    [v18 insertSublayer:v14 atIndex:0];

    [(CKImpactEffectManager *)self setExpressiveSendAnimationBackdrop:v14];
  }

  [(CKImpactEffectManager *)self setExpressiveSendAnimationWindow:v3];
  [(CKImpactEffectManager *)self _sizeAnimationWindow];
  [v3 setHidden:0];
}

- (void)_applyTranscriptTraitsAsOverridesFrom:(id)a3 toDestination:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 traitOverrides];
  v8 = [v6 traitCollection];
  [v7 setNSIntegerValue:objc_msgSend(v8 forTrait:{"userInterfaceStyle"), objc_opt_class()}];

  v9 = [v5 traitOverrides];
  v10 = [v6 traitCollection];
  v11 = [v10 valueForNSIntegerTrait:objc_opt_class()];
  [v9 setNSIntegerValue:v11 forTrait:objc_opt_class()];

  v14 = [v5 traitOverrides];

  v12 = [v6 traitCollection];

  [v12 valueForCGFloatTrait:objc_opt_class()];
  [v14 setCGFloatValue:objc_opt_class() forTrait:v13];
}

- (void)matchScrollViewOffset:(id)a3
{
  v4 = a3;
  v9 = [(CKImpactEffectManager *)self expressiveSendScrollView];
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;

  [v9 setContentOffset:{v6, v8}];
}

- (void)stopAllEffects
{
  [(CKImpactEffectManager *)self stopPlayingSound];

  [(CKImpactEffectManager *)self _cleanupExpressiveSendComponents];
}

- (void)_sizeAnimationWindow
{
  v3 = [(CKImpactEffectManager *)self delegate];
  v4 = [v3 collectionViewControllerForImpactEffectManager:self];
  v31 = [v4 collectionView];

  v5 = [(CKImpactEffectManager *)self expressiveSendAnimationWindow];
  v6 = [v31 superview];
  [v31 frame];
  [v6 convertRect:0 toView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v5 setFrame:{v8, v10, v12, v14}];
  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 presentationControllerWindowLevel];
  [v5 setLevel:?];

  v16 = [v31 superview];
  [v31 frame];
  [v16 convertRect:0 toView:?];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [v5 rootViewController];
  v26 = [v25 view];
  [v26 setFrame:{v18, v20, v22, v24}];

  v27 = [(CKImpactEffectManager *)self expressiveSendAnimationBackdrop];
  v28 = [v5 rootViewController];
  v29 = [v28 view];
  v30 = [v29 layer];
  [v30 bounds];
  [v27 setFrame:?];
}

- (id)_sendAnimationContextForIdentifier:(id)a3 message:(id)a4 isSender:(BOOL)a5 beginAnimationFromTranscriptPresentedState:(BOOL)a6
{
  v71 = a6;
  v72 = a5;
  v120 = *MEMORY[0x1E69E9840];
  v73 = a3;
  v8 = a4;
  v75 = objc_alloc_init(CKSendAnimationContext);
  v76 = self;
  v9 = [(CKImpactEffectManager *)self delegate];
  v10 = [v9 collectionViewControllerForImpactEffectManager:v76];
  v74 = [v10 chatItems];

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
  v70 = v8;
  v107 = v70;
  v108 = &v109;
  [v74 enumerateObjectsWithOptions:2 usingBlock:v106];
  v105 = 0;
  [(CKImpactEffectManager *)v76 _visibleCells:&v105 aboveItem:v110[5]];
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

        v14 = [*(*(&v101 + 1) + 8 * i) contentView];
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v15 = [v14 subviews];
        v16 = [v15 countByEnumeratingWithState:&v97 objects:v118 count:16];
        if (v16)
        {
          v80 = v14;
          v17 = 0;
          v84 = v15;
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
                v20 = [v17 subviews];
                v21 = [v20 countByEnumeratingWithState:&v93 objects:v117 count:16];
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
                        objc_enumerationMutation(v20);
                      }

                      v25 = *(*(&v93 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v21 = v25;
                        goto LABEL_23;
                      }
                    }

                    v21 = [v20 countByEnumeratingWithState:&v93 objects:v117 count:16];
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
                v26 = [MEMORY[0x1E695DFB0] null];
                [v13 addObject:v26];
              }

              ++v18;
              v19 = v17;
            }

            while (v18 != v16);
            v16 = [v84 countByEnumeratingWithState:&v97 objects:v118 count:16];
          }

          while (v16);

          v14 = v80;
          v15 = v84;
        }
      }

      v79 = [obj countByEnumeratingWithState:&v101 objects:v119 count:16];
    }

    while (v79);
  }

  v27 = v76;
  if (+[CKImpactEffectManager identifierShouldPlayInWindow:](CKImpactEffectManager, "identifierShouldPlayInWindow:", v73) && [v12 count])
  {
    v28 = [(CKImpactEffectManager *)v76 delegate];
    v29 = [v28 collectionViewControllerForImpactEffectManager:v76];

    v30 = [v29 collectionView];
    v31 = [v29 balloonViewForChatItem:v110[5]];
    v32 = [obj firstObject];
    v33 = [v29 chatItemForCell:v32];

    v34 = [(CKImpactEffectManager *)v76 expressiveSendAnimationBalloon];

    if (v34)
    {
      v35 = [(CKImpactEffectManager *)v76 expressiveSendAnimationBalloon];
      CKBalloonViewReuse(v35);
    }

    v36 = [(CKImpactEffectManager *)v76 cloneBalloonForAnimationWithChatItem:v33];
    [(CKImpactEffectManager *)v76 setExpressiveSendAnimationBalloon:v36];
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
    v43 = [v87 superview];
    [v43 convertPoint:v30 toView:{v40, v42}];
    v45 = v44;
    v47 = v46;

    v48 = [v30 layer];
    v49 = [v48 flipsHorizontalAxis];

    if (v49)
    {
      [v30 frame];
      v45 = v50 - v45;
    }

    [v36 frame];
    [v36 setFrame:{v45, v47}];
    [(CKImpactEffectManager *)v76 setOriginalBalloonView:v87];
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
    v85 = v30;
    v52 = v29;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v53 = [v36 subviews];
    v54 = [v53 countByEnumeratingWithState:&v88 objects:v116 count:16];
    if (v54)
    {
      v55 = *v89;
      while (2)
      {
        for (k = 0; k != v54; ++k)
        {
          if (*v89 != v55)
          {
            objc_enumerationMutation(v53);
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

        v54 = [v53 countByEnumeratingWithState:&v88 objects:v116 count:16];
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

    v61 = [(CKImpactEffectManager *)v76 expressiveSendScrollView];
    [v61 addSubview:v36];

    v27 = v76;
  }

  v62 = [v12 firstObject];
  [v12 removeFirstObject];
  while (v62)
  {
    v63 = objc_opt_class();
    if ([v63 isSubclassOfClass:objc_opt_class()])
    {
      v67 = v62;
      v115 = v67;
      v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];

LABEL_69:
      v27 = v76;
      goto LABEL_71;
    }

    v64 = [v12 firstObject];

    [v12 removeFirstObject];
    v27 = v76;
    [v13 removeFirstObject];
    v62 = v64;
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
  [(CKSendAnimationContext *)v75 setImpactIdentifier:v73];
  [(CKSendAnimationContext *)v75 setThrowBalloonViews:v66];
  [(CKSendAnimationContext *)v75 setIsSender:v72];
  v68 = [(CKImpactEffectManager *)v27 expressiveSendScrollView];
  [(CKSendAnimationContext *)v75 setContainerView:v68];

  [(CKSendAnimationContext *)v75 setBeginAnimationFromTranscriptPresentedState:v71];
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

- (id)cloneBalloonForAnimationWithChatItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = CKBalloonViewForClass([v4 impactBalloonViewClass]);
    [v5 configureForMessagePart:v4];
    [v5 setCanUseOpaqueMask:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(CKImpactEffectManager *)self delegate];
      v8 = [v7 collectionViewControllerForImpactEffectManager:self];

      v9 = [v8 gradientReferenceView];
      [v6 setGradientReferenceView:v9];
    }

    [v4 size];
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
  v3 = [(CKImpactEffectManager *)self delegate];
  v4 = [v3 collectionViewControllerForImpactEffectManager:self];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__CKImpactEffectManager_popAnimationDidBegin__block_invoke;
  v6[3] = &unk_1E72EB8D0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)animationWillBeginWithContext:(id)a3
{
  v16 = a3;
  v4 = [v16 impactIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"];

  if ((v5 & 1) == 0)
  {
    [MEMORY[0x1E6979518] flush];
    v6 = [(CKImpactEffectManager *)self delegate];
    v7 = [v6 collectionViewControllerForImpactEffectManager:self];

    v8 = [v7 collectionView];
    [v8 setNeedsLayout];

    v9 = [v7 collectionView];
    [v9 layoutIfNeeded];

    v10 = [v16 impactIdentifier];
    LODWORD(v9) = [CKImpactEffectManager identifierShouldPlayInWindow:v10];

    if (v9)
    {
      v11 = [(CKImpactEffectManager *)self expressiveSendScrollView];
      v12 = [v7 collectionView];
      [v12 contentOffset];
      [v11 setContentOffset:?];

      v13 = [(CKImpactEffectManager *)self originalBalloonView];
      [v13 setHidden:1];
    }

    v14 = [(CKImpactEffectManager *)self delegate];
    v15 = [v14 chatForSendAnimationManager:self];

    [v15 beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57A8]];
    [(CKImpactEffectManager *)self setIsAnimating:1];
  }
}

- (void)animationDidFinishWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 impactIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 impactIdentifier];
    [(CKImpactEffectManager *)self setIsAnimating:0];
    if ([CKImpactEffectManager identifierShouldPlayInWindow:v7])
    {
      v8 = [(CKImpactEffectManager *)self originalBalloonView];
      [v8 setHidden:0];

      [(CKImpactEffectManager *)self setOriginalBalloonView:0];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__CKImpactEffectManager_animationDidFinishWithContext___block_invoke;
    v10[3] = &unk_1E72EB8D0;
    v10[4] = self;
    v11 = v7;
    v9 = v7;
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

- (void)_visibleCells:(id *)a3 aboveItem:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(CKImpactEffectManager *)self delegate];
  v8 = [v7 collectionViewControllerForImpactEffectManager:self];

  v9 = [v8 collectionView];
  v10 = [v9 indexPathsForVisibleItems];
  v11 = [v10 mutableCopy];

  v25 = v5;
  v22 = [v8 cellForChatItem:v5];
  v12 = [v9 indexPathForCell:?];
  [v11 sortUsingComparator:&__block_literal_global_287_0];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = v11;
  v13 = [v11 reverseObjectEnumerator];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [v18 row];
        if (v19 <= [v12 row])
        {
          v20 = [v9 cellForItemAtIndexPath:v18];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v6 addObject:v20];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  if (a3)
  {
    v21 = v6;
    *a3 = v6;
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
  v3 = [(CKImpactEffectManager *)self expressiveSendAnimationBalloon];
  [v3 removeFromSuperview];

  v4 = [(CKImpactEffectManager *)self expressiveSendAnimationBalloon];
  CKBalloonViewReuse(v4);

  [(CKImpactEffectManager *)self setExpressiveSendAnimationBalloon:0];
  v5 = [(CKImpactEffectManager *)self expressiveSendScrollView];
  v8 = [v5 superview];

  [v8 setHidden:1];
  v6 = [(CKImpactEffectManager *)self expressiveSendScrollView];
  [v6 removeFromSuperview];

  [(CKImpactEffectManager *)self setExpressiveSendScrollView:0];
  v7 = [(CKImpactEffectManager *)self expressiveSendAnimationWindow];
  [v7 setHidden:1];

  [(CKImpactEffectManager *)self setExpressiveSendAnimationWindow:0];
  [(CKImpactEffectManager *)self setExpressiveSendAnimationBackdrop:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = +[CKAudioSessionController shareInstance];
  [v3 removeObserver:self name:@"CKAudioSessionControllerSessionOptionsWillChangeNotification" object:v4];

  v5.receiver = self;
  v5.super_class = CKImpactEffectManager;
  [(CKImpactEffectManager *)&v5 dealloc];
}

- (void)_audioSessionOptionsWillChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"CKAudioSessionControllerSessionNotificationOptionsKey"];

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