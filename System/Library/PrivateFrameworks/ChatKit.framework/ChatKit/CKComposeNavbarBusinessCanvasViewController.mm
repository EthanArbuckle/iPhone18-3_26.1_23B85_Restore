@interface CKComposeNavbarBusinessCanvasViewController
- (BOOL)_canShowAvatarView;
- (BOOL)_shouldUpdateVerifiedIconForConversation:(id)a3;
- (id)_titleItemViewForTraitCollection:(id)a3;
- (void)_handleAddressBookPartialChange:(id)a3;
- (void)_updateBrandingForConversation:(id)a3;
- (void)_updateDefaultLabelForConversation:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKComposeNavbarBusinessCanvasViewController

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = CKComposeNavbarBusinessCanvasViewController;
  [(CKComposeNavbarCanvasViewController *)&v17 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleAddressBookPartialChange_ name:*MEMORY[0x1E69A6838] object:0];

  v4 = [CKLabel alloc];
  v5 = [(CKLabel *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  defaultLabel = self->_defaultLabel;
  self->_defaultLabel = v5;

  v7 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:17.0];
  [(CKLabel *)self->_defaultLabel setFont:v7];

  [(CKLabel *)self->_defaultLabel setTextAlignment:1];
  v8 = MEMORY[0x1E69A7F28];
  v9 = [(CKComposeNavbarBusinessCanvasViewController *)self cachedConversation];
  v10 = [v9 businessHandle];
  v11 = [v10 ID];
  v12 = [v8 placeholderNameForBrandURI:v11];
  [(CKLabel *)self->_defaultLabel setText:v12];

  v13 = [MEMORY[0x1E69DC888] clearColor];
  [(CKLabel *)self->_defaultLabel setBackgroundColor:v13];

  [(CKLabel *)self->_defaultLabel sizeToFit];
  v14 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  v15 = [(CKComposeNavbarBusinessCanvasViewController *)self traitCollection];
  v16 = [(CKComposeNavbarBusinessCanvasViewController *)self _titleItemViewForTraitCollection:v15];
  [v14 setTitleView:v16];
}

- (void)viewDidLayoutSubviews
{
  v44.receiver = self;
  v44.super_class = CKComposeNavbarBusinessCanvasViewController;
  [(CKComposeNavbarBusinessCanvasViewController *)&v44 viewDidLayoutSubviews];
  v3 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;

  v8 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  [(CKComposeNavbarCanvasViewController *)self systemMinimumLayoutMarginsForView:v8];
  v10 = v9;
  v12 = v11;
  v13 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  v14 = [v13 effectiveUserInterfaceLayoutDirection];
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  if (!v14)
  {
    v10 = v12;
  }

  v16 = [(CKComposeNavbarBusinessCanvasViewController *)self view];
  v17 = [v16 _shouldReverseLayoutDirection];

  v18 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  if (v17)
  {
    v19 = [v18 rightItemView];
    [v19 frame];
    v20 = v7 + v10 + CGRectGetWidth(v45);

    v7 = v7 + v15;
    v21 = [(CKComposeNavbarCanvasViewController *)self canvasView];
    v22 = [v21 leftItemView];
    [v22 frame];
    Width = CGRectGetWidth(v46);
  }

  else
  {
    v24 = [v18 leftItemView];
    [v24 frame];
    v20 = v5 + v15 + CGRectGetWidth(v47);

    v21 = [(CKComposeNavbarCanvasViewController *)self canvasView];
    v22 = [v21 rightItemView];
    [v22 frame];
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
  v28 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  [v28 bounds];
  v29 = CGRectGetWidth(v49) - (v27 + 14.0 + 14.0);

  v30 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  v31 = [v30 titleView];
  [v31 frame];

  v32 = [(CKComposeNavbarBusinessCanvasViewController *)self view];
  [v32 frame];
  v34 = v33;

  v35 = [(CKComposeNavbarBusinessCanvasViewController *)self view];
  [v35 bounds];
  v37 = (v36 - v29) * 0.5;
  v38 = rintf(v37);

  v39 = [(CKComposeNavbarBusinessCanvasViewController *)self view];
  [v39 bounds];
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

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKComposeNavbarBusinessCanvasViewController;
  [(CKComposeNavbarBusinessCanvasViewController *)&v7 traitCollectionDidChange:a3];
  v4 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  v5 = [(CKComposeNavbarBusinessCanvasViewController *)self traitCollection];
  v6 = [(CKComposeNavbarBusinessCanvasViewController *)self _titleItemViewForTraitCollection:v5];
  [v4 setTitleView:v6];
}

- (id)_titleItemViewForTraitCollection:(id)a3
{
  v4 = a3;
  if (-[CKComposeNavbarBusinessCanvasViewController _canShowAvatarView](self, "_canShowAvatarView") && [v4 verticalSizeClass] != 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CKComposeNavbarBusinessCanvasViewController *)self defaultLabel];
  }

  return v5;
}

- (BOOL)_canShowAvatarView
{
  v2 = [(CKComposeNavbarCanvasViewController *)self delegate];
  v3 = [v2 shouldShowAvatarViewInNavBarCanvas];

  return v3;
}

- (void)_updateBrandingForConversation:(id)a3
{
  v4 = a3;
  [(CKComposeNavbarBusinessCanvasViewController *)self _updateDefaultLabelForConversation:v4];
  [(CKComposeNavbarBusinessCanvasViewController *)self _updateTitleForConversation:v4 animated:0];
}

- (void)_updateDefaultLabelForConversation:(id)a3
{
  v13 = a3;
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = [v13 businessHandle];
  v7 = [v5 secondaryBrandColorForBusinessHandle:v6];

  if (v7)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 theme];
    v10 = [v13 businessHandle];
    v11 = [v9 secondaryBrandColorForBusinessHandle:v10];
    v12 = [(CKComposeNavbarBusinessCanvasViewController *)self defaultLabel];
    [v12 setTextColor:v11];
  }
}

- (BOOL)_shouldUpdateVerifiedIconForConversation:(id)a3
{
  v4 = a3;
  v5 = [(CKComposeNavbarBusinessCanvasViewController *)self defaultLabel];
  v6 = [v5 titleIconImageType] == 1;

  LOBYTE(v5) = [v4 hasVerifiedBusiness];
  return v6 ^ v5;
}

- (void)_handleAddressBookPartialChange:(id)a3
{
  v4 = [a3 userInfo];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A6858]];

  v5 = [(CKComposeNavbarBusinessCanvasViewController *)self cachedConversation];
  if (v5)
  {
    v6 = v5;
    v7 = [v9 isEqualToString:*MEMORY[0x1E69A6840]];

    if (v7)
    {
      v8 = [(CKComposeNavbarBusinessCanvasViewController *)self cachedConversation];
      [(CKComposeNavbarBusinessCanvasViewController *)self _updateBrandingForConversation:v8];
    }
  }
}

@end