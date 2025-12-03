@interface CKDefaultPluginEntryViewController
- (BOOL)loadedContentView;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDefaultPluginEntryViewController)initWithDataSource:(id)source entryViewDelegate:(id)delegate andPlugin:(id)plugin customizationPickerDelegate:(id)pickerDelegate;
- (id)_copyActionForImageBalloonView;
- (id)_saveActionForImageBalloonView;
- (id)_transcriptPluginBalloon;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)_loadBalloonView;
- (void)dealloc;
- (void)didChangeBackgroundLuminance:(double)luminance;
- (void)didFinishAnimatedBoundsChange;
- (void)fetchInternalMessageStateForDraft:(BOOL)draft completion:(id)completion;
- (void)liveViewControllerDidUpdateMessageTintColor:(id)color;
- (void)loadView;
- (void)payloadWillClear;
- (void)payloadWillSend;
- (void)performHostAppResume;
- (void)performHostAppSuspend;
- (void)pluginTintColorDidUpdate;
- (void)setShouldPerformSendAnimationOnAppear;
- (void)setShowsBalloonTail:(BOOL)tail;
- (void)updateBalloonViewFillColor:(id)color;
- (void)updateConversationIDAndRecipientsForViewController:(id)controller;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CKDefaultPluginEntryViewController

- (void)payloadWillClear
{
  pluginBubbleViewController = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    pluginBubbleViewController2 = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
    [pluginBubbleViewController2 clearShelfPayload];
  }
}

- (CKDefaultPluginEntryViewController)initWithDataSource:(id)source entryViewDelegate:(id)delegate andPlugin:(id)plugin customizationPickerDelegate:(id)pickerDelegate
{
  sourceCopy = source;
  pluginCopy = plugin;
  pickerDelegateCopy = pickerDelegate;
  v21.receiver = self;
  v21.super_class = CKDefaultPluginEntryViewController;
  v12 = [(CKDefaultPluginEntryViewController *)&v21 init];
  v13 = v12;
  if (v12)
  {
    [(CKDefaultPluginEntryViewController *)v12 setDatasource:sourceCopy];
    [(CKDefaultPluginEntryViewController *)v13 setPlugin:pluginCopy];
    if (CKIsRunningInMacCatalyst())
    {
      v14 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v13];
      contextMenuInteraction = v13->_contextMenuInteraction;
      v13->_contextMenuInteraction = v14;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      plugin = [(CKDefaultPluginEntryViewController *)v13 plugin];
      v17 = objc_alloc([plugin bubbleClass]);
      datasource = [(CKDefaultPluginEntryViewController *)v13 datasource];
      v19 = [v17 initWithDataSource:datasource isFromMe:1];

      if (objc_opt_respondsToSelector())
      {
        [v19 setCustomizationPickerDelegate:pickerDelegateCopy];
      }

      [(CKDefaultPluginEntryViewController *)v13 setPluginBubbleViewController:v19];
    }
  }

  return v13;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKDefaultPluginEntryViewController;
  [(CKDefaultPluginEntryViewController *)&v4 dealloc];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  view = [interaction view];
  balloonView = [(CKDefaultPluginEntryViewController *)self balloonView];
  v7 = balloonView;
  if (view != balloonView)
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

  array = [MEMORY[0x1E695DF70] array];
  _copyActionForImageBalloonView = [(CKDefaultPluginEntryViewController *)self _copyActionForImageBalloonView];
  _saveActionForImageBalloonView = [(CKDefaultPluginEntryViewController *)self _saveActionForImageBalloonView];
  if (_copyActionForImageBalloonView)
  {
    [array addObject:_copyActionForImageBalloonView];
  }

  if (_saveActionForImageBalloonView)
  {
    [array addObject:_saveActionForImageBalloonView];
  }

  if ([array count])
  {
    v12 = MEMORY[0x1E69DC8D8];
    plugin = [(CKDefaultPluginEntryViewController *)self plugin];
    identifier = [plugin identifier];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __92__CKDefaultPluginEntryViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v17[3] = &unk_1E72EC178;
    v18 = array;
    v15 = [v12 configurationWithIdentifier:identifier previewProvider:0 actionProvider:v17];
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
  balloonView = [(CKDefaultPluginEntryViewController *)self balloonView];
  if (balloonView)
  {
    balloonView2 = [(CKDefaultPluginEntryViewController *)self balloonView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      balloonView3 = [(CKDefaultPluginEntryViewController *)self balloonView];
      image = [balloonView3 image];

      if (image)
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
        balloonView = [v7 actionWithTitle:v9 image:0 identifier:0 handler:v11];

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
        goto LABEL_7;
      }
    }

    else
    {
    }

    balloonView = 0;
  }

LABEL_7:

  return balloonView;
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

- (void)updateConversationIDAndRecipientsForViewController:(id)controller
{
  controllerCopy = controller;
  datasource = [(CKDefaultPluginEntryViewController *)self datasource];
  pluginPayload = [datasource pluginPayload];
  pluginBundleID = [pluginPayload pluginBundleID];

  v7 = IMBalloonExtensionIDWithSuffix();
  if ([pluginBundleID isEqualToString:v7])
  {
  }

  else
  {
    v8 = IMBalloonExtensionIDWithSuffix();
    v9 = [pluginBundleID isEqualToString:v8];

    if (!v9)
    {
      goto LABEL_11;
    }
  }

  datasource2 = [(CKDefaultPluginEntryViewController *)self datasource];
  chat = [datasource2 chat];

  if (chat)
  {
    v12 = [[CKConversation alloc] initWithChat:chat];
    if (objc_opt_respondsToSelector())
    {
      recipientStrings = [(CKConversation *)v12 recipientStrings];
      [controllerCopy performSelector:sel_setRecipients_ withObject:recipientStrings];
    }

    if (objc_opt_respondsToSelector())
    {
      chat2 = [(CKConversation *)v12 chat];
      guid = [chat2 guid];

      [controllerCopy performSelector:sel_setConversationID_ withObject:guid];
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
    pluginContentViewController = [(CKTranscriptBalloonPluginController *)self->_pluginBubbleViewController pluginContentViewController];
    if (pluginContentViewController)
    {
      [(CKDefaultPluginEntryViewController *)self updateConversationIDAndRecipientsForViewController:pluginContentViewController];
      [(CKDefaultPluginEntryViewController *)self addChildViewController:pluginContentViewController];
      [pluginContentViewController didMoveToParentViewController:self];
      if (objc_opt_respondsToSelector())
      {
        [pluginContentViewController setTintColorDelegate:self];
      }
    }
  }

  view = [(CKDefaultPluginEntryViewController *)self view];
  balloonView = [(CKDefaultPluginEntryViewController *)self balloonView];
  [view addSubview:balloonView];

  view2 = [(CKDefaultPluginEntryViewController *)self view];
  [view2 setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CKDefaultPluginEntryViewController;
  [(CKDefaultPluginEntryViewController *)&v13 viewDidLayoutSubviews];
  view = [(CKDefaultPluginEntryViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  balloonView = [(CKDefaultPluginEntryViewController *)self balloonView];
  [balloonView setFrame:{v5, v7, v9, v11}];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CKDefaultPluginEntryViewController;
  [(CKDefaultPluginEntryViewController *)&v4 viewWillDisappear:disappear];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  plugin = [(CKDefaultPluginEntryViewController *)self plugin];
  identifier = [plugin identifier];
  v8 = [identifier isEqualToString:*MEMORY[0x1E69A69E0]];

  if (v8)
  {
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 entryViewMaxHandWritingPluginShelfHeight];
    v11 = v10;

    v12 = v11 * 2.5;
  }

  else
  {
    datasource = [(CKDefaultPluginEntryViewController *)self datasource];
    [datasource sizeThatFits:{width, height}];
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
  datasource = [(CKDefaultPluginEntryViewController *)self datasource];
  [datasource setStagingContext:0];

  datasource2 = [(CKDefaultPluginEntryViewController *)self datasource];
  [datasource2 setPayloadInShelf:0];
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

- (void)setShowsBalloonTail:(BOOL)tail
{
  if (self->_showsBalloonTail != tail)
  {
    tailCopy = tail;
    self->_showsBalloonTail = tail;
    balloonView = [(CKDefaultPluginEntryViewController *)self balloonView];
    [balloonView setHasTail:tailCopy];

    balloonView2 = [(CKDefaultPluginEntryViewController *)self balloonView];
    [balloonView2 prepareForDisplay];
  }
}

- (void)fetchInternalMessageStateForDraft:(BOOL)draft completion:(id)completion
{
  draftCopy = draft;
  completionCopy = completion;
  pluginBubbleViewController = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
  pluginContentViewController = [pluginBubbleViewController pluginContentViewController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    pluginBubbleViewController2 = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
    pluginContentViewController2 = [pluginBubbleViewController2 pluginContentViewController];
    [pluginContentViewController2 fetchInternalMessageStateForDraft:draftCopy completion:completionCopy];
  }
}

- (void)setShouldPerformSendAnimationOnAppear
{
  pluginBubbleViewController = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
  pluginContentViewController = [pluginBubbleViewController pluginContentViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    pluginBubbleViewController2 = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
    pluginContentViewController2 = [pluginBubbleViewController2 pluginContentViewController];
    [pluginContentViewController2 setShouldPerformSendAnimationOnAppear];
  }
}

- (void)didChangeBackgroundLuminance:(double)luminance
{
  pluginBubbleViewController = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
  pluginContentViewController = [pluginBubbleViewController pluginContentViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    pluginBubbleViewController2 = [(CKDefaultPluginEntryViewController *)self pluginBubbleViewController];
    pluginContentViewController2 = [pluginBubbleViewController2 pluginContentViewController];
    [pluginContentViewController2 didChangeBackgroundLuminance:luminance];
  }
}

- (void)pluginTintColorDidUpdate
{
  balloonView = [(CKDefaultPluginEntryViewController *)self balloonView];

  if (balloonView)
  {
    balloonView2 = [(CKDefaultPluginEntryViewController *)self balloonView];
    [(CKDefaultPluginEntryViewController *)self updateBalloonViewFillColor:balloonView2];

    balloonView3 = [(CKDefaultPluginEntryViewController *)self balloonView];
    [balloonView3 prepareForDisplay];
  }
}

- (void)_loadBalloonView
{
  if (!self->_balloonView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _imageBalloon = [(CKDefaultPluginEntryViewController *)self _imageBalloon];
      balloonView = self->_balloonView;
      self->_balloonView = _imageBalloon;

      if (!CKIsRunningInMacCatalyst())
      {
        return;
      }

      contextMenuInteraction = [(CKDefaultPluginEntryViewController *)self contextMenuInteraction];

      if (!contextMenuInteraction)
      {
        return;
      }

      v6 = self->_balloonView;
      contextMenuInteraction2 = [(CKDefaultPluginEntryViewController *)self contextMenuInteraction];
      [(CKBalloonView *)v6 addInteraction:contextMenuInteraction2];
      v7 = contextMenuInteraction2;
    }

    else
    {
      _transcriptPluginBalloon = [(CKDefaultPluginEntryViewController *)self _transcriptPluginBalloon];
      v7 = self->_balloonView;
      self->_balloonView = _transcriptPluginBalloon;
    }
  }
}

- (void)updateBalloonViewFillColor:(id)color
{
  v4 = *MEMORY[0x1E69A6E08];
  v5 = *(MEMORY[0x1E69A6E08] + 8);
  v6 = *(MEMORY[0x1E69A6E08] + 16);
  v7 = *(MEMORY[0x1E69A6E08] + 24);
  colorCopy = color;
  if (objc_opt_respondsToSelector())
  {
    messageTintColor = [(CKTranscriptBalloonPluginController *)self->_pluginBubbleViewController messageTintColor];
    v9 = messageTintColor;
    if (messageTintColor)
    {
      [messageTintColor ck_imColorComponents];
      v4 = v10;
      v5 = v11;
      v6 = v12;
      v7 = v13;
    }
  }

  [colorCopy setDynamicFillColor:{v4, v5, v6, v7}];
  [colorCopy setColor:0xFFFFFFFFLL];
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
    pluginContentView = [(CKTranscriptBalloonPluginController *)self->_pluginBubbleViewController pluginContentView];
    [v4 setPluginView:pluginContentView pluginController:self];

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

- (void)liveViewControllerDidUpdateMessageTintColor:(id)color
{
  colorCopy = color;
  if (objc_opt_respondsToSelector())
  {
    pluginContentViewController = [(CKTranscriptBalloonPluginController *)self->_pluginBubbleViewController pluginContentViewController];
    if (pluginContentViewController)
    {
      v5 = pluginContentViewController == colorCopy;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      balloonView = [(CKDefaultPluginEntryViewController *)self balloonView];

      if (balloonView)
      {
        balloonView2 = [(CKDefaultPluginEntryViewController *)self balloonView];
        [(CKDefaultPluginEntryViewController *)self updateBalloonViewFillColor:balloonView2];

        balloonView3 = [(CKDefaultPluginEntryViewController *)self balloonView];
        [balloonView3 prepareForDisplay];
      }
    }
  }

  else
  {
    pluginContentViewController = 0;
  }
}

@end