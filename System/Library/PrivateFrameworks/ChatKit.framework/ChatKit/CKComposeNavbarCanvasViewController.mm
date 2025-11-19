@interface CKComposeNavbarCanvasViewController
- (BOOL)shouldShowAvatarView;
- (BOOL)splitViewControllerIsCollapsed;
- (CKNavbarCanvasViewControllerDelegate)delegate;
- (NSDirectionalEdgeInsets)systemMinimumLayoutMarginsForView:(id)a3;
- (UIButton)cancelButton;
- (UILabel)titleLabel;
- (double)preferredHeightOverride;
- (id)_windowTraitCollection;
- (void)_setupDefaultCanvasView;
- (void)loadView;
- (void)updateTitle:(id)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation CKComposeNavbarCanvasViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CKComposeNavbarCanvasViewController;
  [(CKComposeNavbarCanvasViewController *)&v2 viewDidLoad];
}

- (void)loadView
{
  [(CKComposeNavbarCanvasViewController *)self _setupDefaultCanvasView];
  v3 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  [v3 setDelegate:self];

  v4 = [(CKComposeNavbarCanvasViewController *)self canvasView];
  [(CKComposeNavbarCanvasViewController *)self setView:v4];
}

- (void)updateTitle:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKComposeNavbarCanvasViewController *)self titleLabel];
  v8 = [v7 text];
  v9 = [v8 isEqualToString:v6];

  if ((v9 & 1) == 0)
  {
    v10 = [(CKComposeNavbarCanvasViewController *)self titleLabel];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__CKComposeNavbarCanvasViewController_updateTitle_animated___block_invoke;
    aBlock[3] = &unk_1E72EB880;
    v11 = v10;
    v15 = v11;
    v16 = v6;
    v17 = self;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (v4)
    {
      [MEMORY[0x1E69DD250] transitionWithView:v11 duration:5242880 options:v12 animations:0 completion:0.35];
    }

    else
    {
      (*(v12 + 2))(v12);
    }
  }
}

void __60__CKComposeNavbarCanvasViewController_updateTitle_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setText:*(a1 + 40)];
  v2 = [*(a1 + 48) canvasView];
  [v2 setNeedsLayout];
}

- (void)_setupDefaultCanvasView
{
  v3 = [CKNavigationBarCanvasView alloc];
  v6 = [(CKNavigationBarCanvasView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = [(CKComposeNavbarCanvasViewController *)self titleLabel];
  [(CKNavigationBarCanvasView *)v6 setTitleView:v4];

  v5 = [(CKComposeNavbarCanvasViewController *)self cancelButton];
  [(CKNavigationBarCanvasView *)v6 setRightItemView:v5];

  [(CKComposeNavbarCanvasViewController *)self setCanvasView:v6];
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = self->_titleLabel;
    self->_titleLabel = v4;

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    v6 = self->_titleLabel;
    v7 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:17.0];
    [(UILabel *)v6 setFont:v7];

    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (UIButton)cancelButton
{
  cancelButton = self->_cancelButton;
  if (!cancelButton)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v5 = self->_cancelButton;
    self->_cancelButton = v4;

    v6 = [(UIButton *)self->_cancelButton titleLabel];
    v7 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v6 setFont:v7];

    v8 = self->_cancelButton;
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    [(UIButton *)v8 setTitle:v10 forState:0];

    cancelButton = self->_cancelButton;
  }

  return cancelButton;
}

- (id)_windowTraitCollection
{
  v2 = [MEMORY[0x1E69DD2E8] keyWindow];
  v3 = [v2 traitCollection];

  return v3;
}

- (BOOL)shouldShowAvatarView
{
  v2 = [(CKComposeNavbarCanvasViewController *)self delegate];
  v3 = [v2 shouldShowAvatarViewInNavBarCanvas];

  return v3;
}

- (NSDirectionalEdgeInsets)systemMinimumLayoutMarginsForView:(id)a3
{
  v4 = [(CKComposeNavbarCanvasViewController *)self delegate];
  [v4 systemMinimumLayoutMarginsForViewController:self];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.trailing = v16;
  result.bottom = v15;
  result.leading = v14;
  result.top = v13;
  return result;
}

- (BOOL)splitViewControllerIsCollapsed
{
  v2 = [(CKComposeNavbarCanvasViewController *)self delegate];
  v3 = [v2 splitViewController];
  v4 = [v3 isCollapsed];

  return v4;
}

- (double)preferredHeightOverride
{
  v3 = [(CKComposeNavbarCanvasViewController *)self _windowTraitCollection];
  if ([(CKComposeNavbarCanvasViewController *)self shouldShowAvatarView])
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 defaultNavigationBarHeightValueWantsMinimumSafeAreas:{-[CKComposeNavbarCanvasViewController shouldUseMinimumSafeAreas](self, "shouldUseMinimumSafeAreas")}];
    v6 = v5;
  }

  else if ([v3 verticalSizeClass] == 1)
  {
    [v3 horizontalSizeClass];
    +[CKNavigationBarCanvasView preferredLandscapeHeightForRegularWidth];
    v6 = v7;
  }

  else
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 navigationBarDefaultHeight];
    v6 = v9;
  }

  return v6;
}

- (CKNavbarCanvasViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end