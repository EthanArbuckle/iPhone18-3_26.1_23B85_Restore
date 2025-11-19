@interface CKDefaultPluginEntryViewController
- (BOOL)loadedContentView;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKDefaultPluginEntryViewController)initWithDataSource:(id)a3 entryViewDelegate:(id)a4 andPlugin:(id)a5 customizationPickerDelegate:(id)a6;
- (id)_copyActionForImageBalloonView;
- (id)_saveActionForImageBalloonView;
- (id)_transcriptPluginBalloon;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)_loadBalloonView;
- (void)dealloc;
- (void)didChangeBackgroundLuminance:(double)a3;
- (void)didFinishAnimatedBoundsChange;
- (void)fetchInternalMessageStateForDraft:(BOOL)a3 completion:(id)a4;
- (void)liveViewControllerDidUpdateMessageTintColor:(id)a3;
- (void)loadView;
- (void)payloadWillClear;
- (void)payloadWillSend;
- (void)performHostAppResume;
- (void)performHostAppSuspend;
- (void)pluginTintColorDidUpdate;
- (void)setShouldPerformSendAnimationOnAppear;
- (void)setShowsBalloonTail:(BOOL)a3;
- (void)updateBalloonViewFillColor:(id)a3;
- (void)updateConversationIDAndRecipientsForViewController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CKDefaultPluginEntryViewController

- (void)payloadWillClear
{
  v3 = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
    [v5 clearShelfPayload];
  }
}

- (CKDefaultPluginEntryViewController)initWithDataSource:(id)a3 entryViewDelegate:(id)a4 andPlugin:(id)a5 customizationPickerDelegate:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v21.receiver = self;
  v21.super_class = CKDefaultPluginEntryViewController;
  v12 = [(CKDefaultPluginEntryViewController *)&v21 init];
  v13 = v12;
  if (v12)
  {
    [(CKDefaultPluginEntryViewController *)v12 setDatasource:v9];
    [(CKDefaultPluginEntryViewController *)v13 setPlugin:v10];
    if (CKIsRunningInMacCatalyst())
    {
      v14 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v13];
      contextMenuInteraction = v13->_contextMenuInteraction;
      v13->_contextMenuInteraction = v14;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = [(CKDefaultPluginEntryViewController *)v13 plugin];
      v17 = objc_alloc([v16 bubbleClass]);
      v18 = [(CKDefaultPluginEntryViewController *)v13 datasource];
      v19 = [v17 initWithDataSource:v18 isFromMe:1];

      if (objc_opt_respondsToSelector())
      {
        [v19 setCustomizationPickerDelegate:v11];
      }

      [(CKDefaultPluginEntryViewController *)v13 setPluginBubbleViewController:v19];
    }
  }

  return v13;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKDefaultPluginEntryViewController;
  [(CKDefaultPluginEntryViewController *)&v4 dealloc];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = [a3 view];
  v6 = [(CKDefaultPluginEntryViewController *)self balloonView];
  v7 = v6;
  if (v5 != v6)
  {

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [(CKDefaultPluginEntryViewController *)self _copyActionForImageBalloonView];
  v11 = [(CKDefaultPluginEntryViewController *)self _saveActionForImageBalloonView];
  if (v10)
  {
    [v9 addObject:v10];
  }

  if (v11)
  {
    [v9 addObject:v11];
  }

  if ([v9 count])
  {
    v12 = MEMORY[0x1E69DC8D8];
    v13 = [(CKDefaultPluginEntryViewController *)self plugin];
    v14 = [v13 identifier];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __92__CKDefaultPluginEntryViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v17[3] = &unk_1E72EC178;
    v18 = v9;
    v15 = [v12 configurationWithIdentifier:v14 previewProvider:0 actionProvider:v17];
  }

  else
  {
    v15 = 0;
  }

LABEL_11:

  return v15;
}

- (id)_copyActionForImageBalloonView
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC628];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"COPY" value:&stru_1F04268F8 table:@"ChatKit"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__CKDefaultPluginEntryViewController__copyActionForImageBalloonView__block_invoke;
  v8[3] = &unk_1E72EBCD8;
  objc_copyWeak(&v9, &location);
  v6 = [v3 actionWithTitle:v5 image:0 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return v6;
}

void __68__CKDefaultPluginEntryViewController__copyActionForImageBalloonView__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained datasource];
  v3 = [v2 mediaObject];
  v4 = [v3 pasteboardItemProvider];

  if (v4)
  {
    v5 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [v5 setItemProviders:v6];
  }
}

- (id)_saveActionForImageBalloonView
{
  v3 = [(CKDefaultPluginEntryViewController *)self balloonView];
  if (v3)
  {
    v4 = [(CKDefaultPluginEntryViewController *)self balloonView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CKDefaultPluginEntryViewController *)self balloonView];
      v6 = [v5 image];

      if (v6)
      {
        objc_initWeak(&location, self);
        v7 = MEMORY[0x1E69DC628];
        v8 = CKFrameworkBundle();
        v9 = [v8 localizedStringForKey:@"SEARCH_ADD_TO_PHOTOS_LIBRARY" value:&stru_1F04268F8 table:@"ChatKit"];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __68__CKDefaultPluginEntryViewController__saveActionForImageBalloonView__block_invoke;
        v11[3] = &unk_1E72EBCD8;
        objc_copyWeak(&v12, &location);
        v3 = [v7 actionWithTitle:v9 image:0 identifier:0 handler:v11];

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
        goto LABEL_7;
      }
    }

    else
    {
    }

    v3 = 0;
  }

LABEL_7:

  return v3;
}

void __68__CKDefaultPluginEntryViewController__saveActionForImageBalloonView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained balloonView];

  v2 = [v7 animatedImage];
  v3 = [v2 image];

  if (v3)
  {
    v4 = [v7 animatedImage];
    v5 = [(UIImage *)v4 image];
    UIImageWriteToSavedPhotosAlbum(v5, 0, 0, 0);
  }

  else
  {
    v6 = [v7 image];

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = [v7 image];
    UIImageWriteToSavedPhotosAlbum(v4, 0, 0, 0);
  }

LABEL_6:
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(CKDefaultPluginEntryViewController *)self setView:v4];
}

- (void)updateConversationIDAndRecipientsForViewController:(id)a3
{
  v16 = a3;
  v4 = [(CKDefaultPluginEntryViewController *)self datasource];
  v5 = [v4 pluginPayload];
  v6 = [v5 pluginBundleID];

  v7 = IMBalloonExtensionIDWithSuffix();
  if ([v6 isEqualToString:v7])
  {
  }

  else
  {
    v8 = IMBalloonExtensionIDWithSuffix();
    v9 = [v6 isEqualToString:v8];

    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = [(CKDefaultPluginEntryViewController *)self datasource];
  v11 = [v10 chat];

  if (v11)
  {
    v12 = [[CKConversation alloc] initWithChat:v11];
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CKConversation *)v12 recipientStrings];
      [v16 performSelector:sel_setRecipients_ withObject:v13];
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [(CKConversation *)v12 chat];
      v15 = [v14 guid];

      [v16 performSelector:sel_setConversationID_ withObject:v15];
    }
  }

LABEL_11:
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CKDefaultPluginEntryViewController;
  [(CKDefaultPluginEntryViewController *)&v7 viewDidLoad];
  [(CKDefaultPluginEntryViewController *)self _loadBalloonView];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CKTranscriptBalloonPluginController *)self->_pluginBubbleViewController pluginContentViewController];
    if (v3)
    {
      [(CKDefaultPluginEntryViewController *)self updateConversationIDAndRecipientsForViewController:v3];
      [(CKDefaultPluginEntryViewController *)self addChildViewController:v3];
      [v3 didMoveToParentViewController:self];
      if (objc_opt_respondsToSelector())
      {
        [v3 setTintColorDelegate:self];
      }
    }
  }

  v4 = [(CKDefaultPluginEntryViewController *)self view];
  v5 = [(CKDefaultPluginEntryViewController *)self balloonView];
  [v4 addSubview:v5];

  v6 = [(CKDefaultPluginEntryViewController *)self view];
  [v6 setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CKDefaultPluginEntryViewController;
  [(CKDefaultPluginEntryViewController *)&v13 viewDidLayoutSubviews];
  v3 = [(CKDefaultPluginEntryViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CKDefaultPluginEntryViewController *)self balloonView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKDefaultPluginEntryViewController;
  [(CKDefaultPluginEntryViewController *)&v4 viewWillDisappear:a3];
  if (objc_opt_respondsToSelector())
  {
    [(CKTranscriptBalloonPluginController *)self->_pluginBubbleViewController pluginContentViewWillDisappear];
  }
}

- (void)performHostAppResume
{
  if (objc_opt_respondsToSelector())
  {
    pluginBubbleViewController = self->_pluginBubbleViewController;

    [(CKTranscriptBalloonPluginController *)pluginBubbleViewController performHostAppResume];
  }
}

- (void)performHostAppSuspend
{
  if (objc_opt_respondsToSelector())
  {
    pluginBubbleViewController = self->_pluginBubbleViewController;

    [(CKTranscriptBalloonPluginController *)pluginBubbleViewController performHostAppSuspend];
  }
}

- (void)didFinishAnimatedBoundsChange
{
  if (objc_opt_respondsToSelector())
  {
    pluginBubbleViewController = self->_pluginBubbleViewController;

    [(CKTranscriptBalloonPluginController *)pluginBubbleViewController didFinishAnimatedBoundsChange];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CKDefaultPluginEntryViewController *)self plugin];
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69A69E0]];

  if (v8)
  {
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 entryViewMaxHandWritingPluginShelfHeight];
    v11 = v10;

    v12 = v11 * 2.5;
  }

  else
  {
    v13 = [(CKDefaultPluginEntryViewController *)self datasource];
    [v13 sizeThatFits:{width, height}];
    v12 = v14;
    v11 = v15;
  }

  v16 = v12;
  v17 = v11;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)payloadWillSend
{
  v3 = [(CKDefaultPluginEntryViewController *)self datasource];
  [v3 setStagingContext:0];

  v4 = [(CKDefaultPluginEntryViewController *)self datasource];
  [v4 setPayloadInShelf:0];
}

- (BOOL)loadedContentView
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  pluginBubbleViewController = self->_pluginBubbleViewController;

  return [(CKTranscriptBalloonPluginController *)pluginBubbleViewController hasSizingInfo];
}

- (void)setShowsBalloonTail:(BOOL)a3
{
  if (self->_showsBalloonTail != a3)
  {
    v4 = a3;
    self->_showsBalloonTail = a3;
    v6 = [(CKDefaultPluginEntryViewController *)self balloonView];
    [v6 setHasTail:v4];

    v7 = [(CKDefaultPluginEntryViewController *)self balloonView];
    [v7 prepareForDisplay];
  }
}

- (void)fetchInternalMessageStateForDraft:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v11 = a4;
  v6 = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
  v7 = [v6 pluginContentViewController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
    v10 = [v9 pluginContentViewController];
    [v10 fetchInternalMessageStateForDraft:v4 completion:v11];
  }
}

- (void)setShouldPerformSendAnimationOnAppear
{
  v3 = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
  v4 = [v3 pluginContentViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
    v6 = [v7 pluginContentViewController];
    [v6 setShouldPerformSendAnimationOnAppear];
  }
}

- (void)didChangeBackgroundLuminance:(double)a3
{
  v5 = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
  v6 = [v5 pluginContentViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
    v8 = [v9 pluginContentViewController];
    [v8 didChangeBackgroundLuminance:a3];
  }
}

- (void)pluginTintColorDidUpdate
{
  v3 = [(CKDefaultPluginEntryViewController *)self balloonView];

  if (v3)
  {
    v4 = [(CKDefaultPluginEntryViewController *)self balloonView];
    [(CKDefaultPluginEntryViewController *)self updateBalloonViewFillColor:v4];

    v5 = [(CKDefaultPluginEntryViewController *)self balloonView];
    [v5 prepareForDisplay];
  }
}

- (void)_loadBalloonView
{
  if (!self->_balloonView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [(CKDefaultPluginEntryViewController *)self _imageBalloon];
      balloonView = self->_balloonView;
      self->_balloonView = v3;

      if (!CKIsRunningInMacCatalyst())
      {
        return;
      }

      v5 = [(CKDefaultPluginEntryViewController *)self contextMenuInteraction];

      if (!v5)
      {
        return;
      }

      v6 = self->_balloonView;
      v9 = [(CKDefaultPluginEntryViewController *)self contextMenuInteraction];
      [(CKBalloonView *)v6 addInteraction:v9];
      v7 = v9;
    }

    else
    {
      v8 = [(CKDefaultPluginEntryViewController *)self _transcriptPluginBalloon];
      v7 = self->_balloonView;
      self->_balloonView = v8;
    }
  }
}

- (void)updateBalloonViewFillColor:(id)a3
{
  v4 = *MEMORY[0x1E69A6E08];
  v5 = *(MEMORY[0x1E69A6E08] + 8);
  v6 = *(MEMORY[0x1E69A6E08] + 16);
  v7 = *(MEMORY[0x1E69A6E08] + 24);
  v14 = a3;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(CKTranscriptBalloonPluginController *)self->_pluginBubbleViewController messageTintColor];
    v9 = v8;
    if (v8)
    {
      [v8 ck_imColorComponents];
      v4 = v10;
      v5 = v11;
      v6 = v12;
      v7 = v13;
    }
  }

  [v14 setDynamicFillColor:{v4, v5, v6, v7}];
  [v14 setColor:0xFFFFFFFFLL];
}

- (id)_transcriptPluginBalloon
{
  if (self->_pluginBubbleViewController)
  {
    v3 = objc_opt_class();
    v4 = CKBalloonViewForClass(v3);
    [v4 setCanUseOpaqueMask:0];
    [v4 setOrientation:1];
    [v4 setHasTail:{-[CKDefaultPluginEntryViewController showsBalloonTail](self, "showsBalloonTail")}];
    [v4 setTextAlignmentInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 entryViewCoverMinHeight];
    v7 = v6 * 0.5;

    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 messageEntryContentViewPluginInsets];
    v10 = v9;

    [v4 setCornerRadius:v7 - v10];
    v11 = [(CKTranscriptBalloonPluginController *)self->_pluginBubbleViewController pluginContentView];
    [v4 setPluginView:v11 pluginController:self];

    [(CKDefaultPluginEntryViewController *)self updateBalloonViewFillColor:v4];
    [v4 setDataSource:self->_datasource];
    [v4 setIsStagedForSend:1];
    [v4 prepareForDisplay];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)liveViewControllerDidUpdateMessageTintColor:(id)a3
{
  v9 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CKTranscriptBalloonPluginController *)self->_pluginBubbleViewController pluginContentViewController];
    if (v4)
    {
      v5 = v4 == v9;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = [(CKDefaultPluginEntryViewController *)self balloonView];

      if (v6)
      {
        v7 = [(CKDefaultPluginEntryViewController *)self balloonView];
        [(CKDefaultPluginEntryViewController *)self updateBalloonViewFillColor:v7];

        v8 = [(CKDefaultPluginEntryViewController *)self balloonView];
        [v8 prepareForDisplay];
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

@end