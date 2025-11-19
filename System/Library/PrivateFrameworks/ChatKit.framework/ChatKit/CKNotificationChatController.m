@interface CKNotificationChatController
- (BOOL)becomeFirstResponder;
- (BOOL)inputAccessoryViewControllerEnabled;
- (BOOL)isSafeToMarkAsRead;
- (BOOL)messageEntryView:(id)a3 shouldInsertMediaObjects:(id)a4;
- (BOOL)messageEntryViewWidth:(double *)a3 andOffset:(double *)a4;
- (BOOL)pluginButtonsEnabled;
- (BOOL)shouldShowEntryView;
- (CGRect)effectiveVisibleRectOfCollectionViewForTranscriptCollectionViewController:(id)a3;
- (CGRect)lastKnownKeyboardFrame;
- (CGSize)messageEntryViewMaxShelfPluginViewSize:(id)a3;
- (CKFullScreenBalloonViewController)notificationFullScreenBalloonController;
- (CKMessageEntryView)entryView;
- (CKNotificationChatController)initWithConversation:(id)a3 entryViewTraitCollection:(id)a4;
- (Class)lockoutViewControllerClass;
- (NSExtensionContext)urlOpenContext;
- (double)_maxEntryViewHeight;
- (double)balloonMaxWidth;
- (double)bottomInsetPadding;
- (id)inputAccessoryView;
- (id)inputAccessoryViewController;
- (id)inputContextHistoryForMessageEntryView:(id)a3;
- (id)launchURLForInputMode:(id)a3;
- (void)_allowedByScreenTimeChanged:(id)a3;
- (void)_cleanupNotificationFullScreenBalloonController;
- (void)_dismissFullScreenBubbleViewControllerAnimated:(BOOL)a3 withSendAnimation:(BOOL)a4 completion:(id)a5;
- (void)_handleKeyboardDidChangeFrameNotification:(id)a3;
- (void)_handleStickerTextInputPayload:(id)a3;
- (void)_insertUIStickerAsAdaptiveImageGlyph:(id)a3;
- (void)_launchMessagesForInputMode:(id)a3;
- (void)_messageReceivedInCurrentTranscript:(id)a3;
- (void)_openMessagesForChat:(id)a3;
- (void)_saveDraftForCurrentComposition;
- (void)_setConversationDeferredSetup;
- (void)_setEntryViewFrame:(CGRect)a3 animated:(BOOL)a4;
- (void)_setupShouldShowReplyFromLockScreen;
- (void)_updateEntryViewFrameIfNeeded:(BOOL)a3;
- (void)backgroundViewTapGestureRecognized:(id)a3;
- (void)dealloc;
- (void)fullScreenBalloonViewController:(id)a3 didAppearAnimated:(BOOL)a4;
- (void)fullScreenBalloonViewController:(id)a3 verticallyScrollTranscriptByAmount:(double)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7;
- (void)fullScreenBalloonViewController:(id)a3 willAppearAnimated:(BOOL)a4;
- (void)fullScreenBalloonViewControllerDidDisappear:(id)a3;
- (void)fullScreenBalloonViewControllerHandleDismissTap:(id)a3;
- (void)handlePayload:(id)a3 withPayloadId:(id)a4;
- (void)insertUIStickerAsAdaptiveImageGlyph:(id)a3;
- (void)isSafeToMarkAsRead;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)messageEntryViewDidBeginEditingNotAlreadyActive:(id)a3;
- (void)messageEntryViewDidChange:(id)a3 isTextChange:(BOOL)a4 isShelfChange:(BOOL)a5 isTranslationChange:(BOOL)a6;
- (void)messageEntryViewPlusButtonHit:(id)a3;
- (void)messageEntryViewRaiseGestureAutoSend:(id)a3;
- (void)messageEntryViewRecordingDidChange:(id)a3;
- (void)messageEntryViewSafeAreaInsetsDidChange:(id)a3;
- (void)messageEntryViewSendButtonHit:(id)a3;
- (void)messageEntryViewSendButtonHitWhileDisabled:(id)a3;
- (void)messageEntryViewWantsGenerativePlaygroundPluginPresented:(id)a3 presentationStyle:(unint64_t)a4;
- (void)raiseGestureRecognized:(id)a3;
- (void)registerForTextInputPayloadHandling;
- (void)sendComposition:(id)a3;
- (void)setAllowedByScreenTime:(BOOL)a3;
- (void)setConversation:(id)a3;
- (void)setEntryView:(id)a3;
- (void)setLocalUserIsComposing:(BOOL)a3 withPluginBundleID:(id)a4 typingIndicatorData:(id)a5;
- (void)setSendingMessage:(BOOL)a3;
- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)a3;
- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 didRequestReaderViewControllerForChatItem:(id)a5;
- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 longPressedForItemWithIndexPath:(id)a5;
- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 tappedForChatItem:(id)a5;
- (void)transcriptCollectionViewController:(id)a3 collectionViewContentSizeDidChange:(CGSize)a4;
- (void)unregisterForTextInputPayloadHandling;
- (void)updateRaiseGesture;
- (void)updateTyping;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviewsForTranscriptCollectionViewController:(id)a3;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CKNotificationChatController

- (void)registerForTextInputPayloadHandling
{
  v5[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DD0F0] sharedInstance];
  v5[0] = @"com.apple.messages.currentLocation";
  v5[1] = @"com.apple.messages.stageSticker";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  [v3 setSupportedPayloadIds:v4];

  [v3 setPayloadDelegate:self];
}

- (void)unregisterForTextInputPayloadHandling
{
  v2 = [MEMORY[0x1E69DD0F0] sharedInstance];
  [v2 setPayloadDelegate:0];
  [v2 setSupportedPayloadIds:MEMORY[0x1E695E0F0]];
}

- (void)handlePayload:(id)a3 withPayloadId:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if ([v7 isEqualToString:@"com.apple.messages.currentLocation"])
    {
      CKSendCurrentLocation(self);
    }

    else if ([v8 isEqualToString:@"com.apple.messages.stageSticker"])
    {
      [(CKNotificationChatController *)self _handleStickerTextInputPayload:v6];
    }

    else if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Unhandled text input payload ID: %@", &v10, 0xCu);
      }
    }
  }
}

- (void)_handleStickerTextInputPayload:(id)a3
{
  v4 = _UIStickerCreateStickerFromTextInputPayload();
  v5 = [v4 representations];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 _ck_plainStringEmojiText];
    if ([v7 length])
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Handling received sticker payload as plain string system emoji text", buf, 2u);
      }

      v9 = [(CKNotificationChatController *)self entryView];
      v10 = [v9 contentView];
      v11 = [v10 textView];

      [v11 insertText:v7];
LABEL_16:

      goto LABEL_17;
    }

    v19 = [(CKCoreChatController *)self conversation];
    v20 = [v19 supportsInlineAdaptiveImageGlyphs];

    v21 = [v4 _ck_shouldInsertInCompositionAsAdaptiveImageGlyph];
    v22 = IMLogHandleForCategory();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    if (!v20 || !v21)
    {
      if (v23)
      {
        *v25 = 0;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Received sticker payload cannot be inserted as an adaptive image glyph, launching messages app", v25, 2u);
      }

      v24 = [(CKCoreChatController *)self conversation];
      v11 = [v24 chat];

      [(CKNotificationChatController *)self _openMessagesForChat:v11];
      goto LABEL_16;
    }

    if (v23)
    {
      *v26 = 0;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Handling received sticker payload as an adaptive image glyph", v26, 2u);
    }

    [(CKNotificationChatController *)self insertUIStickerAsAdaptiveImageGlyph:v4];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CKNotificationChatController(TextInputPayloadsInternal) *)v7 _handleStickerTextInputPayload:v12, v13, v14, v15, v16, v17, v18];
    }
  }

LABEL_17:
}

- (void)insertUIStickerAsAdaptiveImageGlyph:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __95__CKNotificationChatController_TextInputPayloadsInternal__insertUIStickerAsAdaptiveImageGlyph___block_invoke;
    v5[3] = &unk_1E72EFB88;
    v5[4] = self;
    [v4 stk_renderBakedInRepIfNecessaryWithCompletion:v5];
  }

  else
  {
    [(CKNotificationChatController *)self _insertUIStickerAsAdaptiveImageGlyph:v4];
  }
}

void __95__CKNotificationChatController_TextInputPayloadsInternal__insertUIStickerAsAdaptiveImageGlyph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__CKNotificationChatController_TextInputPayloadsInternal__insertUIStickerAsAdaptiveImageGlyph___block_invoke_2;
  v5[3] = &unk_1E72EB8D0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)_insertUIStickerAsAdaptiveImageGlyph:(id)a3
{
  v4 = a3;
  v5 = _UIStickerCreateAdaptiveImageGlyphFromSticker();
  if (v5)
  {
    v6 = [(CKNotificationChatController *)self entryView];
    v7 = [v6 contentView];
    v8 = [v7 textView];

    v9 = [v8 existingMediaObjectMatchingAdaptiveImageGlyph:v5];
    if (!v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E69A82C0]) initWithUISticker:v4 adaptiveImageGlyph:v5];
      v11 = +[CKMediaObjectManager sharedInstance];
      v12 = [v11 mediaObjectWithSticker:v10 stickerUserInfo:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v12;
      }

      else
      {
        v20 = IMLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [(CKNotificationChatController(TextInputPayloadsInternal) *)v20 _insertUIStickerAsAdaptiveImageGlyph:v21, v22, v23, v24, v25, v26, v27];
        }

        v9 = 0;
      }
    }

    [v8 insertAdaptiveImageGlyph:v5 withMediaObject:v9];
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CKNotificationChatController(TextInputPayloadsInternal) *)v8 _insertUIStickerAsAdaptiveImageGlyph:v13, v14, v15, v16, v17, v18, v19];
    }
  }
}

- (CKNotificationChatController)initWithConversation:(id)a3 entryViewTraitCollection:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v8 startTimingForKey:@"longlook-init"];
  v23.receiver = self;
  v23.super_class = CKNotificationChatController;
  v9 = [(CKCoreChatController *)&v23 initWithConversation:v6];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryViewTraitCollection, a4);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v10->_lastKnownKeyboardFrame.origin = *MEMORY[0x1E695F058];
    v10->_lastKnownKeyboardFrame.size = v11;
    -[CKNotificationChatController setAllowedByScreenTime:](v10, "setAllowedByScreenTime:", [v6 isBlockedByCommunicationLimits] ^ 1);
    v12 = [[CKScheduledUpdater alloc] initWithTarget:v10 action:sel_updateTyping];
    [(CKNotificationChatController *)v10 setTypingUpdater:v12];
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v10 selector:sel__raiseToListenSettingChanged_ name:CKPreferenceRaiseToListenDidChangeNotification object:0];

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = [(CKCoreChatController *)v10 conversation];
    v16 = [v15 chat];
    [v14 addObserver:v10 selector:sel__messageReceivedInCurrentTranscript_ name:*MEMORY[0x1E69A5828] object:v16];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = [(CKCoreChatController *)v10 conversation];
    v19 = [v18 chat];
    [v17 addObserver:v10 selector:sel__allowedByScreenTimeChanged_ name:*MEMORY[0x1E69A56E8] object:v19];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v10 selector:sel__handleKeyboardDidChangeFrameNotification_ name:*MEMORY[0x1E69DDF68] object:0];

    [(CKNotificationChatController *)v10 _setupShouldShowReplyFromLockScreen];
  }

  [v8 stopTimingForKey:@"longlook-init"];
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v25 = v8;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Initialized long look notification chatController: %@, with conversation: %@", buf, 0x16u);
    }
  }

  return v10;
}

- (void)viewDidLoad
{
  v54.receiver = self;
  v54.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v54 viewDidLoad];
  [(CKNotificationChatController *)self systemMinimumLayoutMargins];
  v53 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [(CKNotificationChatController *)self view];
  v11 = [v10 effectiveUserInterfaceLayoutDirection];

  v12 = [(CKNotificationChatController *)self view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(CKNotificationChatController *)self traitCollection];
  v22 = [MEMORY[0x1E69DD2E8] keyWindow];
  v23 = [v22 windowScene];
  v24 = [v23 _enhancedWindowingEnabled];

  if (v24)
  {
    v25 = self->_entryViewTraitCollection;

    v21 = v25;
  }

  v26 = [(CKCoreChatController *)self conversation];
  v27 = [v26 chat];
  v28 = [v27 supportsCapabilities:0x8000];

  v29 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v30 = [v29 isAutomaticOutgoingTranslationEnabled];

  if (v30)
  {
    v31 = [v26 chat];
    v32 = [v31 translationLanguageCode];

    if ([v32 length] && (objc_msgSend(v26, "chat"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isAutomaticTranslationEnabled"), v33, v34))
    {
      v35 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v32];
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  if (v11)
  {
    v36 = v5;
  }

  else
  {
    v36 = v9;
  }

  if (v11)
  {
    v5 = v9;
  }

  v37 = [v26 lastAddressedHandle];
  v38 = [v26 lastAddressedSIMID];
  AddressedHandle = CKShowSubjectEnabledForLastAddressedHandle(v37, v38);

  v40 = [v26 chat];
  LODWORD(v38) = [v40 isStewieChat];

  v41 = v28 ^ 1;
  v42 = [CKMessageEntryView alloc];
  v43 = [(CKNotificationChatController *)self pluginButtonsEnabled];
  v44 = CKShowCharacterCountEnabled(v38) != 0;
  BYTE4(v52) = [v26 supportsPolls];
  BYTE3(v52) = v41;
  BYTE2(v52) = 0;
  BYTE1(v52) = v38;
  LOBYTE(v52) = v38;
  v45 = [(CKMessageEntryView *)v42 initWithFrame:0 marginInsets:1 shouldAllowImpact:AddressedHandle & ~v38 shouldShowSendButton:v43 shouldShowSubject:v44 shouldShowPluginButtons:v21 shouldShowCharacterCount:v14 traitCollection:v16 shouldDisableAttachments:v18 shouldUseNonEmojiKeyboard:v20 shouldUseNonHandwritingKeyboard:v53 shouldDisableKeyboardStickers:v5 shouldAllowPollSuggestions:v7 translationLanguage:v36, v52, v35];
  v46 = [CKMentionsController alloc];
  v47 = [(CKMessageEntryView *)v45 contentView];
  v48 = [v47 textView];
  v49 = [(CKCoreChatController *)self conversation];
  v50 = [(CKMentionsController *)v46 initWithEntryTextView:v48 conversation:v49];
  [(CKNotificationChatController *)self setMentionsController:v50];

  [(CKMessageEntryView *)v45 setAutoresizingMask:2];
  [(CKMessageEntryView *)v45 setDelegate:self];
  [(CKMessageEntryView *)v45 setInputDelegate:self];
  v51 = [(CKCoreChatController *)self conversation];
  [(CKMessageEntryView *)v45 setConversation:v51];

  [(CKMessageEntryView *)v45 layoutIfNeeded];
  [(CKNotificationChatController *)self setEntryView:v45];
  [(CKNotificationChatController *)self _updateEntryViewFrameIfNeeded:0];
}

- (void)backgroundViewTapGestureRecognized:(id)a3
{
  v4 = [(CKCoreChatController *)self delegate];
  [v4 transcriptBackgroundTapped:self];
}

- (void)dealloc
{
  v3 = [(CKNotificationChatController *)self typingUpdater];
  [v3 invalidate];

  [(CKNotificationChatController *)self setTypingUpdater:0];
  v4.receiver = self;
  v4.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v4 dealloc];
}

- (double)balloonMaxWidth
{
  v3 = [(CKNotificationChatController *)self view];
  [v3 frame];
  v5 = v4;

  [(CKNotificationChatController *)self systemMinimumLayoutMargins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(CKNotificationChatController *)self view];
  v15 = [v14 effectiveUserInterfaceLayoutDirection];

  v16 = [(CKCoreChatController *)self chat];
  if ([v16 isStewieChat])
  {
    v17 = 1;
  }

  else
  {
    v18 = [(CKCoreChatController *)self conversation];
    v19 = [v18 sendingService];
    v17 = [v19 __ck_isiMessageLite];
  }

  if (v15)
  {
    v20 = v9;
  }

  else
  {
    v20 = v13;
  }

  if (v15)
  {
    v9 = v13;
  }

  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 balloonMaxWidthForTranscriptWidth:-[CKNotificationChatController pluginButtonsEnabled](self marginInsets:"pluginButtonsEnabled") shouldShowPluginButtons:CKShowCharacterCountEnabled(v17) != 0 shouldShowCharacterCount:0 shouldCoverSendButton:v17 isStewieMode:{v5, v7, v9, v11, v20}];
  v23 = v22;

  return v23;
}

- (id)launchURLForInputMode:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v6 = [(CKCoreChatController *)self conversation];
  v7 = [v6 chat];
  v8 = [(CKNotificationChatController *)self entryView];
  v9 = [v8 composition];
  v10 = [v9 text];
  v11 = [v10 string];
  v12 = [v5 messagesURLWithChat:v7 orHandles:0 withMessageText:v11];

  if ([v4 length])
  {
    v13 = [MEMORY[0x1E696AF20] componentsWithURL:v12 resolvingAgainstBaseURL:0];
    v14 = MEMORY[0x1E695DF70];
    v15 = [v13 queryItems];
    v16 = [v14 arrayWithArray:v15];

    v17 = [MEMORY[0x1E696AF60] queryItemWithName:@"inputmode" value:v4];
    [v16 addObject:v17];

    [v13 setQueryItems:v16];
    v18 = [v13 URL];

    v12 = v18;
  }

  return v12;
}

- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "showFullScreenAcknowledgmentPickerForChatItem", buf, 2u);
    }
  }

  v6 = [(CKCoreChatController *)self chat];
  [v6 beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57A0]];
  [(CKScrollViewController *)self beginHoldingScrollGeometryUpdatesForReason:@"FullscreenBalloonMenuVisible"];
  v7 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];

  if (v7)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Dismissing fullscreen balloon", v18, 2u);
      }
    }

    [(CKNotificationChatController *)self _dismissFullScreenBubbleViewControllerAnimated:1 withSendAnimation:0 completion:0];
  }

  v9 = [(CKCoreChatController *)self generateDefaultFullScreenBalloonViewControllerWithChatItem:v4];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Created fullscreen balloon", v17, 2u);
    }
  }

  [(CKNotificationChatController *)self addChildViewController:v9];
  v11 = [(CKNotificationChatController *)self view];
  v12 = [v9 view];
  [v11 addSubview:v12];

  v13 = [v9 view];
  v14 = [(CKCoreChatController *)self collectionView];
  [v14 frame];
  [v13 setFrame:?];

  [v9 didMoveToParentViewController:self];
  [(CKNotificationChatController *)self setNotificationFullScreenBalloonController:v9];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Setup fullscreen balloon", v16, 2u);
    }
  }
}

- (NSExtensionContext)urlOpenContext
{
  WeakRetained = objc_loadWeakRetained(&self->_urlOpenContext);

  return WeakRetained;
}

- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 tappedForChatItem:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v28 = 138412546;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "chatItemTapped balloonView = %@, chatItem = %@", &v28, 0x16u);
    }
  }

  v12 = objc_opt_class();
  if ([v12 isEqual:objc_opt_class()])
  {
    v13 = v10;
    v14 = [v13 bundleIdentifier];
    v15 = [v14 isEqualToString:*MEMORY[0x1E69A6A18]];

    if (!v15)
    {
LABEL_28:

      goto LABEL_29;
    }

    v16 = [v13 IMChatItem];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 dataSource];

      if (v18)
      {
        v19 = [v17 dataSource];
        v20 = [v19 URLToOpenOnTapAction];
        v21 = [v17 dataSource];
        v22 = v21;
        if (v20)
        {
          [v21 URLToOpenOnTapAction];
        }

        else
        {
          [v21 url];
        }
        v24 = ;

        if (v24)
        {
          v25 = [(CKNotificationChatController *)self urlOpenContext];
          [v25 openURL:v24 completionHandler:&__block_literal_global_240];
        }

        else if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = [v17 dataSource];
            v28 = 138412290;
            v29 = v27;
            _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "URLToOpenOnTapAction was nil %@", &v28, 0xCu);
          }
        }

        goto LABEL_27;
      }

      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "dataSource was nil", &v28, 2u);
        }

LABEL_14:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "imChatItem was nil", &v28, 2u);
      }

      goto LABEL_14;
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_29:
}

- (void)viewDidLayoutSubviewsForTranscriptCollectionViewController:(id)a3
{
  v4 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];

  if (v4)
  {
    v5 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];
    [v5 updateBalloonViewFrame];
  }
}

- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 longPressedForItemWithIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "longPressedForItemWithIndexPath", buf, 2u);
    }
  }

  v12.receiver = self;
  v12.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v12 transcriptCollectionViewController:v8 balloonView:v9 longPressedForItemWithIndexPath:v10];
}

- (void)_setConversationDeferredSetup
{
  v6.receiver = self;
  v6.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v6 _setConversationDeferredSetup];
  if (+[CKRaiseGesture isRaiseGestureSupported])
  {
    v3 = [[CKRaiseGesture alloc] initWithTarget:self action:sel_raiseGestureRecognized_];
    [(CKNotificationChatController *)self setRaiseGesture:v3];
    [(CKNotificationChatController *)self updateRaiseGesture];
  }

  v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_backgroundViewTapGestureRecognized_];
  v5 = [(CKCoreChatController *)self collectionView];
  [v5 addGestureRecognizer:v4];
}

- (BOOL)shouldShowEntryView
{
  v26 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(CKNotificationChatController *)self shouldAllowReplyFromLockScreen];
      v5 = [(CKCoreChatController *)self conversation];
      if ([v5 hasLeftGroupChat])
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      if ([(CKCoreChatController *)self isReadOnly])
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v8 = [(CKCoreChatController *)self conversation];
      v9 = [v8 isBusinessChatDisabled];
      v10 = [(CKCoreChatController *)self shouldDisplayTextEntry];
      if (v9)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v17[0] = 67110146;
      v17[1] = v4;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v11;
      v24 = 1024;
      v25 = v10;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "allow reply: %d has left: %@, read only: %@, isBusinessChatDisabled: %@, should display text entry: %d", v17, 0x2Cu);
    }
  }

  if (![(CKNotificationChatController *)self shouldAllowReplyFromLockScreen])
  {
    return 0;
  }

  v12 = [(CKCoreChatController *)self conversation];
  if (([v12 hasLeftGroupChat] & 1) != 0 || -[CKCoreChatController isReadOnly](self, "isReadOnly") || !-[CKCoreChatController shouldDisplayTextEntry](self, "shouldDisplayTextEntry"))
  {
    v15 = 0;
  }

  else
  {
    v13 = [(CKCoreChatController *)self conversation];
    v14 = [v13 isBusinessChatDisabled];

    v15 = v14 ^ 1;
  }

  return v15;
}

- (BOOL)inputAccessoryViewControllerEnabled
{
  v5 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4[0] = 67109120;
      v4[1] = CKInputAccessoryViewControllerEnabled();
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "input accessory view enabled: %d", v4, 8u);
    }
  }

  return CKInputAccessoryViewControllerEnabled() != 0;
}

- (id)inputAccessoryViewController
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(CKNotificationChatController *)self shouldShowEntryView]&& [(CKNotificationChatController *)self inputAccessoryViewControllerEnabled])
  {
    v3 = [(CKNotificationChatController *)self entryViewController];
  }

  else
  {
    v3 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "input accessory view controller: %@", &v6, 0xCu);
    }
  }

  return v3;
}

- (id)inputAccessoryView
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(CKNotificationChatController *)self shouldShowEntryView]&& ![(CKNotificationChatController *)self inputAccessoryViewControllerEnabled])
  {
    v3 = [(CKNotificationChatController *)self entryView];
  }

  else
  {
    v3 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "input accessory view: %@", &v6, 0xCu);
    }
  }

  return v3;
}

- (void)setSendingMessage:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v5 setSendingMessage:a3];
  v4 = [(CKNotificationChatController *)self entryView];
  [v4 updateEntryView];
}

- (void)setEntryView:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [[CKMessageEntryViewController alloc] initWithEntryView:v4];
    [(CKNotificationChatController *)self setEntryViewController:v5];
  }

  else
  {
    [(CKNotificationChatController *)self setEntryViewController:0];
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(CKNotificationChatController *)self entryViewController];
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Setting the entry view: entryview = %@, entryViewController = %@", &v10, 0x16u);
    }
  }

  v8 = [(CKNotificationChatController *)self inputAccessoryViewControllerEnabled];
  v9 = [(CKNotificationChatController *)self entryViewController];
  [v9 setInputAccessoryViewControllerEnabled:v8];
}

- (CKMessageEntryView)entryView
{
  v2 = [(CKNotificationChatController *)self entryViewController];
  v3 = [v2 entryView];

  return v3;
}

- (void)_handleKeyboardDidChangeFrameNotification:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];

  v5 = v6;
  if (v6)
  {
    [v6 CGRectValue];
    [(CKNotificationChatController *)self setLastKnownKeyboardFrame:?];
    v5 = v6;
  }
}

- (double)_maxEntryViewHeight
{
  v3 = [(CKNotificationChatController *)self entryView];
  [v3 placeholderHeight];
  v5 = v4;
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 entryViewlayoutMetrics];

  [v7 defaultEntryContentViewHeight];
  v9 = v8;
  [v7 entryViewContentInsets];
  v11 = v9 - v10;
  [v7 entryViewContentInsets];
  v13 = v11 - v12;
  v14 = [(CKNotificationChatController *)self entryView];
  v15 = [v14 window];
  [v15 bounds];
  v17 = v16;
  v19 = v18;

  [v3 sizeThatFits:{v17, 1.79769313e308}];
  v21 = v5 + v13;
  if (v20 < v5 + v13)
  {
    v21 = v20;
  }

  if (v21 >= v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = v21;
  }

  return v22;
}

- (void)_updateEntryViewFrameIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKNotificationChatController *)self entryView];
  v20 = [v5 window];

  v6 = v20;
  if (v20)
  {
    [v20 bounds];
    v8 = v7;
    [(CKNotificationChatController *)self _maxEntryViewHeight];
    v10 = v9;
    v11 = [(CKNotificationChatController *)self entryView];
    [v11 frame];
    v13 = v12;
    v15 = v14;

    v6 = v20;
    if (v13 != v8 || v15 != v10)
    {
      v17 = *MEMORY[0x1E695F058];
      v18 = *(MEMORY[0x1E695F058] + 8);
      v19 = [(CKCoreChatController *)self collectionViewController];
      [v19 scrollTranscriptToEntryViewInsertionTimeWithAnimation:0];

      [(CKNotificationChatController *)self _setEntryViewFrame:v3 animated:v17, v18, v8, v10];
      v6 = v20;
    }
  }
}

- (void)_setEntryViewFrame:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CKNotificationChatController__setEntryViewFrame_animated___block_invoke;
  aBlock[3] = &unk_1E72EC7B0;
  aBlock[4] = self;
  v11 = a3;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (v4)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 resizeMessageEntryViewAnimationDuration];
    v9 = v8;

    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v6 options:0 animations:v9 completion:0.0];
  }

  else
  {
    (*(v5 + 2))(v5);
  }
}

void __60__CKNotificationChatController__setEntryViewFrame_animated___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) entryView];
  [v6 frame];
  if (v3 != *(a1 + 56) || v2 != *(a1 + 64))
  {
    [v6 setFrame:{*(a1 + 40), *(a1 + 48)}];
    [v6 layoutIfNeeded];
    v5 = [v6 superview];
    [v5 layoutIfNeeded];
  }
}

- (double)bottomInsetPadding
{
  v3 = [(CKNotificationChatController *)self entryView];
  v4 = [v3 window];

  if (v4)
  {
    v5 = [(CKNotificationChatController *)self entryView];
    [v5 frame];
    v7 = v6;
  }

  else
  {
    v5 = [(CKNotificationChatController *)self view];
    [v5 safeAreaInsets];
    v7 = v8;
  }

  return v7;
}

- (void)setConversation:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v3 setConversation:a3];
}

- (BOOL)pluginButtonsEnabled
{
  v2 = [(CKCoreChatController *)self chat];
  v3 = [v2 isStewieChat];

  return v3 ^ 1;
}

- (BOOL)becomeFirstResponder
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CKNotificationChatController;
  [(CKNotificationChatController *)&v10 becomeFirstResponder];
  v3 = [(CKNotificationChatController *)self entryView];
  v4 = [v3 contentView];
  v5 = [v4 activeView];
  v6 = [v5 becomeFirstResponder];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v6)
      {
        v8 = @"YES";
      }

      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Entry View became FR with success %@", buf, 0xCu);
    }
  }

  return v6;
}

- (void)setLocalUserIsComposing:(BOOL)a3 withPluginBundleID:(id)a4 typingIndicatorData:(id)a5
{
  v6 = a3;
  v11 = a4;
  v8 = a5;
  v9 = [(CKCoreChatController *)self conversation];
  v10 = v9;
  if (v6)
  {
    [v9 setLocalUserIsComposing:v11 typingIndicatorIcon:v8];
  }

  else
  {
    [v9 setLocalUserIsComposing:0];
  }
}

- (void)sendComposition:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Sending composition from notification controller.", buf, 2u);
    }
  }

  if (![(CKCoreChatController *)self isSendingMessage])
  {
    v7 = [(CKCoreChatController *)self conversation];
    [v7 resetCaches];
    if ([v4 hasContent])
    {
      v8 = [v7 recipients];
      v9 = [v7 canSendToRecipients:v8 alertIfUnable:1];

      if (v9)
      {
        v35 = 0;
        v10 = [v7 canSendComposition:v4 error:&v35];
        v11 = v35;
        if (v10)
        {
          v12 = [MEMORY[0x1E69DCBB8] activeKeyboard];
          [v12 removeAutocorrectPrompt];

          [(CKNotificationChatController *)self setSendingMessage:1];
          v13 = [v7 messageWithComposition:v4];
          [v7 setUnsentComposition:0];
          [v7 sendMessage:v13 newComposition:0];
          v14 = [(CKNotificationChatController *)self entryView];
          v15 = [v14 composition];
          v16 = [v15 isEqual:v4];

          if (v16)
          {
            v17 = [(CKNotificationChatController *)self entryView];
            [v17 setComposition:0];
          }

          [(CKNotificationChatController *)self setSendingMessage:0];
          v18 = [v4 expressiveSendStyleID];
          v19 = [CKImpactEffectManager identifierIsAnimatedImpactEffect:v18];

          if (v19)
          {
            v20 = [(CKCoreChatController *)self collectionViewController];
            v21 = [v20 impactEffectManager];
            v36 = v13;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
            [v21 animateMessages:v22];
          }

          v23 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          v24 = [v23 isExpressiveTextEnabled];

          if (!v24)
          {
            goto LABEL_40;
          }

          v25 = [(CKNotificationChatController *)self entryView];
          v26 = [v25 contentView];
          v27 = [v26 textView];

          [v27 hideTextEffectsPickerIfNeededAndResetTypingAttributes];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Could not send composition due to composition error.", buf, 2u);
            }
          }

          if (!v11)
          {
            goto LABEL_41;
          }

          if (IMOSLoggingEnabled())
          {
            v30 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v38 = v11;
              _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Composition content error: %@", buf, 0xCu);
            }
          }

          v31 = CKFrameworkBundle();
          v13 = [v31 localizedStringForKey:@"CANNOT_SEND_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

          v32 = CKFrameworkBundle();
          v27 = [v32 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];

          v33 = CKCreateAlertControllerWithError(v11, v13, 0, v27, 0);
          if (v33)
          {
            v34 = [(CKCoreChatController *)self delegate];
            [v33 presentFromViewController:v34 animated:1 completion:0];
          }
        }

LABEL_40:
LABEL_41:

        goto LABEL_42;
      }

      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Could not send composition since we cannot send to these recipients.", buf, 2u);
        }

LABEL_22:
      }
    }

    else
    {
      [(CKNotificationChatController *)self messageEntryViewDidChange:0 isTextChange:1 isShelfChange:0 isTranslationChange:0];
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Could not send composition since it has no content.", buf, 2u);
        }

        goto LABEL_22;
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Tried sending a message with another send in flight", buf, 2u);
    }
  }

LABEL_43:
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "viewWillAppear: ", buf, 2u);
    }
  }

  v14.receiver = self;
  v14.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v14 viewWillAppear:v3];
  v6 = [MEMORY[0x1E695DF00] date];
  notificationViewWillAppearDate = self->_notificationViewWillAppearDate;
  self->_notificationViewWillAppearDate = v6;

  objc_initWeak(buf, self);
  v8 = MEMORY[0x1E695DFF0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__CKNotificationChatController_viewWillAppear___block_invoke;
  v11[3] = &unk_1E72F4BA8;
  objc_copyWeak(&v12, buf);
  v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:v11 block:3600.0];
  notificationViewDismissalTimer = self->_notificationViewDismissalTimer;
  self->_notificationViewDismissalTimer = v9;

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __47__CKNotificationChatController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __47__CKNotificationChatController_viewWillAppear___block_invoke_cold_1(v2);
  }

  v3 = [WeakRetained delegate];
  [v3 notificationChatControllerRequestDismissNotificationContentExtension:WeakRetained];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v6 viewDidAppear:a3];
  [(CKNotificationChatController *)self updateRaiseGesture];
  [(CKNotificationChatController *)self registerForTextInputPayloadHandling];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "viewDidAppear: ", v5, 2u);
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69A5828];
  v7 = [(CKCoreChatController *)self conversation];
  v8 = [v7 chat];
  [v5 removeObserver:self name:v6 object:v8];

  v12.receiver = self;
  v12.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v12 viewWillDisappear:v3];
  [(CKNotificationChatController *)self updateRaiseGesture];
  [(CKNotificationChatController *)self unregisterForTextInputPayloadHandling];
  v9 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];

  if (v9)
  {
    [(CKNotificationChatController *)self _dismissFullScreenBubbleViewControllerAnimated:1 withSendAnimation:0 completion:0];
  }

  [(NSTimer *)self->_notificationViewDismissalTimer invalidate];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "viewWillDisappear: ", v11, 2u);
    }
  }
}

- (BOOL)isSafeToMarkAsRead
{
  v8.receiver = self;
  v8.super_class = CKNotificationChatController;
  if (![(CKCoreChatController *)&v8 isSafeToMarkAsRead])
  {
    return 0;
  }

  notificationViewWillAppearDate = self->_notificationViewWillAppearDate;
  v4 = notificationViewWillAppearDate == 0;
  if (notificationViewWillAppearDate)
  {
    [(NSDate *)notificationViewWillAppearDate timeIntervalSinceNow];
    if (v5 >= -3600.0)
    {
      return 1;
    }

    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(CKNotificationChatController *)v6 isSafeToMarkAsRead];
    }
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CKNotificationChatController *)v6 isSafeToMarkAsRead];
    }
  }

  return v4;
}

- (void)viewLayoutMarginsDidChange
{
  v34.receiver = self;
  v34.super_class = CKNotificationChatController;
  [(CKNotificationChatController *)&v34 viewLayoutMarginsDidChange];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if (v4)
  {
    [(CKNotificationChatController *)self systemMinimumLayoutMargins];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(CKNotificationChatController *)self view];
    v14 = [v13 _shouldReverseLayoutDirection];

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v8;
    }

    if (!v14)
    {
      v8 = v12;
    }

    v16 = [(CKNotificationChatController *)self entryView];
    [v16 setMarginInsets:{v6, v15, v10, v8}];
  }

  [(CKNotificationChatController *)self balloonMaxWidth];
  v18 = v17;
  [(CKNotificationChatController *)self systemMinimumLayoutMargins];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(CKNotificationChatController *)self view];
  v28 = [v27 effectiveUserInterfaceLayoutDirection];
  if (v28)
  {
    v29 = v26;
  }

  else
  {
    v29 = v22;
  }

  if (!v28)
  {
    v22 = v26;
  }

  v30 = [(CKCoreChatController *)self collectionViewController];
  v31 = [(CKNotificationChatController *)self traitCollection];
  [v30 transcriptBackgroundLuminance];
  [v30 invalidateChatItemLayoutWithNewBalloonMaxWidth:v31 marginInsets:v18 traitCollection:v20 transcriptBackgroundLuminance:{v29, v24, v22, v32}];

  v33 = [v30 viewIfLoaded];
  [v33 setNeedsLayout];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKNotificationChatController;
  [(CKScrollViewController *)&v9 keyboardWillShow:v4];
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isEntryViewRefreshEnabled];

  if (v6)
  {
    v7 = [(CKNotificationChatController *)self entryView];
    [v7 setKeyboardVisible:1];

    v8 = [(CKCoreChatController *)self inputController];
    [v8 chatControllerReceivedKeyboardWillShowNotification:v4];
  }
}

- (void)keyboardWillHide:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKNotificationChatController;
  [(CKScrollViewController *)&v9 keyboardWillHide:v4];
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isEntryViewRefreshEnabled];

  if (v6)
  {
    v7 = [(CKNotificationChatController *)self entryView];
    [v7 setKeyboardVisible:0];

    v8 = [(CKCoreChatController *)self inputController];
    [v8 chatControllerReceivedKeyboardWillHideNotification:v4];
  }
}

- (void)_setupShouldShowReplyFromLockScreen
{
  CFPreferencesSynchronize(@"com.apple.mobilephone", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"LockScreenMessaging", @"com.apple.mobilephone", &keyExistsAndHasValidFormat);
  v4 = keyExistsAndHasValidFormat;
  v5 = [MEMORY[0x1E69A6160] sharedInstance];
  v6 = [v5 isUnderFirstDataProtectionLock];

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Under first unlock. Not allowing lock screen messaging", v9, 2u);
      }
    }

    goto LABEL_8;
  }

  v8 = 1;
  if (v4 && !AppBooleanValue)
  {
LABEL_8:
    v8 = [(CKNotificationChatController *)self _deviceIsPasscodeLocked]^ 1;
  }

  [(CKNotificationChatController *)self setShouldAllowReplyFromLockScreen:v8];
}

- (void)_allowedByScreenTimeChanged:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 object];
    v8 = [v7 allowedByScreenTime];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (v8)
        {
          v10 = @"YES";
        }

        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "chat: %@ allowedByScreenTime state changed to: %@", &v11, 0x16u);
      }
    }

    [(CKNotificationChatController *)self setAllowedByScreenTime:v8];
  }
}

- (void)setAllowedByScreenTime:(BOOL)a3
{
  if (self->_allowedByScreenTime != a3)
  {
    self->_allowedByScreenTime = a3;
    if (a3)
    {
      v4 = [(CKNotificationChatController *)self lockoutViewController];
      v5 = [v4 view];
      [v5 removeFromSuperview];

      [(CKNotificationChatController *)self setLockoutViewController:0];
      [(CKNotificationChatController *)self becomeFirstResponder];

      [(CKNotificationChatController *)self reloadInputViews];
    }

    else
    {
      v6 = [(CKCoreChatController *)self collectionView];
      [v6 resignFirstResponder];

      v7 = [(CKCoreChatController *)self conversation];
      v8 = [v7 chat];
      v18 = [v8 conversationContext];

      v9 = [(CKNotificationChatController *)self lockoutViewControllerClass];
      if (v18)
      {
        v10 = [(CKCoreChatController *)self conversation];
        v11 = [v10 contactNameByHandle];
        v12 = [(objc_class *)v9 lockoutViewControllerWithConversationContext:v18 bundleIdentifier:@"com.apple.MobileSMS" contactStore:0 applicationName:0 contactNameByHandle:v11];
        [(CKNotificationChatController *)self setLockoutViewController:v12];
      }

      else
      {
        v10 = [(CKCoreChatController *)self _handleIDsForCurrentConversation];
        v11 = [(CKCoreChatController *)self conversation];
        v12 = [v11 contactNameByHandle];
        v13 = [(objc_class *)v9 lockoutViewControllerWithBundleIdentifier:@"com.apple.MobileSMS" contactsHandles:v10 contactNameByHandle:v12];
        [(CKNotificationChatController *)self setLockoutViewController:v13];
      }

      v14 = [(CKNotificationChatController *)self lockoutViewController];
      v15 = [v14 view];

      v16 = [(CKNotificationChatController *)self view];
      [v16 addSubview:v15];

      v17 = [(CKNotificationChatController *)self view];
      [v17 bounds];
      [v15 setFrame:?];

      [v15 setAutoresizingMask:18];
    }
  }
}

- (void)_messageReceivedInCurrentTranscript:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69A5928]];

  v6 = [CKEntity alloc];
  v7 = [v5 sender];
  v8 = [(CKEntity *)v6 initWithIMHandle:v7];

  v9 = [objc_alloc(MEMORY[0x1E69DA8E8]) initWithType:3];
  v10 = [(CKEntity *)v8 textToneIdentifier];
  v11 = *MEMORY[0x1E69DA928];
  if ([v10 isEqualToString:*MEMORY[0x1E69DA928]])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [(CKEntity *)v8 textVibrationIdentifier];
  v15 = *MEMORY[0x1E69DA930];
  if ([v14 isEqualToString:*MEMORY[0x1E69DA930]])
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  [v9 setVibrationIdentifier:v17];
  [v9 setToneIdentifier:v13];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__65;
  v27 = __Block_byref_object_dispose__65;
  v28 = [MEMORY[0x1E69DA8E0] alertWithConfiguration:v9];
  v18 = v24[5];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __68__CKNotificationChatController__messageReceivedInCurrentTranscript___block_invoke;
  v20[3] = &unk_1E72F6D70;
  v22 = &v23;
  v19 = v5;
  v21 = v19;
  [v18 playWithCompletionHandler:v20];

  _Block_object_dispose(&v23, 8);
}

void __68__CKNotificationChatController__messageReceivedInCurrentTranscript___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  if (a2 == 5)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(48);
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 32) guid];
        if (v5)
        {
          v10 = [v5 userInfo];
        }

        else
        {
          v10 = &stru_1F04268F8;
        }

        *buf = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Error playing alert for guid [%@]: [%@]", buf, 0x16u);
        if (v5)
        {
        }
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      v11 = [*(a1 + 32) guid];
      if (v5)
      {
        v12 = [v5 userInfo];
        _CKLogExternal();
      }

      else
      {
        _CKLogExternal();
      }
    }
  }
}

- (void)transcriptCollectionViewController:(id)a3 collectionViewContentSizeDidChange:(CGSize)a4
{
  v5 = [(CKCoreChatController *)self delegate:a3];
  [v5 notificationChatControllerSizeUpdated:self];
}

- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 didRequestReaderViewControllerForChatItem:(id)a5
{
  v6 = [(CKCoreChatController *)self conversation:a3];
  v7 = [v6 chat];

  [(CKNotificationChatController *)self _openMessagesForChat:v7];
}

- (CGRect)effectiveVisibleRectOfCollectionViewForTranscriptCollectionViewController:(id)a3
{
  v3 = [(CKCoreChatController *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 adjustedContentInset];
  v13 = v5 + v12;
  v15 = v7 + v14;
  v17 = v9 - (v12 + v16);
  v19 = v11 - (v14 + v18);

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)messageEntryViewDidChange:(id)a3 isTextChange:(BOOL)a4 isShelfChange:(BOOL)a5 isTranslationChange:(BOOL)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = [v18 composition];
  if (([v19 isAudioComposition] & 1) == 0)
  {
    v7 = [v19 mediaObjects];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v21 + 1) + 8 * v10) transfer];
          v12 = [v11 isAdaptiveImageGlyph];
          v13 = IMLogHandleForCategory();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
          if (v12)
          {
            if (v14)
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Not launching app for inserted media object that is an adaptive image glyph.", buf, 2u);
            }
          }

          else
          {
            if (v14)
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Launching app for inserted media object.", buf, 2u);
            }

            v15 = [(CKCoreChatController *)self conversation];
            v13 = [v15 chat];

            [(CKNotificationChatController *)self _openMessagesForChat:v13];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }
  }

  v16 = [(CKNotificationChatController *)self typingUpdater];
  [v16 setNeedsUpdate];

  [(CKNotificationChatController *)self _updateEntryViewFrameIfNeeded:0];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "messageEntryViewDidChange:isTextChange:isShelfChange:isTranslationChange:", buf, 2u);
    }
  }
}

- (void)_openMessagesForChat:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CKNotificationChatController *)self _saveDraftForCurrentComposition];
  v5 = MEMORY[0x1E695DFF8];
  v6 = [v4 chatIdentifier];

  v7 = [v5 __im_URLForChatIdentifier:v6 entryBody:0];

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Launching messages with chat URL: %@", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__CKNotificationChatController__openMessagesForChat___block_invoke;
  v11[3] = &unk_1E72EB9C8;
  v12 = v7;
  v10 = v7;
  [v9 openURL:v10 withCompletionHandler:v11];
}

void __53__CKNotificationChatController__openMessagesForChat___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__CKNotificationChatController__openMessagesForChat___block_invoke_cold_1(a1, v3, v4, v5, v6, v7, v8, v9);
    }

    v10 = [MEMORY[0x1E695DFF8] URLWithString:@"messages://"];
    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__CKNotificationChatController__openMessagesForChat___block_invoke_317;
    v13[3] = &unk_1E72EB9C8;
    v14 = v10;
    v12 = v10;
    [v11 openURL:v12 withCompletionHandler:v13];
  }
}

void __53__CKNotificationChatController__openMessagesForChat___block_invoke_317(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__CKNotificationChatController__openMessagesForChat___block_invoke_cold_1(a1, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)messageEntryViewRecordingDidChange:(id)a3
{
  v4 = a3;
  v5 = [(CKCoreChatController *)self collectionViewController];
  [v5 stopPlayingAudio];

  v6 = [(CKNotificationChatController *)self typingUpdater];
  [v6 setNeedsUpdate];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "messageEntryViewRecordingDidChange: ", v8, 2u);
    }
  }
}

- (id)inputContextHistoryForMessageEntryView:(id)a3
{
  v4 = [(CKCoreChatController *)self conversation];
  if ([v4 isKnownSender])
  {
    v5 = [(CKCoreChatController *)self collectionViewController];
    v6 = [v5 inputContextHistory];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Not providing input context history because conversation is with an unknown sender.", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)messageEntryViewDidBeginEditingNotAlreadyActive:(id)a3
{
  v3 = [(CKCoreChatController *)self collectionViewController];
  [v3 scrollTranscriptToEntryViewInsertionTimeWithAnimation:1];
}

- (void)_saveDraftForCurrentComposition
{
  v8 = +[CKDraftManager sharedInstance];
  v3 = [(CKCoreChatController *)self conversation];
  v4 = [(CKNotificationChatController *)self entryView];
  v5 = [v4 composition];
  if ([v5 hasContent])
  {
    [v3 setUnsentComposition:v5];
    [v8 saveCompositionAndFlushCache:1];
    v6 = [v4 contentView];
    v7 = [v6 textView];
    [v7 checkForMentions];
  }

  else
  {
    [v3 setUnsentComposition:0];
    [v8 saveCompositionAndFlushCache:1];
  }
}

- (BOOL)messageEntryView:(id)a3 shouldInsertMediaObjects:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKCoreChatController *)self conversation];
  v9 = [v7 composition];

  v10 = [v9 compositionByAppendingMediaObjects:v6];

  LOBYTE(v6) = [v8 canSendComposition:v10 error:0];
  return v6;
}

- (void)messageEntryViewSendButtonHit:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "messageEntryViewSendButtonHit:", buf, 2u);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__CKNotificationChatController_messageEntryViewSendButtonHit___block_invoke;
  v6[3] = &unk_1E72ED6D8;
  v6[4] = self;
  [v4 compositionWithAcceptedAutocorrection:v6];
}

uint64_t __62__CKNotificationChatController_messageEntryViewSendButtonHit___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__CKNotificationChatController_messageEntryViewSendButtonHit___block_invoke_2;
  v4[3] = &unk_1E72ED6D8;
  v4[4] = v2;
  return [v2 checkForSensitiveContentAndSendComposition:a2 willPresentInterventionHandler:0 sendHandler:v4];
}

- (void)messageEntryViewSendButtonHitWhileDisabled:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Send button was hit while it was disabled.", v5, 2u);
    }
  }
}

- (void)messageEntryViewPlusButtonHit:(id)a3
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Plus button hit", v4, 2u);
  }
}

- (void)messageEntryViewRaiseGestureAutoSend:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Raise gesture auto send was triggered. Programmatically hit send button.", v6, 2u);
    }
  }

  [(CKNotificationChatController *)self messageEntryViewSendButtonHit:v4];
}

- (CGSize)messageEntryViewMaxShelfPluginViewSize:(id)a3
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (Class)lockoutViewControllerClass
{
  v2 = CKSTLockoutViewControllerClass;
  if (!CKSTLockoutViewControllerClass)
  {
    v2 = MEMORY[0x193AF5EC0](@"STLockoutViewController", @"ScreenTimeUI");
    CKSTLockoutViewControllerClass = v2;
  }

  return v2;
}

- (void)messageEntryViewSafeAreaInsetsDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__CKNotificationChatController_messageEntryViewSafeAreaInsetsDidChange___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)messageEntryViewWantsGenerativePlaygroundPluginPresented:(id)a3 presentationStyle:(unint64_t)a4
{
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CKNotificationChatController *)v4 messageEntryViewWantsGenerativePlaygroundPluginPresented:v5 presentationStyle:v6, v7, v8, v9, v10, v11];
  }
}

- (void)_launchMessagesForInputMode:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Launching Messages with InputMode=%{public}@", &v8, 0xCu);
  }

  v6 = [(CKNotificationChatController *)self urlOpenContext];
  v7 = [(CKNotificationChatController *)self launchURLForInputMode:v4];
  [v6 openURL:v7 completionHandler:&__block_literal_global_327_1];
}

void __60__CKNotificationChatController__launchMessagesForInputMode___block_invoke(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "_launchMessagesForInputMode returned %{BOOL}d", v4, 8u);
  }
}

- (BOOL)messageEntryViewWidth:(double *)a3 andOffset:(double *)a4
{
  v6 = [(CKNotificationChatController *)self entryView];
  v7 = [v6 window];

  if (v7)
  {
    [v7 bounds];
    *a3 = v8;
    *a4 = 0.0;
  }

  return v7 != 0;
}

- (void)updateTyping
{
  v7 = [(CKNotificationChatController *)self entryView];
  v3 = [v7 isRecording];
  v4 = [(CKCoreChatController *)self conversation];
  v5 = v4;
  if (v3)
  {
    [v4 setLocalUserIsRecording:1];
  }

  else
  {
    v6 = [v7 composition];
    [v5 setLocalUserIsTyping:{objc_msgSend(v6, "hasContent")}];
  }
}

- (void)raiseGestureRecognized:(id)a3
{
  v6 = a3;
  v4 = [(CKCoreChatController *)self conversation];
  v5 = [v4 isBlockedByCommunicationLimits];

  if ((v5 & 1) == 0)
  {
    [(CKNotificationChatController *)self __raiseGestureRecognized:v6];
  }
}

- (void)_dismissFullScreenBubbleViewControllerAnimated:(BOOL)a3 withSendAnimation:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v27 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (v6)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = _Block_copy(v8);
      *buf = 138412802;
      v22 = v10;
      v23 = 1024;
      v24 = v5;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "_dismissFullScreenBubbleViewControllerAnimated: %@, withSendAnimation: %d, completion %@", buf, 0x1Cu);
    }
  }

  objc_initWeak(buf, self);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __108__CKNotificationChatController__dismissFullScreenBubbleViewControllerAnimated_withSendAnimation_completion___block_invoke;
  v18 = &unk_1E72F2FB0;
  objc_copyWeak(&v20, buf);
  v12 = v8;
  v19 = v12;
  v13 = _Block_copy(&v15);
  v14 = [(CKNotificationChatController *)self notificationFullScreenBalloonController:v15];
  if (v5)
  {
    [v14 performSendAndCloseAnimationWithCompletion:v13];
  }

  else
  {
    [v14 performCancelAnimationWithCompletion:v13];
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

uint64_t __108__CKNotificationChatController__dismissFullScreenBubbleViewControllerAnimated_withSendAnimation_completion___block_invoke(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "_dismissFullScreenBubbleViewControllerAnimated:withSendAnimation:dismissViewController", v5, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cleanupNotificationFullScreenBalloonController];

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateRaiseGesture
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(CKCoreChatController *)self collectionViewController];
  if (![(CKViewController *)self appeared])
  {
    goto LABEL_6;
  }

  if ([v3 canRaiseToListen])
  {
    v4 = 1;
    goto LABEL_7;
  }

  if ([v3 canRaiseToTalk])
  {
    v4 = [(CKCoreChatController *)self isReadOnly]^ 1;
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

LABEL_7:
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if ([(CKViewController *)self appeared])
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = [v3 canRaiseToListen];
      v8 = [v3 canRaiseToTalk];
      if (v7)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      *v12 = 138412802;
      if (v8)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      *&v12[4] = v6;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Updating raise gesture, appeared %@, canRaiseToListen %@, canRaiseToTalk %@", v12, 0x20u);
    }
  }

  v11 = [(CKNotificationChatController *)self raiseGesture];
  [v11 setEnabled:v4];
}

- (void)_cleanupNotificationFullScreenBalloonController
{
  v3 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];

  if (v3)
  {
    v4 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];
    [v4 willMoveToParentViewController:0];

    v5 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];
    v6 = [v5 view];
    [v6 removeFromSuperview];

    v7 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];
    [v7 didMoveToParentViewController:0];

    v8 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];
    [(CKNotificationChatController *)self removeChildViewController:v8];

    [(CKNotificationChatController *)self setNotificationFullScreenBalloonController:0];
  }
}

- (CKFullScreenBalloonViewController)notificationFullScreenBalloonController
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationFullScreenBalloonController);

  return WeakRetained;
}

- (CGRect)lastKnownKeyboardFrame
{
  x = self->_lastKnownKeyboardFrame.origin.x;
  y = self->_lastKnownKeyboardFrame.origin.y;
  width = self->_lastKnownKeyboardFrame.size.width;
  height = self->_lastKnownKeyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)fullScreenBalloonViewController:(id)a3 willAppearAnimated:(BOOL)a4
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "fullScreenBalloonViewController:willAppearAnimated", v6, 2u);
    }
  }
}

- (void)fullScreenBalloonViewController:(id)a3 didAppearAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "fullScreenBalloonViewController:didAppearAnimated", buf, 2u);
    }
  }

  v8.receiver = self;
  v8.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v8 fullScreenBalloonViewController:v6 didAppearAnimated:v4];
}

- (void)fullScreenBalloonViewControllerDidDisappear:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "fullScreenBalloonViewControllerDidDisappear", buf, 2u);
    }
  }

  v6.receiver = self;
  v6.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v6 fullScreenBalloonViewControllerDidDisappear:v4];
}

- (void)fullScreenBalloonViewControllerHandleDismissTap:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "fullScreenBalloonViewControllerHandleDismissTap:", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__CKNotificationChatController_FullScreenBalloonViewControllerDelegate__fullScreenBalloonViewControllerHandleDismissTap___block_invoke;
  aBlock[3] = &unk_1E72EC460;
  objc_copyWeak(&v9, buf);
  v6 = _Block_copy(aBlock);
  v7 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];
  [v7 performCancelAnimationWithCompletion:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __121__CKNotificationChatController_FullScreenBalloonViewControllerDelegate__fullScreenBalloonViewControllerHandleDismissTap___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupNotificationFullScreenBalloonController];
}

- (void)fullScreenBalloonViewController:(id)a3 verticallyScrollTranscriptByAmount:(double)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7
{
  v8 = a5;
  v19 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a7;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"NO";
      *v16 = 138412802;
      *&v16[4] = v11;
      if (v8)
      {
        v14 = @"YES";
      }

      *&v16[12] = 2048;
      *&v16[14] = a4;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "fullScreenBalloonViewController: %@ verticallyScrollTranscriptByAmount: %.2f animated: %@ completion:", v16, 0x20u);
    }
  }

  v15 = [(CKCoreChatController *)self collectionViewController];
  [v15 verticallyScrollTranscriptByAmount:v8 animated:v12 completion:a4];
}

void __47__CKNotificationChatController_viewWillAppear___block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 134217984;
  v2 = 3600;
  _os_log_fault_impl(&dword_19020E000, log, OS_LOG_TYPE_FAULT, "Notification view appeared more than %ld seconds ago. Dismissing notification view.", &v1, 0xCu);
}

- (void)isSafeToMarkAsRead
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 134217984;
  v2 = 3600;
  _os_log_fault_impl(&dword_19020E000, log, OS_LOG_TYPE_FAULT, "Notification view appeared more than %ld seconds ago. Not allowing message to be marked as read.", &v1, 0xCu);
}

@end