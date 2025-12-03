@interface CKBusinessMacToolbarViewController
- (BOOL)isChatBot;
- (CGRect)_detailsPopoverFrame;
- (CKBusinessMacToolbarViewController)initWithConversation:(id)conversation showingInStandAloneWindow:(BOOL)window;
- (void)_handleAddressBookPartialChange:(id)change;
- (void)_updateBannerImageData;
- (void)_updateBrandColors;
- (void)_updateFallbackTitle;
- (void)dealloc;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CKBusinessMacToolbarViewController

- (CKBusinessMacToolbarViewController)initWithConversation:(id)conversation showingInStandAloneWindow:(BOOL)window
{
  conversationCopy = conversation;
  v11.receiver = self;
  v11.super_class = CKBusinessMacToolbarViewController;
  v8 = [(CKBusinessMacToolbarViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_handle, conversation);
    v9->_showingInStandAloneWindow = window;
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKBusinessMacToolbarViewController;
  [(CKBusinessMacToolbarViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [CKBusinessMacToolbarView alloc];
  v4 = [(CKBusinessMacToolbarView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKBusinessMacToolbarViewController *)self setToolbarView:v4];

  showingInStandAloneWindow = [(CKBusinessMacToolbarViewController *)self showingInStandAloneWindow];
  toolbarView = [(CKBusinessMacToolbarViewController *)self toolbarView];
  [toolbarView setShowingInStandAloneWindow:showingInStandAloneWindow];

  v7 = +[CKUIBehavior sharedBehaviors];
  useMacToolbar = [v7 useMacToolbar];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = v9;
  if (useMacToolbar)
  {
    [v9 macAppKitToolbarHeight];
  }

  else
  {
    [v9 marzNavigationBarHeight];
  }

  v12 = v11;
  toolbarView2 = [(CKBusinessMacToolbarViewController *)self toolbarView];
  [toolbarView2 setPreferredHeight:v12];

  toolbarView3 = [(CKBusinessMacToolbarViewController *)self toolbarView];
  [(CKBusinessMacToolbarViewController *)self setView:toolbarView3];

  v15 = objc_alloc(MEMORY[0x1E69DD250]);
  [(CKBusinessMacToolbarViewController *)self _detailsPopoverFrame];
  v16 = [v15 initWithFrame:?];
  [(CKBusinessMacToolbarViewController *)self setDetailsPopoverPresentationSourceView:v16];

  detailsPopoverPresentationSourceView = [(CKBusinessMacToolbarViewController *)self detailsPopoverPresentationSourceView];
  [detailsPopoverPresentationSourceView setBackgroundColor:0];

  detailsPopoverPresentationSourceView2 = [(CKBusinessMacToolbarViewController *)self detailsPopoverPresentationSourceView];
  [detailsPopoverPresentationSourceView2 setOpaque:0];

  detailsPopoverPresentationSourceView3 = [(CKBusinessMacToolbarViewController *)self detailsPopoverPresentationSourceView];
  [detailsPopoverPresentationSourceView3 setUserInteractionEnabled:0];

  view = [(CKBusinessMacToolbarViewController *)self view];
  detailsPopoverPresentationSourceView4 = [(CKBusinessMacToolbarViewController *)self detailsPopoverPresentationSourceView];
  [view addSubview:detailsPopoverPresentationSourceView4];

  [(CKBusinessMacToolbarViewController *)self _updateBannerImageData];
  [(CKBusinessMacToolbarViewController *)self _updateFallbackTitle];

  [(CKBusinessMacToolbarViewController *)self _updateBrandColors];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CKBusinessMacToolbarViewController;
  [(CKBusinessMacToolbarViewController *)&v4 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleAddressBookPartialChange_ name:*MEMORY[0x1E69A6838] object:0];
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = CKBusinessMacToolbarViewController;
  [(CKBusinessMacToolbarViewController *)&v19 viewWillLayoutSubviews];
  [(CKBusinessMacToolbarViewController *)self _detailsPopoverFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  detailsPopoverPresentationSourceView = [(CKBusinessMacToolbarViewController *)self detailsPopoverPresentationSourceView];
  [detailsPopoverPresentationSourceView frame];
  v21.origin.x = v12;
  v21.origin.y = v13;
  v21.size.width = v14;
  v21.size.height = v15;
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  v16 = CGRectEqualToRect(v20, v21);

  if (!v16)
  {
    detailsPopoverPresentationSourceView2 = [(CKBusinessMacToolbarViewController *)self detailsPopoverPresentationSourceView];
    [detailsPopoverPresentationSourceView2 setFrame:{v4, v6, v8, v10}];
  }

  toolbarView = [(CKBusinessMacToolbarViewController *)self toolbarView];
  [toolbarView setDetailsPopoverFrame:{v4, v6, v8, v10}];
}

- (CGRect)_detailsPopoverFrame
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 macNSToolbarItemSize];
  v5 = v4;
  v7 = v6;

  view = [(CKBusinessMacToolbarViewController *)self view];
  [view frame];
  v10 = v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 macAppKitToolbarHeight];
  v13 = v12;

  view2 = [(CKBusinessMacToolbarViewController *)self view];
  LODWORD(v11) = [view2 _shouldReverseLayoutDirection];

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 macNSToolbarItemInterItemSpacing];
  v17 = v16;

  v18 = v10 - v17 - v5;
  if (v11)
  {
    v18 = v17;
  }

  v19 = v13 * 0.5 - v7 * 0.5;
  v20 = v5;
  v21 = v7;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)_updateBannerImageData
{
  if (![(CKBusinessMacToolbarViewController *)self isChatBot])
  {
    handle = [(CKBusinessMacToolbarViewController *)self handle];
    brandWideLogoImageData = [handle brandWideLogoImageData];
    v5 = [brandWideLogoImageData length];
    handle2 = [(CKBusinessMacToolbarViewController *)self handle];
    v7 = handle2;
    if (v5)
    {
      [handle2 brandWideLogoImageData];
    }

    else
    {
      [handle2 brandSquareLogoImageData];
    }
    v9 = ;

    toolbarView = [(CKBusinessMacToolbarViewController *)self toolbarView];
    [toolbarView setBannerImageData:v9];
  }
}

- (void)_updateFallbackTitle
{
  isChatBot = [(CKBusinessMacToolbarViewController *)self isChatBot];
  handle = [(CKBusinessMacToolbarViewController *)self handle];
  v5 = handle;
  if (isChatBot)
  {
    brand = [handle brand];
    name = [brand name];
    v8 = [name length];
    handle2 = [(CKBusinessMacToolbarViewController *)self handle];
    v10 = handle2;
    if (v8)
    {
      brand2 = [handle2 brand];
      name2 = [brand2 name];
    }

    else
    {
      brand2 = [handle2 name];
      if ([brand2 length])
      {
        handle3 = [(CKBusinessMacToolbarViewController *)self handle];
        [handle3 name];
      }

      else
      {
        handle3 = IMSharedUtilitiesFrameworkBundle();
        [handle3 localizedStringForKey:@"BUSINESS_NOTIFICATION_TITLE" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
      }
      name2 = ;
    }
  }

  else
  {
    brand = [handle name];
    if ([brand length])
    {
      name = [(CKBusinessMacToolbarViewController *)self handle];
      [name name];
    }

    else
    {
      name = IMSharedUtilitiesFrameworkBundle();
      [name localizedStringForKey:@"BUSINESS_NOTIFICATION_TITLE" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
    }
    name2 = ;
  }

  toolbarView = [(CKBusinessMacToolbarViewController *)self toolbarView];
  [toolbarView setFallbackTitle:name2];
}

- (void)_updateBrandColors
{
  v3 = +[CKUIBehavior sharedBehaviors];
  theme = [v3 theme];
  handle = [(CKBusinessMacToolbarViewController *)self handle];
  v6 = [theme primaryBrandColorForBusinessHandle:handle];
  toolbarView = [(CKBusinessMacToolbarViewController *)self toolbarView];
  [toolbarView setBackgroundColor:v6];

  toolbarView2 = [(CKBusinessMacToolbarViewController *)self toolbarView];
  v8 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v8 theme];
  handle2 = [(CKBusinessMacToolbarViewController *)self handle];
  v11 = [theme2 secondaryBrandColorForBusinessHandle:handle2];
  [toolbarView2 setFallbackTitleColor:v11];
}

- (void)_handleAddressBookPartialChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A6858]];

  if ([v5 isEqualToString:*MEMORY[0x1E69A6850]])
  {
    [(CKBusinessMacToolbarViewController *)self _updateBannerImageData];
  }

  else if ([v5 isEqualToString:*MEMORY[0x1E69A6868]] || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69A6840]) && (-[CKBusinessMacToolbarViewController _updateBrandColors](self, "_updateBrandColors"), -[CKBusinessMacToolbarViewController isChatBot](self, "isChatBot")))
  {
    [(CKBusinessMacToolbarViewController *)self _updateFallbackTitle];
  }
}

- (BOOL)isChatBot
{
  handle = [(CKBusinessMacToolbarViewController *)self handle];
  isMapKitBusiness = [handle isMapKitBusiness];

  return isMapKitBusiness ^ 1;
}

@end