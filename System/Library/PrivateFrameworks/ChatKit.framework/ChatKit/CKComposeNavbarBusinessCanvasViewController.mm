@interface CKComposeNavbarBusinessCanvasViewController
- (BOOL)_canShowAvatarView;
- (BOOL)_shouldUpdateVerifiedIconForConversation:(id)conversation;
- (id)_titleItemViewForTraitCollection:(id)collection;
- (void)_handleAddressBookPartialChange:(id)change;
- (void)_updateBrandingForConversation:(id)conversation;
- (void)_updateDefaultLabelForConversation:(id)conversation;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKComposeNavbarBusinessCanvasViewController

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = CKComposeNavbarBusinessCanvasViewController;
  [(CKComposeNavbarCanvasViewController *)&v17 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleAddressBookPartialChange_ name:*MEMORY[0x1E69A6838] object:0];

  v4 = [CKLabel alloc];
  v5 = [(CKLabel *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  defaultLabel = self->_defaultLabel;
  self->_defaultLabel = v5;

  v7 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:17.0];
  [(CKLabel *)self->_defaultLabel setFont:v7];

  [(CKLabel *)self->_defaultLabel setTextAlignment:1];
  v8 = MEMORY[0x1E69A7F28];
  cachedConversation = [(CKComposeNavbarBusinessCanvasViewController *)self cachedConversation];
  businessHandle = [cachedConversation businessHandle];
  v11 = [businessHandle ID];
  v12 = [v8 placeholderNameForBrandURI:v11];
  [(CKLabel *)self->_defaultLabel setText:v12];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(CKLabel *)self->_defaultLabel setBackgroundColor:clearColor];

  [(CKLabel *)self->_defaultLabel sizeToFit];
  canvasView = [(CKComposeNavbarCanvasViewController *)self canvasView];
  traitCollection = [(CKComposeNavbarBusinessCanvasViewController *)self traitCollection];
  v16 = [(CKComposeNavbarBusinessCanvasViewController *)self _titleItemViewForTraitCollection:traitCollection];
  [canvasView setTitleView:v16];
}

- (void)viewDidLayoutSubviews
{
  v44.receiver = self;
  v44.super_class = CKComposeNavbarBusinessCanvasViewController;
  [(CKComposeNavbarBusinessCanvasViewController *)&v44 viewDidLayoutSubviews];
  canvasView = [(CKComposeNavbarCanvasViewController *)self canvasView];
  [canvasView safeAreaInsets];
  v5 = v4;
  v7 = v6;

  canvasView2 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  [(CKComposeNavbarCanvasViewController *)self systemMinimumLayoutMarginsForView:canvasView2];
  v10 = v9;
  v12 = v11;
  canvasView3 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  effectiveUserInterfaceLayoutDirection = [canvasView3 effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  if (!effectiveUserInterfaceLayoutDirection)
  {
    v10 = v12;
  }

  view = [(CKComposeNavbarBusinessCanvasViewController *)self view];
  _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];

  canvasView4 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  if (_shouldReverseLayoutDirection)
  {
    rightItemView = [canvasView4 rightItemView];
    [rightItemView frame];
    v20 = v7 + v10 + CGRectGetWidth(v45);

    v7 = v7 + v15;
    canvasView5 = [(CKComposeNavbarCanvasViewController *)self canvasView];
    leftItemView = [canvasView5 leftItemView];
    [leftItemView frame];
    Width = CGRectGetWidth(v46);
  }

  else
  {
    leftItemView2 = [canvasView4 leftItemView];
    [leftItemView2 frame];
    v20 = v5 + v15 + CGRectGetWidth(v47);

    canvasView5 = [(CKComposeNavbarCanvasViewController *)self canvasView];
    leftItemView = [canvasView5 rightItemView];
    [leftItemView frame];
    Width = v10 + CGRectGetWidth(v48);
  }

  v25 = v7 + Width;

  if (v20 >= v25)
  {
    v26 = v20;
  }

  else
  {
    v26 = v25;
  }

  v27 = v26 + v26;
  canvasView6 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  [canvasView6 bounds];
  v29 = CGRectGetWidth(v49) - (v27 + 14.0 + 14.0);

  canvasView7 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  titleView = [canvasView7 titleView];
  [titleView frame];

  view2 = [(CKComposeNavbarBusinessCanvasViewController *)self view];
  [view2 frame];
  v34 = v33;

  view3 = [(CKComposeNavbarBusinessCanvasViewController *)self view];
  [view3 bounds];
  v37 = (v36 - v29) * 0.5;
  v38 = rintf(v37);

  view4 = [(CKComposeNavbarBusinessCanvasViewController *)self view];
  [view4 bounds];
  v41 = (v40 - v34) * 0.5;
  v42 = rintf(v41);

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __68__CKComposeNavbarBusinessCanvasViewController_viewDidLayoutSubviews__block_invoke;
  v43[3] = &unk_1E72EC7B0;
  v43[4] = self;
  *&v43[5] = v38;
  *&v43[6] = v42;
  *&v43[7] = v29;
  *&v43[8] = v34;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v43];
}

void __68__CKComposeNavbarBusinessCanvasViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = [*(a1 + 32) canvasView];
  v5 = [v6 titleView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = CKComposeNavbarBusinessCanvasViewController;
  [(CKComposeNavbarBusinessCanvasViewController *)&v7 traitCollectionDidChange:change];
  canvasView = [(CKComposeNavbarCanvasViewController *)self canvasView];
  traitCollection = [(CKComposeNavbarBusinessCanvasViewController *)self traitCollection];
  v6 = [(CKComposeNavbarBusinessCanvasViewController *)self _titleItemViewForTraitCollection:traitCollection];
  [canvasView setTitleView:v6];
}

- (id)_titleItemViewForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (-[CKComposeNavbarBusinessCanvasViewController _canShowAvatarView](self, "_canShowAvatarView") && [collectionCopy verticalSizeClass] != 1)
  {
    defaultLabel = 0;
  }

  else
  {
    defaultLabel = [(CKComposeNavbarBusinessCanvasViewController *)self defaultLabel];
  }

  return defaultLabel;
}

- (BOOL)_canShowAvatarView
{
  delegate = [(CKComposeNavbarCanvasViewController *)self delegate];
  shouldShowAvatarViewInNavBarCanvas = [delegate shouldShowAvatarViewInNavBarCanvas];

  return shouldShowAvatarViewInNavBarCanvas;
}

- (void)_updateBrandingForConversation:(id)conversation
{
  conversationCopy = conversation;
  [(CKComposeNavbarBusinessCanvasViewController *)self _updateDefaultLabelForConversation:conversationCopy];
  [(CKComposeNavbarBusinessCanvasViewController *)self _updateTitleForConversation:conversationCopy animated:0];
}

- (void)_updateDefaultLabelForConversation:(id)conversation
{
  conversationCopy = conversation;
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  businessHandle = [conversationCopy businessHandle];
  v7 = [theme secondaryBrandColorForBusinessHandle:businessHandle];

  if (v7)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v8 theme];
    businessHandle2 = [conversationCopy businessHandle];
    v11 = [theme2 secondaryBrandColorForBusinessHandle:businessHandle2];
    defaultLabel = [(CKComposeNavbarBusinessCanvasViewController *)self defaultLabel];
    [defaultLabel setTextColor:v11];
  }
}

- (BOOL)_shouldUpdateVerifiedIconForConversation:(id)conversation
{
  conversationCopy = conversation;
  defaultLabel = [(CKComposeNavbarBusinessCanvasViewController *)self defaultLabel];
  v6 = [defaultLabel titleIconImageType] == 1;

  LOBYTE(defaultLabel) = [conversationCopy hasVerifiedBusiness];
  return v6 ^ defaultLabel;
}

- (void)_handleAddressBookPartialChange:(id)change
{
  userInfo = [change userInfo];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A6858]];

  cachedConversation = [(CKComposeNavbarBusinessCanvasViewController *)self cachedConversation];
  if (cachedConversation)
  {
    v6 = cachedConversation;
    v7 = [v9 isEqualToString:*MEMORY[0x1E69A6840]];

    if (v7)
    {
      cachedConversation2 = [(CKComposeNavbarBusinessCanvasViewController *)self cachedConversation];
      [(CKComposeNavbarBusinessCanvasViewController *)self _updateBrandingForConversation:cachedConversation2];
    }
  }
}

@end