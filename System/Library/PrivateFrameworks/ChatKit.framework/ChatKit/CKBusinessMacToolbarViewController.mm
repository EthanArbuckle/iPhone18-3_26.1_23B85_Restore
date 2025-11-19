@interface CKBusinessMacToolbarViewController
- (BOOL)isChatBot;
- (CGRect)_detailsPopoverFrame;
- (CKBusinessMacToolbarViewController)initWithConversation:(id)a3 showingInStandAloneWindow:(BOOL)a4;
- (void)_handleAddressBookPartialChange:(id)a3;
- (void)_updateBannerImageData;
- (void)_updateBrandColors;
- (void)_updateFallbackTitle;
- (void)dealloc;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CKBusinessMacToolbarViewController

- (CKBusinessMacToolbarViewController)initWithConversation:(id)a3 showingInStandAloneWindow:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CKBusinessMacToolbarViewController;
  v8 = [(CKBusinessMacToolbarViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_handle, a3);
    v9->_showingInStandAloneWindow = a4;
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKBusinessMacToolbarViewController;
  [(CKBusinessMacToolbarViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [CKBusinessMacToolbarView alloc];
  v4 = [(CKBusinessMacToolbarView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKBusinessMacToolbarViewController *)self setToolbarView:v4];

  v5 = [(CKBusinessMacToolbarViewController *)self showingInStandAloneWindow];
  v6 = [(CKBusinessMacToolbarViewController *)self toolbarView];
  [v6 setShowingInStandAloneWindow:v5];

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 useMacToolbar];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = v9;
  if (v8)
  {
    [v9 macAppKitToolbarHeight];
  }

  else
  {
    [v9 marzNavigationBarHeight];
  }

  v12 = v11;
  v13 = [(CKBusinessMacToolbarViewController *)self toolbarView];
  [v13 setPreferredHeight:v12];

  v14 = [(CKBusinessMacToolbarViewController *)self toolbarView];
  [(CKBusinessMacToolbarViewController *)self setView:v14];

  v15 = objc_alloc(MEMORY[0x1E69DD250]);
  [(CKBusinessMacToolbarViewController *)self _detailsPopoverFrame];
  v16 = [v15 initWithFrame:?];
  [(CKBusinessMacToolbarViewController *)self setDetailsPopoverPresentationSourceView:v16];

  v17 = [(CKBusinessMacToolbarViewController *)self detailsPopoverPresentationSourceView];
  [v17 setBackgroundColor:0];

  v18 = [(CKBusinessMacToolbarViewController *)self detailsPopoverPresentationSourceView];
  [v18 setOpaque:0];

  v19 = [(CKBusinessMacToolbarViewController *)self detailsPopoverPresentationSourceView];
  [v19 setUserInteractionEnabled:0];

  v20 = [(CKBusinessMacToolbarViewController *)self view];
  v21 = [(CKBusinessMacToolbarViewController *)self detailsPopoverPresentationSourceView];
  [v20 addSubview:v21];

  [(CKBusinessMacToolbarViewController *)self _updateBannerImageData];
  [(CKBusinessMacToolbarViewController *)self _updateFallbackTitle];

  [(CKBusinessMacToolbarViewController *)self _updateBrandColors];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CKBusinessMacToolbarViewController;
  [(CKBusinessMacToolbarViewController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleAddressBookPartialChange_ name:*MEMORY[0x1E69A6838] object:0];
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
  v11 = [(CKBusinessMacToolbarViewController *)self detailsPopoverPresentationSourceView];
  [v11 frame];
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
    v17 = [(CKBusinessMacToolbarViewController *)self detailsPopoverPresentationSourceView];
    [v17 setFrame:{v4, v6, v8, v10}];
  }

  v18 = [(CKBusinessMacToolbarViewController *)self toolbarView];
  [v18 setDetailsPopoverFrame:{v4, v6, v8, v10}];
}

- (CGRect)_detailsPopoverFrame
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 macNSToolbarItemSize];
  v5 = v4;
  v7 = v6;

  v8 = [(CKBusinessMacToolbarViewController *)self view];
  [v8 frame];
  v10 = v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 macAppKitToolbarHeight];
  v13 = v12;

  v14 = [(CKBusinessMacToolbarViewController *)self view];
  LODWORD(v11) = [v14 _shouldReverseLayoutDirection];

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
    v3 = [(CKBusinessMacToolbarViewController *)self handle];
    v4 = [v3 brandWideLogoImageData];
    v5 = [v4 length];
    v6 = [(CKBusinessMacToolbarViewController *)self handle];
    v7 = v6;
    if (v5)
    {
      [v6 brandWideLogoImageData];
    }

    else
    {
      [v6 brandSquareLogoImageData];
    }
    v9 = ;

    v8 = [(CKBusinessMacToolbarViewController *)self toolbarView];
    [v8 setBannerImageData:v9];
  }
}

- (void)_updateFallbackTitle
{
  v3 = [(CKBusinessMacToolbarViewController *)self isChatBot];
  v4 = [(CKBusinessMacToolbarViewController *)self handle];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 brand];
    v7 = [v6 name];
    v8 = [v7 length];
    v9 = [(CKBusinessMacToolbarViewController *)self handle];
    v10 = v9;
    if (v8)
    {
      v11 = [v9 brand];
      v14 = [v11 name];
    }

    else
    {
      v11 = [v9 name];
      if ([v11 length])
      {
        v12 = [(CKBusinessMacToolbarViewController *)self handle];
        [v12 name];
      }

      else
      {
        v12 = IMSharedUtilitiesFrameworkBundle();
        [v12 localizedStringForKey:@"BUSINESS_NOTIFICATION_TITLE" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
      }
      v14 = ;
    }
  }

  else
  {
    v6 = [v4 name];
    if ([v6 length])
    {
      v7 = [(CKBusinessMacToolbarViewController *)self handle];
      [v7 name];
    }

    else
    {
      v7 = IMSharedUtilitiesFrameworkBundle();
      [v7 localizedStringForKey:@"BUSINESS_NOTIFICATION_TITLE" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
    }
    v14 = ;
  }

  v13 = [(CKBusinessMacToolbarViewController *)self toolbarView];
  [v13 setFallbackTitle:v14];
}

- (void)_updateBrandColors
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 theme];
  v5 = [(CKBusinessMacToolbarViewController *)self handle];
  v6 = [v4 primaryBrandColorForBusinessHandle:v5];
  v7 = [(CKBusinessMacToolbarViewController *)self toolbarView];
  [v7 setBackgroundColor:v6];

  v12 = [(CKBusinessMacToolbarViewController *)self toolbarView];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = [(CKBusinessMacToolbarViewController *)self handle];
  v11 = [v9 secondaryBrandColorForBusinessHandle:v10];
  [v12 setFallbackTitleColor:v11];
}

- (void)_handleAddressBookPartialChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A6858]];

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
  v2 = [(CKBusinessMacToolbarViewController *)self handle];
  v3 = [v2 isMapKitBusiness];

  return v3 ^ 1;
}

@end