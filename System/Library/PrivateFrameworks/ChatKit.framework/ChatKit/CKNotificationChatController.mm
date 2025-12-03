@interface CKNotificationChatController
- (BOOL)becomeFirstResponder;
- (BOOL)inputAccessoryViewControllerEnabled;
- (BOOL)isSafeToMarkAsRead;
- (BOOL)messageEntryView:(id)view shouldInsertMediaObjects:(id)objects;
- (BOOL)messageEntryViewWidth:(double *)width andOffset:(double *)offset;
- (BOOL)pluginButtonsEnabled;
- (BOOL)shouldShowEntryView;
- (CGRect)effectiveVisibleRectOfCollectionViewForTranscriptCollectionViewController:(id)controller;
- (CGRect)lastKnownKeyboardFrame;
- (CGSize)messageEntryViewMaxShelfPluginViewSize:(id)size;
- (CKFullScreenBalloonViewController)notificationFullScreenBalloonController;
- (CKMessageEntryView)entryView;
- (CKNotificationChatController)initWithConversation:(id)conversation entryViewTraitCollection:(id)collection;
- (Class)lockoutViewControllerClass;
- (NSExtensionContext)urlOpenContext;
- (double)_maxEntryViewHeight;
- (double)balloonMaxWidth;
- (double)bottomInsetPadding;
- (id)inputAccessoryView;
- (id)inputAccessoryViewController;
- (id)inputContextHistoryForMessageEntryView:(id)view;
- (id)launchURLForInputMode:(id)mode;
- (void)_allowedByScreenTimeChanged:(id)changed;
- (void)_cleanupNotificationFullScreenBalloonController;
- (void)_dismissFullScreenBubbleViewControllerAnimated:(BOOL)animated withSendAnimation:(BOOL)animation completion:(id)completion;
- (void)_handleKeyboardDidChangeFrameNotification:(id)notification;
- (void)_handleStickerTextInputPayload:(id)payload;
- (void)_insertUIStickerAsAdaptiveImageGlyph:(id)glyph;
- (void)_launchMessagesForInputMode:(id)mode;
- (void)_messageReceivedInCurrentTranscript:(id)transcript;
- (void)_openMessagesForChat:(id)chat;
- (void)_saveDraftForCurrentComposition;
- (void)_setConversationDeferredSetup;
- (void)_setEntryViewFrame:(CGRect)frame animated:(BOOL)animated;
- (void)_setupShouldShowReplyFromLockScreen;
- (void)_updateEntryViewFrameIfNeeded:(BOOL)needed;
- (void)backgroundViewTapGestureRecognized:(id)recognized;
- (void)dealloc;
- (void)fullScreenBalloonViewController:(id)controller didAppearAnimated:(BOOL)animated;
- (void)fullScreenBalloonViewController:(id)controller verticallyScrollTranscriptByAmount:(double)amount animated:(BOOL)animated duration:(double)duration completion:(id)completion;
- (void)fullScreenBalloonViewController:(id)controller willAppearAnimated:(BOOL)animated;
- (void)fullScreenBalloonViewControllerDidDisappear:(id)disappear;
- (void)fullScreenBalloonViewControllerHandleDismissTap:(id)tap;
- (void)handlePayload:(id)payload withPayloadId:(id)id;
- (void)insertUIStickerAsAdaptiveImageGlyph:(id)glyph;
- (void)isSafeToMarkAsRead;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)messageEntryViewDidBeginEditingNotAlreadyActive:(id)active;
- (void)messageEntryViewDidChange:(id)change isTextChange:(BOOL)textChange isShelfChange:(BOOL)shelfChange isTranslationChange:(BOOL)translationChange;
- (void)messageEntryViewPlusButtonHit:(id)hit;
- (void)messageEntryViewRaiseGestureAutoSend:(id)send;
- (void)messageEntryViewRecordingDidChange:(id)change;
- (void)messageEntryViewSafeAreaInsetsDidChange:(id)change;
- (void)messageEntryViewSendButtonHit:(id)hit;
- (void)messageEntryViewSendButtonHitWhileDisabled:(id)disabled;
- (void)messageEntryViewWantsGenerativePlaygroundPluginPresented:(id)presented presentationStyle:(unint64_t)style;
- (void)raiseGestureRecognized:(id)recognized;
- (void)registerForTextInputPayloadHandling;
- (void)sendComposition:(id)composition;
- (void)setAllowedByScreenTime:(BOOL)time;
- (void)setConversation:(id)conversation;
- (void)setEntryView:(id)view;
- (void)setLocalUserIsComposing:(BOOL)composing withPluginBundleID:(id)d typingIndicatorData:(id)data;
- (void)setSendingMessage:(BOOL)message;
- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)item;
- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view didRequestReaderViewControllerForChatItem:(id)item;
- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view longPressedForItemWithIndexPath:(id)path;
- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view tappedForChatItem:(id)item;
- (void)transcriptCollectionViewController:(id)controller collectionViewContentSizeDidChange:(CGSize)change;
- (void)unregisterForTextInputPayloadHandling;
- (void)updateRaiseGesture;
- (void)updateTyping;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviewsForTranscriptCollectionViewController:(id)controller;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CKNotificationChatController

- (void)registerForTextInputPayloadHandling
{
  v5[2] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69DD0F0] = [MEMORY[0x1E69DD0F0] sharedInstance];
  v5[0] = @"com.apple.messages.currentLocation";
  v5[1] = @"com.apple.messages.stageSticker";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  [mEMORY[0x1E69DD0F0] setSupportedPayloadIds:v4];

  [mEMORY[0x1E69DD0F0] setPayloadDelegate:self];
}

- (void)unregisterForTextInputPayloadHandling
{
  mEMORY[0x1E69DD0F0] = [MEMORY[0x1E69DD0F0] sharedInstance];
  [mEMORY[0x1E69DD0F0] setPayloadDelegate:0];
  [mEMORY[0x1E69DD0F0] setSupportedPayloadIds:MEMORY[0x1E695E0F0]];
}

- (void)handlePayload:(id)payload withPayloadId:(id)id
{
  v12 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  idCopy = id;
  v8 = idCopy;
  if (idCopy)
  {
    if ([idCopy isEqualToString:@"com.apple.messages.currentLocation"])
    {
      CKSendCurrentLocation(self);
    }

    else if ([v8 isEqualToString:@"com.apple.messages.stageSticker"])
    {
      [(CKNotificationChatController *)self _handleStickerTextInputPayload:payloadCopy];
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

- (void)_handleStickerTextInputPayload:(id)payload
{
  v4 = _UIStickerCreateStickerFromTextInputPayload();
  representations = [v4 representations];
  v6 = [representations count];

  if (v6)
  {
    _ck_plainStringEmojiText = [v4 _ck_plainStringEmojiText];
    if ([_ck_plainStringEmojiText length])
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Handling received sticker payload as plain string system emoji text", buf, 2u);
      }

      entryView = [(CKNotificationChatController *)self entryView];
      contentView = [entryView contentView];
      textView = [contentView textView];

      [textView insertText:_ck_plainStringEmojiText];
LABEL_16:

      goto LABEL_17;
    }

    conversation = [(CKCoreChatController *)self conversation];
    supportsInlineAdaptiveImageGlyphs = [conversation supportsInlineAdaptiveImageGlyphs];

    _ck_shouldInsertInCompositionAsAdaptiveImageGlyph = [v4 _ck_shouldInsertInCompositionAsAdaptiveImageGlyph];
    v22 = IMLogHandleForCategory();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    if (!supportsInlineAdaptiveImageGlyphs || !_ck_shouldInsertInCompositionAsAdaptiveImageGlyph)
    {
      if (v23)
      {
        *v25 = 0;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Received sticker payload cannot be inserted as an adaptive image glyph, launching messages app", v25, 2u);
      }

      conversation2 = [(CKCoreChatController *)self conversation];
      textView = [conversation2 chat];

      [(CKNotificationChatController *)self _openMessagesForChat:textView];
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
    _ck_plainStringEmojiText = IMLogHandleForCategory();
    if (os_log_type_enabled(_ck_plainStringEmojiText, OS_LOG_TYPE_ERROR))
    {
      [(CKNotificationChatController(TextInputPayloadsInternal) *)_ck_plainStringEmojiText _handleStickerTextInputPayload:v12, v13, v14, v15, v16, v17, v18];
    }
  }

LABEL_17:
}

- (void)insertUIStickerAsAdaptiveImageGlyph:(id)glyph
{
  glyphCopy = glyph;
  if (objc_opt_respondsToSelector())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __95__CKNotificationChatController_TextInputPayloadsInternal__insertUIStickerAsAdaptiveImageGlyph___block_invoke;
    v5[3] = &unk_1E72EFB88;
    v5[4] = self;
    [glyphCopy stk_renderBakedInRepIfNecessaryWithCompletion:v5];
  }

  else
  {
    [(CKNotificationChatController *)self _insertUIStickerAsAdaptiveImageGlyph:glyphCopy];
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

- (void)_insertUIStickerAsAdaptiveImageGlyph:(id)glyph
{
  glyphCopy = glyph;
  v5 = _UIStickerCreateAdaptiveImageGlyphFromSticker();
  if (v5)
  {
    entryView = [(CKNotificationChatController *)self entryView];
    contentView = [entryView contentView];
    textView = [contentView textView];

    v9 = [textView existingMediaObjectMatchingAdaptiveImageGlyph:v5];
    if (!v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E69A82C0]) initWithUISticker:glyphCopy adaptiveImageGlyph:v5];
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

    [textView insertAdaptiveImageGlyph:v5 withMediaObject:v9];
  }

  else
  {
    textView = IMLogHandleForCategory();
    if (os_log_type_enabled(textView, OS_LOG_TYPE_ERROR))
    {
      [(CKNotificationChatController(TextInputPayloadsInternal) *)textView _insertUIStickerAsAdaptiveImageGlyph:v13, v14, v15, v16, v17, v18, v19];
    }
  }
}

- (CKNotificationChatController)initWithConversation:(id)conversation entryViewTraitCollection:(id)collection
{
  v28 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  collectionCopy = collection;
  v8 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v8 startTimingForKey:@"longlook-init"];
  v23.receiver = self;
  v23.super_class = CKNotificationChatController;
  v9 = [(CKCoreChatController *)&v23 initWithConversation:conversationCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryViewTraitCollection, collection);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v10->_lastKnownKeyboardFrame.origin = *MEMORY[0x1E695F058];
    v10->_lastKnownKeyboardFrame.size = v11;
    -[CKNotificationChatController setAllowedByScreenTime:](v10, "setAllowedByScreenTime:", [conversationCopy isBlockedByCommunicationLimits] ^ 1);
    v12 = [[CKScheduledUpdater alloc] initWithTarget:v10 action:sel_updateTyping];
    [(CKNotificationChatController *)v10 setTypingUpdater:v12];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__raiseToListenSettingChanged_ name:CKPreferenceRaiseToListenDidChangeNotification object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    conversation = [(CKCoreChatController *)v10 conversation];
    chat = [conversation chat];
    [defaultCenter2 addObserver:v10 selector:sel__messageReceivedInCurrentTranscript_ name:*MEMORY[0x1E69A5828] object:chat];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    conversation2 = [(CKCoreChatController *)v10 conversation];
    chat2 = [conversation2 chat];
    [defaultCenter3 addObserver:v10 selector:sel__allowedByScreenTimeChanged_ name:*MEMORY[0x1E69A56E8] object:chat2];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v10 selector:sel__handleKeyboardDidChangeFrameNotification_ name:*MEMORY[0x1E69DDF68] object:0];

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
      v27 = conversationCopy;
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
  view = [(CKNotificationChatController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  view2 = [(CKNotificationChatController *)self view];
  [view2 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  traitCollection = [(CKNotificationChatController *)self traitCollection];
  keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
  windowScene = [keyWindow windowScene];
  _enhancedWindowingEnabled = [windowScene _enhancedWindowingEnabled];

  if (_enhancedWindowingEnabled)
  {
    v25 = self->_entryViewTraitCollection;

    traitCollection = v25;
  }

  conversation = [(CKCoreChatController *)self conversation];
  chat = [conversation chat];
  v28 = [chat supportsCapabilities:0x8000];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticOutgoingTranslationEnabled];

  if (isAutomaticOutgoingTranslationEnabled)
  {
    chat2 = [conversation chat];
    translationLanguageCode = [chat2 translationLanguageCode];

    if ([translationLanguageCode length] && (objc_msgSend(conversation, "chat"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isAutomaticTranslationEnabled"), v33, v34))
    {
      v35 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:translationLanguageCode];
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

  if (effectiveUserInterfaceLayoutDirection)
  {
    v36 = v5;
  }

  else
  {
    v36 = v9;
  }

  if (effectiveUserInterfaceLayoutDirection)
  {
    v5 = v9;
  }

  lastAddressedHandle = [conversation lastAddressedHandle];
  lastAddressedSIMID = [conversation lastAddressedSIMID];
  AddressedHandle = CKShowSubjectEnabledForLastAddressedHandle(lastAddressedHandle, lastAddressedSIMID);

  chat3 = [conversation chat];
  LODWORD(lastAddressedSIMID) = [chat3 isStewieChat];

  v41 = v28 ^ 1;
  v42 = [CKMessageEntryView alloc];
  pluginButtonsEnabled = [(CKNotificationChatController *)self pluginButtonsEnabled];
  v44 = CKShowCharacterCountEnabled(lastAddressedSIMID) != 0;
  BYTE4(v52) = [conversation supportsPolls];
  BYTE3(v52) = v41;
  BYTE2(v52) = 0;
  BYTE1(v52) = lastAddressedSIMID;
  LOBYTE(v52) = lastAddressedSIMID;
  v45 = [(CKMessageEntryView *)v42 initWithFrame:0 marginInsets:1 shouldAllowImpact:AddressedHandle & ~lastAddressedSIMID shouldShowSendButton:pluginButtonsEnabled shouldShowSubject:v44 shouldShowPluginButtons:traitCollection shouldShowCharacterCount:v14 traitCollection:v16 shouldDisableAttachments:v18 shouldUseNonEmojiKeyboard:v20 shouldUseNonHandwritingKeyboard:v53 shouldDisableKeyboardStickers:v5 shouldAllowPollSuggestions:v7 translationLanguage:v36, v52, v35];
  v46 = [CKMentionsController alloc];
  contentView = [(CKMessageEntryView *)v45 contentView];
  textView = [contentView textView];
  conversation2 = [(CKCoreChatController *)self conversation];
  v50 = [(CKMentionsController *)v46 initWithEntryTextView:textView conversation:conversation2];
  [(CKNotificationChatController *)self setMentionsController:v50];

  [(CKMessageEntryView *)v45 setAutoresizingMask:2];
  [(CKMessageEntryView *)v45 setDelegate:self];
  [(CKMessageEntryView *)v45 setInputDelegate:self];
  conversation3 = [(CKCoreChatController *)self conversation];
  [(CKMessageEntryView *)v45 setConversation:conversation3];

  [(CKMessageEntryView *)v45 layoutIfNeeded];
  [(CKNotificationChatController *)self setEntryView:v45];
  [(CKNotificationChatController *)self _updateEntryViewFrameIfNeeded:0];
}

- (void)backgroundViewTapGestureRecognized:(id)recognized
{
  delegate = [(CKCoreChatController *)self delegate];
  [delegate transcriptBackgroundTapped:self];
}

- (void)dealloc
{
  typingUpdater = [(CKNotificationChatController *)self typingUpdater];
  [typingUpdater invalidate];

  [(CKNotificationChatController *)self setTypingUpdater:0];
  v4.receiver = self;
  v4.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v4 dealloc];
}

- (double)balloonMaxWidth
{
  view = [(CKNotificationChatController *)self view];
  [view frame];
  v5 = v4;

  [(CKNotificationChatController *)self systemMinimumLayoutMargins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [(CKNotificationChatController *)self view];
  effectiveUserInterfaceLayoutDirection = [view2 effectiveUserInterfaceLayoutDirection];

  chat = [(CKCoreChatController *)self chat];
  if ([chat isStewieChat])
  {
    __ck_isiMessageLite = 1;
  }

  else
  {
    conversation = [(CKCoreChatController *)self conversation];
    sendingService = [conversation sendingService];
    __ck_isiMessageLite = [sendingService __ck_isiMessageLite];
  }

  if (effectiveUserInterfaceLayoutDirection)
  {
    v20 = v9;
  }

  else
  {
    v20 = v13;
  }

  if (effectiveUserInterfaceLayoutDirection)
  {
    v9 = v13;
  }

  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 balloonMaxWidthForTranscriptWidth:-[CKNotificationChatController pluginButtonsEnabled](self marginInsets:"pluginButtonsEnabled") shouldShowPluginButtons:CKShowCharacterCountEnabled(__ck_isiMessageLite) != 0 shouldShowCharacterCount:0 shouldCoverSendButton:__ck_isiMessageLite isStewieMode:{v5, v7, v9, v11, v20}];
  v23 = v22;

  return v23;
}

- (id)launchURLForInputMode:(id)mode
{
  modeCopy = mode;
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  conversation = [(CKCoreChatController *)self conversation];
  chat = [conversation chat];
  entryView = [(CKNotificationChatController *)self entryView];
  composition = [entryView composition];
  text = [composition text];
  string = [text string];
  v12 = [mEMORY[0x1E69A5AF8] messagesURLWithChat:chat orHandles:0 withMessageText:string];

  if ([modeCopy length])
  {
    v13 = [MEMORY[0x1E696AF20] componentsWithURL:v12 resolvingAgainstBaseURL:0];
    v14 = MEMORY[0x1E695DF70];
    queryItems = [v13 queryItems];
    v16 = [v14 arrayWithArray:queryItems];

    v17 = [MEMORY[0x1E696AF60] queryItemWithName:@"inputmode" value:modeCopy];
    [v16 addObject:v17];

    [v13 setQueryItems:v16];
    v18 = [v13 URL];

    v12 = v18;
  }

  return v12;
}

- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)item
{
  itemCopy = item;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "showFullScreenAcknowledgmentPickerForChatItem", buf, 2u);
    }
  }

  chat = [(CKCoreChatController *)self chat];
  [chat beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57A0]];
  [(CKScrollViewController *)self beginHoldingScrollGeometryUpdatesForReason:@"FullscreenBalloonMenuVisible"];
  notificationFullScreenBalloonController = [(CKNotificationChatController *)self notificationFullScreenBalloonController];

  if (notificationFullScreenBalloonController)
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

  v9 = [(CKCoreChatController *)self generateDefaultFullScreenBalloonViewControllerWithChatItem:itemCopy];
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
  view = [(CKNotificationChatController *)self view];
  view2 = [v9 view];
  [view addSubview:view2];

  view3 = [v9 view];
  collectionView = [(CKCoreChatController *)self collectionView];
  [collectionView frame];
  [view3 setFrame:?];

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

- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view tappedForChatItem:(id)item
{
  v32 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewCopy = view;
  itemCopy = item;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v28 = 138412546;
      v29 = viewCopy;
      v30 = 2112;
      v31 = itemCopy;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "chatItemTapped balloonView = %@, chatItem = %@", &v28, 0x16u);
    }
  }

  v12 = objc_opt_class();
  if ([v12 isEqual:objc_opt_class()])
  {
    v13 = itemCopy;
    bundleIdentifier = [v13 bundleIdentifier];
    v15 = [bundleIdentifier isEqualToString:*MEMORY[0x1E69A6A18]];

    if (!v15)
    {
LABEL_28:

      goto LABEL_29;
    }

    iMChatItem = [v13 IMChatItem];
    v17 = iMChatItem;
    if (iMChatItem)
    {
      dataSource = [iMChatItem dataSource];

      if (dataSource)
      {
        dataSource2 = [v17 dataSource];
        uRLToOpenOnTapAction = [dataSource2 URLToOpenOnTapAction];
        dataSource3 = [v17 dataSource];
        v22 = dataSource3;
        if (uRLToOpenOnTapAction)
        {
          [dataSource3 URLToOpenOnTapAction];
        }

        else
        {
          [dataSource3 url];
        }
        v24 = ;

        if (v24)
        {
          urlOpenContext = [(CKNotificationChatController *)self urlOpenContext];
          [urlOpenContext openURL:v24 completionHandler:&__block_literal_global_240];
        }

        else if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            dataSource4 = [v17 dataSource];
            v28 = 138412290;
            v29 = dataSource4;
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

- (void)viewDidLayoutSubviewsForTranscriptCollectionViewController:(id)controller
{
  notificationFullScreenBalloonController = [(CKNotificationChatController *)self notificationFullScreenBalloonController];

  if (notificationFullScreenBalloonController)
  {
    notificationFullScreenBalloonController2 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];
    [notificationFullScreenBalloonController2 updateBalloonViewFrame];
  }
}

- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view longPressedForItemWithIndexPath:(id)path
{
  controllerCopy = controller;
  viewCopy = view;
  pathCopy = path;
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
  [(CKCoreChatController *)&v12 transcriptCollectionViewController:controllerCopy balloonView:viewCopy longPressedForItemWithIndexPath:pathCopy];
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
  collectionView = [(CKCoreChatController *)self collectionView];
  [collectionView addGestureRecognizer:v4];
}

- (BOOL)shouldShowEntryView
{
  v26 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      shouldAllowReplyFromLockScreen = [(CKNotificationChatController *)self shouldAllowReplyFromLockScreen];
      conversation = [(CKCoreChatController *)self conversation];
      if ([conversation hasLeftGroupChat])
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

      conversation2 = [(CKCoreChatController *)self conversation];
      isBusinessChatDisabled = [conversation2 isBusinessChatDisabled];
      shouldDisplayTextEntry = [(CKCoreChatController *)self shouldDisplayTextEntry];
      if (isBusinessChatDisabled)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v17[0] = 67110146;
      v17[1] = shouldAllowReplyFromLockScreen;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v11;
      v24 = 1024;
      v25 = shouldDisplayTextEntry;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "allow reply: %d has left: %@, read only: %@, isBusinessChatDisabled: %@, should display text entry: %d", v17, 0x2Cu);
    }
  }

  if (![(CKNotificationChatController *)self shouldAllowReplyFromLockScreen])
  {
    return 0;
  }

  conversation3 = [(CKCoreChatController *)self conversation];
  if (([conversation3 hasLeftGroupChat] & 1) != 0 || -[CKCoreChatController isReadOnly](self, "isReadOnly") || !-[CKCoreChatController shouldDisplayTextEntry](self, "shouldDisplayTextEntry"))
  {
    v15 = 0;
  }

  else
  {
    conversation4 = [(CKCoreChatController *)self conversation];
    isBusinessChatDisabled2 = [conversation4 isBusinessChatDisabled];

    v15 = isBusinessChatDisabled2 ^ 1;
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
    entryViewController = [(CKNotificationChatController *)self entryViewController];
  }

  else
  {
    entryViewController = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = entryViewController;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "input accessory view controller: %@", &v6, 0xCu);
    }
  }

  return entryViewController;
}

- (id)inputAccessoryView
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(CKNotificationChatController *)self shouldShowEntryView]&& ![(CKNotificationChatController *)self inputAccessoryViewControllerEnabled])
  {
    entryView = [(CKNotificationChatController *)self entryView];
  }

  else
  {
    entryView = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = entryView;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "input accessory view: %@", &v6, 0xCu);
    }
  }

  return entryView;
}

- (void)setSendingMessage:(BOOL)message
{
  v5.receiver = self;
  v5.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v5 setSendingMessage:message];
  entryView = [(CKNotificationChatController *)self entryView];
  [entryView updateEntryView];
}

- (void)setEntryView:(id)view
{
  v14 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (viewCopy)
  {
    v5 = [[CKMessageEntryViewController alloc] initWithEntryView:viewCopy];
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
      entryViewController = [(CKNotificationChatController *)self entryViewController];
      v10 = 138412546;
      v11 = viewCopy;
      v12 = 2112;
      v13 = entryViewController;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Setting the entry view: entryview = %@, entryViewController = %@", &v10, 0x16u);
    }
  }

  inputAccessoryViewControllerEnabled = [(CKNotificationChatController *)self inputAccessoryViewControllerEnabled];
  entryViewController2 = [(CKNotificationChatController *)self entryViewController];
  [entryViewController2 setInputAccessoryViewControllerEnabled:inputAccessoryViewControllerEnabled];
}

- (CKMessageEntryView)entryView
{
  entryViewController = [(CKNotificationChatController *)self entryViewController];
  entryView = [entryViewController entryView];

  return entryView;
}

- (void)_handleKeyboardDidChangeFrameNotification:(id)notification
{
  userInfo = [notification userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];

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
  entryView = [(CKNotificationChatController *)self entryView];
  [entryView placeholderHeight];
  v5 = v4;
  v6 = +[CKUIBehavior sharedBehaviors];
  entryViewlayoutMetrics = [v6 entryViewlayoutMetrics];

  [entryViewlayoutMetrics defaultEntryContentViewHeight];
  v9 = v8;
  [entryViewlayoutMetrics entryViewContentInsets];
  v11 = v9 - v10;
  [entryViewlayoutMetrics entryViewContentInsets];
  v13 = v11 - v12;
  entryView2 = [(CKNotificationChatController *)self entryView];
  window = [entryView2 window];
  [window bounds];
  v17 = v16;
  v19 = v18;

  [entryView sizeThatFits:{v17, 1.79769313e308}];
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

- (void)_updateEntryViewFrameIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  entryView = [(CKNotificationChatController *)self entryView];
  window = [entryView window];

  v6 = window;
  if (window)
  {
    [window bounds];
    v8 = v7;
    [(CKNotificationChatController *)self _maxEntryViewHeight];
    v10 = v9;
    entryView2 = [(CKNotificationChatController *)self entryView];
    [entryView2 frame];
    v13 = v12;
    v15 = v14;

    v6 = window;
    if (v13 != v8 || v15 != v10)
    {
      v17 = *MEMORY[0x1E695F058];
      v18 = *(MEMORY[0x1E695F058] + 8);
      collectionViewController = [(CKCoreChatController *)self collectionViewController];
      [collectionViewController scrollTranscriptToEntryViewInsertionTimeWithAnimation:0];

      [(CKNotificationChatController *)self _setEntryViewFrame:neededCopy animated:v17, v18, v8, v10];
      v6 = window;
    }
  }
}

- (void)_setEntryViewFrame:(CGRect)frame animated:(BOOL)animated
{
  animatedCopy = animated;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CKNotificationChatController__setEntryViewFrame_animated___block_invoke;
  aBlock[3] = &unk_1E72EC7B0;
  aBlock[4] = self;
  frameCopy = frame;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (animatedCopy)
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
  entryView = [(CKNotificationChatController *)self entryView];
  window = [entryView window];

  if (window)
  {
    entryView2 = [(CKNotificationChatController *)self entryView];
    [entryView2 frame];
    v7 = v6;
  }

  else
  {
    entryView2 = [(CKNotificationChatController *)self view];
    [entryView2 safeAreaInsets];
    v7 = v8;
  }

  return v7;
}

- (void)setConversation:(id)conversation
{
  v3.receiver = self;
  v3.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v3 setConversation:conversation];
}

- (BOOL)pluginButtonsEnabled
{
  chat = [(CKCoreChatController *)self chat];
  isStewieChat = [chat isStewieChat];

  return isStewieChat ^ 1;
}

- (BOOL)becomeFirstResponder
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CKNotificationChatController;
  [(CKNotificationChatController *)&v10 becomeFirstResponder];
  entryView = [(CKNotificationChatController *)self entryView];
  contentView = [entryView contentView];
  activeView = [contentView activeView];
  becomeFirstResponder = [activeView becomeFirstResponder];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (becomeFirstResponder)
      {
        v8 = @"YES";
      }

      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Entry View became FR with success %@", buf, 0xCu);
    }
  }

  return becomeFirstResponder;
}

- (void)setLocalUserIsComposing:(BOOL)composing withPluginBundleID:(id)d typingIndicatorData:(id)data
{
  composingCopy = composing;
  dCopy = d;
  dataCopy = data;
  conversation = [(CKCoreChatController *)self conversation];
  v10 = conversation;
  if (composingCopy)
  {
    [conversation setLocalUserIsComposing:dCopy typingIndicatorIcon:dataCopy];
  }

  else
  {
    [conversation setLocalUserIsComposing:0];
  }
}

- (void)sendComposition:(id)composition
{
  v39 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
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
    conversation = [(CKCoreChatController *)self conversation];
    [conversation resetCaches];
    if ([compositionCopy hasContent])
    {
      recipients = [conversation recipients];
      v9 = [conversation canSendToRecipients:recipients alertIfUnable:1];

      if (v9)
      {
        v35 = 0;
        v10 = [conversation canSendComposition:compositionCopy error:&v35];
        v11 = v35;
        if (v10)
        {
          activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
          [activeKeyboard removeAutocorrectPrompt];

          [(CKNotificationChatController *)self setSendingMessage:1];
          v13 = [conversation messageWithComposition:compositionCopy];
          [conversation setUnsentComposition:0];
          [conversation sendMessage:v13 newComposition:0];
          entryView = [(CKNotificationChatController *)self entryView];
          composition = [entryView composition];
          v16 = [composition isEqual:compositionCopy];

          if (v16)
          {
            entryView2 = [(CKNotificationChatController *)self entryView];
            [entryView2 setComposition:0];
          }

          [(CKNotificationChatController *)self setSendingMessage:0];
          expressiveSendStyleID = [compositionCopy expressiveSendStyleID];
          v19 = [CKImpactEffectManager identifierIsAnimatedImpactEffect:expressiveSendStyleID];

          if (v19)
          {
            collectionViewController = [(CKCoreChatController *)self collectionViewController];
            impactEffectManager = [collectionViewController impactEffectManager];
            v36 = v13;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
            [impactEffectManager animateMessages:v22];
          }

          mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

          if (!isExpressiveTextEnabled)
          {
            goto LABEL_40;
          }

          entryView3 = [(CKNotificationChatController *)self entryView];
          contentView = [entryView3 contentView];
          textView = [contentView textView];

          [textView hideTextEffectsPickerIfNeededAndResetTypingAttributes];
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
          textView = [v32 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];

          v33 = CKCreateAlertControllerWithError(v11, v13, 0, textView, 0);
          if (v33)
          {
            delegate = [(CKCoreChatController *)self delegate];
            [v33 presentFromViewController:delegate animated:1 completion:0];
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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
  [(CKCoreChatController *)&v14 viewWillAppear:appearCopy];
  date = [MEMORY[0x1E695DF00] date];
  notificationViewWillAppearDate = self->_notificationViewWillAppearDate;
  self->_notificationViewWillAppearDate = date;

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

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v6 viewDidAppear:appear];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69A5828];
  conversation = [(CKCoreChatController *)self conversation];
  chat = [conversation chat];
  [defaultCenter removeObserver:self name:v6 object:chat];

  v12.receiver = self;
  v12.super_class = CKNotificationChatController;
  [(CKCoreChatController *)&v12 viewWillDisappear:disappearCopy];
  [(CKNotificationChatController *)self updateRaiseGesture];
  [(CKNotificationChatController *)self unregisterForTextInputPayloadHandling];
  notificationFullScreenBalloonController = [(CKNotificationChatController *)self notificationFullScreenBalloonController];

  if (notificationFullScreenBalloonController)
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    [(CKNotificationChatController *)self systemMinimumLayoutMargins];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    view = [(CKNotificationChatController *)self view];
    _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];

    if (_shouldReverseLayoutDirection)
    {
      v15 = v12;
    }

    else
    {
      v15 = v8;
    }

    if (!_shouldReverseLayoutDirection)
    {
      v8 = v12;
    }

    entryView = [(CKNotificationChatController *)self entryView];
    [entryView setMarginInsets:{v6, v15, v10, v8}];
  }

  [(CKNotificationChatController *)self balloonMaxWidth];
  v18 = v17;
  [(CKNotificationChatController *)self systemMinimumLayoutMargins];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  view2 = [(CKNotificationChatController *)self view];
  effectiveUserInterfaceLayoutDirection = [view2 effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection)
  {
    v29 = v26;
  }

  else
  {
    v29 = v22;
  }

  if (!effectiveUserInterfaceLayoutDirection)
  {
    v22 = v26;
  }

  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  traitCollection = [(CKNotificationChatController *)self traitCollection];
  [collectionViewController transcriptBackgroundLuminance];
  [collectionViewController invalidateChatItemLayoutWithNewBalloonMaxWidth:traitCollection marginInsets:v18 traitCollection:v20 transcriptBackgroundLuminance:{v29, v24, v22, v32}];

  viewIfLoaded = [collectionViewController viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)keyboardWillShow:(id)show
{
  showCopy = show;
  v9.receiver = self;
  v9.super_class = CKNotificationChatController;
  [(CKScrollViewController *)&v9 keyboardWillShow:showCopy];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    entryView = [(CKNotificationChatController *)self entryView];
    [entryView setKeyboardVisible:1];

    inputController = [(CKCoreChatController *)self inputController];
    [inputController chatControllerReceivedKeyboardWillShowNotification:showCopy];
  }
}

- (void)keyboardWillHide:(id)hide
{
  hideCopy = hide;
  v9.receiver = self;
  v9.super_class = CKNotificationChatController;
  [(CKScrollViewController *)&v9 keyboardWillHide:hideCopy];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    entryView = [(CKNotificationChatController *)self entryView];
    [entryView setKeyboardVisible:0];

    inputController = [(CKCoreChatController *)self inputController];
    [inputController chatControllerReceivedKeyboardWillHideNotification:hideCopy];
  }
}

- (void)_setupShouldShowReplyFromLockScreen
{
  CFPreferencesSynchronize(@"com.apple.mobilephone", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"LockScreenMessaging", @"com.apple.mobilephone", &keyExistsAndHasValidFormat);
  v4 = keyExistsAndHasValidFormat;
  mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x1E69A6160] isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
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

- (void)_allowedByScreenTimeChanged:(id)changed
{
  v15 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [changedCopy object];
    allowedByScreenTime = [object2 allowedByScreenTime];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (allowedByScreenTime)
        {
          v10 = @"YES";
        }

        v11 = 138412546;
        v12 = object2;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "chat: %@ allowedByScreenTime state changed to: %@", &v11, 0x16u);
      }
    }

    [(CKNotificationChatController *)self setAllowedByScreenTime:allowedByScreenTime];
  }
}

- (void)setAllowedByScreenTime:(BOOL)time
{
  if (self->_allowedByScreenTime != time)
  {
    self->_allowedByScreenTime = time;
    if (time)
    {
      lockoutViewController = [(CKNotificationChatController *)self lockoutViewController];
      view = [lockoutViewController view];
      [view removeFromSuperview];

      [(CKNotificationChatController *)self setLockoutViewController:0];
      [(CKNotificationChatController *)self becomeFirstResponder];

      [(CKNotificationChatController *)self reloadInputViews];
    }

    else
    {
      collectionView = [(CKCoreChatController *)self collectionView];
      [collectionView resignFirstResponder];

      conversation = [(CKCoreChatController *)self conversation];
      chat = [conversation chat];
      conversationContext = [chat conversationContext];

      lockoutViewControllerClass = [(CKNotificationChatController *)self lockoutViewControllerClass];
      if (conversationContext)
      {
        conversation2 = [(CKCoreChatController *)self conversation];
        contactNameByHandle = [conversation2 contactNameByHandle];
        v11ContactNameByHandle = [(objc_class *)lockoutViewControllerClass lockoutViewControllerWithConversationContext:conversationContext bundleIdentifier:@"com.apple.MobileSMS" contactStore:0 applicationName:0 contactNameByHandle:contactNameByHandle];
        [(CKNotificationChatController *)self setLockoutViewController:v11ContactNameByHandle];
      }

      else
      {
        conversation2 = [(CKCoreChatController *)self _handleIDsForCurrentConversation];
        contactNameByHandle = [(CKCoreChatController *)self conversation];
        v11ContactNameByHandle = [contactNameByHandle contactNameByHandle];
        v13 = [(objc_class *)lockoutViewControllerClass lockoutViewControllerWithBundleIdentifier:@"com.apple.MobileSMS" contactsHandles:conversation2 contactNameByHandle:v11ContactNameByHandle];
        [(CKNotificationChatController *)self setLockoutViewController:v13];
      }

      lockoutViewController2 = [(CKNotificationChatController *)self lockoutViewController];
      view2 = [lockoutViewController2 view];

      view3 = [(CKNotificationChatController *)self view];
      [view3 addSubview:view2];

      view4 = [(CKNotificationChatController *)self view];
      [view4 bounds];
      [view2 setFrame:?];

      [view2 setAutoresizingMask:18];
    }
  }
}

- (void)_messageReceivedInCurrentTranscript:(id)transcript
{
  transcriptCopy = transcript;
  userInfo = [transcriptCopy userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69A5928]];

  v6 = [CKEntity alloc];
  sender = [v5 sender];
  v8 = [(CKEntity *)v6 initWithIMHandle:sender];

  v9 = [objc_alloc(MEMORY[0x1E69DA8E8]) initWithType:3];
  textToneIdentifier = [(CKEntity *)v8 textToneIdentifier];
  v11 = *MEMORY[0x1E69DA928];
  if ([textToneIdentifier isEqualToString:*MEMORY[0x1E69DA928]])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  textVibrationIdentifier = [(CKEntity *)v8 textVibrationIdentifier];
  v15 = *MEMORY[0x1E69DA930];
  if ([textVibrationIdentifier isEqualToString:*MEMORY[0x1E69DA930]])
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

- (void)transcriptCollectionViewController:(id)controller collectionViewContentSizeDidChange:(CGSize)change
{
  v5 = [(CKCoreChatController *)self delegate:controller];
  [v5 notificationChatControllerSizeUpdated:self];
}

- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view didRequestReaderViewControllerForChatItem:(id)item
{
  v6 = [(CKCoreChatController *)self conversation:controller];
  chat = [v6 chat];

  [(CKNotificationChatController *)self _openMessagesForChat:chat];
}

- (CGRect)effectiveVisibleRectOfCollectionViewForTranscriptCollectionViewController:(id)controller
{
  collectionView = [(CKCoreChatController *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [collectionView adjustedContentInset];
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

- (void)messageEntryViewDidChange:(id)change isTextChange:(BOOL)textChange isShelfChange:(BOOL)shelfChange isTranslationChange:(BOOL)translationChange
{
  v26 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  composition = [changeCopy composition];
  if (([composition isAudioComposition] & 1) == 0)
  {
    mediaObjects = [composition mediaObjects];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [mediaObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(mediaObjects);
          }

          transfer = [*(*(&v21 + 1) + 8 * v10) transfer];
          isAdaptiveImageGlyph = [transfer isAdaptiveImageGlyph];
          chat = IMLogHandleForCategory();
          v14 = os_log_type_enabled(chat, OS_LOG_TYPE_INFO);
          if (isAdaptiveImageGlyph)
          {
            if (v14)
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, chat, OS_LOG_TYPE_INFO, "Not launching app for inserted media object that is an adaptive image glyph.", buf, 2u);
            }
          }

          else
          {
            if (v14)
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, chat, OS_LOG_TYPE_INFO, "Launching app for inserted media object.", buf, 2u);
            }

            conversation = [(CKCoreChatController *)self conversation];
            chat = [conversation chat];

            [(CKNotificationChatController *)self _openMessagesForChat:chat];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [mediaObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }
  }

  typingUpdater = [(CKNotificationChatController *)self typingUpdater];
  [typingUpdater setNeedsUpdate];

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

- (void)_openMessagesForChat:(id)chat
{
  v15 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  [(CKNotificationChatController *)self _saveDraftForCurrentComposition];
  v5 = MEMORY[0x1E695DFF8];
  chatIdentifier = [chatCopy chatIdentifier];

  v7 = [v5 __im_URLForChatIdentifier:chatIdentifier entryBody:0];

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Launching messages with chat URL: %@", buf, 0xCu);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__CKNotificationChatController__openMessagesForChat___block_invoke;
  v11[3] = &unk_1E72EB9C8;
  v12 = v7;
  v10 = v7;
  [mEMORY[0x1E69DC668] openURL:v10 withCompletionHandler:v11];
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

- (void)messageEntryViewRecordingDidChange:(id)change
{
  changeCopy = change;
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  [collectionViewController stopPlayingAudio];

  typingUpdater = [(CKNotificationChatController *)self typingUpdater];
  [typingUpdater setNeedsUpdate];

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

- (id)inputContextHistoryForMessageEntryView:(id)view
{
  conversation = [(CKCoreChatController *)self conversation];
  if ([conversation isKnownSender])
  {
    collectionViewController = [(CKCoreChatController *)self collectionViewController];
    inputContextHistory = [collectionViewController inputContextHistory];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Not providing input context history because conversation is with an unknown sender.", v9, 2u);
    }

    inputContextHistory = 0;
  }

  return inputContextHistory;
}

- (void)messageEntryViewDidBeginEditingNotAlreadyActive:(id)active
{
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  [collectionViewController scrollTranscriptToEntryViewInsertionTimeWithAnimation:1];
}

- (void)_saveDraftForCurrentComposition
{
  v8 = +[CKDraftManager sharedInstance];
  conversation = [(CKCoreChatController *)self conversation];
  entryView = [(CKNotificationChatController *)self entryView];
  composition = [entryView composition];
  if ([composition hasContent])
  {
    [conversation setUnsentComposition:composition];
    [v8 saveCompositionAndFlushCache:1];
    contentView = [entryView contentView];
    textView = [contentView textView];
    [textView checkForMentions];
  }

  else
  {
    [conversation setUnsentComposition:0];
    [v8 saveCompositionAndFlushCache:1];
  }
}

- (BOOL)messageEntryView:(id)view shouldInsertMediaObjects:(id)objects
{
  objectsCopy = objects;
  viewCopy = view;
  conversation = [(CKCoreChatController *)self conversation];
  composition = [viewCopy composition];

  v10 = [composition compositionByAppendingMediaObjects:objectsCopy];

  LOBYTE(objectsCopy) = [conversation canSendComposition:v10 error:0];
  return objectsCopy;
}

- (void)messageEntryViewSendButtonHit:(id)hit
{
  hitCopy = hit;
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
  [hitCopy compositionWithAcceptedAutocorrection:v6];
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

- (void)messageEntryViewSendButtonHitWhileDisabled:(id)disabled
{
  disabledCopy = disabled;
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

- (void)messageEntryViewPlusButtonHit:(id)hit
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Plus button hit", v4, 2u);
  }
}

- (void)messageEntryViewRaiseGestureAutoSend:(id)send
{
  sendCopy = send;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Raise gesture auto send was triggered. Programmatically hit send button.", v6, 2u);
    }
  }

  [(CKNotificationChatController *)self messageEntryViewSendButtonHit:sendCopy];
}

- (CGSize)messageEntryViewMaxShelfPluginViewSize:(id)size
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

- (void)messageEntryViewSafeAreaInsetsDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__CKNotificationChatController_messageEntryViewSafeAreaInsetsDidChange___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)messageEntryViewWantsGenerativePlaygroundPluginPresented:(id)presented presentationStyle:(unint64_t)style
{
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CKNotificationChatController *)v4 messageEntryViewWantsGenerativePlaygroundPluginPresented:v5 presentationStyle:v6, v7, v8, v9, v10, v11];
  }
}

- (void)_launchMessagesForInputMode:(id)mode
{
  v10 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = modeCopy;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Launching Messages with InputMode=%{public}@", &v8, 0xCu);
  }

  urlOpenContext = [(CKNotificationChatController *)self urlOpenContext];
  v7 = [(CKNotificationChatController *)self launchURLForInputMode:modeCopy];
  [urlOpenContext openURL:v7 completionHandler:&__block_literal_global_327_1];
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

- (BOOL)messageEntryViewWidth:(double *)width andOffset:(double *)offset
{
  entryView = [(CKNotificationChatController *)self entryView];
  window = [entryView window];

  if (window)
  {
    [window bounds];
    *width = v8;
    *offset = 0.0;
  }

  return window != 0;
}

- (void)updateTyping
{
  entryView = [(CKNotificationChatController *)self entryView];
  isRecording = [entryView isRecording];
  conversation = [(CKCoreChatController *)self conversation];
  v5 = conversation;
  if (isRecording)
  {
    [conversation setLocalUserIsRecording:1];
  }

  else
  {
    composition = [entryView composition];
    [v5 setLocalUserIsTyping:{objc_msgSend(composition, "hasContent")}];
  }
}

- (void)raiseGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  conversation = [(CKCoreChatController *)self conversation];
  isBlockedByCommunicationLimits = [conversation isBlockedByCommunicationLimits];

  if ((isBlockedByCommunicationLimits & 1) == 0)
  {
    [(CKNotificationChatController *)self __raiseGestureRecognized:recognizedCopy];
  }
}

- (void)_dismissFullScreenBubbleViewControllerAnimated:(BOOL)animated withSendAnimation:(BOOL)animation completion:(id)completion
{
  animationCopy = animation;
  animatedCopy = animated;
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (animatedCopy)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = _Block_copy(completionCopy);
      *buf = 138412802;
      v22 = v10;
      v23 = 1024;
      v24 = animationCopy;
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
  v12 = completionCopy;
  v19 = v12;
  v13 = _Block_copy(&v15);
  v14 = [(CKNotificationChatController *)self notificationFullScreenBalloonController:v15];
  if (animationCopy)
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
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  if (![(CKViewController *)self appeared])
  {
    goto LABEL_6;
  }

  if ([collectionViewController canRaiseToListen])
  {
    v4 = 1;
    goto LABEL_7;
  }

  if ([collectionViewController canRaiseToTalk])
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

      canRaiseToListen = [collectionViewController canRaiseToListen];
      canRaiseToTalk = [collectionViewController canRaiseToTalk];
      if (canRaiseToListen)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      *v12 = 138412802;
      if (canRaiseToTalk)
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

  raiseGesture = [(CKNotificationChatController *)self raiseGesture];
  [raiseGesture setEnabled:v4];
}

- (void)_cleanupNotificationFullScreenBalloonController
{
  notificationFullScreenBalloonController = [(CKNotificationChatController *)self notificationFullScreenBalloonController];

  if (notificationFullScreenBalloonController)
  {
    notificationFullScreenBalloonController2 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];
    [notificationFullScreenBalloonController2 willMoveToParentViewController:0];

    notificationFullScreenBalloonController3 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];
    view = [notificationFullScreenBalloonController3 view];
    [view removeFromSuperview];

    notificationFullScreenBalloonController4 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];
    [notificationFullScreenBalloonController4 didMoveToParentViewController:0];

    notificationFullScreenBalloonController5 = [(CKNotificationChatController *)self notificationFullScreenBalloonController];
    [(CKNotificationChatController *)self removeChildViewController:notificationFullScreenBalloonController5];

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

- (void)fullScreenBalloonViewController:(id)controller willAppearAnimated:(BOOL)animated
{
  controllerCopy = controller;
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

- (void)fullScreenBalloonViewController:(id)controller didAppearAnimated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
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
  [(CKCoreChatController *)&v8 fullScreenBalloonViewController:controllerCopy didAppearAnimated:animatedCopy];
}

- (void)fullScreenBalloonViewControllerDidDisappear:(id)disappear
{
  disappearCopy = disappear;
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
  [(CKCoreChatController *)&v6 fullScreenBalloonViewControllerDidDisappear:disappearCopy];
}

- (void)fullScreenBalloonViewControllerHandleDismissTap:(id)tap
{
  tapCopy = tap;
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
  notificationFullScreenBalloonController = [(CKNotificationChatController *)self notificationFullScreenBalloonController];
  [notificationFullScreenBalloonController performCancelAnimationWithCompletion:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __121__CKNotificationChatController_FullScreenBalloonViewControllerDelegate__fullScreenBalloonViewControllerHandleDismissTap___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupNotificationFullScreenBalloonController];
}

- (void)fullScreenBalloonViewController:(id)controller verticallyScrollTranscriptByAmount:(double)amount animated:(BOOL)animated duration:(double)duration completion:(id)completion
{
  animatedCopy = animated;
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"NO";
      *v16 = 138412802;
      *&v16[4] = controllerCopy;
      if (animatedCopy)
      {
        v14 = @"YES";
      }

      *&v16[12] = 2048;
      *&v16[14] = amount;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "fullScreenBalloonViewController: %@ verticallyScrollTranscriptByAmount: %.2f animated: %@ completion:", v16, 0x20u);
    }
  }

  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  [collectionViewController verticallyScrollTranscriptByAmount:animatedCopy animated:completionCopy completion:amount];
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